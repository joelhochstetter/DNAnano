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
	<24.128645, 35.130211, 34.608837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.349474, 35.119640, 34.942188>,  <24.481972, 35.113297, 35.142200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.349474, 35.119640, 34.942188>,  <24.128645, 35.130211, 34.608837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.349474, 35.119640, 34.942188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649505, 0.640374, -0.409957,
		-0.522838, 0.767609, 0.370698,
		0.552072, -0.026429, 0.833377,
		24.515095, 35.111713, 35.192200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.302650, 35.744198, 34.993076>,  <24.128645, 35.130211, 34.608837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.302650, 35.744198, 34.993076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602123, 35.502876, 35.102982>,  <24.781807, 35.358082, 35.168926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602123, 35.502876, 35.102982>,  <24.302650, 35.744198, 34.993076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602123, 35.502876, 35.102982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658845, 0.631223, -0.409243,
		0.073462, 0.487421, 0.870071,
		0.748683, -0.603306, 0.274764,
		24.826729, 35.321884, 35.185410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803091, 36.210461, 35.117664>,  <24.302650, 35.744198, 34.993076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803091, 36.210461, 35.117664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965410, 35.870975, 34.982006>,  <25.062801, 35.667286, 34.900612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965410, 35.870975, 34.982006>,  <24.803091, 36.210461, 35.117664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965410, 35.870975, 34.982006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630906, 0.528600, -0.567926,
		0.661277, 0.016494, 0.749960,
		0.405796, -0.848711, -0.339145,
		25.087149, 35.616364, 34.880264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525732, 36.073627, 35.180141>,  <24.803091, 36.210461, 35.117664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525732, 36.073627, 35.180141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394079, 35.923187, 34.833679>,  <25.315088, 35.832924, 34.625801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394079, 35.923187, 34.833679>,  <25.525732, 36.073627, 35.180141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394079, 35.923187, 34.833679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592896, 0.631607, -0.499547,
		0.734948, -0.677956, 0.015106,
		-0.329129, -0.376097, -0.866155,
		25.295340, 35.810360, 34.573833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882364, 36.014133, 34.479073>,  <25.525732, 36.073627, 35.180141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882364, 36.014133, 34.479073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166101, 36.171211, 34.244938>,  <26.336344, 36.265457, 34.104458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166101, 36.171211, 34.244938>,  <25.882364, 36.014133, 34.479073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166101, 36.171211, 34.244938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284085, -0.600724, -0.747279,
		-0.645079, 0.696364, -0.314562,
		0.709344, 0.392692, -0.585341,
		26.378904, 36.289021, 34.069336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643057, 36.306396, 33.849846>,  <25.882364, 36.014133, 34.479073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643057, 36.306396, 33.849846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017494, 36.182598, 33.782978>,  <26.242157, 36.108318, 33.742855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017494, 36.182598, 33.782978>,  <25.643057, 36.306396, 33.849846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017494, 36.182598, 33.782978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327968, -0.596123, -0.732854,
		0.127159, 0.740845, -0.659529,
		0.936092, -0.309494, -0.167172,
		26.298321, 36.089748, 33.732826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746553, 36.309036, 33.127819>,  <25.643057, 36.306396, 33.849846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746553, 36.309036, 33.127819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996361, 36.045105, 33.294960>,  <26.146244, 35.886745, 33.395245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996361, 36.045105, 33.294960>,  <25.746553, 36.309036, 33.127819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996361, 36.045105, 33.294960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341294, -0.711792, -0.613898,
		0.702493, 0.240780, -0.669723,
		0.624517, -0.659832, 0.417852,
		26.183716, 35.847157, 33.420315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103018, 35.955833, 32.591625>,  <25.746553, 36.309036, 33.127819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103018, 35.955833, 32.591625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160109, 35.675961, 32.871647>,  <26.194363, 35.508038, 33.039658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160109, 35.675961, 32.871647>,  <26.103018, 35.955833, 32.591625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160109, 35.675961, 32.871647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023501, -0.709490, -0.704324,
		0.989483, 0.084073, -0.117705,
		0.142726, -0.699683, 0.700052,
		26.202927, 35.466057, 33.081661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425014, 35.532631, 32.210533>,  <26.103018, 35.955833, 32.591625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425014, 35.532631, 32.210533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347097, 35.292225, 32.520588>,  <26.300346, 35.147980, 32.706619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347097, 35.292225, 32.520588>,  <26.425014, 35.532631, 32.210533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347097, 35.292225, 32.520588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113567, -0.771140, -0.626454,
		0.974247, -0.210060, 0.081958,
		-0.194794, -0.601014, 0.775137,
		26.288660, 35.111919, 32.753128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982372, 34.955330, 32.206451>,  <26.425014, 35.532631, 32.210533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982372, 34.955330, 32.206451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662100, 34.836929, 32.414795>,  <26.469936, 34.765888, 32.539803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662100, 34.836929, 32.414795>,  <26.982372, 34.955330, 32.206451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662100, 34.836929, 32.414795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208956, -0.676835, -0.705855,
		0.561472, -0.674000, 0.480076,
		-0.800679, -0.296003, 0.520860,
		26.421896, 34.748127, 32.571053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061357, 34.355267, 32.359360>,  <26.982372, 34.955330, 32.206451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061357, 34.355267, 32.359360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663998, 34.380516, 32.397667>,  <26.425581, 34.395668, 32.420650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663998, 34.380516, 32.397667>,  <27.061357, 34.355267, 32.359360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663998, 34.380516, 32.397667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109365, -0.773033, -0.624868,
		0.034587, -0.631217, 0.774835,
		-0.993400, 0.063128, 0.095770,
		26.365978, 34.399456, 32.426399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861073, 33.646774, 32.415871>,  <27.061357, 34.355267, 32.359360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861073, 33.646774, 32.415871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506794, 33.822311, 32.355270>,  <26.294226, 33.927635, 32.318909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506794, 33.822311, 32.355270>,  <26.861073, 33.646774, 32.415871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506794, 33.822311, 32.355270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257660, -0.736103, -0.625910,
		-0.386199, -0.515331, 0.765038,
		-0.885698, 0.438846, -0.151502,
		26.241085, 33.953964, 32.309818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301220, 33.216736, 32.712856>,  <26.861073, 33.646774, 32.415871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301220, 33.216736, 32.712856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131784, 33.457565, 32.442131>,  <26.030123, 33.602062, 32.279694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131784, 33.457565, 32.442131>,  <26.301220, 33.216736, 32.712856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131784, 33.457565, 32.442131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252903, -0.796050, -0.549860,
		-0.869835, -0.061746, 0.489464,
		-0.423589, 0.602074, -0.676816,
		26.004707, 33.638187, 32.239086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609438, 32.903522, 32.557671>,  <26.301220, 33.216736, 32.712856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609438, 32.903522, 32.557671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665405, 33.154079, 32.250931>,  <25.698986, 33.304413, 32.066887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665405, 33.154079, 32.250931>,  <25.609438, 32.903522, 32.557671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665405, 33.154079, 32.250931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475517, -0.636806, -0.606927,
		-0.868508, 0.449573, 0.208756,
		0.139921, 0.626388, -0.766851,
		25.707382, 33.341995, 32.020874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.009562, 32.929611, 32.182590>,  <25.609438, 32.903522, 32.557671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.009562, 32.929611, 32.182590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316845, 33.005806, 31.938108>,  <25.501215, 33.051521, 31.791420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316845, 33.005806, 31.938108>,  <25.009562, 32.929611, 32.182590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316845, 33.005806, 31.938108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310377, -0.724190, -0.615805,
		-0.559927, 0.662771, -0.497208,
		0.768211, 0.190484, -0.611202,
		25.547308, 33.062950, 31.754747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.714146, 32.853348, 31.553129>,  <25.009562, 32.929611, 32.182590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.714146, 32.853348, 31.553129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100626, 32.861240, 31.450317>,  <25.332514, 32.865978, 31.388630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100626, 32.861240, 31.450317>,  <24.714146, 32.853348, 31.553129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100626, 32.861240, 31.450317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169764, -0.701618, -0.692035,
		-0.193994, 0.712280, -0.674554,
		0.966202, 0.019735, -0.257029,
		25.390486, 32.867161, 31.373209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.790365, 32.825413, 30.788782>,  <24.714146, 32.853348, 31.553129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.790365, 32.825413, 30.788782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152096, 32.686726, 30.888365>,  <25.369133, 32.603512, 30.948114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152096, 32.686726, 30.888365>,  <24.790365, 32.825413, 30.788782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152096, 32.686726, 30.888365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100153, -0.739327, -0.665856,
		0.414929, 0.577217, -0.703317,
		0.904325, -0.346722, 0.248958,
		25.423393, 32.582710, 30.963053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051332, 32.633472, 30.251286>,  <24.790365, 32.825413, 30.788782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051332, 32.633472, 30.251286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262939, 32.419289, 30.514626>,  <25.389904, 32.290779, 30.672630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262939, 32.419289, 30.514626>,  <25.051332, 32.633472, 30.251286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262939, 32.419289, 30.514626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113121, -0.813368, -0.570645,
		0.841038, 0.227407, -0.490857,
		0.529016, -0.535460, 0.658350,
		25.421644, 32.258652, 30.712130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670515, 32.367573, 29.910006>,  <25.051332, 32.633472, 30.251286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670515, 32.367573, 29.910006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648397, 32.125813, 30.227911>,  <25.635128, 31.980757, 30.418653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648397, 32.125813, 30.227911>,  <25.670515, 32.367573, 29.910006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648397, 32.125813, 30.227911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051024, -0.796651, -0.602283,
		0.997166, 0.007250, 0.074888,
		-0.055293, -0.604397, 0.794762,
		25.631809, 31.944494, 30.466339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180538, 31.854189, 29.791290>,  <25.670515, 32.367573, 29.910006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180538, 31.854189, 29.791290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914492, 31.696667, 30.045073>,  <25.754864, 31.602154, 30.197342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914492, 31.696667, 30.045073>,  <26.180538, 31.854189, 29.791290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914492, 31.696667, 30.045073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029432, -0.862802, -0.504684,
		0.746159, -0.317001, 0.585455,
		-0.665117, -0.393806, 0.634458,
		25.714956, 31.578526, 30.235411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541786, 31.252567, 30.074369>,  <26.180538, 31.854189, 29.791290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541786, 31.252567, 30.074369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153606, 31.176567, 30.133875>,  <25.920698, 31.130966, 30.169579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153606, 31.176567, 30.133875>,  <26.541786, 31.252567, 30.074369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153606, 31.176567, 30.133875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103999, -0.885597, -0.452660,
		0.217751, -0.423812, 0.879186,
		-0.970448, -0.190002, 0.148764,
		25.862473, 31.119566, 30.178505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524221, 30.529133, 29.857168>,  <26.541786, 31.252567, 30.074369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524221, 30.529133, 29.857168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139473, 30.628403, 29.903152>,  <25.908625, 30.687965, 29.930742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139473, 30.628403, 29.903152>,  <26.524221, 30.529133, 29.857168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139473, 30.628403, 29.903152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273349, -0.886678, -0.372936,
		0.009380, -0.390141, 0.920707,
		-0.961869, 0.248177, 0.114962,
		25.850912, 30.702856, 29.937641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171011, 29.885918, 30.151094>,  <26.524221, 30.529133, 29.857168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171011, 29.885918, 30.151094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919645, 30.124956, 29.951906>,  <25.768826, 30.268379, 29.832394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919645, 30.124956, 29.951906>,  <26.171011, 29.885918, 30.151094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919645, 30.124956, 29.951906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365063, -0.791856, -0.489584,
		-0.686895, -0.125871, 0.715773,
		-0.628414, 0.597595, -0.497971,
		25.731121, 30.304235, 29.802515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510065, 29.492432, 30.068550>,  <26.171011, 29.885918, 30.151094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510065, 29.492432, 30.068550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503036, 29.773682, 29.784210>,  <25.498819, 29.942430, 29.613605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503036, 29.773682, 29.784210>,  <25.510065, 29.492432, 30.068550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503036, 29.773682, 29.784210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435859, -0.645239, -0.627450,
		-0.899843, 0.298805, 0.317802,
		-0.017573, 0.703123, -0.710851,
		25.497765, 29.984619, 29.570955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918859, 29.227947, 29.549528>,  <25.510065, 29.492432, 30.068550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918859, 29.227947, 29.549528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134863, 29.519156, 29.380589>,  <25.264465, 29.693880, 29.279224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134863, 29.519156, 29.380589>,  <24.918859, 29.227947, 29.549528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134863, 29.519156, 29.380589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070154, -0.461124, -0.884558,
		-0.838731, 0.507298, -0.197937,
		0.540008, 0.728020, -0.422348,
		25.296865, 29.737562, 29.253883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.514082, 29.689260, 29.085512>,  <24.918859, 29.227947, 29.549528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.514082, 29.689260, 29.085512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883463, 29.567705, 28.991800>,  <25.105091, 29.494772, 28.935574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883463, 29.567705, 28.991800>,  <24.514082, 29.689260, 29.085512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883463, 29.567705, 28.991800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364452, -0.503630, -0.783283,
		0.120041, 0.808708, -0.575831,
		0.923453, -0.303889, -0.234279,
		25.160500, 29.476538, 28.921516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725222, 29.862787, 28.380693>,  <24.514082, 29.689260, 29.085512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725222, 29.862787, 28.380693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903585, 29.520185, 28.484663>,  <25.010605, 29.314625, 28.547045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903585, 29.520185, 28.484663>,  <24.725222, 29.862787, 28.380693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.903585, 29.520185, 28.484663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458212, -0.467894, -0.755723,
		0.768899, 0.217883, -0.601100,
		0.445910, -0.856506, 0.259926,
		25.037359, 29.263233, 28.562641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727060, 29.471855, 27.880692>,  <24.725222, 29.862787, 28.380693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727060, 29.471855, 27.880692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851852, 29.180010, 28.124111>,  <24.926727, 29.004904, 28.270163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851852, 29.180010, 28.124111>,  <24.727060, 29.471855, 27.880692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.851852, 29.180010, 28.124111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309074, -0.683621, -0.661163,
		0.898410, 0.018184, -0.438782,
		0.311982, -0.729611, 0.608551,
		24.945448, 28.961126, 28.306677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432249, 29.509491, 27.613075>,  <24.727060, 29.471855, 27.880692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432249, 29.509491, 27.613075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613501, 29.817150, 27.793335>,  <25.722252, 30.001745, 27.901491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613501, 29.817150, 27.793335>,  <25.432249, 29.509491, 27.613075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613501, 29.817150, 27.793335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181577, 0.415293, -0.891382,
		-0.872756, 0.485739, 0.048522,
		0.453130, 0.769148, 0.450649,
		25.749439, 30.047895, 27.928530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.228678, 30.268988, 27.485193>,  <25.432249, 29.509491, 27.613075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.228678, 30.268988, 27.485193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620329, 30.227261, 27.554960>,  <25.855320, 30.202225, 27.596821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620329, 30.227261, 27.554960>,  <25.228678, 30.268988, 27.485193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620329, 30.227261, 27.554960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202531, 0.429506, -0.880060,
		0.016894, 0.897018, 0.441671,
		0.979130, -0.104319, 0.174418,
		25.914068, 30.195965, 27.607286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445665, 30.903885, 27.299366>,  <25.228678, 30.268988, 27.485193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445665, 30.903885, 27.299366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738213, 30.631424, 27.285879>,  <25.913740, 30.467947, 27.277786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738213, 30.631424, 27.285879>,  <25.445665, 30.903885, 27.299366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738213, 30.631424, 27.285879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300867, 0.366629, -0.880376,
		0.612031, 0.633733, 0.473076,
		0.731366, -0.681151, -0.033719,
		25.957623, 30.427078, 27.275763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652872, 31.034533, 26.641354>,  <25.445665, 30.903885, 27.299366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652872, 31.034533, 26.641354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909920, 30.760910, 26.779398>,  <26.064148, 30.596737, 26.862225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909920, 30.760910, 26.779398>,  <25.652872, 31.034533, 26.641354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909920, 30.760910, 26.779398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468009, -0.006175, -0.883702,
		0.606635, 0.729401, 0.316177,
		0.642621, -0.684058, 0.345113,
		26.102707, 30.555693, 26.882933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370705, 31.303934, 26.410172>,  <25.652872, 31.034533, 26.641354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370705, 31.303934, 26.410172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377541, 30.912918, 26.494196>,  <26.381641, 30.678308, 26.544611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377541, 30.912918, 26.494196>,  <26.370705, 31.303934, 26.410172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377541, 30.912918, 26.494196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295030, -0.195807, -0.935209,
		0.955335, 0.077957, 0.285057,
		0.017090, -0.977539, 0.210061,
		26.382668, 30.619656, 26.557215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974194, 31.022804, 26.248709>,  <26.370705, 31.303934, 26.410172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974194, 31.022804, 26.248709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736008, 30.702581, 26.221788>,  <26.593096, 30.510447, 26.205637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736008, 30.702581, 26.221788>,  <26.974194, 31.022804, 26.248709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736008, 30.702581, 26.221788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236078, -0.094293, -0.967148,
		0.767913, -0.591789, 0.245142,
		-0.595463, -0.800559, -0.067299,
		26.557369, 30.462414, 26.201599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525753, 31.173529, 25.793322>,  <26.974194, 31.022804, 26.248709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525753, 31.173529, 25.793322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774885, 31.476812, 25.716171>,  <27.924364, 31.658783, 25.669880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774885, 31.476812, 25.716171>,  <27.525753, 31.173529, 25.793322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774885, 31.476812, 25.716171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215500, 0.070735, 0.973939,
		0.752093, -0.648162, -0.119339,
		0.622829, 0.758210, -0.192878,
		27.961735, 31.704275, 25.658308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212481, 31.075373, 26.109106>,  <27.525753, 31.173529, 25.793322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212481, 31.075373, 26.109106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196543, 31.470451, 26.048622>,  <28.186979, 31.707499, 26.012333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196543, 31.470451, 26.048622>,  <28.212481, 31.075373, 26.109106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196543, 31.470451, 26.048622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298973, 0.156181, 0.941394,
		0.953430, -0.007698, -0.301518,
		-0.039845, 0.987699, -0.151209,
		28.184589, 31.766762, 26.003260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890522, 31.425795, 26.316500>,  <28.212481, 31.075373, 26.109106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890522, 31.425795, 26.316500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607367, 31.708315, 26.314262>,  <28.437473, 31.877827, 26.312920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607367, 31.708315, 26.314262>,  <28.890522, 31.425795, 26.316500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607367, 31.708315, 26.314262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306556, 0.314357, 0.898445,
		0.636332, 0.634284, -0.439051,
		-0.707888, 0.706303, -0.005592,
		28.395000, 31.920206, 26.312584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201660, 32.032913, 26.567043>,  <28.890522, 31.425795, 26.316500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201660, 32.032913, 26.567043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812647, 32.114426, 26.612034>,  <28.579239, 32.163334, 26.639029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812647, 32.114426, 26.612034>,  <29.201660, 32.032913, 26.567043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812647, 32.114426, 26.612034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189665, 0.413689, 0.890443,
		0.134930, 0.887318, -0.440977,
		-0.972533, 0.203786, 0.112474,
		28.520887, 32.175560, 26.645777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187361, 32.675575, 26.750866>,  <29.201660, 32.032913, 26.567043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187361, 32.675575, 26.750866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841482, 32.525261, 26.884182>,  <28.633955, 32.435074, 26.964172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841482, 32.525261, 26.884182>,  <29.187361, 32.675575, 26.750866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841482, 32.525261, 26.884182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128258, 0.476353, 0.869849,
		-0.485642, 0.794904, -0.363704,
		-0.864698, -0.375787, 0.333290,
		28.582073, 32.412525, 26.984169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850651, 33.250675, 27.015581>,  <29.187361, 32.675575, 26.750866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850651, 33.250675, 27.015581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632107, 32.961407, 27.184587>,  <28.500980, 32.787846, 27.285992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632107, 32.961407, 27.184587>,  <28.850651, 33.250675, 27.015581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632107, 32.961407, 27.184587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006765, 0.508260, 0.861177,
		-0.837524, 0.467654, -0.282585,
		-0.546359, -0.723168, 0.422515,
		28.468199, 32.744457, 27.311342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222649, 33.460384, 27.241096>,  <28.850651, 33.250675, 27.015581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222649, 33.460384, 27.241096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347433, 33.159035, 27.472652>,  <28.422304, 32.978226, 27.611586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347433, 33.159035, 27.472652>,  <28.222649, 33.460384, 27.241096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347433, 33.159035, 27.472652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119616, 0.573307, 0.810562,
		-0.942536, -0.322107, 0.088733,
		0.311959, -0.753370, 0.578892,
		28.441021, 32.933025, 27.646320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872095, 33.516510, 27.840860>,  <28.222649, 33.460384, 27.241096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872095, 33.516510, 27.840860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147390, 33.261742, 27.979801>,  <28.312569, 33.108879, 28.063166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147390, 33.261742, 27.979801>,  <27.872095, 33.516510, 27.840860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147390, 33.261742, 27.979801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051135, 0.435011, 0.898972,
		-0.723679, -0.636470, 0.266822,
		0.688239, -0.636923, 0.347354,
		28.353863, 33.070663, 28.084007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552050, 33.359596, 28.490694>,  <27.872095, 33.516510, 27.840860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552050, 33.359596, 28.490694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939648, 33.262939, 28.511322>,  <28.172207, 33.204945, 28.523699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939648, 33.262939, 28.511322>,  <27.552050, 33.359596, 28.490694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939648, 33.262939, 28.511322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037923, 0.351687, 0.935349,
		-0.244159, -0.904391, 0.349947,
		0.968993, -0.241645, 0.051570,
		28.230347, 33.190445, 28.526793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584249, 32.962204, 29.121077>,  <27.552050, 33.359596, 28.490694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584249, 32.962204, 29.121077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953985, 33.083786, 29.028805>,  <28.175827, 33.156734, 28.973442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953985, 33.083786, 29.028805>,  <27.584249, 32.962204, 29.121077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953985, 33.083786, 29.028805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162265, 0.234049, 0.958588,
		0.345355, -0.923490, 0.167020,
		0.924338, 0.303952, -0.230680,
		28.231287, 33.174973, 28.959600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038816, 32.638302, 29.629238>,  <27.584249, 32.962204, 29.121077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038816, 32.638302, 29.629238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249464, 32.958206, 29.513960>,  <28.375853, 33.150146, 29.444794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249464, 32.958206, 29.513960>,  <28.038816, 32.638302, 29.629238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249464, 32.958206, 29.513960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208071, 0.207440, 0.955864,
		0.824244, -0.563342, -0.057165,
		0.526619, 0.799760, -0.288196,
		28.407450, 33.198135, 29.427502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662483, 32.622574, 30.051762>,  <28.038816, 32.638302, 29.629238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662483, 32.622574, 30.051762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616629, 32.994118, 29.910858>,  <28.589115, 33.217045, 29.826317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616629, 32.994118, 29.910858>,  <28.662483, 32.622574, 30.051762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616629, 32.994118, 29.910858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395614, 0.367949, 0.841489,
		0.911234, -0.042891, -0.409649,
		-0.114638, 0.928856, -0.352256,
		28.582237, 33.272774, 29.805182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331770, 32.962067, 30.256563>,  <28.662483, 32.622574, 30.051762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331770, 32.962067, 30.256563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047848, 33.236763, 30.193871>,  <28.877495, 33.401581, 30.156256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047848, 33.236763, 30.193871>,  <29.331770, 32.962067, 30.256563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047848, 33.236763, 30.193871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290359, 0.487971, 0.823150,
		0.641771, 0.538767, -0.545766,
		-0.709804, 0.686741, -0.156730,
		28.834906, 33.442787, 30.146851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644958, 33.513992, 30.533594>,  <29.331770, 32.962067, 30.256563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644958, 33.513992, 30.533594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266190, 33.642544, 30.530750>,  <29.038929, 33.719677, 30.529043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266190, 33.642544, 30.530750>,  <29.644958, 33.513992, 30.533594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266190, 33.642544, 30.530750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189725, 0.576590, 0.794700,
		0.259504, 0.751170, -0.606961,
		-0.946923, 0.321383, -0.007112,
		28.982113, 33.738960, 30.528616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719206, 34.241722, 30.814167>,  <29.644958, 33.513992, 30.533594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719206, 34.241722, 30.814167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333881, 34.140640, 30.850323>,  <29.102686, 34.079990, 30.872017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333881, 34.140640, 30.850323>,  <29.719206, 34.241722, 30.814167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333881, 34.140640, 30.850323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034597, 0.450906, 0.891901,
		-0.266146, 0.856051, -0.443105,
		-0.963312, -0.252706, 0.090390,
		29.044888, 34.064827, 30.877439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330427, 34.830338, 30.892971>,  <29.719206, 34.241722, 30.814167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330427, 34.830338, 30.892971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134197, 34.518047, 31.047791>,  <29.016460, 34.330673, 31.140682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134197, 34.518047, 31.047791>,  <29.330427, 34.830338, 30.892971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134197, 34.518047, 31.047791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024533, 0.456367, 0.889453,
		-0.871054, 0.426847, -0.243036,
		-0.490574, -0.780724, 0.387049,
		28.987024, 34.283829, 31.163906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906981, 35.144726, 31.407448>,  <29.330427, 34.830338, 30.892971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906981, 35.144726, 31.407448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936201, 34.756012, 31.497150>,  <28.953733, 34.522781, 31.550972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936201, 34.756012, 31.497150>,  <28.906981, 35.144726, 31.407448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936201, 34.756012, 31.497150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205489, 0.205367, 0.956869,
		-0.975929, -0.115983, -0.184689,
		0.073052, -0.971788, 0.224257,
		28.958117, 34.464474, 31.564428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336830, 34.934292, 31.894136>,  <28.906981, 35.144726, 31.407448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336830, 34.934292, 31.894136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584408, 34.621696, 31.925591>,  <28.732954, 34.434139, 31.944464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584408, 34.621696, 31.925591>,  <28.336830, 34.934292, 31.894136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584408, 34.621696, 31.925591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065323, 0.048552, 0.996682,
		-0.782715, -0.622025, -0.020998,
		0.618942, -0.781490, 0.078635,
		28.770090, 34.387249, 31.949181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933178, 34.402905, 32.194866>,  <28.336830, 34.934292, 31.894136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933178, 34.402905, 32.194866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324755, 34.344833, 32.252277>,  <28.559700, 34.309990, 32.286724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324755, 34.344833, 32.252277>,  <27.933178, 34.402905, 32.194866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324755, 34.344833, 32.252277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148005, -0.020480, 0.988775,
		-0.140611, -0.989193, -0.041536,
		0.978940, -0.145180, 0.143526,
		28.618437, 34.301281, 32.295334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934521, 34.020927, 32.856873>,  <27.933178, 34.402905, 32.194866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934521, 34.020927, 32.856873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318670, 34.111725, 32.792187>,  <28.549160, 34.166203, 32.753376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318670, 34.111725, 32.792187>,  <27.934521, 34.020927, 32.856873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318670, 34.111725, 32.792187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156826, 0.039531, 0.986835,
		0.230402, -0.973093, 0.002365,
		0.960375, 0.226997, -0.161714,
		28.606783, 34.179825, 32.743671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393446, 33.569229, 33.317825>,  <27.934521, 34.020927, 32.856873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393446, 33.569229, 33.317825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562235, 33.919472, 33.223801>,  <28.663507, 34.129616, 33.167385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562235, 33.919472, 33.223801>,  <28.393446, 33.569229, 33.317825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562235, 33.919472, 33.223801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120072, 0.203021, 0.971785,
		0.898622, -0.438291, -0.019466,
		0.421973, 0.875604, -0.235065,
		28.688828, 34.182152, 33.153282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025463, 33.558834, 33.711895>,  <28.393446, 33.569229, 33.317825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025463, 33.558834, 33.711895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957813, 33.942085, 33.619469>,  <28.917223, 34.172035, 33.564011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957813, 33.942085, 33.619469>,  <29.025463, 33.558834, 33.711895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957813, 33.942085, 33.619469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112272, 0.251647, 0.961285,
		0.979179, 0.136636, -0.150131,
		-0.169127, 0.958125, -0.231067,
		28.907076, 34.229523, 33.550148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538982, 33.890373, 34.100410>,  <29.025463, 33.558834, 33.711895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538982, 33.890373, 34.100410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228140, 34.131973, 34.029655>,  <29.041636, 34.276936, 33.987202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228140, 34.131973, 34.029655>,  <29.538982, 33.890373, 34.100410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228140, 34.131973, 34.029655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010212, 0.293116, 0.956022,
		0.629289, 0.741123, -0.233950,
		-0.777104, 0.604003, -0.176886,
		28.995008, 34.313175, 33.976589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645933, 34.666508, 34.154678>,  <29.538982, 33.890373, 34.100410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645933, 34.666508, 34.154678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250660, 34.644794, 34.212009>,  <29.013496, 34.631767, 34.246410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250660, 34.644794, 34.212009>,  <29.645933, 34.666508, 34.154678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250660, 34.644794, 34.212009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092378, 0.535253, 0.839625,
		-0.122298, 0.842946, -0.523914,
		-0.988185, -0.054286, 0.143330,
		28.954205, 34.628510, 34.255009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234070, 35.342762, 34.208954>,  <29.645933, 34.666508, 34.154678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234070, 35.342762, 34.208954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007494, 35.071632, 34.396442>,  <28.871550, 34.908955, 34.508938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007494, 35.071632, 34.396442>,  <29.234070, 35.342762, 34.208954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007494, 35.071632, 34.396442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261301, 0.391697, 0.882210,
		-0.781581, 0.622196, -0.044756,
		-0.566439, -0.677824, 0.468723,
		28.837563, 34.868286, 34.537060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627945, 35.586849, 34.472412>,  <29.234070, 35.342762, 34.208954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627945, 35.586849, 34.472412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827324, 35.293468, 34.657280>,  <28.946951, 35.117439, 34.768200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827324, 35.293468, 34.657280>,  <28.627945, 35.586849, 34.472412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827324, 35.293468, 34.657280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353361, 0.658710, 0.664256,
		-0.791634, -0.167785, 0.587506,
		0.498449, -0.733450, 0.462169,
		28.976858, 35.073433, 34.795929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471916, 35.344639, 35.262203>,  <28.627945, 35.586849, 34.472412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471916, 35.344639, 35.262203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837229, 35.342319, 35.099289>,  <29.056416, 35.340927, 35.001541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837229, 35.342319, 35.099289>,  <28.471916, 35.344639, 35.262203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837229, 35.342319, 35.099289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240431, 0.814798, 0.527539,
		0.328799, -0.579717, 0.745534,
		0.913282, -0.005795, -0.407286,
		29.111214, 35.340580, 34.977104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912064, 35.455940, 35.845142>,  <28.471916, 35.344639, 35.262203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912064, 35.455940, 35.845142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109777, 35.545471, 35.509148>,  <29.228407, 35.599190, 35.307549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109777, 35.545471, 35.509148>,  <28.912064, 35.455940, 35.845142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109777, 35.545471, 35.509148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401461, 0.798292, 0.448953,
		0.771044, -0.559135, 0.304729,
		0.494288, 0.223825, -0.839989,
		29.258062, 35.612617, 35.257153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665556, 35.399628, 35.769894>,  <28.912064, 35.455940, 35.845142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665556, 35.399628, 35.769894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503767, 35.704502, 35.567715>,  <29.406693, 35.887424, 35.446407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503767, 35.704502, 35.567715>,  <29.665556, 35.399628, 35.769894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503767, 35.704502, 35.567715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485514, 0.647316, 0.587587,
		0.775033, -0.007739, -0.631873,
		-0.404474, 0.762183, -0.505448,
		29.382425, 35.933155, 35.416080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218222, 35.775517, 35.661621>,  <29.665556, 35.399628, 35.769894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218222, 35.775517, 35.661621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883078, 35.993858, 35.659382>,  <29.681992, 36.124863, 35.658039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883078, 35.993858, 35.659382>,  <30.218222, 35.775517, 35.661621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883078, 35.993858, 35.659382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394781, 0.612982, 0.684399,
		0.377016, 0.571219, -0.729087,
		-0.837859, 0.545859, -0.005598,
		29.631720, 36.157616, 35.657703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298267, 36.600067, 35.681725>,  <30.218222, 35.775517, 35.661621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298267, 36.600067, 35.681725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982094, 36.467865, 35.888016>,  <29.792389, 36.388542, 36.011791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982094, 36.467865, 35.888016>,  <30.298267, 36.600067, 35.681725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982094, 36.467865, 35.888016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225338, 0.626015, 0.746544,
		-0.569594, 0.706308, -0.420348,
		-0.790434, -0.330507, 0.515732,
		29.744965, 36.368713, 36.042736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928497, 36.201775, 35.580685>,  <30.298267, 36.600067, 35.681725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928497, 36.201775, 35.580685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326237, 36.230309, 35.549240>,  <31.564880, 36.247429, 35.530373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326237, 36.230309, 35.549240>,  <30.928497, 36.201775, 35.580685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326237, 36.230309, 35.549240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093923, -0.246121, 0.964678,
		0.049468, -0.966611, -0.251430,
		0.994350, 0.071336, -0.078612,
		31.624542, 36.251709, 35.525658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103148, 35.714470, 36.047283>,  <30.928497, 36.201775, 35.580685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103148, 35.714470, 36.047283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441153, 35.923668, 36.002686>,  <31.643955, 36.049187, 35.975929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441153, 35.923668, 36.002686>,  <31.103148, 35.714470, 36.047283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441153, 35.923668, 36.002686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264087, -0.226848, 0.937442,
		0.464984, -0.821595, -0.329805,
		0.845014, 0.522993, -0.111492,
		31.694656, 36.080566, 35.969238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543369, 35.427410, 36.438019>,  <31.103148, 35.714470, 36.047283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543369, 35.427410, 36.438019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725206, 35.782551, 36.409546>,  <31.834309, 35.995636, 36.392460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725206, 35.782551, 36.409546>,  <31.543369, 35.427410, 36.438019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725206, 35.782551, 36.409546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209673, -0.028995, 0.977342,
		0.865668, -0.459220, -0.199339,
		0.454595, 0.887849, -0.071186,
		31.861586, 36.048904, 36.388191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309204, 35.352177, 36.452843>,  <31.543369, 35.427410, 36.438019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309204, 35.352177, 36.452843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261856, 35.732838, 36.566219>,  <32.233448, 35.961235, 36.634247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261856, 35.732838, 36.566219>,  <32.309204, 35.352177, 36.452843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261856, 35.732838, 36.566219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415002, -0.211913, 0.884797,
		0.902087, 0.222366, -0.369854,
		-0.118372, 0.951655, 0.283446,
		32.226345, 36.018333, 36.651253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961327, 35.740986, 36.697624>,  <32.309204, 35.352177, 36.452843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961327, 35.740986, 36.697624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672581, 35.964558, 36.860844>,  <32.499332, 36.098701, 36.958775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672581, 35.964558, 36.860844>,  <32.961327, 35.740986, 36.697624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672581, 35.964558, 36.860844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407389, -0.133419, 0.903456,
		0.559413, 0.818409, -0.131393,
		-0.721866, 0.558933, 0.408047,
		32.456020, 36.132236, 36.983257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283112, 36.183372, 37.205219>,  <32.961327, 35.740986, 36.697624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283112, 36.183372, 37.205219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904057, 36.227261, 37.325180>,  <32.676624, 36.253593, 37.397156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904057, 36.227261, 37.325180>,  <33.283112, 36.183372, 37.205219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904057, 36.227261, 37.325180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314186, 0.152201, 0.937082,
		0.057173, 0.982240, -0.178705,
		-0.947638, 0.109722, 0.299905,
		32.619766, 36.260178, 37.415150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319218, 36.740585, 37.733261>,  <33.283112, 36.183372, 37.205219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319218, 36.740585, 37.733261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970871, 36.553288, 37.793041>,  <32.761864, 36.440910, 37.828911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970871, 36.553288, 37.793041>,  <33.319218, 36.740585, 37.733261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970871, 36.553288, 37.793041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224000, -0.107433, 0.968650,
		-0.437509, 0.877043, 0.198447,
		-0.870867, -0.468246, 0.149455,
		32.709610, 36.412815, 37.837879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911438, 37.218624, 38.203979>,  <33.319218, 36.740585, 37.733261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911438, 37.218624, 38.203979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776287, 36.842800, 38.226105>,  <32.695198, 36.617306, 38.239380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776287, 36.842800, 38.226105>,  <32.911438, 37.218624, 38.203979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776287, 36.842800, 38.226105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128650, 0.012112, 0.991616,
		-0.932356, 0.342162, 0.116783,
		-0.337879, -0.939563, 0.055312,
		32.674923, 36.560932, 38.242699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310986, 37.187149, 38.688095>,  <32.911438, 37.218624, 38.203979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310986, 37.187149, 38.688095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486847, 36.828003, 38.678772>,  <32.592365, 36.612514, 38.673180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486847, 36.828003, 38.678772>,  <32.310986, 37.187149, 38.688095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486847, 36.828003, 38.678772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125602, 0.035765, 0.991436,
		-0.889342, -0.438816, 0.128498,
		0.439654, -0.897865, -0.023308,
		32.618744, 36.558643, 38.671780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085716, 36.903141, 39.289726>,  <32.310986, 37.187149, 38.688095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085716, 36.903141, 39.289726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370632, 36.649597, 39.169151>,  <32.541580, 36.497471, 39.096806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370632, 36.649597, 39.169151>,  <32.085716, 36.903141, 39.289726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370632, 36.649597, 39.169151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204806, -0.223084, 0.953041,
		-0.671340, -0.740578, -0.029083,
		0.712290, -0.633859, -0.301441,
		32.584320, 36.459438, 39.078720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944145, 36.307762, 39.630001>,  <32.085716, 36.903141, 39.289726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944145, 36.307762, 39.630001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328011, 36.276779, 39.521893>,  <32.558331, 36.258190, 39.457027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328011, 36.276779, 39.521893>,  <31.944145, 36.307762, 39.630001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328011, 36.276779, 39.521893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229004, -0.342365, 0.911232,
		-0.163109, -0.936369, -0.310818,
		0.959663, -0.077452, -0.270275,
		32.615910, 36.253544, 39.440811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203804, 35.807854, 39.974781>,  <31.944145, 36.307762, 39.630001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203804, 35.807854, 39.974781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562027, 35.956573, 39.877007>,  <32.776958, 36.045803, 39.818340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562027, 35.956573, 39.877007>,  <32.203804, 35.807854, 39.974781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562027, 35.956573, 39.877007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384452, -0.369992, 0.845756,
		0.224009, -0.851395, -0.474286,
		0.895554, 0.371797, -0.244439,
		32.830692, 36.068111, 39.803677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767895, 35.283546, 39.997204>,  <32.203804, 35.807854, 39.974781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767895, 35.283546, 39.997204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916656, 35.648369, 40.066311>,  <33.005913, 35.867260, 40.107777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916656, 35.648369, 40.066311>,  <32.767895, 35.283546, 39.997204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916656, 35.648369, 40.066311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237346, -0.273361, 0.932170,
		0.897416, -0.305671, -0.318136,
		0.371903, 0.912052, 0.172768,
		33.028229, 35.921986, 40.118141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304367, 35.106476, 40.547798>,  <32.767895, 35.283546, 39.997204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304367, 35.106476, 40.547798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230366, 35.497910, 40.511703>,  <33.185966, 35.732769, 40.490047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230366, 35.497910, 40.511703>,  <33.304367, 35.106476, 40.547798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230366, 35.497910, 40.511703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018059, 0.095196, 0.995295,
		0.982572, 0.182503, -0.035284,
		-0.185003, 0.978586, -0.090241,
		33.174866, 35.791485, 40.484631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727905, 35.396549, 41.157032>,  <33.304367, 35.106476, 40.547798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727905, 35.396549, 41.157032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432793, 35.651794, 41.068951>,  <33.255726, 35.804943, 41.016102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432793, 35.651794, 41.068951>,  <33.727905, 35.396549, 41.157032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432793, 35.651794, 41.068951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031207, 0.293620, 0.955413,
		0.674317, 0.711758, -0.196715,
		-0.737782, 0.638112, -0.220205,
		33.211456, 35.843227, 41.002888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822613, 35.909138, 41.649017>,  <33.727905, 35.396549, 41.157032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822613, 35.909138, 41.649017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458706, 36.014492, 41.520679>,  <33.240360, 36.077705, 41.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458706, 36.014492, 41.520679>,  <33.822613, 35.909138, 41.649017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458706, 36.014492, 41.520679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232124, 0.317991, 0.919239,
		0.344142, 0.910774, -0.228161,
		-0.909772, 0.263387, -0.320847,
		33.185776, 36.093510, 41.424427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582882, 36.622143, 41.900066>,  <33.822613, 35.909138, 41.649017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582882, 36.622143, 41.900066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238880, 36.449387, 41.791351>,  <33.032478, 36.345734, 41.726124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238880, 36.449387, 41.791351>,  <33.582882, 36.622143, 41.900066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238880, 36.449387, 41.791351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410269, 0.268489, 0.871546,
		-0.303437, 0.861039, -0.408092,
		-0.860003, -0.431887, -0.271788,
		32.980881, 36.319820, 41.709816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978172, 37.112652, 41.971893>,  <33.582882, 36.622143, 41.900066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978172, 37.112652, 41.971893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815548, 36.749680, 42.014355>,  <32.717972, 36.531895, 42.039829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815548, 36.749680, 42.014355>,  <32.978172, 37.112652, 41.971893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815548, 36.749680, 42.014355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324333, 0.251970, 0.911767,
		-0.854115, 0.336264, -0.396754,
		-0.406565, -0.907435, 0.106150,
		32.693577, 36.477448, 42.046200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364738, 37.243484, 42.308460>,  <32.978172, 37.112652, 41.971893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364738, 37.243484, 42.308460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421967, 36.849045, 42.342239>,  <32.456303, 36.612381, 42.362507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421967, 36.849045, 42.342239>,  <32.364738, 37.243484, 42.308460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421967, 36.849045, 42.342239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269331, 0.043314, 0.962073,
		-0.952361, -0.160387, -0.259391,
		0.143069, -0.986103, 0.084448,
		32.464886, 36.553215, 42.367573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780607, 36.957783, 42.687168>,  <32.364738, 37.243484, 42.308460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780607, 36.957783, 42.687168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069126, 36.682461, 42.718082>,  <32.242237, 36.517269, 42.736633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069126, 36.682461, 42.718082>,  <31.780607, 36.957783, 42.687168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069126, 36.682461, 42.718082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177927, -0.076292, 0.981082,
		-0.669384, -0.721402, -0.177497,
		0.721296, -0.688302, 0.077289,
		32.285515, 36.475971, 42.741268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479795, 36.362000, 43.053547>,  <31.780607, 36.957783, 42.687168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479795, 36.362000, 43.053547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873913, 36.320850, 43.108116>,  <32.110382, 36.296162, 43.140858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873913, 36.320850, 43.108116>,  <31.479795, 36.362000, 43.053547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873913, 36.320850, 43.108116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144862, -0.079559, 0.986248,
		-0.090622, -0.991506, -0.093294,
		0.985293, -0.102891, 0.136422,
		32.169502, 36.289986, 43.149044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620176, 35.723263, 43.452591>,  <31.479795, 36.362000, 43.053547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620176, 35.723263, 43.452591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929485, 35.969753, 43.512356>,  <32.115070, 36.117645, 43.548214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929485, 35.969753, 43.512356>,  <31.620176, 35.723263, 43.452591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929485, 35.969753, 43.512356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165453, -0.031376, 0.985718,
		0.612109, -0.786947, 0.077693,
		0.773271, 0.616222, 0.149408,
		32.161465, 36.154621, 43.557178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968081, 35.481182, 44.095699>,  <31.620176, 35.723263, 43.452591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968081, 35.481182, 44.095699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119160, 35.847660, 44.042141>,  <32.209808, 36.067547, 44.010006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119160, 35.847660, 44.042141>,  <31.968081, 35.481182, 44.095699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119160, 35.847660, 44.042141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189878, 0.064892, 0.979661,
		0.906251, -0.395439, -0.149456,
		0.377698, 0.916197, -0.133893,
		32.232468, 36.122520, 44.001972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695602, 35.530277, 44.350021>,  <31.968081, 35.481182, 44.095699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695602, 35.530277, 44.350021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537434, 35.897419, 44.363792>,  <32.442532, 36.117702, 44.372055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537434, 35.897419, 44.363792>,  <32.695602, 35.530277, 44.350021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537434, 35.897419, 44.363792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330408, 0.107172, 0.937734,
		0.857013, 0.382176, -0.345645,
		-0.395423, 0.917854, 0.034426,
		32.418808, 36.172775, 44.374119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190262, 35.863045, 44.514530>,  <32.695602, 35.530277, 44.350021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190262, 35.863045, 44.514530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882038, 36.090969, 44.628754>,  <32.697102, 36.227726, 44.697289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882038, 36.090969, 44.628754>,  <33.190262, 35.863045, 44.514530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882038, 36.090969, 44.628754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365490, 0.027988, 0.930394,
		0.522159, 0.821297, -0.229828,
		-0.770563, 0.569813, 0.285562,
		32.650867, 36.261913, 44.714420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499191, 36.254314, 45.075241>,  <33.190262, 35.863045, 44.514530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499191, 36.254314, 45.075241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111984, 36.349045, 45.108360>,  <32.879662, 36.405884, 45.128231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111984, 36.349045, 45.108360>,  <33.499191, 36.254314, 45.075241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111984, 36.349045, 45.108360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107943, 0.095231, 0.989585,
		0.226475, 0.966873, -0.117749,
		-0.968017, 0.236826, 0.082800,
		32.821579, 36.420094, 45.133202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419548, 36.925079, 45.404079>,  <33.499191, 36.254314, 45.075241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419548, 36.925079, 45.404079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079231, 36.726967, 45.474339>,  <32.875042, 36.608101, 45.516495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079231, 36.726967, 45.474339>,  <33.419548, 36.925079, 45.404079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079231, 36.726967, 45.474339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123237, 0.136886, 0.982891,
		-0.510850, 0.857881, -0.055424,
		-0.850791, -0.495280, 0.175651,
		32.823994, 36.578384, 45.527035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975655, 37.346031, 45.788540>,  <33.419548, 36.925079, 45.404079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975655, 37.346031, 45.788540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818424, 36.994167, 45.895638>,  <32.724087, 36.783051, 45.959896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818424, 36.994167, 45.895638>,  <32.975655, 37.346031, 45.788540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818424, 36.994167, 45.895638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208411, 0.368839, 0.905827,
		-0.895575, 0.300259, -0.328313,
		-0.393078, -0.879660, 0.267746,
		32.700500, 36.730270, 45.975960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735077, 37.484261, 46.519417>,  <32.975655, 37.346031, 45.788540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735077, 37.484261, 46.519417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696678, 37.087994, 46.480728>,  <32.673637, 36.850231, 46.457516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696678, 37.087994, 46.480728>,  <32.735077, 37.484261, 46.519417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696678, 37.087994, 46.480728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036434, -0.100602, 0.994259,
		-0.994714, 0.091926, 0.045752,
		-0.096001, -0.990671, -0.096721,
		32.667877, 36.790791, 46.451714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115063, 37.184578, 46.956100>,  <32.735077, 37.484261, 46.519417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115063, 37.184578, 46.956100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372421, 36.883060, 46.902679>,  <32.526836, 36.702148, 46.870628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372421, 36.883060, 46.902679>,  <32.115063, 37.184578, 46.956100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372421, 36.883060, 46.902679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016638, -0.160642, 0.986872,
		-0.765355, -0.637168, -0.090814,
		0.643393, -0.753797, -0.133550,
		32.565437, 36.656921, 46.862614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089325, 36.842014, 47.550846>,  <32.115063, 37.184578, 46.956100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089325, 36.842014, 47.550846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428059, 36.685303, 47.406967>,  <32.631298, 36.591278, 47.320641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428059, 36.685303, 47.406967>,  <32.089325, 36.842014, 47.550846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428059, 36.685303, 47.406967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319646, -0.165643, 0.932946,
		-0.425089, -0.905027, -0.015042,
		0.846833, -0.391777, -0.359702,
		32.682110, 36.567772, 47.299057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137238, 36.166042, 47.768948>,  <32.089325, 36.842014, 47.550846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137238, 36.166042, 47.768948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510857, 36.283760, 47.688004>,  <32.735027, 36.354389, 47.639439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510857, 36.283760, 47.688004>,  <32.137238, 36.166042, 47.768948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510857, 36.283760, 47.688004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271893, -0.218540, 0.937185,
		0.231586, -0.930393, -0.284143,
		0.934046, 0.294295, -0.202356,
		32.791069, 36.372047, 47.627296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482750, 35.677422, 48.005333>,  <32.137238, 36.166042, 47.768948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482750, 35.677422, 48.005333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741306, 35.981880, 47.984024>,  <32.896439, 36.164555, 47.971241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741306, 35.981880, 47.984024>,  <32.482750, 35.677422, 48.005333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741306, 35.981880, 47.984024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234121, -0.131408, 0.963286,
		0.726199, -0.635131, -0.263141,
		0.646392, 0.761144, -0.053269,
		32.935223, 36.210224, 47.968044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246651, 35.427799, 48.150948>,  <32.482750, 35.677422, 48.005333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246651, 35.427799, 48.150948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221535, 35.820110, 48.224842>,  <33.206467, 36.055496, 48.269180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221535, 35.820110, 48.224842>,  <33.246651, 35.427799, 48.150948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221535, 35.820110, 48.224842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380815, -0.147551, 0.912803,
		0.922517, 0.127664, -0.364231,
		-0.062789, 0.980781, 0.184735,
		33.202698, 36.114346, 48.280262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823380, 35.555614, 48.440319>,  <33.246651, 35.427799, 48.150948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823380, 35.555614, 48.440319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577862, 35.852455, 48.548058>,  <33.430550, 36.030560, 48.612701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577862, 35.852455, 48.548058>,  <33.823380, 35.555614, 48.440319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577862, 35.852455, 48.548058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396150, -0.005596, 0.918169,
		0.682878, 0.670268, -0.290547,
		-0.613793, 0.742098, 0.269348,
		33.393723, 36.075085, 48.628860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195068, 35.950665, 48.950916>,  <33.823380, 35.555614, 48.440319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195068, 35.950665, 48.950916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817566, 36.066040, 49.015572>,  <33.591064, 36.135265, 49.054363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817566, 36.066040, 49.015572>,  <34.195068, 35.950665, 48.950916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817566, 36.066040, 49.015572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180766, 0.040772, 0.982681,
		0.276853, 0.956630, -0.090618,
		-0.943756, 0.288439, 0.161639,
		33.534439, 36.152573, 49.064064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348690, 36.326550, 49.548058>,  <34.195068, 35.950665, 48.950916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348690, 36.326550, 49.548058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951572, 36.285328, 49.523586>,  <33.713303, 36.260593, 49.508904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951572, 36.285328, 49.523586>,  <34.348690, 36.326550, 49.548058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951572, 36.285328, 49.523586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052303, -0.086718, 0.994859,
		-0.107829, 0.990889, 0.080703,
		-0.992793, -0.103053, -0.061177,
		33.653736, 36.254414, 49.505234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103085, 36.773876, 50.026169>,  <34.348690, 36.326550, 49.548058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103085, 36.773876, 50.026169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813278, 36.502064, 49.979996>,  <33.639397, 36.338978, 49.952293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813278, 36.502064, 49.979996>,  <34.103085, 36.773876, 50.026169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813278, 36.502064, 49.979996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088123, -0.257418, 0.962274,
		-0.683605, 0.687007, 0.246384,
		-0.724513, -0.679527, -0.115431,
		33.595924, 36.298206, 49.945366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546734, 36.946350, 50.521198>,  <34.103085, 36.773876, 50.026169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546734, 36.946350, 50.521198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553139, 36.558392, 50.424000>,  <33.556984, 36.325619, 50.365681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553139, 36.558392, 50.424000>,  <33.546734, 36.946350, 50.521198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553139, 36.558392, 50.424000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100001, -0.240258, 0.965544,
		-0.994859, -0.039764, 0.093142,
		0.016015, -0.969894, -0.242999,
		33.557945, 36.267422, 50.351101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305046, 36.618076, 51.081757>,  <33.546734, 36.946350, 50.521198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305046, 36.618076, 51.081757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455761, 36.289101, 50.911285>,  <33.546188, 36.091717, 50.809002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455761, 36.289101, 50.911285>,  <33.305046, 36.618076, 51.081757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455761, 36.289101, 50.911285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013469, -0.455172, 0.890301,
		-0.926202, -0.341195, -0.160425,
		0.376787, -0.822438, -0.426177,
		33.568798, 36.042370, 50.783432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794033, 36.157654, 51.278881>,  <33.305046, 36.618076, 51.081757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794033, 36.157654, 51.278881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128078, 35.957748, 51.186947>,  <33.328506, 35.837807, 51.131786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128078, 35.957748, 51.186947>,  <32.794033, 36.157654, 51.278881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128078, 35.957748, 51.186947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102396, -0.551759, 0.827694,
		-0.540450, -0.667692, -0.511959,
		0.835122, -0.499749, -0.229829,
		33.378613, 35.807819, 51.117996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676048, 35.449337, 51.201031>,  <32.794033, 36.157654, 51.278881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676048, 35.449337, 51.201031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038403, 35.509903, 51.359245>,  <33.255814, 35.546242, 51.454174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038403, 35.509903, 51.359245>,  <32.676048, 35.449337, 51.201031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038403, 35.509903, 51.359245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317665, -0.374775, 0.870995,
		0.280118, -0.914668, -0.291404,
		0.905882, 0.151413, 0.395540,
		33.310165, 35.555328, 51.477909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067055, 34.859520, 51.571938>,  <32.676048, 35.449337, 51.201031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067055, 34.859520, 51.571938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155663, 35.195492, 51.770107>,  <33.208828, 35.397076, 51.889008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155663, 35.195492, 51.770107>,  <33.067055, 34.859520, 51.571938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155663, 35.195492, 51.770107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306321, -0.422391, 0.853085,
		0.925794, -0.340735, 0.163720,
		0.221522, 0.839932, 0.495422,
		33.222118, 35.447472, 51.918736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488758, 34.690170, 52.099308>,  <33.067055, 34.859520, 51.571938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488758, 34.690170, 52.099308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289223, 35.019394, 52.207924>,  <33.169502, 35.216927, 52.273094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289223, 35.019394, 52.207924>,  <33.488758, 34.690170, 52.099308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289223, 35.019394, 52.207924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573139, -0.548287, 0.609010,
		0.650132, 0.148169, 0.745234,
		-0.498839, 0.823060, 0.271538,
		33.139572, 35.266312, 52.289387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268349, 34.533432, 52.782658>,  <33.488758, 34.690170, 52.099308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268349, 34.533432, 52.782658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021736, 34.836895, 52.698437>,  <32.873768, 35.018970, 52.647903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021736, 34.836895, 52.698437>,  <33.268349, 34.533432, 52.782658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021736, 34.836895, 52.698437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755685, -0.495138, 0.428695,
		0.220979, 0.423415, 0.878572,
		-0.616530, 0.758656, -0.210553,
		32.836777, 35.064491, 52.635269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911484, 34.131817, 52.788078>,  <33.268349, 34.533432, 52.782658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911484, 34.131817, 52.788078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152081, 33.818466, 52.725433>,  <34.296436, 33.630455, 52.687847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152081, 33.818466, 52.725433>,  <33.911484, 34.131817, 52.788078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152081, 33.818466, 52.725433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088784, 0.129274, -0.987626,
		0.793934, 0.607949, 0.008205,
		0.601487, -0.783381, -0.156611,
		34.332527, 33.583450, 52.678452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525887, 34.317493, 52.349037>,  <33.911484, 34.131817, 52.788078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525887, 34.317493, 52.349037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358932, 33.955921, 52.311707>,  <34.258762, 33.738979, 52.289307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358932, 33.955921, 52.311707>,  <34.525887, 34.317493, 52.349037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358932, 33.955921, 52.311707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176808, 0.181516, -0.967363,
		0.891366, -0.387257, -0.235583,
		-0.417380, -0.903927, -0.093327,
		34.233719, 33.684742, 52.283707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488079, 33.974857, 51.676811>,  <34.525887, 34.317493, 52.349037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488079, 33.974857, 51.676811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297859, 33.641216, 51.788620>,  <34.183727, 33.441032, 51.855705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297859, 33.641216, 51.788620>,  <34.488079, 33.974857, 51.676811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297859, 33.641216, 51.788620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008976, -0.313130, -0.949668,
		0.879643, -0.454123, 0.141422,
		-0.475549, -0.834100, 0.279519,
		34.155193, 33.390987, 51.872475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857105, 33.410599, 51.339371>,  <34.488079, 33.974857, 51.676811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857105, 33.410599, 51.339371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467449, 33.348396, 51.404945>,  <34.233658, 33.311077, 51.444290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467449, 33.348396, 51.404945>,  <34.857105, 33.410599, 51.339371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467449, 33.348396, 51.404945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123448, -0.241397, -0.962542,
		0.189251, -0.957886, 0.215958,
		-0.974138, -0.155503, 0.163934,
		34.175209, 33.301746, 51.454124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743866, 32.720406, 51.150249>,  <34.857105, 33.410599, 51.339371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743866, 32.720406, 51.150249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426807, 32.949394, 51.066357>,  <34.236572, 33.086788, 51.016022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426807, 32.949394, 51.066357>,  <34.743866, 32.720406, 51.150249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426807, 32.949394, 51.066357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122088, -0.187998, -0.974552,
		-0.597335, -0.798079, 0.079123,
		-0.792644, 0.572474, -0.209734,
		34.189014, 33.121136, 51.003437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201485, 32.289623, 50.802261>,  <34.743866, 32.720406, 51.150249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201485, 32.289623, 50.802261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151108, 32.674320, 50.704948>,  <34.120884, 32.905140, 50.646561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151108, 32.674320, 50.704948>,  <34.201485, 32.289623, 50.802261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151108, 32.674320, 50.704948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090899, -0.255391, -0.962555,
		-0.987865, -0.099109, 0.119585,
		-0.125939, 0.961745, -0.243283,
		34.113327, 32.962845, 50.631962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596172, 32.373127, 50.469017>,  <34.201485, 32.289623, 50.802261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596172, 32.373127, 50.469017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845654, 32.665527, 50.358284>,  <33.995342, 32.840969, 50.291843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845654, 32.665527, 50.358284>,  <33.596172, 32.373127, 50.469017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845654, 32.665527, 50.358284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146781, -0.238329, -0.960028,
		-0.767758, 0.639405, -0.041349,
		0.623701, 0.731000, -0.276831,
		34.032764, 32.884827, 50.275234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335556, 32.501080, 49.880985>,  <33.596172, 32.373127, 50.469017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335556, 32.501080, 49.880985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683975, 32.697021, 49.866482>,  <33.893028, 32.814587, 49.857780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683975, 32.697021, 49.866482>,  <33.335556, 32.501080, 49.880985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683975, 32.697021, 49.866482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037442, -0.139811, -0.989470,
		-0.489762, 0.860523, -0.140123,
		0.871052, 0.489851, -0.036255,
		33.945290, 32.843975, 49.855606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309307, 33.018787, 49.216774>,  <33.335556, 32.501080, 49.880985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309307, 33.018787, 49.216774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694557, 32.954018, 49.302727>,  <33.925709, 32.915157, 49.354298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694557, 32.954018, 49.302727>,  <33.309307, 33.018787, 49.216774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694557, 32.954018, 49.302727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226490, 0.056804, -0.972356,
		0.145242, 0.985167, 0.091383,
		0.963124, -0.161924, 0.214880,
		33.983494, 32.905441, 49.367191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639965, 33.435925, 48.788136>,  <33.309307, 33.018787, 49.216774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639965, 33.435925, 48.788136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951492, 33.209911, 48.897083>,  <34.138409, 33.074303, 48.962452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951492, 33.209911, 48.897083>,  <33.639965, 33.435925, 48.788136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951492, 33.209911, 48.897083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485086, 0.267258, -0.832625,
		0.397666, 0.780585, 0.482234,
		0.778815, -0.565032, 0.272372,
		34.185139, 33.040401, 48.978794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243488, 33.814751, 48.746239>,  <33.639965, 33.435925, 48.788136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243488, 33.814751, 48.746239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337116, 33.426636, 48.721718>,  <34.393291, 33.193768, 48.707005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337116, 33.426636, 48.721718>,  <34.243488, 33.814751, 48.746239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337116, 33.426636, 48.721718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541538, 0.182481, -0.820632,
		0.807434, 0.158887, 0.568160,
		0.234066, -0.970286, -0.061298,
		34.407337, 33.135551, 48.703327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998451, 33.827084, 48.583790>,  <34.243488, 33.814751, 48.746239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998451, 33.827084, 48.583790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849083, 33.477451, 48.459507>,  <34.759460, 33.267673, 48.384937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849083, 33.477451, 48.459507>,  <34.998451, 33.827084, 48.583790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849083, 33.477451, 48.459507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467799, 0.111804, -0.876735,
		0.801075, -0.472741, 0.367144,
		-0.373421, -0.874080, -0.310711,
		34.737057, 33.215229, 48.366295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413425, 33.779800, 48.095490>,  <34.998451, 33.827084, 48.583790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413425, 33.779800, 48.095490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155399, 33.481606, 48.028385>,  <35.000584, 33.302689, 47.988125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155399, 33.481606, 48.028385>,  <35.413425, 33.779800, 48.095490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155399, 33.481606, 48.028385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365656, -0.108378, -0.924418,
		0.670961, -0.657650, 0.342503,
		-0.645064, -0.745487, -0.167757,
		34.961880, 33.257961, 47.978058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759937, 33.156441, 47.951176>,  <35.413425, 33.779800, 48.095490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759937, 33.156441, 47.951176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402706, 33.109333, 47.777493>,  <35.188366, 33.081066, 47.673283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402706, 33.109333, 47.777493>,  <35.759937, 33.156441, 47.951176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402706, 33.109333, 47.777493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448281, -0.151142, -0.881022,
		0.038133, -0.981471, 0.187777,
		-0.893079, -0.117773, -0.434211,
		35.134781, 33.074001, 47.647228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775494, 32.544594, 47.591682>,  <35.759937, 33.156441, 47.951176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775494, 32.544594, 47.591682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499683, 32.777195, 47.418983>,  <35.334198, 32.916756, 47.315365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499683, 32.777195, 47.418983>,  <35.775494, 32.544594, 47.591682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499683, 32.777195, 47.418983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461552, -0.106597, -0.880685,
		-0.558147, -0.806528, -0.194894,
		-0.689523, 0.581506, -0.431751,
		35.292828, 32.951645, 47.289459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661907, 32.253105, 46.970768>,  <35.775494, 32.544594, 47.591682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661907, 32.253105, 46.970768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541016, 32.633587, 46.945892>,  <35.468483, 32.861877, 46.930969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541016, 32.633587, 46.945892>,  <35.661907, 32.253105, 46.970768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541016, 32.633587, 46.945892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475287, 0.093821, -0.874814,
		-0.826294, -0.293948, -0.480451,
		-0.302226, 0.951206, -0.062186,
		35.450348, 32.918949, 46.927235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563339, 32.385811, 46.279900>,  <35.661907, 32.253105, 46.970768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563339, 32.385811, 46.279900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613071, 32.760059, 46.412056>,  <35.642910, 32.984608, 46.491348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613071, 32.760059, 46.412056>,  <35.563339, 32.385811, 46.279900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613071, 32.760059, 46.412056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451285, 0.243220, -0.858595,
		-0.883677, 0.255846, -0.391993,
		0.124327, 0.935621, 0.330387,
		35.650372, 33.040745, 46.511173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241119, 32.861279, 45.716091>,  <35.563339, 32.385811, 46.279900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241119, 32.861279, 45.716091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492668, 33.074669, 45.942341>,  <35.643597, 33.202702, 46.078091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492668, 33.074669, 45.942341>,  <35.241119, 32.861279, 45.716091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492668, 33.074669, 45.942341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403913, 0.397458, -0.823943,
		-0.664364, 0.746614, 0.034471,
		0.628868, 0.533474, 0.565624,
		35.681328, 33.234711, 46.112026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182423, 33.343571, 45.357582>,  <35.241119, 32.861279, 45.716091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182423, 33.343571, 45.357582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499027, 33.428486, 45.586823>,  <35.688988, 33.479435, 45.724369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499027, 33.428486, 45.586823>,  <35.182423, 33.343571, 45.357582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499027, 33.428486, 45.586823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376996, 0.568475, -0.731239,
		-0.481031, 0.794839, 0.369919,
		0.791507, 0.212290, 0.573105,
		35.736481, 33.492172, 45.758755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236698, 33.997818, 45.315590>,  <35.182423, 33.343571, 45.357582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236698, 33.997818, 45.315590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606030, 33.874912, 45.407719>,  <35.827629, 33.801170, 45.462997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606030, 33.874912, 45.407719>,  <35.236698, 33.997818, 45.315590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606030, 33.874912, 45.407719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376088, 0.602422, -0.704021,
		0.077564, 0.736667, 0.671793,
		0.923332, -0.307260, 0.230325,
		35.883030, 33.782734, 45.476818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693523, 34.621426, 45.369434>,  <35.236698, 33.997818, 45.315590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693523, 34.621426, 45.369434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915714, 34.301929, 45.276955>,  <36.049030, 34.110233, 45.221466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915714, 34.301929, 45.276955>,  <35.693523, 34.621426, 45.369434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915714, 34.301929, 45.276955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328188, 0.466063, -0.821631,
		0.764025, 0.380522, 0.521026,
		0.555480, -0.798742, -0.231201,
		36.082359, 34.062305, 45.207596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239021, 34.931965, 45.051414>,  <35.693523, 34.621426, 45.369434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239021, 34.931965, 45.051414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247101, 34.544048, 44.954174>,  <36.251949, 34.311298, 44.895828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247101, 34.544048, 44.954174>,  <36.239021, 34.931965, 45.051414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247101, 34.544048, 44.954174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429826, 0.227956, -0.873662,
		0.902686, -0.086848, 0.421444,
		0.020196, -0.969790, -0.243102,
		36.253159, 34.253113, 44.881245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848785, 34.869083, 44.531448>,  <36.239021, 34.931965, 45.051414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848785, 34.869083, 44.531448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607410, 34.551937, 44.497421>,  <36.462585, 34.361649, 44.477005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607410, 34.551937, 44.497421>,  <36.848785, 34.869083, 44.531448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607410, 34.551937, 44.497421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018750, 0.120757, -0.992505,
		0.797193, -0.597316, -0.087735,
		-0.603433, -0.792863, -0.085067,
		36.426380, 34.314079, 44.471901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106716, 34.498135, 43.972176>,  <36.848785, 34.869083, 44.531448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106716, 34.498135, 43.972176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731892, 34.363506, 44.009327>,  <36.506996, 34.282730, 44.031616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731892, 34.363506, 44.009327>,  <37.106716, 34.498135, 43.972176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731892, 34.363506, 44.009327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130266, 0.090216, -0.987366,
		0.323945, -0.937324, -0.128383,
		-0.937064, -0.336576, 0.092877,
		36.450771, 34.262535, 44.037189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122299, 34.134430, 43.411873>,  <37.106716, 34.498135, 43.972176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122299, 34.134430, 43.411873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740726, 34.173008, 43.525509>,  <36.511784, 34.196156, 43.593693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740726, 34.173008, 43.525509>,  <37.122299, 34.134430, 43.411873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740726, 34.173008, 43.525509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283812, 0.016897, -0.958731,
		-0.097261, -0.995195, 0.011252,
		-0.953935, 0.096441, 0.284092,
		36.454548, 34.201939, 43.610737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721428, 33.522308, 43.168556>,  <37.122299, 34.134430, 43.411873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721428, 33.522308, 43.168556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464375, 33.826241, 43.207928>,  <36.310143, 34.008598, 43.231548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464375, 33.826241, 43.207928>,  <36.721428, 33.522308, 43.168556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464375, 33.826241, 43.207928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396793, -0.220160, -0.891114,
		-0.655424, -0.611712, 0.442976,
		-0.642631, 0.759827, 0.098425,
		36.271584, 34.054188, 43.237453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046124, 33.289276, 42.947842>,  <36.721428, 33.522308, 43.168556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046124, 33.289276, 42.947842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006062, 33.687252, 42.951210>,  <35.982025, 33.926037, 42.953232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006062, 33.687252, 42.951210>,  <36.046124, 33.289276, 42.947842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006062, 33.687252, 42.951210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405830, -0.033120, -0.913349,
		-0.908445, -0.094892, 0.407092,
		-0.100153, 0.994936, 0.008422,
		35.976017, 33.985733, 42.953735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326973, 33.487305, 42.561737>,  <36.046124, 33.289276, 42.947842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326973, 33.487305, 42.561737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524532, 33.835114, 42.561314>,  <35.643066, 34.043797, 42.561058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524532, 33.835114, 42.561314>,  <35.326973, 33.487305, 42.561737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524532, 33.835114, 42.561314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403178, 0.227928, -0.886282,
		-0.770397, 0.438163, 0.463144,
		0.493899, 0.869519, -0.001063,
		35.672703, 34.095970, 42.560993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865891, 34.047771, 42.418816>,  <35.326973, 33.487305, 42.561737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865891, 34.047771, 42.418816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202915, 34.232216, 42.307480>,  <35.405128, 34.342880, 42.240677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202915, 34.232216, 42.307480>,  <34.865891, 34.047771, 42.418816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202915, 34.232216, 42.307480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380558, 0.143967, -0.913482,
		-0.381142, 0.875587, 0.296779,
		0.842559, 0.461108, -0.278340,
		35.455685, 34.370548, 42.223976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774948, 34.650436, 42.041805>,  <34.865891, 34.047771, 42.418816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774948, 34.650436, 42.041805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146618, 34.551189, 41.932209>,  <35.369621, 34.491642, 41.866451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146618, 34.551189, 41.932209>,  <34.774948, 34.650436, 42.041805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146618, 34.551189, 41.932209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230891, 0.189267, -0.954394,
		0.288664, 0.950060, 0.118573,
		0.929173, -0.248122, -0.273995,
		35.425369, 34.476753, 41.850010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131138, 35.258053, 41.774258>,  <34.774948, 34.650436, 42.041805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131138, 35.258053, 41.774258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320034, 34.939625, 41.622856>,  <35.433372, 34.748569, 41.532017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320034, 34.939625, 41.622856>,  <35.131138, 35.258053, 41.774258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320034, 34.939625, 41.622856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159384, 0.345206, -0.924895,
		0.866939, 0.497102, 0.036141,
		0.472243, -0.796067, -0.378503,
		35.461708, 34.700806, 41.509304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524418, 35.492638, 41.148949>,  <35.131138, 35.258053, 41.774258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524418, 35.492638, 41.148949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545475, 35.097893, 41.087852>,  <35.558109, 34.861046, 41.051197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545475, 35.097893, 41.087852>,  <35.524418, 35.492638, 41.148949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545475, 35.097893, 41.087852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175454, 0.141431, -0.974276,
		0.983079, 0.078091, -0.165703,
		0.052647, -0.986864, -0.152739,
		35.561268, 34.801834, 41.042030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688004, 35.521568, 40.428623>,  <35.524418, 35.492638, 41.148949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688004, 35.521568, 40.428623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595020, 35.138981, 40.499199>,  <35.539230, 34.909428, 40.541546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595020, 35.138981, 40.499199>,  <35.688004, 35.521568, 40.428623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595020, 35.138981, 40.499199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503538, -0.036853, -0.863187,
		0.832113, -0.289503, -0.473050,
		-0.232462, -0.956467, 0.176442,
		35.525280, 34.852039, 40.552132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926746, 35.042896, 39.865757>,  <35.688004, 35.521568, 40.428623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926746, 35.042896, 39.865757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626144, 34.849895, 40.045723>,  <35.445782, 34.734093, 40.153702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626144, 34.849895, 40.045723>,  <35.926746, 35.042896, 39.865757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626144, 34.849895, 40.045723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444628, -0.133385, -0.885728,
		0.487381, -0.865677, -0.114296,
		-0.751509, -0.482506, 0.449914,
		35.400692, 34.705143, 40.180698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793522, 34.446346, 39.419823>,  <35.926746, 35.042896, 39.865757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793522, 34.446346, 39.419823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467590, 34.461681, 39.651196>,  <35.272030, 34.470882, 39.790020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467590, 34.461681, 39.651196>,  <35.793522, 34.446346, 39.419823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467590, 34.461681, 39.651196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570011, -0.234636, -0.787422,
		0.105535, -0.971327, 0.213039,
		-0.814831, 0.038334, 0.578429,
		35.223141, 34.473183, 39.824726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526024, 33.735886, 39.304653>,  <35.793522, 34.446346, 39.419823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526024, 33.735886, 39.304653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222893, 33.967945, 39.424061>,  <35.041012, 34.107182, 39.495705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222893, 33.967945, 39.424061>,  <35.526024, 33.735886, 39.304653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222893, 33.967945, 39.424061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494456, -0.212163, -0.842911,
		-0.425682, -0.786390, 0.447644,
		-0.757831, 0.580153, 0.298522,
		34.995544, 34.141991, 39.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935223, 33.386642, 39.159485>,  <35.526024, 33.735886, 39.304653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935223, 33.386642, 39.159485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783237, 33.753864, 39.204746>,  <34.692047, 33.974197, 39.231903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783237, 33.753864, 39.204746>,  <34.935223, 33.386642, 39.159485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783237, 33.753864, 39.204746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528301, -0.114967, -0.841238,
		-0.759295, -0.379414, 0.528693,
		-0.379959, 0.918057, 0.113151,
		34.669250, 34.029282, 39.238693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165112, 33.293438, 39.147118>,  <34.935223, 33.386642, 39.159485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165112, 33.293438, 39.147118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278889, 33.660225, 39.035217>,  <34.347157, 33.880299, 38.968079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278889, 33.660225, 39.035217>,  <34.165112, 33.293438, 39.147118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278889, 33.660225, 39.035217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512662, -0.101089, -0.852619,
		-0.810104, 0.385939, 0.441341,
		0.284444, 0.916969, -0.279749,
		34.364223, 33.935314, 38.951294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567856, 33.482677, 38.669762>,  <34.165112, 33.293438, 39.147118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567856, 33.482677, 38.669762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844685, 33.759048, 38.586185>,  <34.010780, 33.924870, 38.536041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844685, 33.759048, 38.586185>,  <33.567856, 33.482677, 38.669762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844685, 33.759048, 38.586185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290988, 0.002151, -0.956724,
		-0.660578, 0.722921, 0.202540,
		0.692071, 0.690928, -0.208940,
		34.052307, 33.966328, 38.523502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249172, 33.946148, 38.127907>,  <33.567856, 33.482677, 38.669762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249172, 33.946148, 38.127907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645390, 34.000954, 38.125263>,  <33.883121, 34.033836, 38.123676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645390, 34.000954, 38.125263>,  <33.249172, 33.946148, 38.127907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645390, 34.000954, 38.125263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006133, -0.092378, -0.995705,
		-0.137034, 0.986253, -0.092345,
		0.990547, 0.137011, -0.006611,
		33.942554, 34.042057, 38.123280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350571, 34.439869, 37.620281>,  <33.249172, 33.946148, 38.127907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350571, 34.439869, 37.620281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686153, 34.227245, 37.666912>,  <33.887505, 34.099670, 37.694889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686153, 34.227245, 37.666912>,  <33.350571, 34.439869, 37.620281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686153, 34.227245, 37.666912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187981, 0.082040, -0.978740,
		0.510693, 0.843039, 0.168751,
		0.838961, -0.531558, 0.116578,
		33.937843, 34.067780, 37.701885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900623, 34.803623, 37.189293>,  <33.350571, 34.439869, 37.620281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900623, 34.803623, 37.189293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075756, 34.452991, 37.269211>,  <34.180836, 34.242615, 37.317162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075756, 34.452991, 37.269211>,  <33.900623, 34.803623, 37.189293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075756, 34.452991, 37.269211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425138, 0.006050, -0.905108,
		0.792186, 0.481227, 0.375315,
		0.437833, -0.876575, 0.199795,
		34.207108, 34.190018, 37.329151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659554, 34.870438, 37.014523>,  <33.900623, 34.803623, 37.189293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659554, 34.870438, 37.014523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598770, 34.475239, 37.025604>,  <34.562302, 34.238117, 37.032253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598770, 34.475239, 37.025604>,  <34.659554, 34.870438, 37.014523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598770, 34.475239, 37.025604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495401, -0.100389, -0.862844,
		0.855270, -0.117390, 0.504711,
		-0.151957, -0.987999, 0.027704,
		34.553185, 34.178841, 37.033916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267757, 34.662922, 36.758945>,  <34.659554, 34.870438, 37.014523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267757, 34.662922, 36.758945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033840, 34.343376, 36.702618>,  <34.893490, 34.151649, 36.668823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033840, 34.343376, 36.702618>,  <35.267757, 34.662922, 36.758945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033840, 34.343376, 36.702618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448069, -0.173406, -0.877020,
		0.676205, -0.575969, 0.459354,
		-0.584791, -0.798868, -0.140815,
		34.858402, 34.103714, 36.660374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753670, 33.953236, 36.631153>,  <35.267757, 34.662922, 36.758945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753670, 33.953236, 36.631153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377922, 33.946663, 36.494144>,  <35.152473, 33.942719, 36.411938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377922, 33.946663, 36.494144>,  <35.753670, 33.953236, 36.631153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377922, 33.946663, 36.494144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340189, -0.170452, -0.924780,
		-0.043190, -0.985229, 0.165706,
		-0.939365, -0.016430, -0.342525,
		35.096111, 33.941734, 36.391388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453396, 33.638668, 36.497932>,  <35.753670, 33.953236, 36.631153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453396, 33.638668, 36.497932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837849, 33.684586, 36.397488>,  <37.068520, 33.712135, 36.337223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837849, 33.684586, 36.397488>,  <36.453396, 33.638668, 36.497932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837849, 33.684586, 36.397488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245096, 0.064026, 0.967382,
		0.127127, -0.991324, 0.033401,
		0.961128, 0.114794, -0.251109,
		37.126186, 33.719021, 36.322155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765656, 33.254391, 37.015736>,  <36.453396, 33.638668, 36.497932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765656, 33.254391, 37.015736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067905, 33.470772, 36.868000>,  <37.249256, 33.600601, 36.779358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067905, 33.470772, 36.868000>,  <36.765656, 33.254391, 37.015736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067905, 33.470772, 36.868000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497135, -0.106484, 0.861114,
		0.426491, -0.834287, -0.349387,
		0.755621, 0.540950, -0.369339,
		37.294590, 33.633057, 36.757198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395908, 32.743198, 36.990204>,  <36.765656, 33.254391, 37.015736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395908, 32.743198, 36.990204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487415, 33.132526, 36.997387>,  <37.542320, 33.366123, 37.001698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487415, 33.132526, 36.997387>,  <37.395908, 32.743198, 36.990204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487415, 33.132526, 36.997387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467971, -0.126125, 0.874697,
		0.853621, -0.191699, -0.484337,
		0.228766, 0.973316, 0.017953,
		37.556046, 33.424522, 37.002773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181618, 32.777802, 37.162884>,  <37.395908, 32.743198, 36.990204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181618, 32.777802, 37.162884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023937, 33.138405, 37.234314>,  <37.929329, 33.354767, 37.277172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023937, 33.138405, 37.234314>,  <38.181618, 32.777802, 37.162884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023937, 33.138405, 37.234314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416504, 0.002036, 0.909132,
		0.819227, 0.432755, -0.376284,
		-0.394198, 0.901509, 0.178576,
		37.905678, 33.408859, 37.287888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623299, 33.255920, 37.359032>,  <38.181618, 32.777802, 37.162884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623299, 33.255920, 37.359032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297054, 33.417446, 37.524788>,  <38.101307, 33.514362, 37.624241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297054, 33.417446, 37.524788>,  <38.623299, 33.255920, 37.359032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297054, 33.417446, 37.524788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484725, 0.085788, 0.870449,
		0.315954, 0.910808, -0.265710,
		-0.815607, 0.403818, 0.414386,
		38.052372, 33.538593, 37.649105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853264, 33.682785, 37.871616>,  <38.623299, 33.255920, 37.359032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853264, 33.682785, 37.871616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473282, 33.658520, 37.994186>,  <38.245293, 33.643959, 38.067730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473282, 33.658520, 37.994186>,  <38.853264, 33.682785, 37.871616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473282, 33.658520, 37.994186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312153, -0.147544, 0.938505,
		-0.011720, 0.987193, 0.159097,
		-0.949959, -0.060662, 0.306426,
		38.188293, 33.640320, 38.086113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817230, 34.029526, 38.512581>,  <38.853264, 33.682785, 37.871616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817230, 34.029526, 38.512581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481373, 33.813686, 38.537373>,  <38.279858, 33.684185, 38.552250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481373, 33.813686, 38.537373>,  <38.817230, 34.029526, 38.512581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481373, 33.813686, 38.537373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121716, -0.075717, 0.989673,
		-0.529330, 0.838513, 0.129252,
		-0.839640, -0.539596, 0.061981,
		38.229481, 33.651806, 38.555965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335747, 34.378571, 39.000652>,  <38.817230, 34.029526, 38.512581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335747, 34.378571, 39.000652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251991, 33.987652, 38.987694>,  <38.201736, 33.753101, 38.979919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251991, 33.987652, 38.987694>,  <38.335747, 34.378571, 39.000652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251991, 33.987652, 38.987694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067673, -0.047538, 0.996574,
		-0.975488, 0.206479, 0.076090,
		-0.209388, -0.977296, -0.032400,
		38.189175, 33.694462, 38.977974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942455, 34.262142, 39.561172>,  <38.335747, 34.378571, 39.000652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942455, 34.262142, 39.561172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012356, 33.877007, 39.478813>,  <38.054298, 33.645924, 39.429398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012356, 33.877007, 39.478813>,  <37.942455, 34.262142, 39.561172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012356, 33.877007, 39.478813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204643, -0.169029, 0.964132,
		-0.963111, -0.210623, 0.167500,
		0.174756, -0.962843, -0.205896,
		38.064781, 33.588154, 39.417046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492981, 33.947033, 39.916138>,  <37.942455, 34.262142, 39.561172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492981, 33.947033, 39.916138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783337, 33.677288, 39.862003>,  <37.957550, 33.515442, 39.829521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783337, 33.677288, 39.862003>,  <37.492981, 33.947033, 39.916138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783337, 33.677288, 39.862003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102155, -0.088879, 0.990790,
		-0.680181, -0.733031, 0.004373,
		0.725891, -0.674363, -0.135337,
		38.001102, 33.474979, 39.821404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354351, 33.317532, 40.353344>,  <37.492981, 33.947033, 39.916138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354351, 33.317532, 40.353344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744213, 33.310101, 40.264168>,  <37.978130, 33.305641, 40.210663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744213, 33.310101, 40.264168>,  <37.354351, 33.317532, 40.353344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744213, 33.310101, 40.264168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222501, -0.023300, 0.974654,
		-0.023300, -0.999556, -0.018577,
		-0.974654, 0.018577, 0.222945,
		38.036610, 33.304527, 40.197285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645084, 32.715500, 40.699303>,  <37.354351, 33.317532, 40.353344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645084, 32.715500, 40.699303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951649, 32.962570, 40.628769>,  <38.135586, 33.110813, 40.586449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951649, 32.962570, 40.628769>,  <37.645084, 32.715500, 40.699303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951649, 32.962570, 40.628769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356704, -0.180943, 0.916527,
		0.534210, -0.765334, -0.359004,
		0.766409, 0.617676, -0.176336,
		38.181572, 33.147873, 40.575867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321835, 32.282661, 40.897022>,  <37.645084, 32.715500, 40.699303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321835, 32.282661, 40.897022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385937, 32.676926, 40.918163>,  <38.424397, 32.913483, 40.930847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385937, 32.676926, 40.918163>,  <38.321835, 32.282661, 40.897022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385937, 32.676926, 40.918163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316836, -0.102076, 0.942972,
		0.934844, -0.134372, -0.328651,
		0.160256, 0.985660, 0.052851,
		38.434013, 32.972622, 40.934017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839252, 32.361637, 41.291210>,  <38.321835, 32.282661, 40.897022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839252, 32.361637, 41.291210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725975, 32.745018, 41.304874>,  <38.658009, 32.975048, 41.313072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725975, 32.745018, 41.304874>,  <38.839252, 32.361637, 41.291210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725975, 32.745018, 41.304874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391168, 0.082915, 0.916577,
		0.875664, 0.272933, -0.398397,
		-0.283197, 0.958453, 0.034157,
		38.641014, 33.032555, 41.315121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426960, 32.754162, 41.637207>,  <38.839252, 32.361637, 41.291210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426960, 32.754162, 41.637207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104786, 32.990055, 41.660816>,  <38.911480, 33.131592, 41.674980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104786, 32.990055, 41.660816>,  <39.426960, 32.754162, 41.637207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104786, 32.990055, 41.660816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188846, 0.160972, 0.968723,
		0.561788, 0.791393, -0.241022,
		-0.805439, 0.589733, 0.059020,
		38.863155, 33.166977, 41.678520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603737, 33.350632, 41.996777>,  <39.426960, 32.754162, 41.637207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603737, 33.350632, 41.996777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205830, 33.362133, 42.035984>,  <38.967087, 33.369034, 42.059509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205830, 33.362133, 42.035984>,  <39.603737, 33.350632, 41.996777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205830, 33.362133, 42.035984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102141, 0.289591, 0.951685,
		-0.001023, 0.956718, -0.291013,
		-0.994769, 0.028751, 0.098017,
		38.907398, 33.370758, 42.065388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460049, 33.962975, 42.525509>,  <39.603737, 33.350632, 41.996777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460049, 33.962975, 42.525509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136730, 33.728397, 42.504559>,  <38.942741, 33.587650, 42.491989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136730, 33.728397, 42.504559>,  <39.460049, 33.962975, 42.525509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136730, 33.728397, 42.504559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110321, 0.063478, 0.991867,
		-0.578353, 0.807496, -0.116007,
		-0.808293, -0.586447, -0.052371,
		38.894241, 33.552464, 42.488846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031773, 34.302132, 42.953335>,  <39.460049, 33.962975, 42.525509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031773, 34.302132, 42.953335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896996, 33.925911, 42.936241>,  <38.816128, 33.700176, 42.925983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896996, 33.925911, 42.936241>,  <39.031773, 34.302132, 42.953335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896996, 33.925911, 42.936241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102187, -0.008589, 0.994728,
		-0.935963, 0.339534, -0.093219,
		-0.336943, -0.940555, -0.042735,
		38.795914, 33.643745, 42.923420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445129, 34.268997, 43.272430>,  <39.031773, 34.302132, 42.953335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445129, 34.268997, 43.272430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580578, 33.893204, 43.293251>,  <38.661846, 33.667728, 43.305744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580578, 33.893204, 43.293251>,  <38.445129, 34.268997, 43.272430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580578, 33.893204, 43.293251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204501, -0.019482, 0.978673,
		-0.918431, -0.342045, -0.198721,
		0.338621, -0.939481, 0.052056,
		38.682163, 33.611359, 43.308868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960735, 33.980274, 43.582008>,  <38.445129, 34.268997, 43.272430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960735, 33.980274, 43.582008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259827, 33.716545, 43.613518>,  <38.439281, 33.558308, 43.632423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259827, 33.716545, 43.613518>,  <37.960735, 33.980274, 43.582008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259827, 33.716545, 43.613518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189157, -0.097782, 0.977066,
		-0.636495, -0.745478, -0.197829,
		0.747725, -0.659319, 0.078775,
		38.484146, 33.518749, 43.637150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726021, 33.359566, 43.995598>,  <37.960735, 33.980274, 43.582008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726021, 33.359566, 43.995598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122589, 33.406578, 44.018444>,  <38.360531, 33.434788, 44.032150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122589, 33.406578, 44.018444>,  <37.726021, 33.359566, 43.995598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122589, 33.406578, 44.018444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029453, -0.224851, 0.973948,
		0.127316, -0.967278, -0.219461,
		0.991424, 0.117536, 0.057116,
		38.420017, 33.441837, 44.035580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958035, 32.839767, 44.486095>,  <37.726021, 33.359566, 43.995598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958035, 32.839767, 44.486095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266411, 33.094425, 44.478752>,  <38.451435, 33.247219, 44.474346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266411, 33.094425, 44.478752>,  <37.958035, 32.839767, 44.486095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266411, 33.094425, 44.478752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024540, 0.058499, 0.997986,
		0.636434, -0.768937, 0.060722,
		0.770940, 0.636643, -0.018361,
		38.497692, 33.285419, 44.473244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304062, 32.658733, 45.044281>,  <37.958035, 32.839767, 44.486095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304062, 32.658733, 45.044281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430611, 33.030437, 44.967991>,  <38.506542, 33.253460, 44.922218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430611, 33.030437, 44.967991>,  <38.304062, 32.658733, 45.044281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430611, 33.030437, 44.967991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099576, 0.232471, 0.967492,
		0.943394, -0.287097, 0.166080,
		0.316373, 0.929264, -0.190724,
		38.525524, 33.309216, 44.910774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866417, 32.795906, 45.551773>,  <38.304062, 32.658733, 45.044281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866417, 32.795906, 45.551773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723476, 33.150059, 45.432846>,  <38.637711, 33.362549, 45.361488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723476, 33.150059, 45.432846>,  <38.866417, 32.795906, 45.551773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723476, 33.150059, 45.432846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030574, 0.329255, 0.943746,
		0.933469, 0.328159, -0.144730,
		-0.357352, 0.885383, -0.297316,
		38.616272, 33.415672, 45.343651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105755, 33.203594, 46.009258>,  <38.866417, 32.795906, 45.551773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105755, 33.203594, 46.009258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890938, 33.492271, 45.834560>,  <38.762047, 33.665478, 45.729740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890938, 33.492271, 45.834560>,  <39.105755, 33.203594, 46.009258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890938, 33.492271, 45.834560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119639, 0.447346, 0.886323,
		0.835029, 0.528243, -0.153901,
		-0.537041, 0.721693, -0.436745,
		38.729824, 33.708778, 45.703537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376617, 33.917305, 46.144749>,  <39.105755, 33.203594, 46.009258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376617, 33.917305, 46.144749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986176, 33.950031, 46.064217>,  <38.751911, 33.969666, 46.015896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986176, 33.950031, 46.064217>,  <39.376617, 33.917305, 46.144749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986176, 33.950031, 46.064217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167835, 0.304749, 0.937528,
		0.138057, 0.948913, -0.283735,
		-0.976100, 0.081811, -0.201334,
		38.693344, 33.974575, 46.003815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188797, 34.585972, 46.372791>,  <39.376617, 33.917305, 46.144749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188797, 34.585972, 46.372791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863689, 34.354080, 46.349747>,  <38.668625, 34.214943, 46.335918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863689, 34.354080, 46.349747>,  <39.188797, 34.585972, 46.372791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863689, 34.354080, 46.349747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308876, 0.344955, 0.886342,
		-0.493968, 0.738185, -0.459433,
		-0.812768, -0.579732, -0.057611,
		38.619858, 34.180161, 46.332462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690281, 34.946106, 46.666759>,  <39.188797, 34.585972, 46.372791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690281, 34.946106, 46.666759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504482, 34.591961, 46.674622>,  <38.393005, 34.379475, 46.679340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504482, 34.591961, 46.674622>,  <38.690281, 34.946106, 46.666759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504482, 34.591961, 46.674622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439279, 0.249619, 0.862974,
		-0.768948, 0.392212, -0.504865,
		-0.464493, -0.885359, 0.019654,
		38.365135, 34.326355, 46.680519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072689, 35.029926, 46.949078>,  <38.690281, 34.946106, 46.666759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072689, 35.029926, 46.949078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126953, 34.637199, 47.002205>,  <38.159512, 34.401566, 47.034081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126953, 34.637199, 47.002205>,  <38.072689, 35.029926, 46.949078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126953, 34.637199, 47.002205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459782, 0.056358, 0.886241,
		-0.877608, -0.181294, -0.443775,
		0.135660, -0.981813, 0.132816,
		38.167652, 34.342655, 47.042049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501724, 34.985275, 47.219978>,  <38.072689, 35.029926, 46.949078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501724, 34.985275, 47.219978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706158, 34.654999, 47.315506>,  <37.828815, 34.456833, 47.372822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706158, 34.654999, 47.315506>,  <37.501724, 34.985275, 47.219978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706158, 34.654999, 47.315506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257133, 0.118250, 0.959114,
		-0.820171, -0.551591, -0.151877,
		0.511079, -0.825690, 0.238817,
		37.859482, 34.407291, 47.387150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039661, 34.664246, 47.673294>,  <37.501724, 34.985275, 47.219978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039661, 34.664246, 47.673294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403557, 34.512234, 47.740181>,  <37.621895, 34.421028, 47.780312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403557, 34.512234, 47.740181>,  <37.039661, 34.664246, 47.673294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403557, 34.512234, 47.740181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083644, 0.226728, 0.970360,
		-0.406677, -0.896756, 0.174476,
		0.909735, -0.380030, 0.167213,
		37.676476, 34.398224, 47.790344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986771, 34.300636, 48.231411>,  <37.039661, 34.664246, 47.673294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986771, 34.300636, 48.231411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381233, 34.366531, 48.238903>,  <37.617912, 34.406067, 48.243401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381233, 34.366531, 48.238903>,  <36.986771, 34.300636, 48.231411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381233, 34.366531, 48.238903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053913, 0.211769, 0.975832,
		0.156783, -0.963337, 0.217719,
		0.986160, 0.164732, 0.018735,
		37.677082, 34.415951, 48.244522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291862, 33.822624, 48.748413>,  <36.986771, 34.300636, 48.231411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291862, 33.822624, 48.748413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574451, 34.101360, 48.698929>,  <37.744007, 34.268604, 48.669239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574451, 34.101360, 48.698929>,  <37.291862, 33.822624, 48.748413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574451, 34.101360, 48.698929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090238, 0.084677, 0.992314,
		0.701961, -0.712208, -0.003060,
		0.706475, 0.696842, -0.123708,
		37.786392, 34.310413, 48.661816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831226, 33.649960, 49.143444>,  <37.291862, 33.822624, 48.748413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831226, 33.649960, 49.143444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881123, 34.040398, 49.072247>,  <37.911060, 34.274658, 49.029526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881123, 34.040398, 49.072247>,  <37.831226, 33.649960, 49.143444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881123, 34.040398, 49.072247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144007, 0.159689, 0.976607,
		0.981683, -0.147455, -0.120644,
		0.124740, 0.976092, -0.177998,
		37.918545, 34.333225, 49.018848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370373, 33.784176, 49.615513>,  <37.831226, 33.649960, 49.143444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370373, 33.784176, 49.615513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187794, 34.125008, 49.513042>,  <38.078247, 34.329506, 49.451561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187794, 34.125008, 49.513042>,  <38.370373, 33.784176, 49.615513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187794, 34.125008, 49.513042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030826, 0.302888, 0.952527,
		0.889217, 0.426879, -0.164518,
		-0.456445, 0.852076, -0.256174,
		38.050861, 34.380630, 49.436192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743252, 34.355453, 49.960102>,  <38.370373, 33.784176, 49.615513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743252, 34.355453, 49.960102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379967, 34.487106, 49.856697>,  <38.161995, 34.566097, 49.794655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379967, 34.487106, 49.856697>,  <38.743252, 34.355453, 49.960102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379967, 34.487106, 49.856697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187630, 0.231922, 0.954467,
		0.374100, 0.915360, -0.148879,
		-0.908209, 0.329132, -0.258511,
		38.107506, 34.585846, 49.779144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667789, 35.079880, 50.215771>,  <38.743252, 34.355453, 49.960102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667789, 35.079880, 50.215771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306667, 34.911194, 50.182087>,  <38.089993, 34.809982, 50.161877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306667, 34.911194, 50.182087>,  <38.667789, 35.079880, 50.215771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306667, 34.911194, 50.182087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233100, 0.315334, 0.919907,
		-0.361387, 0.850129, -0.382988,
		-0.902809, -0.421717, -0.084208,
		38.035824, 34.784679, 50.156826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243610, 35.532303, 50.343353>,  <38.667789, 35.079880, 50.215771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243610, 35.532303, 50.343353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050987, 35.194698, 50.437798>,  <37.935413, 34.992138, 50.494465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050987, 35.194698, 50.437798>,  <38.243610, 35.532303, 50.343353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050987, 35.194698, 50.437798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208268, 0.371896, 0.904609,
		-0.851308, 0.386448, -0.354870,
		-0.481560, -0.844009, 0.236113,
		37.906521, 34.941494, 50.508633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810844, 36.096046, 50.287842>,  <38.243610, 35.532303, 50.343353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810844, 36.096046, 50.287842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045307, 36.419765, 50.303074>,  <39.185986, 36.613998, 50.312214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045307, 36.419765, 50.303074>,  <38.810844, 36.096046, 50.287842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045307, 36.419765, 50.303074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045238, 0.079620, -0.995798,
		-0.808931, 0.581974, 0.083281,
		0.586160, 0.809300, 0.038080,
		39.221153, 36.662556, 50.314499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499962, 36.528404, 49.920586>,  <38.810844, 36.096046, 50.287842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499962, 36.528404, 49.920586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867489, 36.685539, 49.935791>,  <39.088005, 36.779819, 49.944916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867489, 36.685539, 49.935791>,  <38.499962, 36.528404, 49.920586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867489, 36.685539, 49.935791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113991, 0.356349, -0.927373,
		-0.377857, 0.847756, 0.372201,
		0.918820, 0.392842, 0.038013,
		39.143135, 36.803391, 49.947193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466167, 37.315838, 49.760498>,  <38.499962, 36.528404, 49.920586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466167, 37.315838, 49.760498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840702, 37.198101, 49.683929>,  <39.065422, 37.127460, 49.637989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840702, 37.198101, 49.683929>,  <38.466167, 37.315838, 49.760498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840702, 37.198101, 49.683929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028022, 0.480801, -0.876382,
		0.349990, 0.825951, 0.441942,
		0.936334, -0.294340, -0.191420,
		39.121601, 37.109798, 49.626503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731373, 37.897045, 49.348785>,  <38.466167, 37.315838, 49.760498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731373, 37.897045, 49.348785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010124, 37.616722, 49.287823>,  <39.177376, 37.448528, 49.251244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010124, 37.616722, 49.287823>,  <38.731373, 37.897045, 49.348785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010124, 37.616722, 49.287823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248832, 0.435572, -0.865077,
		0.672638, 0.564930, 0.477925,
		0.696879, -0.700807, -0.152409,
		39.219189, 37.406479, 49.242100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366333, 38.206783, 49.146896>,  <38.731373, 37.897045, 49.348785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366333, 38.206783, 49.146896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390648, 37.834042, 49.003811>,  <39.405235, 37.610397, 48.917961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390648, 37.834042, 49.003811>,  <39.366333, 38.206783, 49.146896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390648, 37.834042, 49.003811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323499, 0.357421, -0.876127,
		0.944274, -0.062461, 0.323180,
		0.060787, -0.931852, -0.357709,
		39.408882, 37.554485, 48.896500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880680, 38.310646, 48.596310>,  <39.366333, 38.206783, 49.146896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880680, 38.310646, 48.596310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738960, 37.941032, 48.538857>,  <39.653927, 37.719265, 48.504383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738960, 37.941032, 48.538857>,  <39.880680, 38.310646, 48.596310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738960, 37.941032, 48.538857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127381, 0.104479, -0.986336,
		0.926416, -0.367754, 0.080688,
		-0.354299, -0.924035, -0.143636,
		39.632671, 37.663822, 48.495766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432590, 37.988556, 48.272869>,  <39.880680, 38.310646, 48.596310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432590, 37.988556, 48.272869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100960, 37.778847, 48.195137>,  <39.901981, 37.653019, 48.148499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100960, 37.778847, 48.195137>,  <40.432590, 37.988556, 48.272869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100960, 37.778847, 48.195137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252880, -0.041618, -0.966602,
		0.498678, -0.850531, 0.167083,
		-0.829079, -0.524275, -0.194328,
		39.852238, 37.621563, 48.136837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608116, 37.447773, 47.809082>,  <40.432590, 37.988556, 48.272869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608116, 37.447773, 47.809082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213768, 37.490726, 47.757660>,  <39.977158, 37.516499, 47.726807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213768, 37.490726, 47.757660>,  <40.608116, 37.447773, 47.809082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213768, 37.490726, 47.757660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118195, -0.097843, -0.988158,
		-0.118705, -0.989390, 0.083767,
		-0.985870, 0.107399, -0.128555,
		39.918007, 37.522942, 47.719093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358589, 36.849373, 47.485622>,  <40.608116, 37.447773, 47.809082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358589, 36.849373, 47.485622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058083, 37.104893, 47.419250>,  <39.877777, 37.258205, 47.379425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058083, 37.104893, 47.419250>,  <40.358589, 36.849373, 47.485622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058083, 37.104893, 47.419250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031917, -0.215959, -0.975881,
		-0.659225, -0.738444, 0.141854,
		-0.751268, 0.638797, -0.165934,
		39.832703, 37.296532, 47.369469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952648, 36.464725, 47.038780>,  <40.358589, 36.849373, 47.485622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952648, 36.464725, 47.038780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841568, 36.847050, 47.000198>,  <39.774918, 37.076447, 46.977051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841568, 36.847050, 47.000198>,  <39.952648, 36.464725, 47.038780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841568, 36.847050, 47.000198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057174, -0.116666, -0.991524,
		-0.958964, -0.269834, 0.087046,
		-0.277702, 0.955813, -0.096451,
		39.758259, 37.133793, 46.971264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346485, 36.440346, 46.800266>,  <39.952648, 36.464725, 47.038780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346485, 36.440346, 46.800266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464382, 36.814724, 46.723183>,  <39.535122, 37.039349, 46.676933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464382, 36.814724, 46.723183>,  <39.346485, 36.440346, 46.800266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464382, 36.814724, 46.723183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061096, -0.182800, -0.981250,
		-0.953622, 0.300989, 0.003304,
		0.294742, 0.935943, -0.192711,
		39.552803, 37.095509, 46.665371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898571, 36.791988, 46.275372>,  <39.346485, 36.440346, 46.800266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898571, 36.791988, 46.275372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239113, 37.001823, 46.276779>,  <39.443436, 37.127724, 46.277622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239113, 37.001823, 46.276779>,  <38.898571, 36.791988, 46.275372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239113, 37.001823, 46.276779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015578, -0.018584, -0.999706,
		-0.524364, 0.851156, -0.023994,
		0.851352, 0.524583, 0.003515,
		39.494518, 37.159199, 46.277832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750488, 37.298141, 45.773327>,  <38.898571, 36.791988, 46.275372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750488, 37.298141, 45.773327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140614, 37.212410, 45.794582>,  <39.374691, 37.160973, 45.807335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140614, 37.212410, 45.794582>,  <38.750488, 37.298141, 45.773327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140614, 37.212410, 45.794582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036111, -0.082588, -0.995929,
		0.217846, 0.973264, -0.072809,
		0.975315, -0.214330, 0.053137,
		39.433208, 37.148109, 45.810524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946297, 37.612202, 45.263741>,  <38.750488, 37.298141, 45.773327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946297, 37.612202, 45.263741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291626, 37.417812, 45.318153>,  <39.498825, 37.301178, 45.350800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291626, 37.417812, 45.318153>,  <38.946297, 37.612202, 45.263741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291626, 37.417812, 45.318153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087445, -0.121421, -0.988742,
		0.497018, 0.865499, -0.062329,
		0.863323, -0.485972, 0.136032,
		39.550621, 37.272022, 45.358963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493221, 37.991417, 44.764847>,  <38.946297, 37.612202, 45.263741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493221, 37.991417, 44.764847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608791, 37.619408, 44.855686>,  <39.678135, 37.396202, 44.910191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608791, 37.619408, 44.855686>,  <39.493221, 37.991417, 44.764847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608791, 37.619408, 44.855686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059671, -0.219256, -0.973841,
		0.955489, 0.294922, -0.007854,
		0.288929, -0.930026, 0.227095,
		39.695469, 37.340401, 44.923817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897850, 37.897209, 44.217640>,  <39.493221, 37.991417, 44.764847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897850, 37.897209, 44.217640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846729, 37.535442, 44.380466>,  <39.816055, 37.318382, 44.478161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846729, 37.535442, 44.380466>,  <39.897850, 37.897209, 44.217640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846729, 37.535442, 44.380466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066446, -0.401702, -0.913357,
		0.989571, -0.143777, -0.008756,
		-0.127803, -0.904414, 0.407066,
		39.808388, 37.264118, 44.502586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233143, 37.511364, 43.751656>,  <39.897850, 37.897209, 44.217640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233143, 37.511364, 43.751656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996468, 37.249588, 43.939957>,  <39.854462, 37.092522, 44.052937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996468, 37.249588, 43.939957>,  <40.233143, 37.511364, 43.751656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996468, 37.249588, 43.939957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191969, -0.452762, -0.870721,
		0.782975, -0.605567, 0.142262,
		-0.591691, -0.654443, 0.470751,
		39.818962, 37.053257, 44.081181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349426, 36.769279, 43.408680>,  <40.233143, 37.511364, 43.751656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349426, 36.769279, 43.408680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999809, 36.774963, 43.602936>,  <39.790039, 36.778374, 43.719490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999809, 36.774963, 43.602936>,  <40.349426, 36.769279, 43.408680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999809, 36.774963, 43.602936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435384, -0.466499, -0.769948,
		0.215605, -0.884408, 0.413930,
		-0.874045, 0.014214, 0.485636,
		39.737595, 36.779228, 43.748627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987717, 36.071739, 43.600964>,  <40.349426, 36.769279, 43.408680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987717, 36.071739, 43.600964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677113, 36.323685, 43.607956>,  <39.490749, 36.474854, 43.612152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677113, 36.323685, 43.607956>,  <39.987717, 36.071739, 43.600964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677113, 36.323685, 43.607956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425999, -0.504325, -0.751120,
		-0.464286, -0.590699, 0.659935,
		-0.776507, 0.629866, 0.017486,
		39.444160, 36.512646, 43.613201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476460, 35.634220, 43.665821>,  <39.987717, 36.071739, 43.600964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476460, 35.634220, 43.665821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327641, 35.980579, 43.532070>,  <39.238350, 36.188393, 43.451820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327641, 35.980579, 43.532070>,  <39.476460, 35.634220, 43.665821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327641, 35.980579, 43.532070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374013, -0.469544, -0.799777,
		-0.849527, -0.172492, 0.498548,
		-0.372045, 0.865896, -0.334376,
		39.216026, 36.240349, 43.431759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800381, 35.445225, 43.214775>,  <39.476460, 35.634220, 43.665821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800381, 35.445225, 43.214775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889729, 35.814079, 43.088428>,  <38.943336, 36.035393, 43.012619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889729, 35.814079, 43.088428>,  <38.800381, 35.445225, 43.214775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889729, 35.814079, 43.088428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350182, -0.226502, -0.908884,
		-0.909659, 0.313624, 0.272323,
		0.223366, 0.922137, -0.315866,
		38.956738, 36.090721, 42.993668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250061, 35.599865, 42.795715>,  <38.800381, 35.445225, 43.214775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250061, 35.599865, 42.795715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544704, 35.830139, 42.653728>,  <38.721489, 35.968304, 42.568535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544704, 35.830139, 42.653728>,  <38.250061, 35.599865, 42.795715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544704, 35.830139, 42.653728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168480, -0.352115, -0.920668,
		-0.655002, 0.737974, -0.162379,
		0.736605, 0.575681, -0.354970,
		38.765686, 36.002842, 42.547237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986618, 35.822388, 42.096668>,  <38.250061, 35.599865, 42.795715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986618, 35.822388, 42.096668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382828, 35.876221, 42.107567>,  <38.620556, 35.908520, 42.114105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382828, 35.876221, 42.107567>,  <37.986618, 35.822388, 42.096668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382828, 35.876221, 42.107567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071576, -0.336754, -0.938868,
		-0.117178, 0.931925, -0.343197,
		0.990528, 0.134579, 0.027244,
		38.679985, 35.916595, 42.115742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178661, 36.036781, 41.453831>,  <37.986618, 35.822388, 42.096668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178661, 36.036781, 41.453831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549809, 35.954582, 41.578300>,  <38.772495, 35.905262, 41.652985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549809, 35.954582, 41.578300>,  <38.178661, 36.036781, 41.453831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549809, 35.954582, 41.578300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238651, -0.313973, -0.918949,
		0.286546, 0.926925, -0.242282,
		0.927867, -0.205500, 0.311179,
		38.828167, 35.892933, 41.671654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535686, 36.292812, 40.891613>,  <38.178661, 36.036781, 41.453831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535686, 36.292812, 40.891613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784107, 36.039448, 41.076260>,  <38.933159, 35.887428, 41.187046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784107, 36.039448, 41.076260>,  <38.535686, 36.292812, 40.891613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784107, 36.039448, 41.076260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421631, -0.226480, -0.878029,
		0.660697, 0.739933, 0.126408,
		0.621054, -0.633408, 0.461613,
		38.970425, 35.849426, 41.214745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249001, 36.508575, 40.750454>,  <38.535686, 36.292812, 40.891613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249001, 36.508575, 40.750454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284912, 36.128311, 40.869240>,  <39.306461, 35.900154, 40.940514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284912, 36.128311, 40.869240>,  <39.249001, 36.508575, 40.750454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284912, 36.128311, 40.869240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712327, -0.147101, -0.686259,
		0.696082, 0.273152, 0.663972,
		0.089782, -0.950657, 0.296968,
		39.311848, 35.843113, 40.958332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964264, 36.359940, 40.822136>,  <39.249001, 36.508575, 40.750454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964264, 36.359940, 40.822136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770100, 36.016602, 40.755669>,  <39.653599, 35.810596, 40.715790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770100, 36.016602, 40.755669>,  <39.964264, 36.359940, 40.822136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770100, 36.016602, 40.755669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584297, -0.177113, -0.791977,
		0.650361, -0.481529, 0.587504,
		-0.485414, -0.858348, -0.166168,
		39.624474, 35.759098, 40.705818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448879, 35.946217, 40.639080>,  <39.964264, 36.359940, 40.822136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448879, 35.946217, 40.639080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146416, 35.716450, 40.513683>,  <39.964939, 35.578590, 40.438446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146416, 35.716450, 40.513683>,  <40.448879, 35.946217, 40.639080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146416, 35.716450, 40.513683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552286, -0.303216, -0.776557,
		0.351009, -0.760335, 0.546519,
		-0.756157, -0.574413, -0.313491,
		39.919567, 35.544125, 40.419636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658474, 35.248940, 40.592693>,  <40.448879, 35.946217, 40.639080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658474, 35.248940, 40.592693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350094, 35.300037, 40.343113>,  <40.165066, 35.330696, 40.193367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350094, 35.300037, 40.343113>,  <40.658474, 35.248940, 40.592693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350094, 35.300037, 40.343113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576465, -0.276550, -0.768901,
		-0.270749, -0.952476, 0.139589,
		-0.770963, 0.127711, -0.623944,
		40.118809, 35.338360, 40.155930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888889, 35.032936, 40.028008>,  <40.658474, 35.248940, 40.592693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888889, 35.032936, 40.028008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538017, 35.145069, 39.872070>,  <40.327496, 35.212349, 39.778507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538017, 35.145069, 39.872070>,  <40.888889, 35.032936, 40.028008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538017, 35.145069, 39.872070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355070, -0.167868, -0.919644,
		-0.323244, -0.945112, 0.047714,
		-0.877176, 0.280328, -0.389843,
		40.274864, 35.229168, 39.755116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806389, 34.653973, 39.503029>,  <40.888889, 35.032936, 40.028008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806389, 34.653973, 39.503029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551468, 34.947495, 39.408897>,  <40.398514, 35.123608, 39.352421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551468, 34.947495, 39.408897>,  <40.806389, 34.653973, 39.503029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551468, 34.947495, 39.408897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353539, 0.007072, -0.935393,
		-0.684732, -0.679324, -0.263935,
		-0.637301, 0.733805, -0.235325,
		40.360279, 35.167637, 39.338299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587463, 34.600964, 38.776234>,  <40.806389, 34.653973, 39.503029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587463, 34.600964, 38.776234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517803, 34.989677, 38.839855>,  <40.476006, 35.222908, 38.878029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517803, 34.989677, 38.839855>,  <40.587463, 34.600964, 38.776234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517803, 34.989677, 38.839855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492453, 0.225827, -0.840531,
		-0.852737, -0.068053, -0.517889,
		-0.174154, 0.971787, 0.159058,
		40.465557, 35.281212, 38.887573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338257, 34.821270, 38.156937>,  <40.587463, 34.600964, 38.776234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338257, 34.821270, 38.156937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485722, 35.135918, 38.355057>,  <40.574200, 35.324707, 38.473930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485722, 35.135918, 38.355057>,  <40.338257, 34.821270, 38.156937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485722, 35.135918, 38.355057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440094, 0.321635, -0.838372,
		-0.818784, 0.527054, -0.227611,
		0.368660, 0.786616, 0.495303,
		40.596321, 35.371902, 38.503647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088341, 35.324051, 37.718208>,  <40.338257, 34.821270, 38.156937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088341, 35.324051, 37.718208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391548, 35.489021, 37.920326>,  <40.573471, 35.588005, 38.041595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391548, 35.489021, 37.920326>,  <40.088341, 35.324051, 37.718208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391548, 35.489021, 37.920326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390290, 0.333883, -0.858018,
		-0.522578, 0.847600, 0.092122,
		0.758015, 0.412427, 0.505290,
		40.618954, 35.612751, 38.071915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091740, 35.943550, 37.460167>,  <40.088341, 35.324051, 37.718208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091740, 35.943550, 37.460167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456776, 35.873638, 37.608017>,  <40.675797, 35.831692, 37.696728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456776, 35.873638, 37.608017>,  <40.091740, 35.943550, 37.460167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456776, 35.873638, 37.608017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408036, 0.331719, -0.850570,
		0.026050, 0.927046, 0.374041,
		0.912594, -0.174780, 0.369627,
		40.730553, 35.821205, 37.718906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541435, 36.541512, 37.044838>,  <40.091740, 35.943550, 37.460167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541435, 36.541512, 37.044838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799446, 36.329231, 37.264763>,  <40.954254, 36.201862, 37.396717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799446, 36.329231, 37.264763>,  <40.541435, 36.541512, 37.044838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799446, 36.329231, 37.264763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728181, 0.208717, -0.652832,
		0.231707, 0.821456, 0.521078,
		0.645030, -0.530705, 0.549808,
		40.992954, 36.170021, 37.429707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030914, 36.938789, 37.381329>,  <40.541435, 36.541512, 37.044838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030914, 36.938789, 37.381329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206829, 36.584335, 37.322872>,  <41.312378, 36.371662, 37.287800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206829, 36.584335, 37.322872>,  <41.030914, 36.938789, 37.381329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206829, 36.584335, 37.322872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607803, 0.413459, -0.677958,
		0.661182, 0.209334, 0.720428,
		0.439788, -0.886132, -0.146138,
		41.338764, 36.318497, 37.279030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744339, 37.135796, 37.321613>,  <41.030914, 36.938789, 37.381329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744339, 37.135796, 37.321613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752129, 36.752167, 37.208614>,  <41.756802, 36.521992, 37.140816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752129, 36.752167, 37.208614>,  <41.744339, 37.135796, 37.321613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752129, 36.752167, 37.208614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724682, 0.208205, -0.656877,
		0.688809, -0.191930, 0.699075,
		0.019476, -0.959069, -0.282501,
		41.757973, 36.464447, 37.123863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438339, 36.882706, 37.381653>,  <41.744339, 37.135796, 37.321613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438339, 36.882706, 37.381653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238579, 36.677715, 37.102234>,  <42.118721, 36.554722, 36.934582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238579, 36.677715, 37.102234>,  <42.438339, 36.882706, 37.381653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238579, 36.677715, 37.102234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714274, 0.212772, -0.666739,
		0.490319, -0.831923, 0.259790,
		-0.499400, -0.512476, -0.698547,
		42.088760, 36.523972, 36.892670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988869, 36.475571, 37.130550>,  <42.438339, 36.882706, 37.381653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988869, 36.475571, 37.130550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699650, 36.476109, 36.854229>,  <42.526119, 36.476433, 36.688438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699650, 36.476109, 36.854229>,  <42.988869, 36.475571, 37.130550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699650, 36.476109, 36.854229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655734, 0.315894, -0.685728,
		0.217296, -0.948794, -0.229288,
		-0.723046, 0.001346, -0.690799,
		42.482735, 36.476513, 36.646988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237766, 36.184387, 36.473255>,  <42.988869, 36.475571, 37.130550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237766, 36.184387, 36.473255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938179, 36.412853, 36.338898>,  <42.758427, 36.549931, 36.258282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938179, 36.412853, 36.338898>,  <43.237766, 36.184387, 36.473255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938179, 36.412853, 36.338898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506170, 0.166037, -0.846300,
		-0.427602, -0.803870, -0.413460,
		-0.748965, 0.571161, -0.335897,
		42.713490, 36.584202, 36.238129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063248, 35.863892, 35.830441>,  <43.237766, 36.184387, 36.473255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063248, 35.863892, 35.830441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035618, 36.259380, 35.883606>,  <43.019039, 36.496674, 35.915504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035618, 36.259380, 35.883606>,  <43.063248, 35.863892, 35.830441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035618, 36.259380, 35.883606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529898, 0.149243, -0.834826,
		-0.845244, 0.012766, -0.534228,
		-0.069072, 0.988718, 0.132911,
		43.014896, 36.555996, 35.923481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753822, 36.217129, 35.293060>,  <43.063248, 35.863892, 35.830441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753822, 36.217129, 35.293060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044563, 36.411243, 35.487453>,  <43.219009, 36.527714, 35.604088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044563, 36.411243, 35.487453>,  <42.753822, 36.217129, 35.293060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044563, 36.411243, 35.487453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466234, 0.170912, -0.867995,
		-0.504289, 0.857486, -0.102031,
		0.726855, 0.485291, 0.485978,
		43.262619, 36.556831, 35.633247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813072, 36.809509, 34.976566>,  <42.753822, 36.217129, 35.293060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813072, 36.809509, 34.976566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.165516, 36.752758, 35.157013>,  <43.376984, 36.718708, 35.265282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.165516, 36.752758, 35.157013>,  <42.813072, 36.809509, 34.976566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165516, 36.752758, 35.157013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471034, 0.348049, -0.810549,
		-0.042014, 0.926678, 0.373499,
		0.881114, -0.141877, 0.451120,
		43.429852, 36.710194, 35.292351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148315, 37.491158, 35.118721>,  <42.813072, 36.809509, 34.976566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148315, 37.491158, 35.118721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365074, 37.161240, 35.054142>,  <43.495129, 36.963291, 35.015396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365074, 37.161240, 35.054142>,  <43.148315, 37.491158, 35.118721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365074, 37.161240, 35.054142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332829, 0.386996, -0.859918,
		0.771733, 0.412254, 0.484226,
		0.541898, -0.824792, -0.161447,
		43.527645, 36.913803, 35.005707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784302, 37.707378, 34.880711>,  <43.148315, 37.491158, 35.118721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784302, 37.707378, 34.880711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703339, 37.351685, 34.716618>,  <43.654762, 37.138268, 34.618164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703339, 37.351685, 34.716618>,  <43.784302, 37.707378, 34.880711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703339, 37.351685, 34.716618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250864, 0.357842, -0.899453,
		0.946626, -0.284965, 0.150649,
		-0.202404, -0.889238, -0.410230,
		43.642616, 37.084911, 34.593548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322487, 37.462334, 34.410267>,  <43.784302, 37.707378, 34.880711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322487, 37.462334, 34.410267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972828, 37.292450, 34.316044>,  <43.763031, 37.190521, 34.259510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972828, 37.292450, 34.316044>,  <44.322487, 37.462334, 34.410267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972828, 37.292450, 34.316044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151050, 0.223206, -0.962997,
		0.461572, -0.877382, -0.130962,
		-0.874148, -0.424711, -0.235555,
		43.710583, 37.165035, 34.245377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596458, 37.364407, 33.711250>,  <44.322487, 37.462334, 34.410267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596458, 37.364407, 33.711250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675011, 36.979462, 33.786400>,  <44.722141, 36.748493, 33.831490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675011, 36.979462, 33.786400>,  <44.596458, 37.364407, 33.711250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675011, 36.979462, 33.786400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158222, -0.220192, -0.962539,
		0.967677, 0.159302, -0.195508,
		0.196384, -0.962361, 0.187870,
		44.733925, 36.690754, 33.842762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068726, 37.165718, 33.182270>,  <44.596458, 37.364407, 33.711250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068726, 37.165718, 33.182270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886887, 36.840450, 33.327648>,  <44.777782, 36.645290, 33.414875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886887, 36.840450, 33.327648>,  <45.068726, 37.165718, 33.182270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886887, 36.840450, 33.327648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364316, -0.202598, -0.908971,
		0.812780, -0.545630, -0.204149,
		-0.454601, -0.813168, 0.363450,
		44.750507, 36.596500, 33.436684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044117, 36.728386, 32.650810>,  <45.068726, 37.165718, 33.182270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044117, 36.728386, 32.650810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.817120, 36.523964, 32.909042>,  <44.680920, 36.401310, 33.063980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.817120, 36.523964, 32.909042>,  <45.044117, 36.728386, 32.650810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817120, 36.523964, 32.909042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595339, -0.286953, -0.750486,
		0.568791, -0.810235, -0.141407,
		-0.567493, -0.511054, 0.645581,
		44.646873, 36.370647, 33.102718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879940, 36.128944, 32.344734>,  <45.044117, 36.728386, 32.650810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879940, 36.128944, 32.344734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583389, 36.152691, 32.612118>,  <44.405460, 36.166939, 32.772549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583389, 36.152691, 32.612118>,  <44.879940, 36.128944, 32.344734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583389, 36.152691, 32.612118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639326, -0.365305, -0.676620,
		0.204027, -0.928993, 0.308780,
		-0.741374, 0.059362, 0.668461,
		44.360977, 36.170498, 32.812656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619202, 35.470913, 32.315876>,  <44.879940, 36.128944, 32.344734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619202, 35.470913, 32.315876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349953, 35.705727, 32.495785>,  <44.188404, 35.846615, 32.603729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349953, 35.705727, 32.495785>,  <44.619202, 35.470913, 32.315876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349953, 35.705727, 32.495785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726681, -0.412141, -0.549613,
		-0.137270, -0.696800, 0.704008,
		-0.673120, 0.587035, 0.449777,
		44.148018, 35.881836, 32.630718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109184, 35.022285, 32.647449>,  <44.619202, 35.470913, 32.315876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109184, 35.022285, 32.647449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942142, 35.379166, 32.578655>,  <43.841915, 35.593292, 32.537376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942142, 35.379166, 32.578655>,  <44.109184, 35.022285, 32.647449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942142, 35.379166, 32.578655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624722, -0.419380, -0.658668,
		-0.659794, -0.167617, 0.732514,
		-0.417606, 0.892202, -0.171991,
		43.816860, 35.646828, 32.527058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332966, 34.959824, 32.655098>,  <44.109184, 35.022285, 32.647449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332966, 34.959824, 32.655098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395733, 35.295269, 32.446442>,  <43.433392, 35.496536, 32.321247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395733, 35.295269, 32.446442>,  <43.332966, 34.959824, 32.655098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395733, 35.295269, 32.446442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583045, -0.347660, -0.734297,
		-0.797142, 0.419365, 0.434393,
		0.156917, 0.838609, -0.521643,
		43.442806, 35.546852, 32.289948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591885, 35.299156, 32.489964>,  <43.332966, 34.959824, 32.655098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591885, 35.299156, 32.489964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849052, 35.465160, 32.232460>,  <43.003353, 35.564762, 32.077957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849052, 35.465160, 32.232460>,  <42.591885, 35.299156, 32.489964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849052, 35.465160, 32.232460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647054, -0.155464, -0.746426,
		-0.409853, 0.896438, 0.168581,
		0.642916, 0.415007, -0.643761,
		43.041927, 35.589661, 32.039333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192894, 35.872040, 32.120220>,  <42.591885, 35.299156, 32.489964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192894, 35.872040, 32.120220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513309, 35.758137, 31.909603>,  <42.705559, 35.689793, 31.783234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513309, 35.758137, 31.909603>,  <42.192894, 35.872040, 32.120220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513309, 35.758137, 31.909603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558504, -0.038981, -0.828585,
		0.215424, 0.957805, -0.190266,
		0.801040, -0.284762, -0.526541,
		42.753620, 35.672707, 31.751640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078487, 36.141991, 31.452431>,  <42.192894, 35.872040, 32.120220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078487, 36.141991, 31.452431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390293, 35.904030, 31.373993>,  <42.577377, 35.761253, 31.326931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390293, 35.904030, 31.373993>,  <42.078487, 36.141991, 31.452431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390293, 35.904030, 31.373993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355550, -0.162488, -0.920425,
		0.515700, 0.787203, -0.338179,
		0.779511, -0.594903, -0.196095,
		42.624146, 35.725559, 31.315165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338200, 36.334007, 30.762978>,  <42.078487, 36.141991, 31.452431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338200, 36.334007, 30.762978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437557, 35.957672, 30.855175>,  <42.497169, 35.731873, 30.910494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437557, 35.957672, 30.855175>,  <42.338200, 36.334007, 30.762978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437557, 35.957672, 30.855175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396601, -0.315871, -0.861936,
		0.883747, 0.122684, -0.451597,
		0.248392, -0.940837, 0.230493,
		42.512074, 35.675423, 30.924322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647816, 35.982822, 30.209179>,  <42.338200, 36.334007, 30.762978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647816, 35.982822, 30.209179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512154, 35.685345, 30.439621>,  <42.430756, 35.506859, 30.577887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512154, 35.685345, 30.439621>,  <42.647816, 35.982822, 30.209179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512154, 35.685345, 30.439621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265082, -0.512035, -0.817038,
		0.902610, -0.429818, -0.023480,
		-0.339155, -0.743691, 0.576105,
		42.410408, 35.462238, 30.612452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968143, 35.406712, 29.974754>,  <42.647816, 35.982822, 30.209179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968143, 35.406712, 29.974754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644909, 35.278580, 30.172495>,  <42.450970, 35.201702, 30.291140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644909, 35.278580, 30.172495>,  <42.968143, 35.406712, 29.974754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644909, 35.278580, 30.172495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337799, -0.435530, -0.834389,
		0.482584, -0.841251, 0.243740,
		-0.808087, -0.320327, 0.494353,
		42.402481, 35.182480, 30.320801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887123, 34.724865, 29.797493>,  <42.968143, 35.406712, 29.974754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887123, 34.724865, 29.797493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519691, 34.808113, 29.931898>,  <42.299232, 34.858063, 30.012541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519691, 34.808113, 29.931898>,  <42.887123, 34.724865, 29.797493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519691, 34.808113, 29.931898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395225, -0.475196, -0.786121,
		-0.003936, -0.854912, 0.518758,
		-0.918576, 0.208121, 0.336012,
		42.244118, 34.870548, 30.032701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549671, 34.158733, 29.604643>,  <42.887123, 34.724865, 29.797493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549671, 34.158733, 29.604643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242970, 34.404675, 29.678452>,  <42.058949, 34.552238, 29.722736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242970, 34.404675, 29.678452>,  <42.549671, 34.158733, 29.604643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242970, 34.404675, 29.678452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559731, -0.499597, -0.661139,
		-0.314319, -0.610210, 0.727219,
		-0.766750, 0.614855, 0.184520,
		42.012943, 34.589130, 29.733807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878773, 33.738632, 29.476471>,  <42.549671, 34.158733, 29.604643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878773, 33.738632, 29.476471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760960, 34.120834, 29.469913>,  <41.690273, 34.350155, 29.465979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760960, 34.120834, 29.469913>,  <41.878773, 33.738632, 29.476471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760960, 34.120834, 29.469913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703652, -0.228443, -0.672821,
		-0.646627, -0.186630, 0.739623,
		-0.294530, 0.955502, -0.016395,
		41.672600, 34.407486, 29.464994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117729, 33.742023, 29.601038>,  <41.878773, 33.738632, 29.476471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117729, 33.742023, 29.601038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228260, 34.083191, 29.423874>,  <41.294579, 34.287891, 29.317575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228260, 34.083191, 29.423874>,  <41.117729, 33.742023, 29.601038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228260, 34.083191, 29.423874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648091, -0.174925, -0.741202,
		-0.709661, 0.491863, 0.504432,
		0.276332, 0.852920, -0.442909,
		41.311161, 34.339066, 29.291000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573177, 34.173916, 29.560259>,  <41.117729, 33.742023, 29.601038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573177, 34.173916, 29.560259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831081, 34.285473, 29.275581>,  <40.985825, 34.352406, 29.104774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831081, 34.285473, 29.275581>,  <40.573177, 34.173916, 29.560259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831081, 34.285473, 29.275581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663849, -0.257258, -0.702228,
		-0.378935, 0.925223, 0.019273,
		0.644759, 0.278893, -0.711692,
		41.024509, 34.369141, 29.062075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187408, 34.733810, 29.356369>,  <40.573177, 34.173916, 29.560259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187408, 34.733810, 29.356369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440228, 34.603352, 29.075188>,  <40.591919, 34.525078, 28.906479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440228, 34.603352, 29.075188>,  <40.187408, 34.733810, 29.356369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440228, 34.603352, 29.075188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772625, -0.195296, -0.604078,
		0.059734, 0.924926, -0.375426,
		0.632046, -0.326147, -0.702955,
		40.629841, 34.505508, 28.864302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915329, 34.894302, 28.769339>,  <40.187408, 34.733810, 29.356369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915329, 34.894302, 28.769339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178516, 34.633221, 28.619114>,  <40.336430, 34.476570, 28.528978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178516, 34.633221, 28.619114>,  <39.915329, 34.894302, 28.769339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178516, 34.633221, 28.619114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693930, -0.331845, -0.639015,
		0.292460, 0.681069, -0.671276,
		0.657973, -0.652705, -0.375563,
		40.375908, 34.437408, 28.506445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948429, 34.919159, 27.994095>,  <39.915329, 34.894302, 28.769339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948429, 34.919159, 27.994095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062885, 34.557194, 28.120119>,  <40.131561, 34.340015, 28.195734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062885, 34.557194, 28.120119>,  <39.948429, 34.919159, 27.994095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062885, 34.557194, 28.120119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739814, -0.417605, -0.527524,
		0.608931, -0.082138, -0.788959,
		0.286144, -0.904908, 0.315059,
		40.148727, 34.285721, 28.214638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877651, 34.395096, 27.465185>,  <39.948429, 34.919159, 27.994095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877651, 34.395096, 27.465185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856987, 34.191406, 27.808817>,  <39.844589, 34.069191, 28.014996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856987, 34.191406, 27.808817>,  <39.877651, 34.395096, 27.465185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856987, 34.191406, 27.808817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692995, -0.601131, -0.397994,
		0.719090, -0.615898, -0.321839,
		-0.051656, -0.509227, 0.859081,
		39.841492, 34.038639, 28.066542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843407, 33.674213, 27.260450>,  <39.877651, 34.395096, 27.465185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843407, 33.674213, 27.260450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716606, 33.730209, 27.635666>,  <39.640526, 33.763805, 27.860794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716606, 33.730209, 27.635666>,  <39.843407, 33.674213, 27.260450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716606, 33.730209, 27.635666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865418, -0.447335, -0.225703,
		0.388021, -0.883343, 0.262955,
		-0.317002, 0.139989, 0.938037,
		39.621506, 33.772205, 27.917076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481693, 33.157410, 27.475121>,  <39.843407, 33.674213, 27.260450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481693, 33.157410, 27.475121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335064, 33.433460, 27.724712>,  <39.247086, 33.599091, 27.874468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335064, 33.433460, 27.724712>,  <39.481693, 33.157410, 27.475121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335064, 33.433460, 27.724712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930381, -0.274450, -0.243041,
		0.003523, -0.669632, 0.742685,
		-0.366577, 0.690123, 0.623980,
		39.225090, 33.640499, 27.911905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205948, 32.777199, 28.084576>,  <39.481693, 33.157410, 27.475121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205948, 32.777199, 28.084576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046932, 32.536263, 28.361458>,  <38.951523, 32.391701, 28.527586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046932, 32.536263, 28.361458>,  <39.205948, 32.777199, 28.084576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046932, 32.536263, 28.361458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453886, -0.526536, -0.718851,
		0.797466, -0.599951, -0.064079,
		-0.397536, -0.602344, 0.692204,
		38.927670, 32.355560, 28.569118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573009, 33.303936, 27.992405>,  <39.205948, 32.777199, 28.084576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573009, 33.303936, 27.992405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920414, 33.317787, 28.190187>,  <39.128857, 33.326096, 28.308857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920414, 33.317787, 28.190187>,  <38.573009, 33.303936, 27.992405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920414, 33.317787, 28.190187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438014, 0.520550, 0.732920,
		-0.232012, -0.853129, 0.467271,
		0.868513, 0.034625, 0.494456,
		39.180969, 33.328175, 28.338524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442493, 33.297699, 28.643383>,  <38.573009, 33.303936, 27.992405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442493, 33.297699, 28.643383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800365, 33.476036, 28.632231>,  <39.015087, 33.583038, 28.625540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800365, 33.476036, 28.632231>,  <38.442493, 33.297699, 28.643383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800365, 33.476036, 28.632231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235270, 0.523340, 0.819001,
		0.379733, -0.726184, 0.573114,
		0.894679, 0.445838, -0.027880,
		39.068768, 33.609787, 28.623867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819965, 33.252937, 29.283756>,  <38.442493, 33.297699, 28.643383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819965, 33.252937, 29.283756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928223, 33.599224, 29.115330>,  <38.993176, 33.806995, 29.014275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928223, 33.599224, 29.115330>,  <38.819965, 33.252937, 29.283756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928223, 33.599224, 29.115330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026152, 0.443839, 0.895725,
		0.962326, -0.231407, 0.142760,
		0.270639, 0.865712, -0.421066,
		39.009415, 33.858936, 28.989010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132317, 32.674793, 29.501932>,  <38.819965, 33.252937, 29.283756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132317, 32.674793, 29.501932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467022, 32.472027, 29.584745>,  <39.667847, 32.350368, 29.634434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467022, 32.472027, 29.584745>,  <39.132317, 32.674793, 29.501932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467022, 32.472027, 29.584745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125834, 0.189956, 0.973695,
		-0.532907, -0.840806, 0.095161,
		0.836765, -0.506915, 0.207031,
		39.718052, 32.319954, 29.646854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963642, 32.395115, 30.106773>,  <39.132317, 32.674793, 29.501932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963642, 32.395115, 30.106773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360199, 32.430428, 30.068089>,  <39.598133, 32.451614, 30.044878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360199, 32.430428, 30.068089>,  <38.963642, 32.395115, 30.106773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360199, 32.430428, 30.068089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049756, 0.429183, 0.901846,
		0.121125, -0.898893, 0.421095,
		0.991389, 0.088284, -0.096710,
		39.657616, 32.456913, 30.039076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392742, 32.111000, 30.811623>,  <38.963642, 32.395115, 30.106773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392742, 32.111000, 30.811623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639465, 32.344910, 30.600878>,  <39.787498, 32.485256, 30.474430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639465, 32.344910, 30.600878>,  <39.392742, 32.111000, 30.811623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639465, 32.344910, 30.600878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403569, 0.339730, 0.849538,
		0.675783, -0.736626, -0.026451,
		0.616806, 0.584778, -0.526863,
		39.824509, 32.520344, 30.442820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103493, 31.945095, 30.844088>,  <39.392742, 32.111000, 30.811623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103493, 31.945095, 30.844088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117142, 32.335781, 30.759359>,  <40.125332, 32.570190, 30.708523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117142, 32.335781, 30.759359>,  <40.103493, 31.945095, 30.844088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117142, 32.335781, 30.759359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502108, 0.166499, 0.848626,
		0.864132, -0.135313, -0.484734,
		0.034122, 0.976713, -0.211818,
		40.127377, 32.628796, 30.695814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765625, 32.078911, 31.193403>,  <40.103493, 31.945095, 30.844088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765625, 32.078911, 31.193403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575974, 32.428604, 31.151604>,  <40.462181, 32.638420, 31.126524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575974, 32.428604, 31.151604>,  <40.765625, 32.078911, 31.193403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575974, 32.428604, 31.151604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419854, 0.328821, 0.845931,
		0.773901, 0.357207, -0.522953,
		-0.474131, 0.874231, -0.104501,
		40.433735, 32.690872, 31.120253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300468, 32.505268, 31.082874>,  <40.765625, 32.078911, 31.193403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300468, 32.505268, 31.082874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988068, 32.711082, 31.224464>,  <40.800629, 32.834572, 31.309420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988068, 32.711082, 31.224464>,  <41.300468, 32.505268, 31.082874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988068, 32.711082, 31.224464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566654, 0.345510, 0.748015,
		0.262575, 0.784780, -0.561404,
		-0.780998, 0.514532, 0.353977,
		40.753769, 32.865440, 31.330658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617058, 33.044899, 31.262629>,  <41.300468, 32.505268, 31.082874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617058, 33.044899, 31.262629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264744, 33.081562, 31.448452>,  <41.053356, 33.103561, 31.559946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264744, 33.081562, 31.448452>,  <41.617058, 33.044899, 31.262629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264744, 33.081562, 31.448452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460785, 0.391886, 0.796306,
		-0.109064, 0.915436, -0.387404,
		-0.880785, 0.091661, 0.464560,
		41.000507, 33.109062, 31.587820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430862, 33.794632, 31.433266>,  <41.617058, 33.044899, 31.262629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430862, 33.794632, 31.433266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191074, 33.592339, 31.681414>,  <41.047199, 33.470963, 31.830303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191074, 33.592339, 31.681414>,  <41.430862, 33.794632, 31.433266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191074, 33.592339, 31.681414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504630, 0.362811, 0.783400,
		-0.621271, 0.782687, 0.037714,
		-0.599475, -0.505736, 0.620372,
		41.011230, 33.440617, 31.867525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202999, 34.283558, 31.974522>,  <41.430862, 33.794632, 31.433266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202999, 34.283558, 31.974522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191647, 33.908955, 32.114315>,  <41.184837, 33.684193, 32.198193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191647, 33.908955, 32.114315>,  <41.202999, 34.283558, 31.974522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191647, 33.908955, 32.114315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450568, 0.300111, 0.840787,
		-0.892291, 0.181326, 0.413446,
		-0.028377, -0.936512, 0.349486,
		41.183132, 33.628002, 32.219162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207783, 34.383720, 32.659748>,  <41.202999, 34.283558, 31.974522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207783, 34.383720, 32.659748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257156, 33.987598, 32.634262>,  <41.286781, 33.749924, 32.618973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257156, 33.987598, 32.634262>,  <41.207783, 34.383720, 32.659748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257156, 33.987598, 32.634262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540983, 0.013330, 0.840928,
		-0.831926, -0.138268, 0.537383,
		0.123437, -0.990305, -0.063710,
		41.294186, 33.690506, 32.615150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036129, 34.088303, 33.336304>,  <41.207783, 34.383720, 32.659748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036129, 34.088303, 33.336304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299866, 33.849483, 33.153522>,  <41.458107, 33.706192, 33.043854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299866, 33.849483, 33.153522>,  <41.036129, 34.088303, 33.336304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299866, 33.849483, 33.153522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594697, 0.042290, 0.802837,
		-0.460010, -0.801088, 0.382947,
		0.659338, -0.597050, -0.456951,
		41.497665, 33.670368, 33.016438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353653, 33.651810, 33.899632>,  <41.036129, 34.088303, 33.336304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353653, 33.651810, 33.899632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605270, 33.589535, 33.594986>,  <41.756241, 33.552170, 33.412197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605270, 33.589535, 33.594986>,  <41.353653, 33.651810, 33.899632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605270, 33.589535, 33.594986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741138, -0.175495, 0.648009,
		-0.234546, -0.972092, 0.004992,
		0.629048, -0.155688, -0.761616,
		41.793983, 33.542828, 33.366501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690453, 33.163551, 34.140694>,  <41.353653, 33.651810, 33.899632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690453, 33.163551, 34.140694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934284, 33.319710, 33.864723>,  <42.080582, 33.413406, 33.699139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934284, 33.319710, 33.864723>,  <41.690453, 33.163551, 34.140694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934284, 33.319710, 33.864723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778382, -0.129956, 0.614193,
		0.150119, -0.911428, -0.383096,
		0.609578, 0.390397, -0.689931,
		42.117157, 33.436829, 33.657745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295536, 32.764359, 34.161568>,  <41.690453, 33.163551, 34.140694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295536, 32.764359, 34.161568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438061, 33.080326, 33.961937>,  <42.523575, 33.269905, 33.842159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438061, 33.080326, 33.961937>,  <42.295536, 32.764359, 34.161568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438061, 33.080326, 33.961937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913662, -0.182732, 0.363085,
		0.195609, -0.585357, -0.786825,
		0.356313, 0.789915, -0.499075,
		42.544956, 33.317299, 33.812214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875843, 32.485889, 33.737843>,  <42.295536, 32.764359, 34.161568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875843, 32.485889, 33.737843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903984, 32.881729, 33.788040>,  <42.920868, 33.119232, 33.818161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903984, 32.881729, 33.788040>,  <42.875843, 32.485889, 33.737843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903984, 32.881729, 33.788040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890623, -0.118979, 0.438902,
		0.449267, 0.080891, -0.889728,
		0.070355, 0.989596, 0.125497,
		42.925091, 33.178608, 33.825687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593197, 32.731293, 33.656929>,  <42.875843, 32.485889, 33.737843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593197, 32.731293, 33.656929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418468, 33.035294, 33.849422>,  <43.313633, 33.217693, 33.964920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418468, 33.035294, 33.849422>,  <43.593197, 32.731293, 33.656929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418468, 33.035294, 33.849422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864688, 0.207263, 0.457555,
		0.248000, 0.615987, -0.747700,
		-0.436819, 0.760001, 0.481235,
		43.287422, 33.263294, 33.993793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972031, 33.266811, 33.593086>,  <43.593197, 32.731293, 33.656929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972031, 33.266811, 33.593086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768627, 33.423935, 33.899582>,  <43.646587, 33.518211, 34.083477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768627, 33.423935, 33.899582>,  <43.972031, 33.266811, 33.593086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768627, 33.423935, 33.899582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859169, 0.290376, 0.421319,
		-0.056997, 0.872571, -0.485151,
		-0.508507, 0.392813, 0.766237,
		43.616074, 33.541779, 34.129452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111797, 34.079346, 33.646172>,  <43.972031, 33.266811, 33.593086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111797, 34.079346, 33.646172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993816, 33.931084, 33.998447>,  <43.923027, 33.842125, 34.209812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993816, 33.931084, 33.998447>,  <44.111797, 34.079346, 33.646172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993816, 33.931084, 33.998447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836216, 0.345830, 0.425610,
		-0.462324, 0.861983, 0.207945,
		-0.294955, -0.370657, 0.880690,
		43.905331, 33.819885, 34.262653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186970, 34.650341, 34.110069>,  <44.111797, 34.079346, 33.646172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186970, 34.650341, 34.110069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166405, 34.323753, 34.340107>,  <44.154064, 34.127800, 34.478130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166405, 34.323753, 34.340107>,  <44.186970, 34.650341, 34.110069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166405, 34.323753, 34.340107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851511, 0.265042, 0.452417,
		-0.521809, 0.512957, 0.681609,
		-0.051416, -0.816473, 0.575090,
		44.150982, 34.078812, 34.512634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182236, 34.875469, 34.770798>,  <44.186970, 34.650341, 34.110069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182236, 34.875469, 34.770798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318939, 34.499561, 34.768318>,  <44.400963, 34.274017, 34.766830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318939, 34.499561, 34.768318>,  <44.182236, 34.875469, 34.770798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318939, 34.499561, 34.768318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834033, 0.300255, 0.462857,
		-0.433117, -0.163354, 0.886411,
		0.341758, -0.939767, -0.006197,
		44.421467, 34.217632, 34.766460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741577, 34.901756, 35.205299>,  <44.182236, 34.875469, 34.770798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741577, 34.901756, 35.205299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789520, 34.527954, 35.071236>,  <44.818287, 34.303673, 34.990799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789520, 34.527954, 35.071236>,  <44.741577, 34.901756, 35.205299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789520, 34.527954, 35.071236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944443, 0.003263, 0.328659,
		-0.306040, -0.355930, 0.882980,
		0.119860, -0.934507, -0.335157,
		44.825478, 34.247601, 34.970688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180382, 34.478043, 35.775772>,  <44.741577, 34.901756, 35.205299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180382, 34.478043, 35.775772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216366, 34.333309, 35.404617>,  <45.237957, 34.246468, 35.181923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216366, 34.333309, 35.404617>,  <45.180382, 34.478043, 35.775772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216366, 34.333309, 35.404617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992321, -0.046842, 0.114477,
		-0.084886, -0.931065, 0.354842,
		0.089964, -0.361834, -0.927891,
		45.243355, 34.224758, 35.126251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671257, 34.020523, 35.812416>,  <45.180382, 34.478043, 35.775772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671257, 34.020523, 35.812416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673775, 34.132099, 35.428299>,  <45.675285, 34.199043, 35.197830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673775, 34.132099, 35.428299>,  <45.671257, 34.020523, 35.812416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673775, 34.132099, 35.428299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996351, 0.079987, 0.029768,
		0.085114, -0.956972, -0.277416,
		0.006297, 0.278937, -0.960289,
		45.675663, 34.215778, 35.140213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193222, 33.734322, 35.619595>,  <45.671257, 34.020523, 35.812416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193222, 33.734322, 35.619595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144978, 33.976845, 35.305180>,  <46.116032, 34.122356, 35.116531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144978, 33.976845, 35.305180>,  <46.193222, 33.734322, 35.619595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144978, 33.976845, 35.305180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980632, 0.195859, 0.000599,
		0.154315, -0.770737, -0.618184,
		-0.120615, 0.606304, -0.786033,
		46.108791, 34.158737, 35.069370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397373, 33.634075, 34.913551>,  <46.193222, 33.734322, 35.619595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397373, 33.634075, 34.913551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578606, 33.789330, 34.592537>,  <46.687344, 33.882484, 34.399929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578606, 33.789330, 34.592537>,  <46.397373, 33.634075, 34.913551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578606, 33.789330, 34.592537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434194, 0.690166, 0.578918,
		0.778586, -0.610753, 0.144171,
		0.453078, 0.388139, -0.802539,
		46.714531, 33.905769, 34.351776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.121128, 33.751915, 35.104015>,  <46.397373, 33.634075, 34.913551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.121128, 33.751915, 35.104015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054665, 34.008492, 34.804432>,  <47.014786, 34.162437, 34.624680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054665, 34.008492, 34.804432>,  <47.121128, 33.751915, 35.104015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.054665, 34.008492, 34.804432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518852, 0.702750, 0.486760,
		0.838562, -0.307723, -0.449579,
		-0.166155, 0.641443, -0.748962,
		47.004818, 34.200924, 34.579742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.811180, 34.039654, 34.669098>,  <47.121128, 33.751915, 35.104015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.811180, 34.039654, 34.669098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.510246, 34.301426, 34.699337>,  <47.329685, 34.458488, 34.717480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.510246, 34.301426, 34.699337>,  <47.811180, 34.039654, 34.669098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.510246, 34.301426, 34.699337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534245, 0.538950, 0.651241,
		0.385448, 0.530339, -0.755096,
		-0.752338, 0.654426, 0.075594,
		47.284546, 34.497753, 34.722015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.935879, 34.845947, 34.464321>,  <47.811180, 34.039654, 34.669098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.935879, 34.845947, 34.464321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656189, 34.809364, 34.747932>,  <47.488377, 34.787415, 34.918098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656189, 34.809364, 34.747932>,  <47.935879, 34.845947, 34.464321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656189, 34.809364, 34.747932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591814, 0.482325, 0.645847,
		-0.401049, 0.871205, -0.283129,
		-0.699225, -0.091457, 0.709027,
		47.446423, 34.781929, 34.960640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.799961, 38.335835, 43.517185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417900, 38.400322, 43.616535>,  <35.188663, 38.439014, 43.676144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417900, 38.400322, 43.616535>,  <35.799961, 38.335835, 43.517185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417900, 38.400322, 43.616535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272167, -0.147592, -0.950864,
		-0.116628, -0.975822, 0.184849,
		-0.955156, 0.161207, 0.248373,
		35.131355, 38.448685, 43.691048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529457, 37.839787, 43.204334>,  <35.799961, 38.335835, 43.517185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529457, 37.839787, 43.204334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226982, 38.096340, 43.256191>,  <35.045498, 38.250275, 43.287308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226982, 38.096340, 43.256191>,  <35.529457, 37.839787, 43.204334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226982, 38.096340, 43.256191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322881, -0.193399, -0.926469,
		-0.569153, -0.742440, 0.353337,
		-0.756183, 0.641388, 0.129646,
		35.000126, 38.288757, 43.295086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989883, 37.446579, 42.918663>,  <35.529457, 37.839787, 43.204334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989883, 37.446579, 42.918663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920338, 37.840485, 42.919949>,  <34.878613, 38.076828, 42.920719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920338, 37.840485, 42.919949>,  <34.989883, 37.446579, 42.918663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920338, 37.840485, 42.919949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271678, -0.044827, -0.961344,
		-0.946553, -0.168015, 0.275332,
		-0.173862, 0.984765, 0.003215,
		34.868179, 38.135914, 42.920914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434574, 37.428192, 42.494808>,  <34.989883, 37.446579, 42.918663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434574, 37.428192, 42.494808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579037, 37.801140, 42.501240>,  <34.665714, 38.024906, 42.505096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579037, 37.801140, 42.501240>,  <34.434574, 37.428192, 42.494808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579037, 37.801140, 42.501240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193095, 0.091640, -0.976891,
		-0.912293, 0.349709, 0.213131,
		0.361159, 0.932366, 0.016076,
		34.687386, 38.080849, 42.506062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934723, 37.823841, 42.272892>,  <34.434574, 37.428192, 42.494808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934723, 37.823841, 42.272892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272705, 38.026882, 42.205502>,  <34.475494, 38.148708, 42.165070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272705, 38.026882, 42.205502>,  <33.934723, 37.823841, 42.272892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272705, 38.026882, 42.205502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244723, 0.086856, -0.965695,
		-0.475559, 0.857200, 0.197613,
		0.844958, 0.507605, -0.168472,
		34.526192, 38.179165, 42.154961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748798, 38.234478, 41.756081>,  <33.934723, 37.823841, 42.272892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748798, 38.234478, 41.756081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147999, 38.251926, 41.737747>,  <34.387520, 38.262394, 41.726749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147999, 38.251926, 41.737747>,  <33.748798, 38.234478, 41.756081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147999, 38.251926, 41.737747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046341, 0.010786, -0.998867,
		-0.043074, 0.998990, 0.012786,
		0.997997, 0.043618, -0.045830,
		34.447399, 38.265011, 41.723999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864540, 38.726086, 41.214565>,  <33.748798, 38.234478, 41.756081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864540, 38.726086, 41.214565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.191952, 38.498302, 41.244827>,  <34.388401, 38.361633, 41.262985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.191952, 38.498302, 41.244827>,  <33.864540, 38.726086, 41.214565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191952, 38.498302, 41.244827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127233, 0.051280, -0.990546,
		0.560194, 0.820420, 0.114428,
		0.818532, -0.569458, 0.075658,
		34.437511, 38.327465, 41.267525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357727, 38.984138, 40.733421>,  <33.864540, 38.726086, 41.214565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357727, 38.984138, 40.733421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501320, 38.616974, 40.801037>,  <34.587475, 38.396675, 40.841606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501320, 38.616974, 40.801037>,  <34.357727, 38.984138, 40.733421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501320, 38.616974, 40.801037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171078, -0.113335, -0.978717,
		0.917531, 0.380262, 0.116349,
		0.358982, -0.917909, 0.169043,
		34.609016, 38.341602, 40.851749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764126, 38.925362, 40.123131>,  <34.357727, 38.984138, 40.733421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764126, 38.925362, 40.123131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770306, 38.558060, 40.281410>,  <34.774014, 38.337681, 40.376377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770306, 38.558060, 40.281410>,  <34.764126, 38.925362, 40.123131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770306, 38.558060, 40.281410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326837, -0.369366, -0.869911,
		0.944954, 0.142766, 0.294413,
		0.015447, -0.918252, 0.395696,
		34.774940, 38.282585, 40.400120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434246, 38.673313, 39.895744>,  <34.764126, 38.925362, 40.123131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434246, 38.673313, 39.895744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200733, 38.356937, 39.969086>,  <35.060627, 38.167114, 40.013092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200733, 38.356937, 39.969086>,  <35.434246, 38.673313, 39.895744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200733, 38.356937, 39.969086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396915, -0.475024, -0.785373,
		0.708280, -0.385708, 0.591244,
		-0.583780, -0.790937, 0.183357,
		35.025600, 38.119656, 40.024094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883366, 38.127666, 39.914085>,  <35.434246, 38.673313, 39.895744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883366, 38.127666, 39.914085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515041, 37.986568, 39.847530>,  <35.294048, 37.901909, 39.807598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515041, 37.986568, 39.847530>,  <35.883366, 38.127666, 39.914085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515041, 37.986568, 39.847530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362615, -0.617204, -0.698262,
		0.143614, -0.703299, 0.696237,
		-0.920807, -0.352746, -0.166387,
		35.238800, 37.880745, 39.797615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866016, 37.396286, 40.042831>,  <35.883366, 38.127666, 39.914085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866016, 37.396286, 40.042831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586788, 37.496483, 39.774517>,  <35.419250, 37.556602, 39.613529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586788, 37.496483, 39.774517>,  <35.866016, 37.396286, 40.042831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586788, 37.496483, 39.774517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454503, -0.568867, -0.685432,
		-0.553279, -0.783355, 0.283263,
		-0.698076, 0.250491, -0.670779,
		35.377365, 37.571632, 39.573284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792664, 36.788872, 39.676846>,  <35.866016, 37.396286, 40.042831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792664, 36.788872, 39.676846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.597836, 37.042374, 39.436474>,  <35.480938, 37.194473, 39.292252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.597836, 37.042374, 39.436474>,  <35.792664, 36.788872, 39.676846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597836, 37.042374, 39.436474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477770, -0.382635, -0.790776,
		-0.731094, -0.672272, -0.116417,
		-0.487071, 0.633751, -0.600933,
		35.451714, 37.232498, 39.256195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543720, 36.417648, 39.052937>,  <35.792664, 36.788872, 39.676846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543720, 36.417648, 39.052937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.519985, 36.798119, 38.931774>,  <35.505745, 37.026402, 38.859077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.519985, 36.798119, 38.931774>,  <35.543720, 36.417648, 39.052937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519985, 36.798119, 38.931774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709769, -0.173164, -0.682820,
		-0.701931, -0.255509, -0.664837,
		-0.059341, 0.951173, -0.302901,
		35.502182, 37.083469, 38.840904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568165, 36.448959, 38.277367>,  <35.543720, 36.417648, 39.052937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568165, 36.448959, 38.277367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653309, 36.833004, 38.349903>,  <35.704395, 37.063431, 38.393425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653309, 36.833004, 38.349903>,  <35.568165, 36.448959, 38.277367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653309, 36.833004, 38.349903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764054, -0.047877, -0.643374,
		-0.609026, 0.275503, -0.743765,
		0.212861, 0.960107, 0.181340,
		35.717167, 37.121037, 38.404305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535194, 36.921280, 37.578857>,  <35.568165, 36.448959, 38.277367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535194, 36.921280, 37.578857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769344, 37.082497, 37.860252>,  <35.909832, 37.179226, 38.029091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769344, 37.082497, 37.860252>,  <35.535194, 36.921280, 37.578857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769344, 37.082497, 37.860252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730526, 0.114165, -0.673274,
		-0.351669, 0.908035, -0.227600,
		0.585373, 0.403037, 0.703491,
		35.944958, 37.203407, 38.071301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699230, 37.645611, 37.381252>,  <35.535194, 36.921280, 37.578857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699230, 37.645611, 37.381252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.972134, 37.499012, 37.634296>,  <36.135876, 37.411053, 37.786125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.972134, 37.499012, 37.634296>,  <35.699230, 37.645611, 37.381252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972134, 37.499012, 37.634296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729285, 0.280074, -0.624261,
		0.051610, 0.887265, 0.458363,
		0.682261, -0.366496, 0.632614,
		36.176811, 37.389065, 37.824081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264137, 38.037895, 37.192406>,  <35.699230, 37.645611, 37.381252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264137, 38.037895, 37.192406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458847, 37.796761, 37.445274>,  <36.575672, 37.652081, 37.596996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458847, 37.796761, 37.445274>,  <36.264137, 38.037895, 37.192406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458847, 37.796761, 37.445274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795284, 0.006468, -0.606203,
		0.361355, 0.797835, 0.482578,
		0.486771, -0.602841, 0.632168,
		36.604877, 37.615910, 37.634926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916435, 38.340839, 37.306061>,  <36.264137, 38.037895, 37.192406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916435, 38.340839, 37.306061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938595, 37.945114, 37.360020>,  <36.951889, 37.707680, 37.392395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938595, 37.945114, 37.360020>,  <36.916435, 38.340839, 37.306061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938595, 37.945114, 37.360020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694376, -0.058913, -0.717197,
		0.717477, 0.133399, 0.683689,
		0.055395, -0.989310, 0.134897,
		36.955212, 37.648323, 37.400490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582142, 38.168617, 37.472031>,  <36.916435, 38.340839, 37.306061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582142, 38.168617, 37.472031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461281, 37.799618, 37.375950>,  <37.388763, 37.578217, 37.318302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461281, 37.799618, 37.375950>,  <37.582142, 38.168617, 37.472031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461281, 37.799618, 37.375950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742965, -0.070028, -0.665657,
		0.597248, -0.379590, 0.706545,
		-0.302154, -0.922501, -0.240198,
		37.370636, 37.522869, 37.303890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220917, 37.824829, 37.332054>,  <37.582142, 38.168617, 37.472031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220917, 37.824829, 37.332054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932056, 37.630116, 37.135471>,  <37.758739, 37.513287, 37.017521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932056, 37.630116, 37.135471>,  <38.220917, 37.824829, 37.332054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932056, 37.630116, 37.135471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581591, -0.042634, -0.812363,
		0.374492, -0.872481, 0.313898,
		-0.722154, -0.486784, -0.491461,
		37.715408, 37.484081, 36.988033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582676, 37.321190, 37.146099>,  <38.220917, 37.824829, 37.332054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582676, 37.321190, 37.146099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275047, 37.311367, 36.890621>,  <38.090469, 37.305473, 36.737335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275047, 37.311367, 36.890621>,  <38.582676, 37.321190, 37.146099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275047, 37.311367, 36.890621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633820, -0.158266, -0.757115,
		-0.082491, -0.987091, 0.137283,
		-0.769069, -0.024557, -0.638694,
		38.044327, 37.304001, 36.699013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201763, 37.650703, 36.760509>,  <38.582676, 37.321190, 37.146099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201763, 37.650703, 36.760509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.593204, 37.699669, 36.826664>,  <39.828068, 37.729050, 36.866356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.593204, 37.699669, 36.826664>,  <39.201763, 37.650703, 36.760509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593204, 37.699669, 36.826664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177056, 0.091501, 0.979938,
		0.104839, -0.988251, 0.111219,
		0.978602, 0.122428, 0.165383,
		39.886784, 37.736393, 36.876278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415886, 37.189659, 37.326061>,  <39.201763, 37.650703, 36.760509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415886, 37.189659, 37.326061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.703987, 37.466782, 37.311859>,  <39.876846, 37.633053, 37.303337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.703987, 37.466782, 37.311859>,  <39.415886, 37.189659, 37.326061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703987, 37.466782, 37.311859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117729, 0.172506, 0.977948,
		0.683648, -0.700191, 0.205810,
		0.720253, 0.692802, -0.035501,
		39.920063, 37.674622, 37.301208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844334, 37.123611, 37.991508>,  <39.415886, 37.189659, 37.326061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844334, 37.123611, 37.991508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915173, 37.491859, 37.852314>,  <39.957676, 37.712807, 37.768799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915173, 37.491859, 37.852314>,  <39.844334, 37.123611, 37.991508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915173, 37.491859, 37.852314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092695, 0.336399, 0.937146,
		0.979818, -0.198224, -0.025761,
		0.177098, 0.920621, -0.347984,
		39.968304, 37.768047, 37.747917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365555, 37.470207, 38.349979>,  <39.844334, 37.123611, 37.991508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365555, 37.470207, 38.349979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199612, 37.806786, 38.211494>,  <40.100044, 38.008732, 38.128403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199612, 37.806786, 38.211494>,  <40.365555, 37.470207, 38.349979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199612, 37.806786, 38.211494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108516, 0.423544, 0.899353,
		0.903391, 0.335537, -0.267022,
		-0.414861, 0.841443, -0.346215,
		40.075153, 38.059219, 38.107632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741409, 38.057941, 38.626953>,  <40.365555, 37.470207, 38.349979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741409, 38.057941, 38.626953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393173, 38.214195, 38.507301>,  <40.184231, 38.307949, 38.435509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393173, 38.214195, 38.507301>,  <40.741409, 38.057941, 38.626953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393173, 38.214195, 38.507301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051608, 0.677122, 0.734059,
		0.489296, 0.623627, -0.609655,
		-0.870589, 0.390635, -0.299129,
		40.131996, 38.331387, 38.417564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783710, 38.875141, 38.640091>,  <40.741409, 38.057941, 38.626953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783710, 38.875141, 38.640091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391201, 38.800713, 38.660019>,  <40.155697, 38.756054, 38.671974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391201, 38.800713, 38.660019>,  <40.783710, 38.875141, 38.640091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391201, 38.800713, 38.660019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107592, 0.743975, 0.659489,
		-0.159779, 0.641777, -0.750062,
		-0.981272, -0.186073, 0.049821,
		40.096821, 38.744892, 38.674965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540455, 39.507015, 38.934540>,  <40.783710, 38.875141, 38.640091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540455, 39.507015, 38.934540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223083, 39.265038, 38.961411>,  <40.032661, 39.119850, 38.977531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223083, 39.265038, 38.961411>,  <40.540455, 39.507015, 38.934540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223083, 39.265038, 38.961411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428168, 0.633179, 0.644792,
		-0.432598, 0.482834, -0.761400,
		-0.793430, -0.604943, 0.067178,
		39.985054, 39.083553, 38.981564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895317, 39.928612, 38.866184>,  <40.540455, 39.507015, 38.934540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895317, 39.928612, 38.866184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.799717, 39.599972, 39.073200>,  <39.742355, 39.402786, 39.197411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.799717, 39.599972, 39.073200>,  <39.895317, 39.928612, 38.866184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799717, 39.599972, 39.073200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452545, 0.565812, 0.689245,
		-0.859117, -0.069482, -0.507041,
		-0.239000, -0.821601, 0.517543,
		39.728016, 39.353493, 39.228462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252079, 40.082161, 39.054367>,  <39.895317, 39.928612, 38.866184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252079, 40.082161, 39.054367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386635, 39.813591, 39.318501>,  <39.467369, 39.652451, 39.476978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386635, 39.813591, 39.318501>,  <39.252079, 40.082161, 39.054367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386635, 39.813591, 39.318501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462157, 0.493248, 0.736965,
		-0.820521, -0.553083, -0.144380,
		0.336387, -0.671421, 0.660331,
		39.487553, 39.612164, 39.516602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790806, 40.128002, 39.663757>,  <39.252079, 40.082161, 39.054367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790806, 40.128002, 39.663757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072296, 39.894352, 39.825531>,  <39.241192, 39.754162, 39.922596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072296, 39.894352, 39.825531>,  <38.790806, 40.128002, 39.663757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072296, 39.894352, 39.825531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349297, 0.211252, 0.912888,
		-0.618677, -0.783692, -0.055369,
		0.703726, -0.584123, 0.404438,
		39.283413, 39.719116, 39.946861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458664, 39.669868, 40.154926>,  <38.790806, 40.128002, 39.663757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458664, 39.669868, 40.154926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843388, 39.669907, 40.264416>,  <39.074223, 39.669930, 40.330109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843388, 39.669907, 40.264416>,  <38.458664, 39.669868, 40.154926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843388, 39.669907, 40.264416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270175, 0.160786, 0.949291,
		-0.043923, -0.986989, 0.154670,
		0.961809, 0.000092, 0.273722,
		39.131931, 39.669933, 40.346531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513500, 39.280964, 40.760838>,  <38.458664, 39.669868, 40.154926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513500, 39.280964, 40.760838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830307, 39.523499, 40.789291>,  <39.020393, 39.669018, 40.806362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830307, 39.523499, 40.789291>,  <38.513500, 39.280964, 40.760838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830307, 39.523499, 40.789291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172322, 0.110259, 0.978850,
		0.585669, -0.787527, 0.191812,
		0.792021, 0.606336, 0.071133,
		39.067913, 39.705399, 40.810631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969231, 39.120739, 41.331833>,  <38.513500, 39.280964, 40.760838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969231, 39.120739, 41.331833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.032375, 39.508427, 41.256252>,  <39.070263, 39.741039, 41.210903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.032375, 39.508427, 41.256252>,  <38.969231, 39.120739, 41.331833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032375, 39.508427, 41.256252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376132, 0.235940, 0.896023,
		0.913020, -0.070376, 0.401798,
		0.157859, 0.969216, -0.188947,
		39.079735, 39.799191, 41.199570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379456, 39.367229, 41.929096>,  <38.969231, 39.120739, 41.331833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379456, 39.367229, 41.929096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282707, 39.716991, 41.760849>,  <39.224659, 39.926849, 41.659901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282707, 39.716991, 41.760849>,  <39.379456, 39.367229, 41.929096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282707, 39.716991, 41.760849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284969, 0.350363, 0.892209,
		0.927519, 0.335662, 0.164435,
		-0.241869, 0.874400, -0.420622,
		39.210148, 39.979313, 41.634663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692081, 39.800922, 42.325787>,  <39.379456, 39.367229, 41.929096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692081, 39.800922, 42.325787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369015, 39.969387, 42.160721>,  <39.175175, 40.070465, 42.061680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369015, 39.969387, 42.160721>,  <39.692081, 39.800922, 42.325787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369015, 39.969387, 42.160721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323718, 0.268234, 0.907335,
		0.492829, 0.866413, -0.080305,
		-0.807667, 0.421164, -0.412667,
		39.126713, 40.095737, 42.036922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555309, 40.301743, 42.812634>,  <39.692081, 39.800922, 42.325787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555309, 40.301743, 42.812634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242119, 40.304611, 42.563831>,  <39.054203, 40.306332, 42.414551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242119, 40.304611, 42.563831>,  <39.555309, 40.301743, 42.812634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242119, 40.304611, 42.563831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621438, 0.035341, 0.782666,
		0.027598, 0.999350, -0.023212,
		-0.782977, 0.007176, -0.622009,
		39.007225, 40.306763, 42.377228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043545, 40.838238, 43.021149>,  <39.555309, 40.301743, 42.812634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043545, 40.838238, 43.021149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822365, 40.569275, 42.824329>,  <38.689659, 40.407898, 42.706238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822365, 40.569275, 42.824329>,  <39.043545, 40.838238, 43.021149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822365, 40.569275, 42.824329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636078, -0.040793, 0.770546,
		-0.538195, 0.739053, -0.405149,
		-0.552947, -0.672411, -0.492050,
		38.656479, 40.367550, 42.676716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371223, 41.017422, 43.275818>,  <39.043545, 40.838238, 43.021149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371223, 41.017422, 43.275818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359375, 40.640568, 43.142246>,  <38.352264, 40.414455, 43.062103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359375, 40.640568, 43.142246>,  <38.371223, 41.017422, 43.275818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359375, 40.640568, 43.142246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604872, -0.249070, 0.756370,
		-0.795772, 0.224391, -0.562491,
		-0.029623, -0.942132, -0.333930,
		38.350487, 40.357929, 43.042068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.484776, 40.659363, 43.305065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748714, 40.360584, 43.272388>,  <37.907078, 40.181316, 43.252785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748714, 40.360584, 43.272388>,  <37.484776, 40.659363, 43.305065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748714, 40.360584, 43.272388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499959, -0.517596, 0.694360,
		-0.560937, -0.417325, -0.714976,
		0.659842, -0.746950, -0.081693,
		37.946667, 40.136501, 43.247883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044518, 40.075218, 43.158325>,  <37.484776, 40.659363, 43.305065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044518, 40.075218, 43.158325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404884, 39.968494, 43.295242>,  <37.621105, 39.904461, 43.377392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404884, 39.968494, 43.295242>,  <37.044518, 40.075218, 43.158325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404884, 39.968494, 43.295242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433527, -0.589955, 0.681181,
		0.020188, -0.762078, -0.647170,
		0.900914, -0.266814, 0.342292,
		37.675159, 39.888451, 43.397930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015903, 39.349655, 43.170940>,  <37.044518, 40.075218, 43.158325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015903, 39.349655, 43.170940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294262, 39.488270, 43.422543>,  <37.461277, 39.571438, 43.573502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294262, 39.488270, 43.422543>,  <37.015903, 39.349655, 43.170940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294262, 39.488270, 43.422543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462403, -0.453929, 0.761664,
		0.549469, -0.820889, -0.155645,
		0.695893, 0.346540, 0.629001,
		37.503029, 39.592232, 43.611244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965107, 38.893997, 43.682144>,  <37.015903, 39.349655, 43.170940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965107, 38.893997, 43.682144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191860, 39.167347, 43.866165>,  <37.327911, 39.331356, 43.976578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191860, 39.167347, 43.866165>,  <36.965107, 38.893997, 43.682144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191860, 39.167347, 43.866165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228457, -0.406133, 0.884795,
		0.791487, -0.606676, -0.074107,
		0.566881, 0.683374, 0.460049,
		37.361923, 39.372360, 44.004181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393219, 38.565834, 44.128048>,  <36.965107, 38.893997, 43.682144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393219, 38.565834, 44.128048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372814, 38.938347, 44.272327>,  <37.360573, 39.161854, 44.358894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372814, 38.938347, 44.272327>,  <37.393219, 38.565834, 44.128048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372814, 38.938347, 44.272327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194180, -0.363528, 0.911121,
		0.979639, -0.023563, 0.199382,
		-0.051012, 0.931285, 0.360701,
		37.357510, 39.217731, 44.380539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650787, 38.465324, 44.828346>,  <37.393219, 38.565834, 44.128048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650787, 38.465324, 44.828346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460609, 38.817078, 44.818222>,  <37.346504, 39.028130, 44.812145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460609, 38.817078, 44.818222>,  <37.650787, 38.465324, 44.828346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460609, 38.817078, 44.818222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312031, -0.141659, 0.939452,
		0.822551, 0.454554, 0.341745,
		-0.475443, 0.879382, -0.025313,
		37.317978, 39.080891, 44.810627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954960, 38.737160, 45.427776>,  <37.650787, 38.465324, 44.828346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954960, 38.737160, 45.427776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629314, 38.959763, 45.361431>,  <37.433926, 39.093323, 45.321625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629314, 38.959763, 45.361431>,  <37.954960, 38.737160, 45.427776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629314, 38.959763, 45.361431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197143, 0.003787, 0.980367,
		0.546211, 0.830833, 0.106628,
		-0.814118, 0.556508, -0.165862,
		37.385078, 39.126717, 45.311672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071774, 39.319889, 45.822701>,  <37.954960, 38.737160, 45.427776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071774, 39.319889, 45.822701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680225, 39.265060, 45.762005>,  <37.445297, 39.232162, 45.725590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680225, 39.265060, 45.762005>,  <38.071774, 39.319889, 45.822701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680225, 39.265060, 45.762005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136183, -0.116542, 0.983805,
		-0.152538, 0.983681, 0.095412,
		-0.978870, -0.137075, -0.151737,
		37.386566, 39.223938, 45.716484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726898, 39.822250, 46.232441>,  <38.071774, 39.319889, 45.822701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726898, 39.822250, 46.232441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486160, 39.506649, 46.183033>,  <37.341717, 39.317287, 46.153389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486160, 39.506649, 46.183033>,  <37.726898, 39.822250, 46.232441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486160, 39.506649, 46.183033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203866, 0.002240, 0.978996,
		-0.772155, 0.614384, -0.162199,
		-0.601843, -0.789004, -0.123523,
		37.305607, 39.269947, 46.145977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157169, 40.049377, 46.542824>,  <37.726898, 39.822250, 46.232441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157169, 40.049377, 46.542824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152676, 39.649506, 46.533707>,  <37.149979, 39.409584, 46.528236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152676, 39.649506, 46.533707>,  <37.157169, 40.049377, 46.542824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152676, 39.649506, 46.533707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172550, -0.020514, 0.984787,
		-0.984937, 0.014993, -0.172263,
		-0.011231, -0.999677, -0.022793,
		37.149307, 39.349602, 46.526871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608105, 39.876228, 46.982178>,  <37.157169, 40.049377, 46.542824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608105, 39.876228, 46.982178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796631, 39.528122, 46.924900>,  <36.909748, 39.319260, 46.890533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796631, 39.528122, 46.924900>,  <36.608105, 39.876228, 46.982178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796631, 39.528122, 46.924900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161834, -0.244937, 0.955937,
		-0.866990, -0.427373, -0.256280,
		0.471315, -0.870263, -0.143194,
		36.938026, 39.267044, 46.881943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371365, 39.469475, 47.459614>,  <36.608105, 39.876228, 46.982178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371365, 39.469475, 47.459614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684204, 39.241932, 47.357849>,  <36.871906, 39.105408, 47.296791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684204, 39.241932, 47.357849>,  <36.371365, 39.469475, 47.459614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684204, 39.241932, 47.357849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059589, -0.338115, 0.939216,
		-0.620299, -0.749719, -0.230542,
		0.782098, -0.568857, -0.254408,
		36.918835, 39.071274, 47.281528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273590, 38.785789, 47.831623>,  <36.371365, 39.469475, 47.459614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273590, 38.785789, 47.831623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660694, 38.850475, 47.754375>,  <36.892956, 38.889286, 47.708027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660694, 38.850475, 47.754375>,  <36.273590, 38.785789, 47.831623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660694, 38.850475, 47.754375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235192, -0.305652, 0.922638,
		0.090176, -0.938310, -0.333831,
		0.967757, 0.161714, -0.193120,
		36.951019, 38.898991, 47.696438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592606, 38.196587, 48.178970>,  <36.273590, 38.785789, 47.831623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592606, 38.196587, 48.178970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863979, 38.483505, 48.115463>,  <37.026802, 38.655659, 48.077358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863979, 38.483505, 48.115463>,  <36.592606, 38.196587, 48.178970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863979, 38.483505, 48.115463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383966, -0.161958, 0.909032,
		0.626335, -0.677681, -0.385297,
		0.678436, 0.717299, -0.158766,
		37.067509, 38.698696, 48.067833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208237, 38.048935, 48.493626>,  <36.592606, 38.196587, 48.178970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208237, 38.048935, 48.493626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.239769, 38.447098, 48.471935>,  <37.258690, 38.685997, 48.458920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.239769, 38.447098, 48.471935>,  <37.208237, 38.048935, 48.493626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239769, 38.447098, 48.471935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446651, 0.013366, 0.894609,
		0.891229, -0.094745, -0.443548,
		0.078831, 0.995412, -0.054231,
		37.263420, 38.745720, 48.455666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876556, 38.183414, 48.820930>,  <37.208237, 38.048935, 48.493626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876556, 38.183414, 48.820930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696301, 38.540222, 48.834957>,  <37.588146, 38.754307, 48.843372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696301, 38.540222, 48.834957>,  <37.876556, 38.183414, 48.820930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696301, 38.540222, 48.834957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396976, 0.165055, 0.902866,
		0.799582, 0.420791, -0.428490,
		-0.450642, 0.892016, 0.035069,
		37.561108, 38.807827, 48.845478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376534, 38.602890, 49.067932>,  <37.876556, 38.183414, 48.820930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376534, 38.602890, 49.067932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032089, 38.793442, 49.138981>,  <37.825420, 38.907772, 49.181610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032089, 38.793442, 49.138981>,  <38.376534, 38.602890, 49.067932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032089, 38.793442, 49.138981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370329, 0.348340, 0.861113,
		0.348340, 0.807295, -0.476376,
		-0.861113, 0.476376, 0.177624,
		37.773754, 38.936356, 49.192268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587276, 39.193634, 49.298466>,  <38.376534, 38.602890, 49.067932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587276, 39.193634, 49.298466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208397, 39.164253, 49.423309>,  <37.981068, 39.146626, 49.498215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208397, 39.164253, 49.423309>,  <38.587276, 39.193634, 49.298466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208397, 39.164253, 49.423309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264730, 0.370047, 0.890496,
		-0.180903, 0.926105, -0.331065,
		-0.947202, -0.073451, 0.312110,
		37.924236, 39.142220, 49.516941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459732, 39.825199, 49.676247>,  <38.587276, 39.193634, 49.298466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459732, 39.825199, 49.676247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187782, 39.557716, 49.796646>,  <38.024612, 39.397228, 49.868885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187782, 39.557716, 49.796646>,  <38.459732, 39.825199, 49.676247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187782, 39.557716, 49.796646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161872, 0.263481, 0.950987,
		-0.715236, 0.695278, -0.070890,
		-0.679879, -0.668705, 0.300997,
		37.983818, 39.357105, 49.886944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267788, 40.167961, 50.157795>,  <38.459732, 39.825199, 49.676247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267788, 40.167961, 50.157795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090439, 39.822037, 50.252041>,  <37.984028, 39.614483, 50.308590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090439, 39.822037, 50.252041>,  <38.267788, 40.167961, 50.157795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090439, 39.822037, 50.252041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051977, 0.237616, 0.969967,
		-0.894827, 0.442307, -0.060403,
		-0.443376, -0.864814, 0.235615,
		37.957424, 39.562592, 50.322727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817406, 40.286114, 50.677773>,  <38.267788, 40.167961, 50.157795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817406, 40.286114, 50.677773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914646, 39.898350, 50.691353>,  <37.972992, 39.665691, 50.699501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914646, 39.898350, 50.691353>,  <37.817406, 40.286114, 50.677773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914646, 39.898350, 50.691353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246191, 0.095521, 0.964503,
		-0.938238, -0.226114, 0.261880,
		0.243103, -0.969406, 0.033954,
		37.987576, 39.607529, 50.701538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464272, 40.007614, 51.210247>,  <37.817406, 40.286114, 50.677773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464272, 40.007614, 51.210247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773808, 39.758293, 51.165230>,  <37.959530, 39.608700, 51.138218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773808, 39.758293, 51.165230>,  <37.464272, 40.007614, 51.210247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773808, 39.758293, 51.165230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051024, -0.115768, 0.991965,
		-0.631327, -0.773361, -0.057782,
		0.773836, -0.623306, -0.112548,
		38.005959, 39.571301, 51.131466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768810, 39.651123, 51.398884>,  <37.464272, 40.007614, 51.210247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768810, 39.651123, 51.398884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855595, 39.747810, 51.020573>,  <36.907665, 39.805824, 50.793587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855595, 39.747810, 51.020573>,  <36.768810, 39.651123, 51.398884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855595, 39.747810, 51.020573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423892, 0.849417, 0.314333,
		0.879342, -0.469107, 0.081828,
		0.216962, 0.241720, -0.945780,
		36.920685, 39.820328, 50.736839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906391, 39.670418, 51.371162>,  <36.768810, 39.651123, 51.398884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906391, 39.670418, 51.371162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840866, 39.523670, 51.004868>,  <35.801552, 39.435623, 50.785091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840866, 39.523670, 51.004868>,  <35.906391, 39.670418, 51.371162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840866, 39.523670, 51.004868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763248, 0.635246, -0.117963,
		0.624995, 0.679610, -0.384073,
		-0.163812, -0.366869, -0.915736,
		35.791721, 39.413609, 50.730148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426491, 39.073551, 51.600681>,  <35.906391, 39.670418, 51.371162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426491, 39.073551, 51.600681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039421, 39.164989, 51.643299>,  <34.807178, 39.219852, 51.668869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039421, 39.164989, 51.643299>,  <35.426491, 39.073551, 51.600681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039421, 39.164989, 51.643299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199475, -0.435225, -0.877946,
		-0.154322, -0.870818, 0.466755,
		-0.967675, 0.228592, 0.106541,
		34.749119, 39.233566, 51.675262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058292, 38.440334, 51.579334>,  <35.426491, 39.073551, 51.600681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058292, 38.440334, 51.579334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818466, 38.739975, 51.466644>,  <34.674572, 38.919762, 51.399029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818466, 38.739975, 51.466644>,  <35.058292, 38.440334, 51.579334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818466, 38.739975, 51.466644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101265, -0.420189, -0.901769,
		-0.793897, -0.512136, 0.327787,
		-0.599561, 0.749105, -0.281725,
		34.638599, 38.964706, 51.382126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418346, 38.080780, 51.249870>,  <35.058292, 38.440334, 51.579334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418346, 38.080780, 51.249870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403591, 38.459995, 51.123463>,  <34.394737, 38.687523, 51.047619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403591, 38.459995, 51.123463>,  <34.418346, 38.080780, 51.249870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403591, 38.459995, 51.123463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332372, -0.309872, -0.890791,
		-0.942427, 0.072178, 0.326531,
		-0.036887, 0.948034, -0.316021,
		34.392525, 38.744404, 51.028656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764038, 38.269699, 50.947159>,  <34.418346, 38.080780, 51.249870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764038, 38.269699, 50.947159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031853, 38.528980, 50.802074>,  <34.192539, 38.684547, 50.715023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031853, 38.528980, 50.802074>,  <33.764038, 38.269699, 50.947159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031853, 38.528980, 50.802074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375902, -0.125484, -0.918124,
		-0.640643, 0.751059, 0.159644,
		0.669533, 0.648201, -0.362715,
		34.232712, 38.723442, 50.693260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347755, 38.635601, 50.478428>,  <33.764038, 38.269699, 50.947159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347755, 38.635601, 50.478428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726711, 38.707104, 50.372227>,  <33.954086, 38.750004, 50.308506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726711, 38.707104, 50.372227>,  <33.347755, 38.635601, 50.478428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726711, 38.707104, 50.372227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265751, -0.023002, -0.963767,
		-0.178385, 0.983625, 0.025712,
		0.947394, 0.178754, -0.265503,
		34.010929, 38.760731, 50.292576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309807, 38.970722, 49.934277>,  <33.347755, 38.635601, 50.478428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309807, 38.970722, 49.934277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702679, 38.906952, 49.894474>,  <33.938404, 38.868690, 49.870594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.702679, 38.906952, 49.894474>,  <33.309807, 38.970722, 49.934277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702679, 38.906952, 49.894474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093263, 0.046171, -0.994570,
		0.163150, 0.986130, 0.030480,
		0.982183, -0.159421, -0.099502,
		33.997334, 38.859127, 49.864624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474915, 39.399124, 49.378815>,  <33.309807, 38.970722, 49.934277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474915, 39.399124, 49.378815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755135, 39.114460, 49.399849>,  <33.923267, 38.943661, 49.412468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755135, 39.114460, 49.399849>,  <33.474915, 39.399124, 49.378815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755135, 39.114460, 49.399849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003945, -0.077547, -0.996981,
		0.713588, 0.698232, -0.057134,
		0.700554, -0.711659, 0.052582,
		33.965302, 38.900963, 49.415623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896465, 39.585987, 48.721703>,  <33.474915, 39.399124, 49.378815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896465, 39.585987, 48.721703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047649, 39.226955, 48.812481>,  <34.138359, 39.011536, 48.866947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047649, 39.226955, 48.812481>,  <33.896465, 39.585987, 48.721703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047649, 39.226955, 48.812481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269904, -0.127654, -0.954388,
		0.885606, 0.421973, 0.194011,
		0.377960, -0.897576, 0.226943,
		34.161037, 38.957684, 48.880566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636375, 39.536575, 48.532291>,  <33.896465, 39.585987, 48.721703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636375, 39.536575, 48.532291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478889, 39.168884, 48.530876>,  <34.384399, 38.948269, 48.530029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478889, 39.168884, 48.530876>,  <34.636375, 39.536575, 48.532291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478889, 39.168884, 48.530876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210610, -0.086463, -0.973739,
		0.894780, -0.384121, 0.227640,
		-0.393716, -0.919225, -0.003534,
		34.360775, 38.893116, 48.529816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152340, 39.142189, 48.245171>,  <34.636375, 39.536575, 48.532291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152340, 39.142189, 48.245171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826519, 38.913677, 48.204880>,  <34.631027, 38.776569, 48.180706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826519, 38.913677, 48.204880>,  <35.152340, 39.142189, 48.245171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826519, 38.913677, 48.204880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313355, -0.287198, -0.905166,
		0.488175, -0.768867, 0.412951,
		-0.814551, -0.571280, -0.100725,
		34.582153, 38.742294, 48.174664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346542, 38.586258, 47.846115>,  <35.152340, 39.142189, 48.245171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346542, 38.586258, 47.846115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951302, 38.552879, 47.794430>,  <34.714157, 38.532852, 47.763416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951302, 38.552879, 47.794430>,  <35.346542, 38.586258, 47.846115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951302, 38.552879, 47.794430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142490, -0.180120, -0.973269,
		0.057943, -0.980099, 0.189866,
		-0.988099, -0.083448, -0.129218,
		34.654873, 38.527843, 47.755665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230213, 38.006458, 47.529945>,  <35.346542, 38.586258, 47.846115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230213, 38.006458, 47.529945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909992, 38.226128, 47.434010>,  <34.717861, 38.357929, 47.376446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909992, 38.226128, 47.434010>,  <35.230213, 38.006458, 47.529945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909992, 38.226128, 47.434010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197008, -0.136798, -0.970811,
		-0.565958, -0.824433, 0.001322,
		-0.800550, 0.549178, -0.239842,
		34.669827, 38.390881, 47.362057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756310, 37.568871, 47.166763>,  <35.230213, 38.006458, 47.529945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756310, 37.568871, 47.166763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.660961, 37.939579, 47.050640>,  <34.603752, 38.162003, 46.980965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.660961, 37.939579, 47.050640>,  <34.756310, 37.568871, 47.166763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660961, 37.939579, 47.050640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177487, -0.252319, -0.951227,
		-0.954818, -0.278271, -0.104344,
		-0.238371, 0.926769, -0.290309,
		34.589451, 38.217609, 46.963547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414429, 37.535099, 46.525284>,  <34.756310, 37.568871, 47.166763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414429, 37.535099, 46.525284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519112, 37.921135, 46.521229>,  <34.581921, 38.152756, 46.518795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519112, 37.921135, 46.521229>,  <34.414429, 37.535099, 46.525284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519112, 37.921135, 46.521229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009648, -0.013121, -0.999867,
		-0.965099, 0.261576, -0.012745,
		0.261708, 0.965094, -0.010139,
		34.597626, 38.210663, 46.518188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153912, 37.802086, 45.901905>,  <34.414429, 37.535099, 46.525284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153912, 37.802086, 45.901905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413700, 38.091087, 45.996708>,  <34.569572, 38.264488, 46.053589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413700, 38.091087, 45.996708>,  <34.153912, 37.802086, 45.901905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413700, 38.091087, 45.996708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229158, 0.111215, -0.967015,
		-0.725029, 0.682364, -0.093336,
		0.649476, 0.722503, 0.237004,
		34.608543, 38.307838, 46.067810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923199, 38.382137, 45.416134>,  <34.153912, 37.802086, 45.901905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923199, 38.382137, 45.416134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295887, 38.461945, 45.537525>,  <34.519501, 38.509827, 45.610359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295887, 38.461945, 45.537525>,  <33.923199, 38.382137, 45.416134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295887, 38.461945, 45.537525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258837, 0.221384, -0.940209,
		-0.254770, 0.954559, 0.154625,
		0.931717, 0.199515, 0.303477,
		34.575401, 38.521797, 45.628567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025616, 39.078758, 45.305470>,  <33.923199, 38.382137, 45.416134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025616, 39.078758, 45.305470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396450, 38.929066, 45.314083>,  <34.618950, 38.839249, 45.319252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396450, 38.929066, 45.314083>,  <34.025616, 39.078758, 45.305470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396450, 38.929066, 45.314083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127603, 0.261041, -0.956857,
		0.352463, 0.889836, 0.289760,
		0.927085, -0.374231, 0.021539,
		34.674576, 38.816795, 45.320545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544857, 39.591480, 45.102512>,  <34.025616, 39.078758, 45.305470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544857, 39.591480, 45.102512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699409, 39.229984, 45.028786>,  <34.792141, 39.013088, 44.984550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699409, 39.229984, 45.028786>,  <34.544857, 39.591480, 45.102512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699409, 39.229984, 45.028786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042405, 0.217027, -0.975244,
		0.921366, 0.368996, 0.122177,
		0.386377, -0.903737, -0.184314,
		34.815323, 38.958862, 44.973492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053242, 39.702564, 44.594734>,  <34.544857, 39.591480, 45.102512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053242, 39.702564, 44.594734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003078, 39.305786, 44.587666>,  <34.972980, 39.067719, 44.583424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003078, 39.305786, 44.587666>,  <35.053242, 39.702564, 44.594734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003078, 39.305786, 44.587666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098557, 0.005272, -0.995118,
		0.987198, -0.126540, 0.097102,
		-0.125410, -0.991948, -0.017676,
		34.965454, 39.008202, 44.582363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541019, 39.422585, 44.158634>,  <35.053242, 39.702564, 44.594734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541019, 39.422585, 44.158634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.259224, 39.138714, 44.155598>,  <35.090149, 38.968391, 44.153778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.259224, 39.138714, 44.155598>,  <35.541019, 39.422585, 44.158634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259224, 39.138714, 44.155598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069051, -0.057897, -0.995932,
		0.706350, -0.702145, 0.089791,
		-0.704487, -0.709677, -0.007588,
		35.047878, 38.925812, 44.153320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.785397, 33.147793, 28.401827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.598988, 33.490742, 28.314430>,  <40.487144, 33.696510, 28.261992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.598988, 33.490742, 28.314430>,  <40.785397, 33.147793, 28.401827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598988, 33.490742, 28.314430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803257, 0.513514, 0.301795,
		0.370950, -0.034865, -0.927998,
		-0.466019, 0.857372, -0.218493,
		40.459183, 33.747955, 28.248882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291008, 33.600163, 28.153484>,  <40.785397, 33.147793, 28.401827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291008, 33.600163, 28.153484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.012909, 33.869156, 28.254999>,  <40.846050, 34.030552, 28.315908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.012909, 33.869156, 28.254999>,  <41.291008, 33.600163, 28.153484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012909, 33.869156, 28.254999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710573, 0.589860, 0.383602,
		0.108267, 0.447030, -0.887943,
		-0.695244, 0.672480, 0.253785,
		40.804337, 34.070900, 28.331135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620068, 34.142803, 28.002205>,  <41.291008, 33.600163, 28.153484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620068, 34.142803, 28.002205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321499, 34.253040, 28.244493>,  <41.142357, 34.319183, 28.389866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321499, 34.253040, 28.244493>,  <41.620068, 34.142803, 28.002205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321499, 34.253040, 28.244493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645391, 0.521689, 0.557952,
		-0.162231, 0.807397, -0.567267,
		-0.746426, 0.275592, 0.605721,
		41.097572, 34.335716, 28.426210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752468, 34.853256, 28.104479>,  <41.620068, 34.142803, 28.002205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752468, 34.853256, 28.104479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523701, 34.712563, 28.400908>,  <41.386440, 34.628147, 28.578766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523701, 34.712563, 28.400908>,  <41.752468, 34.853256, 28.104479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523701, 34.712563, 28.400908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636043, 0.380365, 0.671395,
		-0.518034, 0.855338, 0.006183,
		-0.571918, -0.351738, 0.741074,
		41.352127, 34.607040, 28.623230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618160, 35.465668, 28.622007>,  <41.752468, 34.853256, 28.104479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618160, 35.465668, 28.622007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.547234, 35.130508, 28.828499>,  <41.504677, 34.929413, 28.952393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.547234, 35.130508, 28.828499>,  <41.618160, 35.465668, 28.622007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547234, 35.130508, 28.828499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430786, 0.405538, 0.806202,
		-0.884863, 0.365336, 0.289045,
		-0.177316, -0.837895, 0.516227,
		41.494038, 34.879139, 28.983368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352242, 35.661728, 29.254377>,  <41.618160, 35.465668, 28.622007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352242, 35.661728, 29.254377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.452629, 35.279373, 29.315437>,  <41.512859, 35.049961, 29.352074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.452629, 35.279373, 29.315437>,  <41.352242, 35.661728, 29.254377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452629, 35.279373, 29.315437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361962, 0.238927, 0.901053,
		-0.897775, -0.170880, 0.405956,
		0.250966, -0.955884, 0.152650,
		41.527920, 34.992607, 29.361233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257507, 35.579266, 30.008696>,  <41.352242, 35.661728, 29.254377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257507, 35.579266, 30.008696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.440296, 35.232758, 29.927948>,  <41.549969, 35.024853, 29.879499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.440296, 35.232758, 29.927948>,  <41.257507, 35.579266, 30.008696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440296, 35.232758, 29.927948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532856, 0.084896, 0.841937,
		-0.712207, -0.492310, 0.500393,
		0.456975, -0.866270, -0.201867,
		41.577389, 34.972878, 29.867388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109261, 35.132210, 30.571991>,  <41.257507, 35.579266, 30.008696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109261, 35.132210, 30.571991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.453278, 35.018017, 30.402838>,  <41.659687, 34.949501, 30.301346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.453278, 35.018017, 30.402838>,  <41.109261, 35.132210, 30.571991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453278, 35.018017, 30.402838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497974, 0.289105, 0.817582,
		-0.111146, -0.913739, 0.390804,
		0.860040, -0.285482, -0.422885,
		41.711288, 34.932373, 30.275972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431492, 34.475876, 30.908699>,  <41.109261, 35.132210, 30.571991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431492, 34.475876, 30.908699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700851, 34.713966, 30.733320>,  <41.862469, 34.856819, 30.628092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700851, 34.713966, 30.733320>,  <41.431492, 34.475876, 30.908699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700851, 34.713966, 30.733320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350214, 0.265460, 0.898265,
		0.651061, -0.758444, -0.029695,
		0.673402, 0.595225, -0.438449,
		41.902870, 34.892532, 30.601786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065956, 34.476154, 31.329514>,  <41.431492, 34.475876, 30.908699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065956, 34.476154, 31.329514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135376, 34.806820, 31.115406>,  <42.177029, 35.005219, 30.986940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135376, 34.806820, 31.115406>,  <42.065956, 34.476154, 31.329514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135376, 34.806820, 31.115406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573037, 0.357271, 0.737554,
		0.800943, -0.434730, -0.411703,
		0.173547, 0.826660, -0.535270,
		42.187439, 35.054817, 30.954824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838692, 34.494061, 31.345512>,  <42.065956, 34.476154, 31.329514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838692, 34.494061, 31.345512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729626, 34.849121, 31.197067>,  <42.664188, 35.062157, 31.108000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729626, 34.849121, 31.197067>,  <42.838692, 34.494061, 31.345512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729626, 34.849121, 31.197067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798711, 0.423888, 0.427059,
		0.536390, -0.179968, -0.824558,
		-0.272663, 0.887654, -0.371112,
		42.647827, 35.115417, 31.085733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488491, 34.797672, 31.026878>,  <42.838692, 34.494061, 31.345512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488491, 34.797672, 31.026878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215511, 35.072083, 31.127771>,  <43.051723, 35.236729, 31.188307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215511, 35.072083, 31.127771>,  <43.488491, 34.797672, 31.026878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215511, 35.072083, 31.127771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665893, 0.441242, 0.601574,
		0.301402, 0.578506, -0.757950,
		-0.682454, 0.686029, 0.252231,
		43.010777, 35.277893, 31.203442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915627, 35.384331, 31.202240>,  <43.488491, 34.797672, 31.026878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915627, 35.384331, 31.202240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.556042, 35.458328, 31.361059>,  <43.340290, 35.502728, 31.456350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.556042, 35.458328, 31.361059>,  <43.915627, 35.384331, 31.202240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556042, 35.458328, 31.361059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436608, 0.451419, 0.778199,
		-0.035273, 0.872925, -0.486578,
		-0.898960, 0.184995, 0.397049,
		43.286354, 35.513828, 31.480173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964848, 36.144829, 31.341677>,  <43.915627, 35.384331, 31.202240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964848, 36.144829, 31.341677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672726, 35.973877, 31.554840>,  <43.497452, 35.871304, 31.682739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672726, 35.973877, 31.554840>,  <43.964848, 36.144829, 31.341677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672726, 35.973877, 31.554840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322033, 0.472598, 0.820333,
		-0.602448, 0.770711, -0.207511,
		-0.730309, -0.427383, 0.532910,
		43.453632, 35.845661, 31.714712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637878, 36.630894, 31.661482>,  <43.964848, 36.144829, 31.341677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637878, 36.630894, 31.661482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583504, 36.291683, 31.866369>,  <43.550877, 36.088158, 31.989302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583504, 36.291683, 31.866369>,  <43.637878, 36.630894, 31.661482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583504, 36.291683, 31.866369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316424, 0.452772, 0.833590,
		-0.938827, 0.275396, 0.206787,
		-0.135940, -0.848029, 0.512217,
		43.542721, 36.037273, 32.020035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366394, 36.859852, 32.317039>,  <43.637878, 36.630894, 31.661482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366394, 36.859852, 32.317039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.497265, 36.491337, 32.401112>,  <43.575787, 36.270226, 32.451553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.497265, 36.491337, 32.401112>,  <43.366394, 36.859852, 32.317039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497265, 36.491337, 32.401112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436454, 0.344605, 0.831117,
		-0.838131, -0.180188, 0.514849,
		0.327177, -0.921292, 0.210180,
		43.595417, 36.214951, 32.464165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231945, 36.658989, 33.034500>,  <43.366394, 36.859852, 32.317039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231945, 36.658989, 33.034500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541370, 36.431477, 32.922726>,  <43.727028, 36.294968, 32.855663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.541370, 36.431477, 32.922726>,  <43.231945, 36.658989, 33.034500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541370, 36.431477, 32.922726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465166, 0.210186, 0.859908,
		-0.430368, -0.795178, 0.427171,
		0.773566, -0.568782, -0.279433,
		43.773441, 36.260841, 32.838898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395294, 36.267502, 33.617622>,  <43.231945, 36.658989, 33.034500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395294, 36.267502, 33.617622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704327, 36.220680, 33.368008>,  <43.889744, 36.192585, 33.218239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704327, 36.220680, 33.368008>,  <43.395294, 36.267502, 33.617622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704327, 36.220680, 33.368008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634684, 0.115481, 0.764094,
		-0.017379, -0.986388, 0.163513,
		0.772576, -0.117058, -0.624038,
		43.936100, 36.185562, 33.180798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838863, 35.903763, 34.015781>,  <43.395294, 36.267502, 33.617622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838863, 35.903763, 34.015781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095333, 36.043495, 33.742474>,  <44.249214, 36.127335, 33.578487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095333, 36.043495, 33.742474>,  <43.838863, 35.903763, 34.015781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095333, 36.043495, 33.742474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715727, 0.048953, 0.696662,
		0.276816, -0.935718, -0.218641,
		0.641176, 0.349335, -0.683270,
		44.287685, 36.148296, 33.537491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524590, 35.540173, 34.170994>,  <43.838863, 35.903763, 34.015781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524590, 35.540173, 34.170994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.589329, 35.843998, 33.919006>,  <44.628170, 36.026295, 33.767815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.589329, 35.843998, 33.919006>,  <44.524590, 35.540173, 34.170994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589329, 35.843998, 33.919006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774320, 0.298000, 0.558233,
		0.611747, -0.578148, -0.539917,
		0.161846, 0.759566, -0.629972,
		44.637882, 36.071869, 33.730015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231953, 35.536449, 34.022282>,  <44.524590, 35.540173, 34.170994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231953, 35.536449, 34.022282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088371, 35.907543, 33.981369>,  <45.002224, 36.130199, 33.956821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088371, 35.907543, 33.981369>,  <45.231953, 35.536449, 34.022282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088371, 35.907543, 33.981369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707767, 0.341995, 0.618147,
		0.608455, 0.149496, -0.779380,
		-0.358954, 0.927734, -0.102280,
		44.980686, 36.185863, 33.950684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708164, 34.980259, 34.183830>,  <45.231953, 35.536449, 34.022282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708164, 34.980259, 34.183830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850536, 34.714924, 34.447132>,  <45.935959, 34.555721, 34.605114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850536, 34.714924, 34.447132>,  <45.708164, 34.980259, 34.183830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850536, 34.714924, 34.447132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843956, -0.530651, -0.078411,
		0.401315, -0.527626, -0.748704,
		0.355929, -0.663340, 0.658251,
		45.957314, 34.515923, 34.644608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647236, 34.366337, 33.887966>,  <45.708164, 34.980259, 34.183830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647236, 34.366337, 33.887966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644066, 34.321392, 34.285419>,  <45.642162, 34.294426, 34.523891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644066, 34.321392, 34.285419>,  <45.647236, 34.366337, 33.887966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644066, 34.321392, 34.285419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797233, -0.599106, -0.074108,
		0.603620, -0.792746, -0.084835,
		-0.007924, -0.112366, 0.993635,
		45.641689, 34.287682, 34.583511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349243, 33.655739, 33.955009>,  <45.647236, 34.366337, 33.887966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349243, 33.655739, 33.955009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.352257, 33.842072, 34.308945>,  <45.354065, 33.953869, 34.521305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.352257, 33.842072, 34.308945>,  <45.349243, 33.655739, 33.955009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352257, 33.842072, 34.308945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913180, -0.357377, 0.195916,
		0.407486, -0.809496, 0.422695,
		0.007532, 0.465830, 0.884842,
		45.354515, 33.981819, 34.574398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106319, 33.123394, 34.370045>,  <45.349243, 33.655739, 33.955009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106319, 33.123394, 34.370045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018375, 33.466835, 34.555290>,  <44.965611, 33.672897, 34.666435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018375, 33.466835, 34.555290>,  <45.106319, 33.123394, 34.370045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018375, 33.466835, 34.555290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917103, -0.343742, 0.201902,
		0.332543, -0.380330, 0.862997,
		-0.219859, 0.858598, 0.463111,
		44.952419, 33.724415, 34.694225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738060, 32.982147, 34.948856>,  <45.106319, 33.123394, 34.370045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738060, 32.982147, 34.948856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.638626, 33.363491, 34.880375>,  <44.578968, 33.592297, 34.839287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.638626, 33.363491, 34.880375>,  <44.738060, 32.982147, 34.948856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638626, 33.363491, 34.880375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915888, -0.288869, -0.278756,
		-0.315209, 0.087507, 0.944979,
		-0.248583, 0.953361, -0.171201,
		44.564053, 33.649498, 34.829014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072994, 33.064220, 35.297539>,  <44.738060, 32.982147, 34.948856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072994, 33.064220, 35.297539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084068, 33.394413, 35.072037>,  <44.090714, 33.592529, 34.936737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084068, 33.394413, 35.072037>,  <44.072994, 33.064220, 35.297539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084068, 33.394413, 35.072037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973231, -0.106466, -0.203682,
		-0.228156, 0.554304, 0.800433,
		0.027683, 0.825477, -0.563756,
		44.092373, 33.642056, 34.902908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466839, 33.320820, 35.364861>,  <44.072994, 33.064220, 35.297539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466839, 33.320820, 35.364861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.611965, 33.491325, 35.033401>,  <43.699039, 33.593628, 34.834526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.611965, 33.491325, 35.033401>,  <43.466839, 33.320820, 35.364861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611965, 33.491325, 35.033401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925703, 0.062805, -0.373001,
		-0.106955, 0.902414, 0.417384,
		0.362815, 0.426268, -0.828650,
		43.720810, 33.619205, 34.784805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906261, 33.699261, 35.138695>,  <43.466839, 33.320820, 35.364861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906261, 33.699261, 35.138695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.145840, 33.703224, 34.818401>,  <43.289585, 33.705601, 34.626225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.145840, 33.703224, 34.818401>,  <42.906261, 33.699261, 35.138695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145840, 33.703224, 34.818401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794813, 0.129293, -0.592921,
		0.097655, 0.991557, 0.085312,
		0.598945, 0.009905, -0.800729,
		43.325523, 33.706196, 34.578182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793938, 34.302872, 34.624371>,  <42.906261, 33.699261, 35.138695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793938, 34.302872, 34.624371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949532, 33.994621, 34.422451>,  <43.042889, 33.809669, 34.301300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949532, 33.994621, 34.422451>,  <42.793938, 34.302872, 34.624371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949532, 33.994621, 34.422451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707587, 0.100961, -0.699377,
		0.589923, 0.629240, -0.506012,
		0.388988, -0.770626, -0.504801,
		43.066227, 33.763435, 34.271011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000095, 34.524021, 33.905212>,  <42.793938, 34.302872, 34.624371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000095, 34.524021, 33.905212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961796, 34.125916, 33.898533>,  <42.938816, 33.887051, 33.894524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961796, 34.125916, 33.898533>,  <43.000095, 34.524021, 33.905212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961796, 34.125916, 33.898533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651680, 0.075359, -0.754742,
		0.752427, -0.061377, -0.655810,
		-0.095745, -0.995266, -0.016704,
		42.933071, 33.827335, 33.893520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029102, 34.328964, 33.210018>,  <43.000095, 34.524021, 33.905212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029102, 34.328964, 33.210018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862335, 34.006088, 33.377171>,  <42.762276, 33.812363, 33.477463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862335, 34.006088, 33.377171>,  <43.029102, 34.328964, 33.210018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862335, 34.006088, 33.377171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670410, -0.037370, -0.741049,
		0.613781, -0.589113, -0.525565,
		-0.416921, -0.807186, 0.417884,
		42.737259, 33.763931, 33.502537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812634, 33.962158, 32.658260>,  <43.029102, 34.328964, 33.210018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812634, 33.962158, 32.658260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.607437, 33.811516, 32.966808>,  <42.484322, 33.721130, 33.151936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.607437, 33.811516, 32.966808>,  <42.812634, 33.962158, 32.658260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607437, 33.811516, 32.966808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819714, -0.051794, -0.570426,
		0.254775, -0.924926, -0.282136,
		-0.512989, -0.376602, 0.771371,
		42.453541, 33.698536, 33.198219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631668, 33.424015, 32.395393>,  <42.812634, 33.962158, 32.658260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631668, 33.424015, 32.395393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.374233, 33.456081, 32.699860>,  <42.219772, 33.475319, 32.882538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.374233, 33.456081, 32.699860>,  <42.631668, 33.424015, 32.395393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374233, 33.456081, 32.699860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764993, -0.098752, -0.636423,
		0.024153, -0.991878, 0.124875,
		-0.643586, 0.080157, 0.761165,
		42.181156, 33.480129, 32.928207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258183, 32.810452, 32.404137>,  <42.631668, 33.424015, 32.395393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258183, 32.810452, 32.404137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031693, 33.085995, 32.585182>,  <41.895798, 33.251320, 32.693810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031693, 33.085995, 32.585182>,  <42.258183, 32.810452, 32.404137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031693, 33.085995, 32.585182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762231, -0.228640, -0.605580,
		-0.313675, -0.687890, 0.654534,
		-0.566226, 0.688862, 0.452613,
		41.861824, 33.292652, 32.720966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594883, 32.493362, 32.442802>,  <42.258183, 32.810452, 32.404137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594883, 32.493362, 32.442802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.465759, 32.861275, 32.532059>,  <41.388287, 33.082024, 32.585613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.465759, 32.861275, 32.532059>,  <41.594883, 32.493362, 32.442802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465759, 32.861275, 32.532059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837981, -0.168155, -0.519145,
		-0.439980, -0.354569, 0.825044,
		-0.322809, 0.919785, 0.223137,
		41.368916, 33.137211, 32.598999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945026, 32.442570, 32.750072>,  <41.594883, 32.493362, 32.442802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945026, 32.442570, 32.750072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001450, 32.792816, 32.565289>,  <41.035301, 33.002964, 32.454418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001450, 32.792816, 32.565289>,  <40.945026, 32.442570, 32.750072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001450, 32.792816, 32.565289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818050, -0.159719, -0.552525,
		-0.557582, 0.455842, 0.693766,
		0.141056, 0.875613, -0.461958,
		41.043766, 33.055500, 32.426701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278683, 32.743576, 32.664925>,  <40.945026, 32.442570, 32.750072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278683, 32.743576, 32.664925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509510, 32.968342, 32.427860>,  <40.648006, 33.103199, 32.285622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509510, 32.968342, 32.427860>,  <40.278683, 32.743576, 32.664925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509510, 32.968342, 32.427860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599243, -0.201732, -0.774734,
		-0.554891, 0.802221, 0.220310,
		0.577065, 0.561912, -0.592664,
		40.682629, 33.136917, 32.250061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868343, 33.184414, 32.331856>,  <40.278683, 32.743576, 32.664925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868343, 33.184414, 32.331856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.193043, 33.149662, 32.100849>,  <40.387863, 33.128811, 31.962246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.193043, 33.149662, 32.100849>,  <39.868343, 33.184414, 32.331856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193043, 33.149662, 32.100849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582158, -0.041622, -0.812010,
		0.046509, 0.995349, -0.084363,
		0.811745, -0.086878, -0.577514,
		40.436565, 33.123600, 31.927595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672909, 33.556103, 31.724478>,  <39.868343, 33.184414, 32.331856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672909, 33.556103, 31.724478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003456, 33.367401, 31.601473>,  <40.201786, 33.254181, 31.527670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003456, 33.367401, 31.601473>,  <39.672909, 33.556103, 31.724478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003456, 33.367401, 31.601473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423707, -0.161188, -0.891342,
		0.370927, 0.866872, -0.333086,
		0.826369, -0.471754, -0.307511,
		40.251366, 33.225876, 31.509220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720097, 33.767918, 31.098280>,  <39.672909, 33.556103, 31.724478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720097, 33.767918, 31.098280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.930523, 33.427780, 31.093040>,  <40.056778, 33.223698, 31.089897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.930523, 33.427780, 31.093040>,  <39.720097, 33.767918, 31.098280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930523, 33.427780, 31.093040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316856, -0.181681, -0.930911,
		0.789213, 0.493871, -0.365012,
		0.526065, -0.850343, -0.013101,
		40.088341, 33.172676, 31.089109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187889, 33.884186, 30.490919>,  <39.720097, 33.767918, 31.098280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187889, 33.884186, 30.490919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138962, 33.491966, 30.552315>,  <40.109604, 33.256634, 30.589151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138962, 33.491966, 30.552315>,  <40.187889, 33.884186, 30.490919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138962, 33.491966, 30.552315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296611, -0.111464, -0.948471,
		0.947132, -0.161545, -0.277208,
		-0.122322, -0.980550, 0.153487,
		40.102264, 33.197800, 30.598360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.018986, 40.490311, 40.771393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744709, 40.201244, 40.806213>,  <39.580143, 40.027805, 40.827106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744709, 40.201244, 40.806213>,  <40.018986, 40.490311, 40.771393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744709, 40.201244, 40.806213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336622, -0.420869, -0.842351,
		0.645376, -0.548291, 0.531853,
		-0.685693, -0.722666, 0.087052,
		39.539001, 39.984444, 40.832329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387669, 39.884846, 40.654957>,  <40.018986, 40.490311, 40.771393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387669, 39.884846, 40.654957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003235, 39.806683, 40.576836>,  <39.772575, 39.759785, 40.529964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003235, 39.806683, 40.576836>,  <40.387669, 39.884846, 40.654957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003235, 39.806683, 40.576836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270751, -0.525616, -0.806487,
		0.054938, -0.827977, 0.558065,
		-0.961080, -0.195404, -0.195299,
		39.714912, 39.748062, 40.518246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358131, 39.195911, 40.378155>,  <40.387669, 39.884846, 40.654957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358131, 39.195911, 40.378155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012688, 39.344917, 40.242268>,  <39.805420, 39.434322, 40.160736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012688, 39.344917, 40.242268>,  <40.358131, 39.195911, 40.378155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012688, 39.344917, 40.242268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031808, -0.632230, -0.774127,
		-0.503157, -0.679349, 0.534151,
		-0.863610, 0.372517, -0.339720,
		39.753605, 39.456673, 40.140350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933552, 38.660431, 40.240112>,  <40.358131, 39.195911, 40.378155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933552, 38.660431, 40.240112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771919, 38.955959, 40.024387>,  <39.674942, 39.133278, 39.894951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771919, 38.955959, 40.024387>,  <39.933552, 38.660431, 40.240112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771919, 38.955959, 40.024387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001864, -0.588927, -0.808184,
		-0.914722, -0.327576, 0.236596,
		-0.404080, 0.738823, -0.539315,
		39.650696, 39.177605, 39.862595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388359, 38.335804, 39.942749>,  <39.933552, 38.660431, 40.240112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388359, 38.335804, 39.942749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479679, 38.653191, 39.717079>,  <39.534470, 38.843624, 39.581676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479679, 38.653191, 39.717079>,  <39.388359, 38.335804, 39.942749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479679, 38.653191, 39.717079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037263, -0.586174, -0.809328,
		-0.972877, 0.163748, -0.163391,
		0.228301, 0.793465, -0.564173,
		39.548168, 38.891232, 39.547829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921791, 38.387310, 39.309433>,  <39.388359, 38.335804, 39.942749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921791, 38.387310, 39.309433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238010, 38.600624, 39.189011>,  <39.427742, 38.728615, 39.116756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238010, 38.600624, 39.189011>,  <38.921791, 38.387310, 39.309433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238010, 38.600624, 39.189011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035739, -0.450592, -0.892015,
		-0.611357, 0.715940, -0.337155,
		0.790548, 0.533289, -0.301059,
		39.475174, 38.760612, 39.098694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777756, 38.558620, 38.617432>,  <38.921791, 38.387310, 39.309433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777756, 38.558620, 38.617432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173149, 38.601562, 38.660110>,  <39.410385, 38.627327, 38.685719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173149, 38.601562, 38.660110>,  <38.777756, 38.558620, 38.617432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173149, 38.601562, 38.660110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141287, -0.401680, -0.904815,
		-0.054280, 0.909466, -0.412221,
		0.988479, 0.107355, 0.106693,
		39.469692, 38.633770, 38.692120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980095, 38.722214, 37.964375>,  <38.777756, 38.558620, 38.617432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980095, 38.722214, 37.964375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346146, 38.630951, 38.097328>,  <39.565777, 38.576195, 38.177101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346146, 38.630951, 38.097328>,  <38.980095, 38.722214, 37.964375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346146, 38.630951, 38.097328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219839, -0.408702, -0.885795,
		0.337945, 0.883690, -0.323859,
		0.915131, -0.228153, 0.332388,
		39.620686, 38.562504, 38.197044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295826, 38.723331, 37.383736>,  <38.980095, 38.722214, 37.964375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295826, 38.723331, 37.383736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597557, 38.583504, 37.606007>,  <39.778595, 38.499607, 37.739368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597557, 38.583504, 37.606007>,  <39.295826, 38.723331, 37.383736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597557, 38.583504, 37.606007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346340, -0.507159, -0.789202,
		0.557702, 0.787775, -0.261495,
		0.754332, -0.349573, 0.555681,
		39.823856, 38.478630, 37.772713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089142, 38.870659, 37.130039>,  <39.295826, 38.723331, 37.383736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089142, 38.870659, 37.130039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091003, 38.529716, 37.339214>,  <40.092121, 38.325150, 37.464718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091003, 38.529716, 37.339214>,  <40.089142, 38.870659, 37.130039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091003, 38.529716, 37.339214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488156, -0.454465, -0.745094,
		0.872744, 0.258740, 0.413971,
		0.004650, -0.852359, 0.522936,
		40.092400, 38.274010, 37.496094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758263, 38.587124, 37.067024>,  <40.089142, 38.870659, 37.130039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758263, 38.587124, 37.067024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505264, 38.293705, 37.166508>,  <40.353466, 38.117653, 37.226196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505264, 38.293705, 37.166508>,  <40.758263, 38.587124, 37.067024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505264, 38.293705, 37.166508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270139, -0.509841, -0.816755,
		0.725929, -0.449410, 0.520632,
		-0.632497, -0.733549, 0.248705,
		40.315514, 38.073639, 37.241119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159142, 37.892448, 37.023571>,  <40.758263, 38.587124, 37.067024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159142, 37.892448, 37.023571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765411, 37.844948, 36.971432>,  <40.529171, 37.816448, 36.940147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765411, 37.844948, 36.971432>,  <41.159142, 37.892448, 37.023571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765411, 37.844948, 36.971432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167769, -0.403089, -0.899652,
		0.054294, -0.907423, 0.416695,
		-0.984330, -0.118755, -0.130353,
		40.470112, 37.809322, 36.932327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125019, 37.343826, 36.443954>,  <41.159142, 37.892448, 37.023571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125019, 37.343826, 36.443954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781860, 37.548477, 36.462967>,  <40.575966, 37.671268, 36.474377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781860, 37.548477, 36.462967>,  <41.125019, 37.343826, 36.443954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781860, 37.548477, 36.462967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066334, -0.018540, -0.997625,
		-0.509530, -0.859008, 0.049844,
		-0.857892, 0.511626, 0.047535,
		40.524494, 37.701965, 36.477226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626041, 37.156269, 35.974758>,  <41.125019, 37.343826, 36.443954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626041, 37.156269, 35.974758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953400, 36.927227, 35.994133>,  <42.149815, 36.789803, 36.005756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953400, 36.927227, 35.994133>,  <41.626041, 37.156269, 35.974758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953400, 36.927227, 35.994133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426298, -0.548439, 0.719364,
		-0.385347, -0.609376, -0.692942,
		0.818400, -0.572605, 0.048437,
		42.198921, 36.755447, 36.008663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555981, 36.444340, 35.729889>,  <41.626041, 37.156269, 35.974758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555981, 36.444340, 35.729889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831570, 36.455368, 36.019592>,  <41.996925, 36.461983, 36.193417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831570, 36.455368, 36.019592>,  <41.555981, 36.444340, 35.729889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831570, 36.455368, 36.019592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535373, -0.654228, 0.534193,
		0.488558, -0.755795, -0.435988,
		0.688975, 0.027568, 0.724260,
		42.038261, 36.463638, 36.236870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596786, 35.740070, 35.992039>,  <41.555981, 36.444340, 35.729889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596786, 35.740070, 35.992039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726799, 36.000484, 36.266415>,  <41.804806, 36.156734, 36.431038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726799, 36.000484, 36.266415>,  <41.596786, 35.740070, 35.992039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726799, 36.000484, 36.266415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481869, -0.510089, 0.712468,
		0.813731, -0.562104, 0.147921,
		0.325028, 0.651036, 0.685936,
		41.824306, 36.195797, 36.472195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565601, 35.319218, 36.585644>,  <41.596786, 35.740070, 35.992039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565601, 35.319218, 36.585644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621693, 35.681034, 36.746708>,  <41.655350, 35.898125, 36.843346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621693, 35.681034, 36.746708>,  <41.565601, 35.319218, 36.585644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621693, 35.681034, 36.746708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439779, -0.307458, 0.843839,
		0.887090, -0.295414, 0.354684,
		0.140232, 0.904544, 0.402660,
		41.663761, 35.952396, 36.867504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916546, 35.179546, 37.237743>,  <41.565601, 35.319218, 36.585644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916546, 35.179546, 37.237743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714710, 35.524773, 37.246773>,  <41.593609, 35.731907, 37.252190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714710, 35.524773, 37.246773>,  <41.916546, 35.179546, 37.237743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714710, 35.524773, 37.246773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377823, -0.244255, 0.893079,
		0.776297, 0.442111, 0.449334,
		-0.504591, 0.863063, 0.022574,
		41.563332, 35.783691, 37.253544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972931, 35.418144, 37.872417>,  <41.916546, 35.179546, 37.237743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972931, 35.418144, 37.872417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663250, 35.626961, 37.729259>,  <41.477444, 35.752251, 37.643364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663250, 35.626961, 37.729259>,  <41.972931, 35.418144, 37.872417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663250, 35.626961, 37.729259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427011, -0.013416, 0.904147,
		0.467203, 0.852813, 0.233305,
		-0.774198, 0.522044, -0.357892,
		41.430992, 35.783573, 37.621891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878609, 35.931019, 38.261997>,  <41.972931, 35.418144, 37.872417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878609, 35.931019, 38.261997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524433, 35.850410, 38.094479>,  <41.311928, 35.802044, 37.993969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524433, 35.850410, 38.094479>,  <41.878609, 35.931019, 38.261997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524433, 35.850410, 38.094479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422606, -0.025870, 0.905944,
		-0.193402, 0.979142, -0.062258,
		-0.885438, -0.201522, -0.418794,
		41.258801, 35.789955, 37.968842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554886, 36.049721, 38.842415>,  <41.878609, 35.931019, 38.261997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554886, 36.049721, 38.842415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261234, 35.953518, 38.588421>,  <41.085045, 35.895794, 38.436024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261234, 35.953518, 38.588421>,  <41.554886, 36.049721, 38.842415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261234, 35.953518, 38.588421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594488, -0.224191, 0.772219,
		-0.328086, 0.944400, 0.021604,
		-0.734128, -0.240511, -0.634989,
		41.040997, 35.881363, 38.397923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969887, 36.509602, 39.063553>,  <41.554886, 36.049721, 38.842415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969887, 36.509602, 39.063553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864899, 36.170036, 38.880051>,  <40.801907, 35.966297, 38.769947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864899, 36.170036, 38.880051>,  <40.969887, 36.509602, 39.063553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864899, 36.170036, 38.880051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737993, -0.129695, 0.662228,
		-0.621670, 0.512378, -0.592448,
		-0.262474, -0.848910, -0.458759,
		40.786156, 35.915363, 38.742424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325932, 36.525955, 39.278358>,  <40.969887, 36.509602, 39.063553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325932, 36.525955, 39.278358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367580, 36.146683, 39.158283>,  <40.392570, 35.919121, 39.086239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367580, 36.146683, 39.158283>,  <40.325932, 36.525955, 39.278358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367580, 36.146683, 39.158283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637008, -0.295375, 0.712021,
		-0.763793, 0.117089, -0.634753,
		0.104120, -0.948179, -0.300192,
		40.398815, 35.862228, 39.068226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714897, 36.251438, 39.268486>,  <40.325932, 36.525955, 39.278358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714897, 36.251438, 39.268486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921719, 35.909058, 39.267754>,  <40.045811, 35.703629, 39.267315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921719, 35.909058, 39.267754>,  <39.714897, 36.251438, 39.268486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921719, 35.909058, 39.267754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679360, -0.411677, 0.607448,
		-0.520699, -0.312839, -0.794358,
		0.517052, -0.855952, -0.001829,
		40.076836, 35.652271, 39.267204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179806, 35.737408, 39.122410>,  <39.714897, 36.251438, 39.268486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179806, 35.737408, 39.122410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505123, 35.585491, 39.298737>,  <39.700314, 35.494343, 39.404533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505123, 35.585491, 39.298737>,  <39.179806, 35.737408, 39.122410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505123, 35.585491, 39.298737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567435, -0.350052, 0.745306,
		-0.128750, -0.856285, -0.500200,
		0.813290, -0.379789, 0.440817,
		39.749111, 35.471554, 39.430981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005337, 35.184242, 39.486301>,  <39.179806, 35.737408, 39.122410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005337, 35.184242, 39.486301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348057, 35.228256, 39.687813>,  <39.553688, 35.254665, 39.808720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348057, 35.228256, 39.687813>,  <39.005337, 35.184242, 39.486301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348057, 35.228256, 39.687813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480269, -0.185382, 0.857307,
		0.187729, -0.976486, -0.105986,
		0.856796, 0.110040, 0.503777,
		39.605095, 35.261269, 39.838947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821251, 34.952156, 40.026081>,  <39.005337, 35.184242, 39.486301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821251, 34.952156, 40.026081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164433, 35.127583, 40.133091>,  <39.370342, 35.232838, 40.197296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164433, 35.127583, 40.133091>,  <38.821251, 34.952156, 40.026081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164433, 35.127583, 40.133091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324850, 0.059730, 0.943877,
		0.397977, -0.896710, 0.193715,
		0.857955, 0.438570, 0.267525,
		39.421818, 35.259155, 40.213348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065884, 34.632507, 40.552437>,  <38.821251, 34.952156, 40.026081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065884, 34.632507, 40.552437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238037, 34.990791, 40.597103>,  <39.341328, 35.205761, 40.623905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238037, 34.990791, 40.597103>,  <39.065884, 34.632507, 40.552437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238037, 34.990791, 40.597103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374115, 0.064421, 0.925142,
		0.821469, -0.439939, 0.362826,
		0.430380, 0.895714, 0.111668,
		39.367149, 35.259506, 40.630604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240101, 33.853420, 40.443104>,  <39.065884, 34.632507, 40.552437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240101, 33.853420, 40.443104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917793, 33.619427, 40.480061>,  <38.724411, 33.479031, 40.502235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917793, 33.619427, 40.480061>,  <39.240101, 33.853420, 40.443104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917793, 33.619427, 40.480061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059004, -0.075938, -0.995365,
		0.589286, -0.807484, 0.026672,
		-0.805767, -0.584981, 0.092393,
		38.676064, 33.443932, 40.507778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290764, 33.263157, 39.934551>,  <39.240101, 33.853420, 40.443104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290764, 33.263157, 39.934551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899845, 33.289196, 40.015202>,  <38.665295, 33.304817, 40.063591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899845, 33.289196, 40.015202>,  <39.290764, 33.263157, 39.934551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899845, 33.289196, 40.015202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210878, -0.206572, -0.955436,
		-0.020540, -0.976264, 0.215608,
		-0.977296, 0.065092, 0.201630,
		38.606655, 33.308723, 40.075691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022308, 32.691597, 39.618462>,  <39.290764, 33.263157, 39.934551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022308, 32.691597, 39.618462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727127, 32.957550, 39.664688>,  <38.550018, 33.117123, 39.692425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727127, 32.957550, 39.664688>,  <39.022308, 32.691597, 39.618462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727127, 32.957550, 39.664688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142162, 0.014245, -0.989741,
		-0.659712, -0.746808, 0.084009,
		-0.737950, 0.664887, 0.115565,
		38.505741, 33.157017, 39.699356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622192, 32.451965, 39.114910>,  <39.022308, 32.691597, 39.618462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622192, 32.451965, 39.114910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427528, 32.789497, 39.205338>,  <38.310730, 32.992016, 39.259594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427528, 32.789497, 39.205338>,  <38.622192, 32.451965, 39.114910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427528, 32.789497, 39.205338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268105, 0.102025, -0.957972,
		-0.831433, -0.526818, 0.176584,
		-0.486661, 0.843833, 0.226070,
		38.281528, 33.042648, 39.273159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933990, 32.419979, 38.920452>,  <38.622192, 32.451965, 39.114910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933990, 32.419979, 38.920452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006851, 32.813068, 38.933556>,  <38.050568, 33.048923, 38.941418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006851, 32.813068, 38.933556>,  <37.933990, 32.419979, 38.920452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006851, 32.813068, 38.933556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521790, 0.124849, -0.843888,
		-0.833400, 0.136622, 0.535517,
		0.182153, 0.982724, 0.032761,
		38.061497, 33.107887, 38.943382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277569, 32.831524, 38.753704>,  <37.933990, 32.419979, 38.920452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277569, 32.831524, 38.753704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564671, 33.092865, 38.657410>,  <37.736931, 33.249672, 38.599632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564671, 33.092865, 38.657410>,  <37.277569, 32.831524, 38.753704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564671, 33.092865, 38.657410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512513, 0.261690, -0.817832,
		-0.471337, 0.710383, 0.522683,
		0.717755, 0.653356, -0.240736,
		37.779999, 33.288872, 38.585190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953354, 33.449181, 38.514774>,  <37.277569, 32.831524, 38.753704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953354, 33.449181, 38.514774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323723, 33.518681, 38.380619>,  <37.545944, 33.560379, 38.300125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323723, 33.518681, 38.380619>,  <36.953354, 33.449181, 38.514774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323723, 33.518681, 38.380619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377722, 0.427407, -0.821370,
		0.000638, 0.887207, 0.461372,
		0.925919, 0.173747, -0.335391,
		37.601498, 33.570805, 38.280003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027504, 34.130535, 38.092312>,  <36.953354, 33.449181, 38.514774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027504, 34.130535, 38.092312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374428, 33.971699, 37.972252>,  <37.582584, 33.876396, 37.900215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374428, 33.971699, 37.972252>,  <37.027504, 34.130535, 38.092312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374428, 33.971699, 37.972252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251500, 0.170775, -0.952672,
		0.429557, 0.901750, 0.048246,
		0.867311, -0.397092, -0.300148,
		37.634621, 33.852570, 37.882206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388622, 34.574688, 37.627838>,  <37.027504, 34.130535, 38.092312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388622, 34.574688, 37.627838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546532, 34.222069, 37.524277>,  <37.641277, 34.010498, 37.462139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546532, 34.222069, 37.524277>,  <37.388622, 34.574688, 37.627838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546532, 34.222069, 37.524277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197509, 0.193775, -0.960958,
		0.897298, 0.430498, -0.097616,
		0.394775, -0.881546, -0.258901,
		37.664963, 33.957603, 37.446606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927036, 34.690460, 37.118568>,  <37.388622, 34.574688, 37.627838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927036, 34.690460, 37.118568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823772, 34.306538, 37.074535>,  <37.761814, 34.076183, 37.048115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823772, 34.306538, 37.074535>,  <37.927036, 34.690460, 37.118568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823772, 34.306538, 37.074535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065788, 0.131145, -0.989178,
		0.963860, -0.248121, -0.097000,
		-0.258157, -0.959811, -0.110082,
		37.746326, 34.018593, 37.041512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275684, 34.337246, 36.378437>,  <37.927036, 34.690460, 37.118568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275684, 34.337246, 36.378437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960625, 34.123550, 36.501205>,  <37.771591, 33.995335, 36.574867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960625, 34.123550, 36.501205>,  <38.275684, 34.337246, 36.378437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960625, 34.123550, 36.501205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283606, -0.127869, -0.950378,
		0.546974, -0.835607, -0.050798,
		-0.787646, -0.534239, 0.306924,
		37.724331, 33.963280, 36.593281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373112, 33.808022, 35.938858>,  <38.275684, 34.337246, 36.378437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373112, 33.808022, 35.938858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992855, 33.783733, 36.060577>,  <37.764702, 33.769161, 36.133610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992855, 33.783733, 36.060577>,  <38.373112, 33.808022, 35.938858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992855, 33.783733, 36.060577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300675, -0.062110, -0.951702,
		0.076688, -0.996220, 0.040787,
		-0.950638, -0.060721, 0.304302,
		37.707664, 33.765518, 36.151867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.713219, 33.426048, 44.089977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313694, 33.437962, 44.074524>,  <39.073978, 33.445110, 44.065250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313694, 33.437962, 44.074524>,  <39.713219, 33.426048, 44.089977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313694, 33.437962, 44.074524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030817, -0.228736, -0.973001,
		-0.037819, -0.973033, 0.227546,
		-0.998809, 0.029785, -0.038637,
		39.014050, 33.446899, 44.062931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518932, 32.744038, 43.769215>,  <39.713219, 33.426048, 44.089977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518932, 32.744038, 43.769215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.195580, 32.977829, 43.741196>,  <39.001568, 33.118103, 43.724384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.195580, 32.977829, 43.741196>,  <39.518932, 32.744038, 43.769215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195580, 32.977829, 43.741196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075377, -0.220791, -0.972404,
		-0.583816, -0.780792, 0.222539,
		-0.808380, 0.584479, -0.070048,
		38.953064, 33.153172, 43.720181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003273, 32.388741, 43.385952>,  <39.518932, 32.744038, 43.769215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003273, 32.388741, 43.385952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896698, 32.772591, 43.349873>,  <38.832752, 33.002899, 43.328224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896698, 32.772591, 43.349873>,  <39.003273, 32.388741, 43.385952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896698, 32.772591, 43.349873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260872, -0.161885, -0.951703,
		-0.927877, -0.230041, 0.293472,
		-0.266439, 0.959622, -0.090198,
		38.816765, 33.060478, 43.322815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461693, 32.383865, 42.872837>,  <39.003273, 32.388741, 43.385952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461693, 32.383865, 42.872837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570229, 32.768654, 42.885426>,  <38.635349, 32.999527, 42.892979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570229, 32.768654, 42.885426>,  <38.461693, 32.383865, 42.872837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570229, 32.768654, 42.885426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172456, 0.080761, -0.981701,
		-0.946907, 0.260949, 0.187811,
		0.271342, 0.961968, 0.031471,
		38.651630, 33.057243, 42.894867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932137, 32.675209, 42.584427>,  <38.461693, 32.383865, 42.872837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932137, 32.675209, 42.584427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.225712, 32.945744, 42.559418>,  <38.401855, 33.108063, 42.544411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.225712, 32.945744, 42.559418>,  <37.932137, 32.675209, 42.584427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225712, 32.945744, 42.559418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291195, 0.230146, -0.928568,
		-0.613634, 0.699715, 0.365858,
		0.733934, 0.676337, -0.062527,
		38.445892, 33.148643, 42.540661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660069, 33.258816, 42.314278>,  <37.932137, 32.675209, 42.584427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660069, 33.258816, 42.314278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046162, 33.293797, 42.215744>,  <38.277817, 33.314785, 42.156624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046162, 33.293797, 42.215744>,  <37.660069, 33.258816, 42.314278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046162, 33.293797, 42.215744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247012, -0.003102, -0.969008,
		-0.085504, 0.996164, 0.018607,
		0.965233, 0.087450, -0.246330,
		38.335732, 33.320030, 42.141846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698528, 33.733040, 41.743484>,  <37.660069, 33.258816, 42.314278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698528, 33.733040, 41.743484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038486, 33.522617, 41.731220>,  <38.242462, 33.396362, 41.723862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038486, 33.522617, 41.731220>,  <37.698528, 33.733040, 41.743484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038486, 33.522617, 41.731220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024894, 0.018033, -0.999528,
		0.526361, 0.850259, 0.002230,
		0.849897, -0.526056, -0.030658,
		38.293457, 33.364799, 41.722023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021553, 34.134785, 41.319771>,  <37.698528, 33.733040, 41.743484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021553, 34.134785, 41.319771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.208691, 33.781326, 41.312927>,  <38.320972, 33.569252, 41.308823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.208691, 33.781326, 41.312927>,  <38.021553, 34.134785, 41.319771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208691, 33.781326, 41.312927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170219, 0.109082, -0.979350,
		0.867265, 0.455269, 0.201447,
		0.467843, -0.883646, -0.017108,
		38.349045, 33.516232, 41.307796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647377, 34.213287, 41.013828>,  <38.021553, 34.134785, 41.319771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647377, 34.213287, 41.013828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589958, 33.819038, 40.978172>,  <38.555508, 33.582489, 40.956779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589958, 33.819038, 40.978172>,  <38.647377, 34.213287, 41.013828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589958, 33.819038, 40.978172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080803, 0.078101, -0.993665,
		0.986339, -0.149845, 0.068429,
		-0.143551, -0.985620, -0.089142,
		38.546894, 33.523354, 40.951431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310650, 34.590721, 41.296085>,  <38.647377, 34.213287, 41.013828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310650, 34.590721, 41.296085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.327892, 34.978016, 41.197567>,  <39.338238, 35.210392, 41.138454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.327892, 34.978016, 41.197567>,  <39.310650, 34.590721, 41.296085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327892, 34.978016, 41.197567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192621, 0.249953, 0.948905,
		0.980326, 0.006538, 0.197277,
		0.043106, 0.968236, -0.246295,
		39.340824, 35.268486, 41.123680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745163, 34.955441, 41.754147>,  <39.310650, 34.590721, 41.296085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745163, 34.955441, 41.754147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.518143, 35.247009, 41.601013>,  <39.381931, 35.421951, 41.509132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.518143, 35.247009, 41.601013>,  <39.745163, 34.955441, 41.754147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518143, 35.247009, 41.601013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180511, 0.343503, 0.921640,
		0.803310, 0.592180, -0.063376,
		-0.567546, 0.728923, -0.382835,
		39.347878, 35.465687, 41.486164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994129, 35.610142, 42.092216>,  <39.745163, 34.955441, 41.754147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994129, 35.610142, 42.092216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.625477, 35.697052, 41.963608>,  <39.404285, 35.749199, 41.886440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.625477, 35.697052, 41.963608>,  <39.994129, 35.610142, 42.092216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625477, 35.697052, 41.963608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164808, 0.530958, 0.831217,
		0.351322, 0.819069, -0.453540,
		-0.921635, 0.217278, -0.321526,
		39.348988, 35.762234, 41.867149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874115, 36.271118, 41.901749>,  <39.994129, 35.610142, 42.092216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874115, 36.271118, 41.901749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509796, 36.152344, 42.016483>,  <39.291203, 36.081078, 42.085323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509796, 36.152344, 42.016483>,  <39.874115, 36.271118, 41.901749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509796, 36.152344, 42.016483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025803, 0.652468, 0.757377,
		-0.412041, 0.697220, -0.586606,
		-0.910800, -0.296935, 0.286834,
		39.236557, 36.063263, 42.102535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627274, 36.921574, 42.213749>,  <39.874115, 36.271118, 41.901749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627274, 36.921574, 42.213749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.371643, 36.631340, 42.315811>,  <39.218266, 36.457199, 42.377048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.371643, 36.631340, 42.315811>,  <39.627274, 36.921574, 42.213749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371643, 36.631340, 42.315811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174476, 0.459851, 0.870687,
		-0.749093, 0.511917, -0.420478,
		-0.639076, -0.725588, 0.255154,
		39.179920, 36.413662, 42.392357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135170, 37.256153, 42.513920>,  <39.627274, 36.921574, 42.213749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135170, 37.256153, 42.513920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081669, 36.890972, 42.668125>,  <39.049568, 36.671864, 42.760647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081669, 36.890972, 42.668125>,  <39.135170, 37.256153, 42.513920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081669, 36.890972, 42.668125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154112, 0.403439, 0.901935,
		-0.978958, 0.061226, -0.194660,
		-0.133755, -0.912956, 0.385514,
		39.041542, 36.617085, 42.783779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613171, 37.325375, 42.998844>,  <39.135170, 37.256153, 42.513920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613171, 37.325375, 42.998844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801537, 36.995850, 43.125057>,  <38.914558, 36.798134, 43.200787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801537, 36.995850, 43.125057>,  <38.613171, 37.325375, 42.998844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801537, 36.995850, 43.125057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157010, 0.273699, 0.948913,
		-0.868093, -0.496402, -0.000458,
		0.470917, -0.823817, 0.315536,
		38.942810, 36.748703, 43.219719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397842, 37.266109, 43.739857>,  <38.613171, 37.325375, 42.998844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397842, 37.266109, 43.739857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718674, 37.038479, 43.667397>,  <38.911175, 36.901901, 43.623920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718674, 37.038479, 43.667397>,  <38.397842, 37.266109, 43.739857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718674, 37.038479, 43.667397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372633, 0.239844, 0.896448,
		-0.466704, -0.786525, 0.404432,
		0.802080, -0.569081, -0.181148,
		38.959297, 36.867756, 43.613052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551998, 36.939636, 44.385284>,  <38.397842, 37.266109, 43.739857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551998, 36.939636, 44.385284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894928, 36.869942, 44.191528>,  <39.100685, 36.828125, 44.075275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894928, 36.869942, 44.191528>,  <38.551998, 36.939636, 44.385284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894928, 36.869942, 44.191528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503131, 0.084593, 0.860060,
		-0.108880, -0.981063, 0.160189,
		0.857324, -0.174239, -0.484392,
		39.152126, 36.817669, 44.046211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881981, 36.388172, 44.687996>,  <38.551998, 36.939636, 44.385284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881981, 36.388172, 44.687996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185665, 36.576637, 44.508392>,  <39.367874, 36.689716, 44.400631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185665, 36.576637, 44.508392>,  <38.881981, 36.388172, 44.687996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185665, 36.576637, 44.508392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483723, 0.053094, 0.873609,
		0.435450, -0.880448, -0.187602,
		0.759207, 0.471160, -0.449013,
		39.413429, 36.717983, 44.373688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431068, 36.148022, 44.956245>,  <38.881981, 36.388172, 44.687996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431068, 36.148022, 44.956245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536617, 36.505840, 44.811935>,  <39.599945, 36.720531, 44.725349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536617, 36.505840, 44.811935>,  <39.431068, 36.148022, 44.956245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536617, 36.505840, 44.811935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523106, 0.181527, 0.832712,
		0.810390, -0.408451, -0.420043,
		0.263872, 0.894548, -0.360771,
		39.615780, 36.774204, 44.703705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054226, 36.162060, 45.221909>,  <39.431068, 36.148022, 44.956245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054226, 36.162060, 45.221909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.950115, 36.536747, 45.128254>,  <39.887650, 36.761559, 45.072060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.950115, 36.536747, 45.128254>,  <40.054226, 36.162060, 45.221909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950115, 36.536747, 45.128254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266124, 0.302699, 0.915178,
		0.928135, 0.175888, -0.328067,
		-0.260274, 0.936716, -0.234138,
		39.872032, 36.817760, 45.058014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563816, 36.505772, 45.533245>,  <40.054226, 36.162060, 45.221909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563816, 36.505772, 45.533245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278519, 36.780369, 45.476665>,  <40.107338, 36.945126, 45.442719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278519, 36.780369, 45.476665>,  <40.563816, 36.505772, 45.533245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278519, 36.780369, 45.476665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012256, 0.213988, 0.976759,
		0.700806, 0.694937, -0.161040,
		-0.713247, 0.686492, -0.141447,
		40.064545, 36.986317, 45.434231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733234, 37.064251, 45.856506>,  <40.563816, 36.505772, 45.533245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733234, 37.064251, 45.856506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335152, 37.097778, 45.836361>,  <40.096302, 37.117893, 45.824276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.335152, 37.097778, 45.836361>,  <40.733234, 37.064251, 45.856506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335152, 37.097778, 45.836361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005835, 0.463214, 0.886228,
		0.097608, 0.882275, -0.460505,
		-0.995208, 0.083816, -0.050361,
		40.036591, 37.122925, 45.821251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.533764, 36.556175, 45.275715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931932, 36.536560, 45.242886>,  <32.170834, 36.524792, 45.223190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931932, 36.536560, 45.242886>,  <31.533764, 36.556175, 45.275715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931932, 36.536560, 45.242886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070198, 0.207869, -0.975634,
		0.064906, 0.976926, 0.203474,
		0.995419, -0.049041, -0.082070,
		32.230556, 36.521847, 45.218266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674582, 37.105106, 44.921349>,  <31.533764, 36.556175, 45.275715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674582, 37.105106, 44.921349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971601, 36.839684, 44.884884>,  <32.149815, 36.680431, 44.863003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971601, 36.839684, 44.884884>,  <31.674582, 37.105106, 44.921349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971601, 36.839684, 44.884884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035969, 0.175418, -0.983837,
		0.668824, 0.727269, 0.154124,
		0.742550, -0.663557, -0.091164,
		32.194366, 36.640617, 44.857536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118580, 37.442242, 44.410706>,  <31.674582, 37.105106, 44.921349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118580, 37.442242, 44.410706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198112, 37.050934, 44.387211>,  <32.245831, 36.816147, 44.373116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198112, 37.050934, 44.387211>,  <32.118580, 37.442242, 44.410706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198112, 37.050934, 44.387211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078560, 0.043829, -0.995946,
		0.976880, 0.202640, -0.068138,
		0.198832, -0.978272, -0.058735,
		32.257763, 36.757454, 44.369591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635586, 37.340378, 43.923286>,  <32.118580, 37.442242, 44.410706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635586, 37.340378, 43.923286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498299, 36.966660, 43.961861>,  <32.415928, 36.742428, 43.985004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498299, 36.966660, 43.961861>,  <32.635586, 37.340378, 43.923286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498299, 36.966660, 43.961861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143077, -0.153482, -0.977738,
		0.928296, -0.321776, 0.186353,
		-0.343214, -0.934293, 0.096438,
		32.395336, 36.686371, 43.990791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220455, 36.921124, 43.614777>,  <32.635586, 37.340378, 43.923286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220455, 36.921124, 43.614777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.884686, 36.704338, 43.598560>,  <32.683224, 36.574265, 43.588829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.884686, 36.704338, 43.598560>,  <33.220455, 36.921124, 43.614777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884686, 36.704338, 43.598560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221721, -0.273396, -0.935999,
		0.496198, -0.794686, 0.349660,
		-0.839421, -0.541968, -0.040540,
		32.632858, 36.541748, 43.586399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476402, 36.217186, 43.337791>,  <33.220455, 36.921124, 43.614777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476402, 36.217186, 43.337791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.079014, 36.239223, 43.297840>,  <32.840580, 36.252445, 43.273869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.079014, 36.239223, 43.297840>,  <33.476402, 36.217186, 43.337791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079014, 36.239223, 43.297840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075940, -0.333870, -0.939555,
		-0.085106, -0.941008, 0.327507,
		-0.993473, 0.055091, -0.099875,
		32.780972, 36.255753, 43.267879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259739, 35.727005, 42.960083>,  <33.476402, 36.217186, 43.337791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259739, 35.727005, 42.960083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959236, 35.982212, 42.892498>,  <32.778934, 36.135334, 42.851948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959236, 35.982212, 42.892498>,  <33.259739, 35.727005, 42.960083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959236, 35.982212, 42.892498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071642, -0.175652, -0.981842,
		-0.656108, -0.749722, 0.086252,
		-0.751259, 0.638015, -0.168958,
		32.733860, 36.173618, 42.841812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706619, 35.327202, 42.620449>,  <33.259739, 35.727005, 42.960083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706619, 35.327202, 42.620449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681087, 35.711502, 42.512463>,  <32.665768, 35.942081, 42.447670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681087, 35.711502, 42.512463>,  <32.706619, 35.327202, 42.620449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681087, 35.711502, 42.512463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051369, -0.266993, -0.962328,
		-0.996638, -0.075291, -0.032312,
		-0.063828, 0.960753, -0.269963,
		32.661938, 35.999729, 42.431473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201748, 35.300804, 42.007179>,  <32.706619, 35.327202, 42.620449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201748, 35.300804, 42.007179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.385715, 35.655979, 42.009575>,  <32.496098, 35.869083, 42.011013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.385715, 35.655979, 42.009575>,  <32.201748, 35.300804, 42.007179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385715, 35.655979, 42.009575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083938, -0.036762, -0.995793,
		-0.883983, 0.458490, -0.091439,
		0.459922, 0.887939, 0.005988,
		32.523693, 35.922359, 42.011372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842178, 35.737499, 41.460522>,  <32.201748, 35.300804, 42.007179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842178, 35.737499, 41.460522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203377, 35.887680, 41.544079>,  <32.420097, 35.977787, 41.594212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203377, 35.887680, 41.544079>,  <31.842178, 35.737499, 41.460522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203377, 35.887680, 41.544079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120072, 0.246297, -0.961728,
		-0.412530, 0.893519, 0.177324,
		0.902996, 0.375450, 0.208892,
		32.474274, 36.000317, 41.606747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011612, 36.326031, 40.987427>,  <31.842178, 35.737499, 41.460522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011612, 36.326031, 40.987427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.379929, 36.248306, 41.122711>,  <32.600918, 36.201672, 41.203884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.379929, 36.248306, 41.122711>,  <32.011612, 36.326031, 40.987427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379929, 36.248306, 41.122711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368858, 0.151788, -0.917008,
		0.126847, 0.969125, 0.211438,
		0.920790, -0.194311, 0.338216,
		32.656166, 36.190014, 41.224174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447739, 36.861221, 40.699200>,  <32.011612, 36.326031, 40.987427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447739, 36.861221, 40.699200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684860, 36.551605, 40.788139>,  <32.827133, 36.365833, 40.841503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684860, 36.551605, 40.788139>,  <32.447739, 36.861221, 40.699200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684860, 36.551605, 40.788139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392729, 0.036805, -0.918918,
		0.703097, 0.632063, 0.325807,
		0.592805, -0.774042, 0.222352,
		32.862701, 36.319393, 40.854843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110348, 37.163769, 40.696365>,  <32.447739, 36.861221, 40.699200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110348, 37.163769, 40.696365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126980, 36.770096, 40.627480>,  <33.136959, 36.533894, 40.586147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126980, 36.770096, 40.627480>,  <33.110348, 37.163769, 40.696365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126980, 36.770096, 40.627480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311720, 0.176535, -0.933630,
		0.949264, -0.014861, 0.314130,
		0.041580, -0.984182, -0.172211,
		33.139454, 36.474842, 40.575817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583511, 37.110596, 40.213505>,  <33.110348, 37.163769, 40.696365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583511, 37.110596, 40.213505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.429176, 36.742813, 40.183235>,  <33.336575, 36.522144, 40.165073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.429176, 36.742813, 40.183235>,  <33.583511, 37.110596, 40.213505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429176, 36.742813, 40.183235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295673, -0.045546, -0.954203,
		0.873903, -0.390541, 0.289432,
		-0.385838, -0.919458, -0.075670,
		33.313423, 36.466976, 40.160534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207993, 37.133709, 40.321705>,  <33.583511, 37.110596, 40.213505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207993, 37.133709, 40.321705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.435547, 37.442783, 40.209053>,  <34.572079, 37.628227, 40.141460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.435547, 37.442783, 40.209053>,  <34.207993, 37.133709, 40.321705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435547, 37.442783, 40.209053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103282, 0.406859, 0.907633,
		0.815903, -0.487255, 0.311263,
		0.568889, 0.772689, -0.281633,
		34.606213, 37.674591, 40.124565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669918, 37.048435, 40.764790>,  <34.207993, 37.133709, 40.321705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669918, 37.048435, 40.764790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691971, 37.434662, 40.663086>,  <34.705204, 37.666397, 40.602062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691971, 37.434662, 40.663086>,  <34.669918, 37.048435, 40.764790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691971, 37.434662, 40.663086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134567, 0.245142, 0.960103,
		0.989369, -0.087151, -0.116417,
		0.055135, 0.965562, -0.254263,
		34.708511, 37.724331, 40.586807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242607, 37.227848, 41.029743>,  <34.669918, 37.048435, 40.764790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242607, 37.227848, 41.029743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031555, 37.566711, 41.004662>,  <34.904922, 37.770027, 40.989613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031555, 37.566711, 41.004662>,  <35.242607, 37.227848, 41.029743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031555, 37.566711, 41.004662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294322, 0.251555, 0.922006,
		0.796855, 0.468025, -0.382065,
		-0.527633, 0.847155, -0.062703,
		34.873264, 37.820858, 40.985851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550331, 37.671688, 41.398224>,  <35.242607, 37.227848, 41.029743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550331, 37.671688, 41.398224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217243, 37.890179, 41.361984>,  <35.017391, 38.021275, 41.340240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217243, 37.890179, 41.361984>,  <35.550331, 37.671688, 41.398224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217243, 37.890179, 41.361984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226476, 0.485323, 0.844494,
		0.505255, 0.682711, -0.527847,
		-0.832722, 0.546229, -0.090594,
		34.967426, 38.054047, 41.334805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708755, 38.412540, 41.512947>,  <35.550331, 37.671688, 41.398224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708755, 38.412540, 41.512947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318092, 38.369953, 41.587570>,  <35.083694, 38.344402, 41.632343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318092, 38.369953, 41.587570>,  <35.708755, 38.412540, 41.512947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318092, 38.369953, 41.587570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144886, 0.314659, 0.938082,
		-0.158577, 0.943215, -0.291889,
		-0.976658, -0.106468, 0.186556,
		35.025093, 38.338013, 41.643536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591858, 38.887005, 41.984081>,  <35.708755, 38.412540, 41.512947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591858, 38.887005, 41.984081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259117, 38.672394, 42.040871>,  <35.059471, 38.543625, 42.074944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259117, 38.672394, 42.040871>,  <35.591858, 38.887005, 41.984081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259117, 38.672394, 42.040871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023114, 0.222102, 0.974750,
		-0.554516, 0.814129, -0.172355,
		-0.831852, -0.536530, 0.141976,
		35.009560, 38.511436, 42.083462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125935, 39.322102, 42.441479>,  <35.591858, 38.887005, 41.984081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125935, 39.322102, 42.441479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994202, 38.945625, 42.471691>,  <34.915161, 38.719738, 42.489819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994202, 38.945625, 42.471691>,  <35.125935, 39.322102, 42.441479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994202, 38.945625, 42.471691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249402, 0.163859, 0.954437,
		-0.910682, 0.295486, -0.288698,
		-0.329329, -0.941190, 0.075528,
		34.895405, 38.663269, 42.494350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594582, 39.410896, 42.933609>,  <35.125935, 39.322102, 42.441479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594582, 39.410896, 42.933609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652199, 39.015129, 42.940575>,  <34.686771, 38.777668, 42.944752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652199, 39.015129, 42.940575>,  <34.594582, 39.410896, 42.933609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652199, 39.015129, 42.940575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160213, -0.005955, 0.987065,
		-0.976516, -0.144972, -0.159375,
		0.144046, -0.989418, 0.017411,
		34.695412, 38.718304, 42.945797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121319, 39.196201, 43.443329>,  <34.594582, 39.410896, 42.933609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121319, 39.196201, 43.443329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.378307, 38.893150, 43.397335>,  <34.532501, 38.711319, 43.369740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.378307, 38.893150, 43.397335>,  <34.121319, 39.196201, 43.443329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378307, 38.893150, 43.397335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088295, -0.222243, 0.970985,
		-0.761203, -0.613681, -0.209681,
		0.642476, -0.757630, -0.114987,
		34.571049, 38.665863, 43.362839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868332, 38.748539, 43.896748>,  <34.121319, 39.196201, 43.443329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868332, 38.748539, 43.896748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.256119, 38.664036, 43.846931>,  <34.488789, 38.613335, 43.817039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.256119, 38.664036, 43.846931>,  <33.868332, 38.748539, 43.896748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256119, 38.664036, 43.846931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129784, 0.011070, 0.991481,
		-0.208083, -0.977367, 0.038151,
		0.969463, -0.211261, -0.124543,
		34.546959, 38.600658, 43.809570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079559, 38.093983, 44.371933>,  <33.868332, 38.748539, 43.896748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079559, 38.093983, 44.371933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386059, 38.333332, 44.278290>,  <34.569958, 38.476940, 44.222103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386059, 38.333332, 44.278290>,  <34.079559, 38.093983, 44.371933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386059, 38.333332, 44.278290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321859, -0.042102, 0.945851,
		0.556116, -0.800110, -0.224853,
		0.766252, 0.598373, -0.234109,
		34.615936, 38.512844, 44.208057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732307, 37.749031, 44.575153>,  <34.079559, 38.093983, 44.371933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732307, 37.749031, 44.575153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799126, 38.143192, 44.562012>,  <34.839218, 38.379688, 44.554127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799126, 38.143192, 44.562012>,  <34.732307, 37.749031, 44.575153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799126, 38.143192, 44.562012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251891, -0.010439, 0.967699,
		0.953229, -0.169928, -0.249957,
		0.167049, 0.985401, -0.032853,
		34.849239, 38.438812, 44.552155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446178, 37.851749, 44.841717>,  <34.732307, 37.749031, 44.575153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446178, 37.851749, 44.841717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264988, 38.204464, 44.894257>,  <35.156273, 38.416092, 44.925781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264988, 38.204464, 44.894257>,  <35.446178, 37.851749, 44.841717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264988, 38.204464, 44.894257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183093, -0.052182, 0.981710,
		0.872517, 0.468746, -0.137812,
		-0.452981, 0.881790, 0.131354,
		35.129093, 38.469002, 44.933662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866135, 38.251980, 45.289333>,  <35.446178, 37.851749, 44.841717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866135, 38.251980, 45.289333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504452, 38.419025, 45.325153>,  <35.287441, 38.519253, 45.346645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.504452, 38.419025, 45.325153>,  <35.866135, 38.251980, 45.289333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504452, 38.419025, 45.325153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050667, -0.103298, 0.993359,
		0.424088, 0.902735, 0.072243,
		-0.904203, 0.417611, 0.089546,
		35.233192, 38.544308, 45.352016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156830, 39.048294, 45.336075>,  <35.866135, 38.251980, 45.289333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156830, 39.048294, 45.336075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.512791, 39.102394, 45.510330>,  <36.726368, 39.134853, 45.614883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.512791, 39.102394, 45.510330>,  <36.156830, 39.048294, 45.336075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512791, 39.102394, 45.510330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341119, 0.436742, -0.832403,
		-0.302845, 0.889362, 0.342521,
		0.889901, 0.135249, 0.435643,
		36.779762, 39.142967, 45.641022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174282, 39.727596, 44.993057>,  <36.156830, 39.048294, 45.336075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174282, 39.727596, 44.993057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524391, 39.564709, 45.097420>,  <36.734455, 39.466976, 45.160038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524391, 39.564709, 45.097420>,  <36.174282, 39.727596, 44.993057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524391, 39.564709, 45.097420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435379, 0.428553, -0.791699,
		0.210581, 0.806546, 0.552394,
		0.875272, -0.407218, 0.260908,
		36.786972, 39.442543, 45.175694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718075, 40.218433, 44.812080>,  <36.174282, 39.727596, 44.993057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718075, 40.218433, 44.812080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910652, 39.867870, 44.816414>,  <37.026199, 39.657532, 44.819012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910652, 39.867870, 44.816414>,  <36.718075, 40.218433, 44.812080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910652, 39.867870, 44.816414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590979, 0.315468, -0.742445,
		0.647270, 0.363845, 0.669820,
		0.481441, -0.876412, 0.010831,
		37.055084, 39.604946, 44.819664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391994, 40.413280, 44.867336>,  <36.718075, 40.218433, 44.812080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391994, 40.413280, 44.867336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.357529, 40.044300, 44.716785>,  <37.336849, 39.822910, 44.626457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.357529, 40.044300, 44.716785>,  <37.391994, 40.413280, 44.867336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357529, 40.044300, 44.716785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650578, 0.234013, -0.722486,
		0.754535, -0.307114, 0.579964,
		-0.086166, -0.922453, -0.376373,
		37.331680, 39.767563, 44.603874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002205, 40.413406, 44.563889>,  <37.391994, 40.413280, 44.867336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002205, 40.413406, 44.563889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.873810, 40.065704, 44.413490>,  <37.796772, 39.857082, 44.323254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.873810, 40.065704, 44.413490>,  <38.002205, 40.413406, 44.563889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873810, 40.065704, 44.413490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592840, 0.125188, -0.795530,
		0.738585, -0.478258, 0.475144,
		-0.320986, -0.869251, -0.375993,
		37.777515, 39.804928, 44.300694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573826, 39.927959, 44.390347>,  <38.002205, 40.413406, 44.563889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573826, 39.927959, 44.390347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258171, 39.825508, 44.167042>,  <38.068779, 39.764038, 44.033058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258171, 39.825508, 44.167042>,  <38.573826, 39.927959, 44.390347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258171, 39.825508, 44.167042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549320, 0.112314, -0.828030,
		0.274785, -0.960095, 0.052067,
		-0.789139, -0.256132, -0.558261,
		38.021431, 39.748669, 43.999565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798172, 39.376362, 43.849411>,  <38.573826, 39.927959, 44.390347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798172, 39.376362, 43.849411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452427, 39.527161, 43.716293>,  <38.244980, 39.617641, 43.636421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452427, 39.527161, 43.716293>,  <38.798172, 39.376362, 43.849411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452427, 39.527161, 43.716293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452077, 0.292709, -0.842584,
		-0.220241, -0.878745, -0.423439,
		-0.864361, 0.376998, -0.332794,
		38.193119, 39.640259, 43.616455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671520, 39.126911, 43.162273>,  <38.798172, 39.376362, 43.849411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671520, 39.126911, 43.162273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452362, 39.460495, 43.188564>,  <38.320866, 39.660645, 43.204338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452362, 39.460495, 43.188564>,  <38.671520, 39.126911, 43.162273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452362, 39.460495, 43.188564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219150, 0.218914, -0.950815,
		-0.807328, -0.506548, -0.302705,
		-0.547900, 0.833958, 0.065726,
		38.287991, 39.710682, 43.208282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157570, 39.127148, 42.583591>,  <38.671520, 39.126911, 43.162273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157570, 39.127148, 42.583591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.217052, 39.501709, 42.710732>,  <38.252743, 39.726448, 42.787014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.217052, 39.501709, 42.710732>,  <38.157570, 39.127148, 42.583591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217052, 39.501709, 42.710732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261996, 0.272629, -0.925760,
		-0.953544, 0.220939, -0.204794,
		0.148703, 0.936408, 0.317849,
		38.261662, 39.782631, 42.806087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935051, 39.528164, 42.054337>,  <38.157570, 39.127148, 42.583591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935051, 39.528164, 42.054337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.150433, 39.808315, 42.241756>,  <38.279659, 39.976406, 42.354210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.150433, 39.808315, 42.241756>,  <37.935051, 39.528164, 42.054337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150433, 39.808315, 42.241756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469062, 0.212814, -0.857141,
		-0.700036, 0.681310, -0.213929,
		0.538452, 0.700376, 0.468554,
		38.311970, 40.018429, 42.382324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880207, 40.153408, 41.714558>,  <37.935051, 39.528164, 42.054337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880207, 40.153408, 41.714558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.217434, 40.197613, 41.925091>,  <38.419769, 40.224136, 42.051411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.217434, 40.197613, 41.925091>,  <37.880207, 40.153408, 41.714558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217434, 40.197613, 41.925091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494588, 0.225082, -0.839477,
		-0.211244, 0.968052, 0.135099,
		0.843065, 0.110516, 0.526334,
		38.470352, 40.230766, 42.082993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219982, 40.822308, 41.458073>,  <37.880207, 40.153408, 41.714558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219982, 40.822308, 41.458073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.492191, 40.587666, 41.633701>,  <38.655518, 40.446880, 41.739079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.492191, 40.587666, 41.633701>,  <38.219982, 40.822308, 41.458073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492191, 40.587666, 41.633701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590871, 0.084961, -0.802280,
		0.433319, 0.805403, 0.404427,
		0.680519, -0.586607, 0.439073,
		38.696346, 40.411682, 41.765423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788086, 41.104282, 41.113018>,  <38.219982, 40.822308, 41.458073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788086, 41.104282, 41.113018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901646, 40.754364, 41.270054>,  <38.969784, 40.544411, 41.364277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901646, 40.754364, 41.270054>,  <38.788086, 41.104282, 41.113018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901646, 40.754364, 41.270054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619094, -0.145421, -0.771735,
		0.732203, 0.462149, 0.500296,
		0.283903, -0.874798, 0.392592,
		38.986816, 40.491924, 41.387833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429211, 41.031513, 40.875385>,  <38.788086, 41.104282, 41.113018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429211, 41.031513, 40.875385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350395, 40.654366, 40.982849>,  <39.303104, 40.428078, 41.047325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350395, 40.654366, 40.982849>,  <39.429211, 41.031513, 40.875385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350395, 40.654366, 40.982849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379218, -0.325995, -0.865980,
		0.904085, -0.068752, 0.421786,
		-0.197038, -0.942868, 0.268655,
		39.291283, 40.371506, 41.063446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.002134, 30.436594, 28.462345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.746704, 30.238562, 28.698009>,  <25.593445, 30.119741, 28.839409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.746704, 30.238562, 28.698009>,  <26.002134, 30.436594, 28.462345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746704, 30.238562, 28.698009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139869, 0.678166, 0.721476,
		-0.756740, 0.543124, -0.363815,
		-0.638578, -0.495083, 0.589162,
		25.555130, 30.090036, 28.874758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497927, 30.883142, 28.622490>,  <26.002134, 30.436594, 28.462345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497927, 30.883142, 28.622490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.485382, 30.615582, 28.919565>,  <25.477856, 30.455046, 29.097811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.485382, 30.615582, 28.919565>,  <25.497927, 30.883142, 28.622490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485382, 30.615582, 28.919565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233893, 0.717513, 0.656102,
		-0.971756, 0.194287, 0.133948,
		-0.031363, -0.668901, 0.742690,
		25.475973, 30.414911, 29.142372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003588, 31.150940, 29.148994>,  <25.497927, 30.883142, 28.622490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003588, 31.150940, 29.148994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.224739, 30.875143, 29.336151>,  <25.357430, 30.709665, 29.448446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.224739, 30.875143, 29.336151>,  <25.003588, 31.150940, 29.148994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224739, 30.875143, 29.336151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206345, 0.657320, 0.724812,
		-0.807310, -0.304184, 0.505691,
		0.552877, -0.689494, 0.467894,
		25.390602, 30.668295, 29.476519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.628853, 31.068722, 29.819963>,  <25.003588, 31.150940, 29.148994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.628853, 31.068722, 29.819963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.001125, 30.937710, 29.885143>,  <25.224489, 30.859102, 29.924252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.001125, 30.937710, 29.885143>,  <24.628853, 31.068722, 29.819963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001125, 30.937710, 29.885143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112262, 0.679639, 0.724905,
		-0.348175, -0.656364, 0.669298,
		0.930683, -0.327531, 0.162949,
		25.280331, 30.839451, 29.934029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.663208, 30.803822, 30.503792>,  <24.628853, 31.068722, 29.819963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.663208, 30.803822, 30.503792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.023903, 30.931274, 30.386940>,  <25.240320, 31.007746, 30.316830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.023903, 30.931274, 30.386940>,  <24.663208, 30.803822, 30.503792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.023903, 30.931274, 30.386940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048208, 0.745691, 0.664546,
		0.429583, -0.585164, 0.687780,
		0.901739, 0.318634, -0.292127,
		25.294424, 31.026865, 30.299301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939215, 31.071579, 31.100008>,  <24.663208, 30.803822, 30.503792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939215, 31.071579, 31.100008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.189043, 31.229280, 30.830347>,  <25.338940, 31.323900, 30.668550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.189043, 31.229280, 30.830347>,  <24.939215, 31.071579, 31.100008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189043, 31.229280, 30.830347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027622, 0.873834, 0.485440,
		0.780480, -0.284570, 0.556660,
		0.624570, 0.394252, -0.674149,
		25.376413, 31.347557, 30.628101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615614, 31.169046, 31.491203>,  <24.939215, 31.071579, 31.100008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615614, 31.169046, 31.491203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648308, 31.406031, 31.170628>,  <25.667925, 31.548222, 30.978281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648308, 31.406031, 31.170628>,  <25.615614, 31.169046, 31.491203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648308, 31.406031, 31.170628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101258, 0.795035, 0.598052,
		0.991497, -0.130033, 0.004990,
		0.081734, 0.592462, -0.801441,
		25.672829, 31.583769, 30.930195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095869, 31.639336, 31.610546>,  <25.615614, 31.169046, 31.491203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095869, 31.639336, 31.610546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.881104, 31.833260, 31.334377>,  <25.752243, 31.949614, 31.168676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.881104, 31.833260, 31.334377>,  <26.095869, 31.639336, 31.610546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881104, 31.833260, 31.334377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249214, 0.873012, 0.419216,
		0.805987, 0.053021, -0.589554,
		-0.536915, 0.484808, -0.690423,
		25.720030, 31.978703, 31.127251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539545, 32.071674, 31.292828>,  <26.095869, 31.639336, 31.610546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539545, 32.071674, 31.292828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.189787, 32.245125, 31.205744>,  <25.979933, 32.349197, 31.153494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.189787, 32.245125, 31.205744>,  <26.539545, 32.071674, 31.292828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189787, 32.245125, 31.205744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256855, 0.794330, 0.550513,
		0.411654, 0.425445, -0.805939,
		-0.874395, 0.433631, -0.217712,
		25.927469, 32.375214, 31.140430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659937, 32.781605, 31.128521>,  <26.539545, 32.071674, 31.292828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659937, 32.781605, 31.128521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265772, 32.813568, 31.188627>,  <26.029274, 32.832748, 31.224691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265772, 32.813568, 31.188627>,  <26.659937, 32.781605, 31.128521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265772, 32.813568, 31.188627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141139, 0.877090, 0.459123,
		-0.095107, 0.473633, -0.875572,
		-0.985411, 0.079911, 0.150266,
		25.970148, 32.837540, 31.233707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507418, 33.509285, 30.989996>,  <26.659937, 32.781605, 31.128521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507418, 33.509285, 30.989996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177231, 33.403404, 31.189411>,  <25.979118, 33.339878, 31.309061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177231, 33.403404, 31.189411>,  <26.507418, 33.509285, 30.989996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177231, 33.403404, 31.189411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078088, 0.821180, 0.565301,
		-0.559025, 0.505567, -0.657186,
		-0.825466, -0.264699, 0.498539,
		25.929590, 33.323994, 31.338972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119381, 34.098698, 31.086311>,  <26.507418, 33.509285, 30.989996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119381, 34.098698, 31.086311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.957355, 33.863281, 31.366182>,  <25.860140, 33.722031, 31.534105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.957355, 33.863281, 31.366182>,  <26.119381, 34.098698, 31.086311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957355, 33.863281, 31.366182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153448, 0.710651, 0.686607,
		-0.901320, 0.385483, -0.197549,
		-0.405063, -0.588539, 0.699675,
		25.835836, 33.686718, 31.576084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329052, 34.288975, 31.378706>,  <26.119381, 34.098698, 31.086311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329052, 34.288975, 31.378706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.548971, 34.094158, 31.650150>,  <25.680922, 33.977268, 31.813017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.548971, 34.094158, 31.650150>,  <25.329052, 34.288975, 31.378706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548971, 34.094158, 31.650150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029470, 0.800601, 0.598473,
		-0.834779, -0.349037, 0.425814,
		0.549796, -0.487044, 0.678611,
		25.713909, 33.948044, 31.853733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151121, 34.562420, 31.972647>,  <25.329052, 34.288975, 31.378706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151121, 34.562420, 31.972647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.481407, 34.364792, 32.081524>,  <25.679579, 34.246216, 32.146851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.481407, 34.364792, 32.081524>,  <25.151121, 34.562420, 31.972647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481407, 34.364792, 32.081524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244089, 0.747970, 0.617221,
		-0.508544, -0.443209, 0.738207,
		0.825714, -0.494072, 0.272193,
		25.729122, 34.216572, 32.163181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027285, 34.508041, 32.591965>,  <25.151121, 34.562420, 31.972647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027285, 34.508041, 32.591965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.423231, 34.469746, 32.550022>,  <25.660799, 34.446770, 32.524857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.423231, 34.469746, 32.550022>,  <25.027285, 34.508041, 32.591965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423231, 34.469746, 32.550022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141897, 0.640516, 0.754722,
		-0.005090, -0.761954, 0.647611,
		0.989868, -0.095736, -0.104859,
		25.720192, 34.441025, 32.518566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356157, 34.483665, 33.283165>,  <25.027285, 34.508041, 32.591965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356157, 34.483665, 33.283165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.649315, 34.583267, 33.029911>,  <25.825209, 34.643028, 32.877956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.649315, 34.583267, 33.029911>,  <25.356157, 34.483665, 33.283165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649315, 34.583267, 33.029911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403612, 0.590029, 0.699259,
		0.547692, -0.768023, 0.331925,
		0.732892, 0.249010, -0.633138,
		25.869183, 34.657970, 32.839970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905470, 34.314178, 33.713154>,  <25.356157, 34.483665, 33.283165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905470, 34.314178, 33.713154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.020723, 34.575420, 33.433029>,  <26.089876, 34.732166, 33.264954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.020723, 34.575420, 33.433029>,  <25.905470, 34.314178, 33.713154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020723, 34.575420, 33.433029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324081, 0.621665, 0.713094,
		0.901082, -0.432426, -0.032534,
		0.288135, 0.653100, -0.700313,
		26.107164, 34.771351, 33.222935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416813, 34.761711, 34.119030>,  <25.905470, 34.314178, 33.713154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416813, 34.761711, 34.119030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341591, 34.979244, 33.791889>,  <26.296457, 35.109764, 33.595604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341591, 34.979244, 33.791889>,  <26.416813, 34.761711, 34.119030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341591, 34.979244, 33.791889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390229, 0.805534, 0.445910,
		0.901308, -0.235293, -0.363705,
		-0.188057, 0.543830, -0.817853,
		26.285173, 35.142395, 33.546532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065975, 34.977188, 33.891689>,  <26.416813, 34.761711, 34.119030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065975, 34.977188, 33.891689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.804972, 35.243328, 33.746616>,  <26.648369, 35.403011, 33.659573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.804972, 35.243328, 33.746616>,  <27.065975, 34.977188, 33.891689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804972, 35.243328, 33.746616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502452, 0.738155, 0.450187,
		0.567249, 0.111520, -0.815960,
		-0.652511, 0.665349, -0.362684,
		26.609219, 35.442932, 33.637810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466152, 35.564198, 33.554153>,  <27.065975, 34.977188, 33.891689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466152, 35.564198, 33.554153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111858, 35.720249, 33.654766>,  <26.899282, 35.813881, 33.715134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111858, 35.720249, 33.654766>,  <27.466152, 35.564198, 33.554153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111858, 35.720249, 33.654766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464100, 0.733764, 0.496186,
		0.009015, 0.556225, -0.830983,
		-0.885737, 0.390133, 0.251529,
		26.846138, 35.837288, 33.730225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076714, 35.203426, 33.524902>,  <27.466152, 35.564198, 33.554153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076714, 35.203426, 33.524902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353981, 34.951920, 33.665855>,  <28.520342, 34.801014, 33.750427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353981, 34.951920, 33.665855>,  <28.076714, 35.203426, 33.524902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353981, 34.951920, 33.665855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330702, -0.156958, -0.930591,
		0.640434, 0.761588, 0.099136,
		0.693167, -0.628767, 0.352380,
		28.561932, 34.763290, 33.771568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643116, 35.404045, 33.101269>,  <28.076714, 35.203426, 33.524902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643116, 35.404045, 33.101269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741926, 35.052624, 33.264786>,  <28.801212, 34.841770, 33.362896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741926, 35.052624, 33.264786>,  <28.643116, 35.404045, 33.101269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741926, 35.052624, 33.264786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225686, -0.358106, -0.905994,
		0.942361, 0.316065, 0.109817,
		0.247027, -0.878557, 0.408797,
		28.816034, 34.789055, 33.387424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303205, 35.242706, 32.781647>,  <28.643116, 35.404045, 33.101269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303205, 35.242706, 32.781647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129553, 34.905209, 32.907906>,  <29.025362, 34.702709, 32.983662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129553, 34.905209, 32.907906>,  <29.303205, 35.242706, 32.781647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129553, 34.905209, 32.907906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104216, -0.395073, -0.912719,
		0.894802, -0.363343, 0.259444,
		-0.434129, -0.843741, 0.315646,
		28.999313, 34.652084, 33.002598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847061, 34.647202, 32.730370>,  <29.303205, 35.242706, 32.781647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847061, 34.647202, 32.730370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470530, 34.514042, 32.708172>,  <29.244612, 34.434147, 32.694851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470530, 34.514042, 32.708172>,  <29.847061, 34.647202, 32.730370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470530, 34.514042, 32.708172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192002, -0.392996, -0.899272,
		0.277558, -0.857165, 0.433855,
		-0.941327, -0.332901, -0.055498,
		29.188131, 34.414173, 32.691521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902641, 34.042881, 32.461418>,  <29.847061, 34.647202, 32.730370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902641, 34.042881, 32.461418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514624, 34.121056, 32.403706>,  <29.281813, 34.167961, 32.369080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514624, 34.121056, 32.403706>,  <29.902641, 34.042881, 32.461418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514624, 34.121056, 32.403706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033281, -0.481414, -0.875861,
		-0.240637, -0.854426, 0.460489,
		-0.970044, 0.195439, -0.144282,
		29.223610, 34.179688, 32.360420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680120, 33.476318, 32.077202>,  <29.902641, 34.042881, 32.461418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680120, 33.476318, 32.077202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392593, 33.750946, 32.033527>,  <29.220078, 33.915722, 32.007320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392593, 33.750946, 32.033527>,  <29.680120, 33.476318, 32.077202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392593, 33.750946, 32.033527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152532, -0.308990, -0.938754,
		-0.678259, -0.658138, 0.326831,
		-0.718818, 0.686571, -0.109189,
		29.176949, 33.956917, 32.000771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977671, 33.210522, 31.794374>,  <29.680120, 33.476318, 32.077202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977671, 33.210522, 31.794374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.929731, 33.602268, 31.729296>,  <28.900969, 33.837318, 31.690248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.929731, 33.602268, 31.729296>,  <28.977671, 33.210522, 31.794374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929731, 33.602268, 31.729296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460369, -0.200019, -0.864900,
		-0.879600, -0.028756, 0.474844,
		-0.119849, 0.979370, -0.162698,
		28.893776, 33.896080, 31.680487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316650, 33.198330, 31.422165>,  <28.977671, 33.210522, 31.794374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316650, 33.198330, 31.422165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.509178, 33.543461, 31.360376>,  <28.624695, 33.750538, 31.323303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.509178, 33.543461, 31.360376>,  <28.316650, 33.198330, 31.422165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509178, 33.543461, 31.360376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295792, -0.006011, -0.955233,
		-0.825130, 0.505463, 0.252324,
		0.481318, 0.862828, -0.154472,
		28.653574, 33.802311, 31.314035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858648, 33.665405, 31.060446>,  <28.316650, 33.198330, 31.422165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858648, 33.665405, 31.060446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.243946, 33.754604, 31.000538>,  <28.475124, 33.808125, 30.964594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.243946, 33.754604, 31.000538>,  <27.858648, 33.665405, 31.060446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243946, 33.754604, 31.000538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149010, -0.020327, -0.988627,
		-0.223502, 0.974608, 0.013648,
		0.963246, 0.222993, -0.149770,
		28.532921, 33.821503, 30.955606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799803, 34.272846, 30.645561>,  <27.858648, 33.665405, 31.060446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799803, 34.272846, 30.645561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147001, 34.085785, 30.578770>,  <28.355320, 33.973549, 30.538694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147001, 34.085785, 30.578770>,  <27.799803, 34.272846, 30.645561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147001, 34.085785, 30.578770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161920, 0.051331, -0.985468,
		0.469430, 0.882419, -0.031168,
		0.867996, -0.467655, -0.166978,
		28.407400, 33.945488, 30.528677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014902, 34.439201, 29.930367>,  <27.799803, 34.272846, 30.645561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014902, 34.439201, 29.930367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.264099, 34.132282, 29.991213>,  <28.413618, 33.948132, 30.027721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.264099, 34.132282, 29.991213>,  <28.014902, 34.439201, 29.930367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264099, 34.132282, 29.991213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025300, -0.174597, -0.984315,
		0.781819, 0.617069, -0.089360,
		0.622992, -0.767295, 0.152115,
		28.450996, 33.902092, 30.036848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558929, 34.508068, 29.495945>,  <28.014902, 34.439201, 29.930367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558929, 34.508068, 29.495945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527603, 34.118118, 29.579355>,  <28.508806, 33.884148, 29.629402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527603, 34.118118, 29.579355>,  <28.558929, 34.508068, 29.495945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527603, 34.118118, 29.579355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063734, -0.213638, -0.974832,
		0.994889, -0.063056, 0.078864,
		-0.078317, -0.974876, 0.208527,
		28.504108, 33.825657, 29.641914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088512, 34.212910, 29.044228>,  <28.558929, 34.508068, 29.495945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088512, 34.212910, 29.044228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856903, 33.913036, 29.172419>,  <28.717937, 33.733112, 29.249334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856903, 33.913036, 29.172419>,  <29.088512, 34.212910, 29.044228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856903, 33.913036, 29.172419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039049, -0.367125, -0.929352,
		0.814376, -0.550630, 0.183299,
		-0.579022, -0.749684, 0.320480,
		28.683197, 33.688129, 29.268562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449371, 33.626244, 28.824503>,  <29.088512, 34.212910, 29.044228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449371, 33.626244, 28.824503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064533, 33.521786, 28.855927>,  <28.833630, 33.459110, 28.874781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064533, 33.521786, 28.855927>,  <29.449371, 33.626244, 28.824503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064533, 33.521786, 28.855927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047794, -0.445086, -0.894212,
		0.268485, -0.856564, 0.440698,
		-0.962098, -0.261145, 0.078560,
		28.775904, 33.443443, 28.879494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419540, 32.862644, 28.702175>,  <29.449371, 33.626244, 28.824503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419540, 32.862644, 28.702175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035343, 32.961521, 28.651030>,  <28.804825, 33.020847, 28.620342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035343, 32.961521, 28.651030>,  <29.419540, 32.862644, 28.702175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035343, 32.961521, 28.651030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073728, -0.669019, -0.739580,
		-0.268363, -0.700934, 0.660813,
		-0.960492, 0.247197, -0.127862,
		28.747196, 33.035679, 28.612671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152584, 32.209175, 28.545233>,  <29.419540, 32.862644, 28.702175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152584, 32.209175, 28.545233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882620, 32.465408, 28.398729>,  <28.720642, 32.619148, 28.310827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882620, 32.465408, 28.398729>,  <29.152584, 32.209175, 28.545233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882620, 32.465408, 28.398729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200087, -0.636631, -0.744759,
		-0.710254, -0.429361, 0.557842,
		-0.674910, 0.640585, -0.366260,
		28.680147, 32.657585, 28.288851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616856, 31.831013, 28.304539>,  <29.152584, 32.209175, 28.545233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616856, 31.831013, 28.304539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559599, 32.171288, 28.102217>,  <28.525244, 32.375454, 27.980824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559599, 32.171288, 28.102217>,  <28.616856, 31.831013, 28.304539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559599, 32.171288, 28.102217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250273, -0.525571, -0.813104,
		-0.957535, 0.010200, 0.288136,
		-0.143142, 0.850688, -0.505806,
		28.516657, 32.426495, 27.950476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025391, 31.688902, 27.895351>,  <28.616856, 31.831013, 28.304539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025391, 31.688902, 27.895351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183628, 32.000557, 27.700846>,  <28.278570, 32.187550, 27.584143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183628, 32.000557, 27.700846>,  <28.025391, 31.688902, 27.895351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183628, 32.000557, 27.700846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340682, -0.367193, -0.865508,
		-0.852902, 0.508050, 0.120179,
		0.395593, 0.779137, -0.486263,
		28.302305, 32.234299, 27.554966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516823, 31.886242, 27.424990>,  <28.025391, 31.688902, 27.895351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516823, 31.886242, 27.424990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862381, 32.039371, 27.294067>,  <28.069715, 32.131248, 27.215513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.862381, 32.039371, 27.294067>,  <27.516823, 31.886242, 27.424990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862381, 32.039371, 27.294067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361853, 0.019709, -0.932027,
		-0.350350, 0.923611, 0.155552,
		0.863896, 0.382823, -0.327307,
		28.121550, 32.154217, 27.195875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211033, 32.337093, 26.898487>,  <27.516823, 31.886242, 27.424990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211033, 32.337093, 26.898487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597656, 32.276539, 26.815691>,  <27.829630, 32.240208, 26.766014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597656, 32.276539, 26.815691>,  <27.211033, 32.337093, 26.898487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597656, 32.276539, 26.815691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211857, -0.016589, -0.977160,
		0.144495, 0.988335, -0.048106,
		0.966560, -0.151386, -0.206989,
		27.887625, 32.231125, 26.753593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513334, 32.866306, 26.413706>,  <27.211033, 32.337093, 26.898487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513334, 32.866306, 26.413706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760839, 32.553596, 26.382839>,  <27.909342, 32.365971, 26.364319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.760839, 32.553596, 26.382839>,  <27.513334, 32.866306, 26.413706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760839, 32.553596, 26.382839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000996, 0.097450, -0.995240,
		0.785577, 0.615894, 0.059520,
		0.618763, -0.781779, -0.077168,
		27.946468, 32.319061, 26.359688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957651, 32.996380, 25.835672>,  <27.513334, 32.866306, 26.413706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957651, 32.996380, 25.835672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986105, 32.603271, 25.903910>,  <28.003178, 32.367405, 25.944853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986105, 32.603271, 25.903910>,  <27.957651, 32.996380, 25.835672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986105, 32.603271, 25.903910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089469, -0.176624, -0.980204,
		0.993446, 0.054465, -0.100492,
		0.071136, -0.982770, 0.170593,
		28.007446, 32.308441, 25.955088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.495487, 37.969433, 46.203438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.194305, 37.706356, 46.212399>,  <40.013596, 37.548512, 46.217773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.194305, 37.706356, 46.212399>,  <40.495487, 37.969433, 46.203438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194305, 37.706356, 46.212399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317471, 0.392856, 0.863062,
		-0.576428, 0.642736, -0.504600,
		-0.752956, -0.657689, 0.022403,
		39.968418, 37.509048, 46.219120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815704, 38.323071, 46.286507>,  <40.495487, 37.969433, 46.203438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815704, 38.323071, 46.286507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.757206, 37.952389, 46.424973>,  <39.722107, 37.729980, 46.508053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.757206, 37.952389, 46.424973>,  <39.815704, 38.323071, 46.286507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757206, 37.952389, 46.424973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205465, 0.370749, 0.905720,
		-0.967675, 0.061336, -0.244627,
		-0.146249, -0.926705, 0.346163,
		39.713333, 37.674377, 46.528820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470200, 38.383965, 46.838539>,  <39.815704, 38.323071, 46.286507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470200, 38.383965, 46.838539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.513840, 37.988136, 46.876175>,  <39.540024, 37.750641, 46.898758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.513840, 37.988136, 46.876175>,  <39.470200, 38.383965, 46.838539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513840, 37.988136, 46.876175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132233, 0.079363, 0.988036,
		-0.985196, -0.120241, -0.122194,
		0.109105, -0.989567, 0.094088,
		39.546570, 37.691265, 46.904400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892651, 38.228085, 47.276463>,  <39.470200, 38.383965, 46.838539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892651, 38.228085, 47.276463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.148674, 37.921673, 47.300198>,  <39.302288, 37.737827, 47.314438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.148674, 37.921673, 47.300198>,  <38.892651, 38.228085, 47.276463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148674, 37.921673, 47.300198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096783, -0.003777, 0.995298,
		-0.762204, -0.642794, -0.076556,
		0.640061, -0.766030, 0.059333,
		39.340691, 37.691864, 47.317997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623756, 37.529652, 47.508099>,  <38.892651, 38.228085, 47.276463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623756, 37.529652, 47.508099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.008980, 37.578094, 47.604313>,  <39.240112, 37.607159, 47.662041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.008980, 37.578094, 47.604313>,  <38.623756, 37.529652, 47.508099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008980, 37.578094, 47.604313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220127, -0.160515, 0.962174,
		0.155132, -0.979576, -0.127927,
		0.963057, 0.121104, 0.240532,
		39.297897, 37.614426, 47.676472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689491, 36.995941, 47.901924>,  <38.623756, 37.529652, 47.508099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689491, 36.995941, 47.901924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041237, 37.178570, 47.955990>,  <39.252285, 37.288147, 47.988430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041237, 37.178570, 47.955990>,  <38.689491, 36.995941, 47.901924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041237, 37.178570, 47.955990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023161, -0.324538, 0.945589,
		0.475590, -0.828385, -0.295962,
		0.879363, 0.456567, 0.135161,
		39.305046, 37.315540, 47.996536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209290, 36.488972, 48.070019>,  <38.689491, 36.995941, 47.901924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209290, 36.488972, 48.070019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.314133, 36.851933, 48.201424>,  <39.377037, 37.069710, 48.280266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.314133, 36.851933, 48.201424>,  <39.209290, 36.488972, 48.070019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314133, 36.851933, 48.201424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063690, -0.323411, 0.944113,
		0.962936, -0.268379, -0.026975,
		0.262104, 0.907402, 0.328517,
		39.392765, 37.124153, 48.299980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733044, 36.377228, 48.478188>,  <39.209290, 36.488972, 48.070019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733044, 36.377228, 48.478188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600151, 36.734745, 48.598690>,  <39.520416, 36.949257, 48.670990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600151, 36.734745, 48.598690>,  <39.733044, 36.377228, 48.478188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600151, 36.734745, 48.598690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049411, -0.302468, 0.951878,
		0.941904, 0.331125, 0.056325,
		-0.332227, 0.893795, 0.301257,
		39.500484, 37.002884, 48.689068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085960, 36.476528, 49.008152>,  <39.733044, 36.377228, 48.478188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085960, 36.476528, 49.008152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799709, 36.751213, 49.059223>,  <39.627960, 36.916023, 49.089867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799709, 36.751213, 49.059223>,  <40.085960, 36.476528, 49.008152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799709, 36.751213, 49.059223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058183, -0.240763, 0.968838,
		0.696056, 0.685897, 0.212251,
		-0.715626, 0.686716, 0.127677,
		39.585022, 36.957230, 49.097527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360229, 36.817581, 49.468697>,  <40.085960, 36.476528, 49.008152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360229, 36.817581, 49.468697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.967403, 36.888290, 49.494926>,  <39.731709, 36.930717, 49.510662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.967403, 36.888290, 49.494926>,  <40.360229, 36.817581, 49.468697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967403, 36.888290, 49.494926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022310, -0.236379, 0.971405,
		0.187217, 0.955446, 0.228196,
		-0.982065, 0.176773, 0.065571,
		39.672783, 36.941322, 49.514599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297340, 37.412800, 49.825607>,  <40.360229, 36.817581, 49.468697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297340, 37.412800, 49.825607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.956287, 37.208931, 49.871658>,  <39.751656, 37.086609, 49.899288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.956287, 37.208931, 49.871658>,  <40.297340, 37.412800, 49.825607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956287, 37.208931, 49.871658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145279, -0.019588, 0.989197,
		-0.501907, 0.860148, 0.090746,
		-0.852633, -0.509669, 0.115130,
		39.700497, 37.056030, 49.906197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107662, 37.646683, 50.413914>,  <40.297340, 37.412800, 49.825607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107662, 37.646683, 50.413914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868660, 37.328239, 50.375549>,  <39.725258, 37.137173, 50.352531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868660, 37.328239, 50.375549>,  <40.107662, 37.646683, 50.413914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868660, 37.328239, 50.375549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098020, -0.046203, 0.994111,
		-0.795851, 0.603389, -0.050428,
		-0.597506, -0.796108, -0.095915,
		39.689407, 37.089409, 50.346775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152428, 38.387756, 50.673370>,  <40.107662, 37.646683, 50.413914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152428, 38.387756, 50.673370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845001, 38.274410, 50.902809>,  <39.660545, 38.206402, 51.040470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845001, 38.274410, 50.902809>,  <40.152428, 38.387756, 50.673370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845001, 38.274410, 50.902809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159837, 0.783085, 0.601024,
		-0.619482, 0.553608, -0.556561,
		-0.768567, -0.283364, 0.573594,
		39.614429, 38.189400, 51.074886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730312, 38.986843, 50.794418>,  <40.152428, 38.387756, 50.673370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730312, 38.986843, 50.794418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.721901, 38.702095, 51.075218>,  <39.716854, 38.531246, 51.243698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.721901, 38.702095, 51.075218>,  <39.730312, 38.986843, 50.794418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721901, 38.702095, 51.075218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352099, 0.651898, 0.671606,
		-0.935726, 0.261295, 0.236940,
		-0.021027, -0.711866, 0.702000,
		39.715591, 38.488537, 51.285820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927143, 38.689724, 50.902016>,  <39.730312, 38.986843, 50.794418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927143, 38.689724, 50.902016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.625610, 38.935841, 50.994232>,  <38.444691, 39.083511, 51.049564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.625610, 38.935841, 50.994232>,  <38.927143, 38.689724, 50.902016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625610, 38.935841, 50.994232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403646, -0.156798, -0.901379,
		-0.518461, -0.772549, 0.366559,
		-0.753836, 0.615290, 0.230543,
		38.399460, 39.120426, 51.063396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294590, 38.355198, 50.753166>,  <38.927143, 38.689724, 50.902016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294590, 38.355198, 50.753166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.198067, 38.743370, 50.755726>,  <38.140152, 38.976273, 50.757263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.198067, 38.743370, 50.755726>,  <38.294590, 38.355198, 50.753166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198067, 38.743370, 50.755726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530329, -0.126347, -0.838324,
		-0.812724, -0.205690, 0.545134,
		-0.241311, 0.970427, 0.006398,
		38.125675, 39.034496, 50.757645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559151, 38.404034, 50.673992>,  <38.294590, 38.355198, 50.753166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559151, 38.404034, 50.673992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670071, 38.771980, 50.563034>,  <37.736622, 38.992748, 50.496460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670071, 38.771980, 50.563034>,  <37.559151, 38.404034, 50.673992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670071, 38.771980, 50.563034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514212, -0.101798, -0.851601,
		-0.811599, 0.378785, 0.444779,
		0.277296, 0.919869, -0.277395,
		37.753258, 39.047939, 50.479816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931755, 38.689430, 50.221432>,  <37.559151, 38.404034, 50.673992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931755, 38.689430, 50.221432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259563, 38.893532, 50.117111>,  <37.456249, 39.015995, 50.054520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259563, 38.893532, 50.117111>,  <36.931755, 38.689430, 50.221432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259563, 38.893532, 50.117111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280000, -0.040531, -0.959144,
		-0.499979, 0.859067, 0.109656,
		0.819525, 0.510256, -0.260804,
		37.505421, 39.046608, 50.038872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652664, 39.270798, 49.811298>,  <36.931755, 38.689430, 50.221432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652664, 39.270798, 49.811298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.042034, 39.213924, 49.739487>,  <37.275658, 39.179802, 49.696400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.042034, 39.213924, 49.739487>,  <36.652664, 39.270798, 49.811298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042034, 39.213924, 49.739487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173516, 0.053747, -0.983363,
		0.149463, 0.988381, 0.027648,
		0.973423, -0.142179, -0.179533,
		37.334061, 39.171272, 49.685627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656353, 39.608433, 49.276810>,  <36.652664, 39.270798, 49.811298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656353, 39.608433, 49.276810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997181, 39.400135, 49.255589>,  <37.201675, 39.275158, 49.242855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997181, 39.400135, 49.255589>,  <36.656353, 39.608433, 49.276810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997181, 39.400135, 49.255589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048244, 0.022790, -0.998576,
		0.521207, 0.853411, -0.005704,
		0.852065, -0.520740, -0.053051,
		37.252800, 39.243912, 49.239674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179497, 40.016361, 48.787819>,  <36.656353, 39.608433, 49.276810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179497, 40.016361, 48.787819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238632, 39.621769, 48.816093>,  <37.274113, 39.385014, 48.833057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238632, 39.621769, 48.816093>,  <37.179497, 40.016361, 48.787819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238632, 39.621769, 48.816093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047424, -0.078459, -0.995788,
		0.987873, 0.143868, -0.058383,
		0.147842, -0.986482, 0.070685,
		37.282986, 39.325825, 48.837299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650398, 39.915005, 48.336357>,  <37.179497, 40.016361, 48.787819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650398, 39.915005, 48.336357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493069, 39.551090, 48.389389>,  <37.398670, 39.332741, 48.421207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493069, 39.551090, 48.389389>,  <37.650398, 39.915005, 48.336357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493069, 39.551090, 48.389389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183900, -0.063437, -0.980896,
		0.900819, -0.410193, -0.142359,
		-0.393326, -0.909790, 0.132580,
		37.375072, 39.278152, 48.429165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857525, 39.641155, 47.722031>,  <37.650398, 39.915005, 48.336357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857525, 39.641155, 47.722031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632214, 39.335567, 47.847931>,  <37.497025, 39.152214, 47.923470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632214, 39.335567, 47.847931>,  <37.857525, 39.641155, 47.722031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632214, 39.335567, 47.847931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223897, -0.225554, -0.948154,
		0.795351, -0.604550, -0.043999,
		-0.563282, -0.763967, 0.314752,
		37.463230, 39.106377, 47.942356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197071, 39.003105, 47.424488>,  <37.857525, 39.641155, 47.722031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197071, 39.003105, 47.424488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.811172, 38.933990, 47.503887>,  <37.579632, 38.892521, 47.551525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.811172, 38.933990, 47.503887>,  <38.197071, 39.003105, 47.424488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811172, 38.933990, 47.503887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161640, -0.206172, -0.965073,
		0.207674, -0.963140, 0.170975,
		-0.964751, -0.172784, 0.198499,
		37.521748, 38.882156, 47.563438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994934, 38.410095, 47.095547>,  <38.197071, 39.003105, 47.424488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994934, 38.410095, 47.095547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655849, 38.616718, 47.143818>,  <37.452400, 38.740692, 47.172779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655849, 38.616718, 47.143818>,  <37.994934, 38.410095, 47.095547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655849, 38.616718, 47.143818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168648, -0.046747, -0.984567,
		-0.502941, -0.854978, 0.126743,
		-0.847708, 0.516554, 0.120679,
		37.401539, 38.771683, 47.180023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496849, 38.026028, 46.756413>,  <37.994934, 38.410095, 47.095547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496849, 38.026028, 46.756413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336964, 38.390125, 46.799660>,  <37.241032, 38.608582, 46.825607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336964, 38.390125, 46.799660>,  <37.496849, 38.026028, 46.756413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336964, 38.390125, 46.799660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262798, -0.000801, -0.964850,
		-0.878159, -0.414081, 0.239530,
		-0.399718, 0.910240, 0.108116,
		37.217049, 38.663197, 46.832096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942234, 38.055443, 46.354244>,  <37.496849, 38.026028, 46.756413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942234, 38.055443, 46.354244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012062, 38.445663, 46.407650>,  <37.053959, 38.679794, 46.439693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012062, 38.445663, 46.407650>,  <36.942234, 38.055443, 46.354244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012062, 38.445663, 46.407650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108239, 0.153783, -0.982158,
		-0.978678, 0.157002, 0.132438,
		0.174567, 0.975552, 0.133510,
		37.064434, 38.738331, 46.447704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444832, 38.359924, 45.980774>,  <36.942234, 38.055443, 46.354244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444832, 38.359924, 45.980774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740318, 38.625744, 46.025799>,  <36.917610, 38.785236, 46.052814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740318, 38.625744, 46.025799>,  <36.444832, 38.359924, 45.980774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740318, 38.625744, 46.025799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094144, 0.267102, -0.959059,
		-0.667408, 0.697876, 0.259876,
		0.738718, 0.664549, 0.112565,
		36.961933, 38.825108, 46.059566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846294, 38.751831, 45.961750>,  <36.444832, 38.359924, 45.980774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846294, 38.751831, 45.961750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462246, 38.701958, 45.861652>,  <35.231815, 38.672035, 45.801594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462246, 38.701958, 45.861652>,  <35.846294, 38.751831, 45.961750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462246, 38.701958, 45.861652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230292, -0.154819, 0.960727,
		-0.158525, 0.980044, 0.119932,
		-0.960122, -0.124680, -0.250239,
		35.174210, 38.664555, 45.786579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517185, 39.203407, 46.354939>,  <35.846294, 38.751831, 45.961750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517185, 39.203407, 46.354939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229336, 38.936951, 46.276558>,  <35.056625, 38.777077, 46.229530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229336, 38.936951, 46.276558>,  <35.517185, 39.203407, 46.354939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229336, 38.936951, 46.276558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304836, 0.049534, 0.951116,
		-0.623872, 0.744179, -0.238709,
		-0.719625, -0.666141, -0.195950,
		35.013447, 38.737110, 46.217773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837021, 39.474609, 46.529922>,  <35.517185, 39.203407, 46.354939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837021, 39.474609, 46.529922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779312, 39.079521, 46.553925>,  <34.744686, 38.842468, 46.568325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779312, 39.079521, 46.553925>,  <34.837021, 39.474609, 46.529922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779312, 39.079521, 46.553925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344319, 0.106955, 0.932741,
		-0.927702, 0.113905, -0.355520,
		-0.144269, -0.987718, 0.060002,
		34.736031, 38.783207, 46.571926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208466, 39.459290, 46.863590>,  <34.837021, 39.474609, 46.529922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208466, 39.459290, 46.863590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347637, 39.084610, 46.879276>,  <34.431141, 38.859802, 46.888687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347637, 39.084610, 46.879276>,  <34.208466, 39.459290, 46.863590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347637, 39.084610, 46.879276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358918, -0.094443, 0.928579,
		-0.866097, -0.337153, -0.369058,
		0.347928, -0.936701, 0.039214,
		34.452015, 38.803600, 46.891041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596943, 39.040119, 47.034878>,  <34.208466, 39.459290, 46.863590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596943, 39.040119, 47.034878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.930740, 38.842812, 47.133114>,  <34.131020, 38.724426, 47.192055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.930740, 38.842812, 47.133114>,  <33.596943, 39.040119, 47.034878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930740, 38.842812, 47.133114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345137, -0.120461, 0.930790,
		-0.429545, -0.861496, -0.270769,
		0.834489, -0.493269, 0.245591,
		34.181087, 38.694832, 47.206791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417625, 38.443596, 47.478340>,  <33.596943, 39.040119, 47.034878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417625, 38.443596, 47.478340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803574, 38.497166, 47.568752>,  <34.035141, 38.529308, 47.623001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803574, 38.497166, 47.568752>,  <33.417625, 38.443596, 47.478340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803574, 38.497166, 47.568752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204145, -0.159394, 0.965877,
		0.165389, -0.978088, -0.126453,
		0.964869, 0.133931, 0.226034,
		34.093033, 38.537346, 47.636562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648876, 37.926880, 47.903690>,  <33.417625, 38.443596, 47.478340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648876, 37.926880, 47.903690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928436, 38.198975, 47.992077>,  <34.096172, 38.362228, 48.045109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.928436, 38.198975, 47.992077>,  <33.648876, 37.926880, 47.903690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928436, 38.198975, 47.992077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244457, -0.063144, 0.967602,
		0.672147, -0.730272, 0.122157,
		0.698899, 0.680232, 0.220962,
		34.138107, 38.403046, 48.058365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676559, 37.264515, 47.953808>,  <33.648876, 37.926880, 47.903690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676559, 37.264515, 47.953808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433765, 36.946636, 47.955692>,  <33.288090, 36.755909, 47.956821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433765, 36.946636, 47.955692>,  <33.676559, 37.264515, 47.953808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433765, 36.946636, 47.955692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048416, 0.031061, -0.998345,
		0.793235, -0.606211, -0.057330,
		-0.606988, -0.794698, 0.004712,
		33.251671, 36.708225, 47.957108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983658, 36.848045, 47.403912>,  <33.676559, 37.264515, 47.953808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983658, 36.848045, 47.403912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615860, 36.700825, 47.459145>,  <33.395180, 36.612492, 47.492283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615860, 36.700825, 47.459145>,  <33.983658, 36.848045, 47.403912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615860, 36.700825, 47.459145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157594, 0.023339, -0.987228,
		0.360131, -0.929511, -0.079463,
		-0.919495, -0.368055, 0.138081,
		33.340012, 36.590408, 47.500568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850159, 36.284126, 46.972893>,  <33.983658, 36.848045, 47.403912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850159, 36.284126, 46.972893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470039, 36.365841, 47.066875>,  <33.241970, 36.414871, 47.123264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470039, 36.365841, 47.066875>,  <33.850159, 36.284126, 46.972893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470039, 36.365841, 47.066875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259931, -0.105160, -0.959884,
		-0.171391, -0.973245, 0.153035,
		-0.950295, 0.204294, 0.234953,
		33.184952, 36.427128, 47.137363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403069, 35.683014, 46.827286>,  <33.850159, 36.284126, 46.972893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403069, 35.683014, 46.827286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158207, 35.999104, 46.815849>,  <33.011292, 36.188759, 46.808987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158207, 35.999104, 46.815849>,  <33.403069, 35.683014, 46.827286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158207, 35.999104, 46.815849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265655, -0.239577, -0.933826,
		-0.744780, -0.564048, 0.356584,
		-0.612152, 0.790223, -0.028589,
		32.974560, 36.236172, 46.807274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847439, 35.474693, 46.471027>,  <33.403069, 35.683014, 46.827286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847439, 35.474693, 46.471027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775528, 35.866879, 46.439110>,  <32.732384, 36.102192, 46.419960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775528, 35.866879, 46.439110>,  <32.847439, 35.474693, 46.471027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775528, 35.866879, 46.439110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244609, -0.123127, -0.961773,
		-0.952811, -0.153383, 0.261965,
		-0.179774, 0.980466, -0.079798,
		32.721596, 36.161018, 46.415169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235180, 35.534801, 46.204304>,  <32.847439, 35.474693, 46.471027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235180, 35.534801, 46.204304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394489, 35.896286, 46.141460>,  <32.490074, 36.113178, 46.103756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394489, 35.896286, 46.141460>,  <32.235180, 35.534801, 46.204304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394489, 35.896286, 46.141460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321893, -0.022682, -0.946504,
		-0.858930, 0.427541, 0.281865,
		0.398276, 0.903711, -0.157105,
		32.513973, 36.167400, 46.094330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718719, 35.927948, 45.723404>,  <32.235180, 35.534801, 46.204304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718719, 35.927948, 45.723404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073090, 36.103943, 45.664688>,  <32.285713, 36.209541, 45.629459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073090, 36.103943, 45.664688>,  <31.718719, 35.927948, 45.723404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073090, 36.103943, 45.664688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249329, 0.184890, -0.950606,
		-0.391119, 0.878762, 0.273501,
		0.885924, 0.439991, -0.146787,
		32.338867, 36.235939, 45.620651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.914795, 34.334686, 50.590694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.208130, 34.606503, 50.582306>,  <37.384132, 34.769592, 50.577274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.208130, 34.606503, 50.582306>,  <36.914795, 34.334686, 50.590694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208130, 34.606503, 50.582306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239784, -0.287385, -0.927315,
		-0.636174, 0.675008, -0.373694,
		0.733339, 0.679540, -0.020971,
		37.428131, 34.810364, 50.576015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782410, 34.509373, 49.801323>,  <36.914795, 34.334686, 50.590694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782410, 34.509373, 49.801323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.152676, 34.612614, 49.911983>,  <37.374836, 34.674557, 49.978378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.152676, 34.612614, 49.911983>,  <36.782410, 34.509373, 49.801323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152676, 34.612614, 49.911983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299813, -0.054363, -0.952448,
		-0.230785, 0.964588, -0.127702,
		0.925662, 0.258098, 0.276650,
		37.430374, 34.690044, 49.994980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006409, 35.161903, 49.460964>,  <36.782410, 34.509373, 49.801323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006409, 35.161903, 49.460964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.338169, 34.970680, 49.576591>,  <37.537224, 34.855946, 49.645969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.338169, 34.970680, 49.576591>,  <37.006409, 35.161903, 49.460964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338169, 34.970680, 49.576591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314835, -0.027463, -0.948749,
		0.461498, 0.877898, 0.127732,
		0.829396, -0.478060, 0.289067,
		37.586987, 34.827263, 49.663311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505531, 35.535095, 49.010677>,  <37.006409, 35.161903, 49.460964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505531, 35.535095, 49.010677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.689903, 35.206360, 49.144623>,  <37.800526, 35.009121, 49.224991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.689903, 35.206360, 49.144623>,  <37.505531, 35.535095, 49.010677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689903, 35.206360, 49.144623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384509, -0.155137, -0.909992,
		0.799813, 0.548198, 0.244495,
		0.460926, -0.821834, 0.334868,
		37.828182, 34.959808, 49.245083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173389, 35.606812, 48.797417>,  <37.505531, 35.535095, 49.010677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173389, 35.606812, 48.797417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.087193, 35.220219, 48.853245>,  <38.035473, 34.988262, 48.886742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.087193, 35.220219, 48.853245>,  <38.173389, 35.606812, 48.797417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087193, 35.220219, 48.853245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300423, -0.201608, -0.932255,
		0.929143, -0.158968, 0.333798,
		-0.215495, -0.966480, 0.139565,
		38.022545, 34.930275, 48.895115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762295, 35.207073, 48.620228>,  <38.173389, 35.606812, 48.797417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762295, 35.207073, 48.620228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.447514, 34.960674, 48.606052>,  <38.258644, 34.812836, 48.597546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.447514, 34.960674, 48.606052>,  <38.762295, 35.207073, 48.620228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447514, 34.960674, 48.606052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293690, -0.323449, -0.899515,
		0.542635, -0.718282, 0.435451,
		-0.786952, -0.615996, -0.035437,
		38.211430, 34.775875, 48.595421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987423, 34.558231, 48.345295>,  <38.762295, 35.207073, 48.620228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987423, 34.558231, 48.345295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.592838, 34.514381, 48.296505>,  <38.356087, 34.488071, 48.267231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.592838, 34.514381, 48.296505>,  <38.987423, 34.558231, 48.345295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592838, 34.514381, 48.296505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146138, -0.250035, -0.957145,
		0.074425, -0.962011, 0.262669,
		-0.986461, -0.109622, -0.121978,
		38.296902, 34.481495, 48.259911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880527, 33.923923, 48.062115>,  <38.987423, 34.558231, 48.345295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880527, 33.923923, 48.062115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.518066, 34.071571, 47.979527>,  <38.300591, 34.160160, 47.929974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.518066, 34.071571, 47.979527>,  <38.880527, 33.923923, 48.062115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518066, 34.071571, 47.979527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086108, -0.316952, -0.944525,
		-0.414087, -0.873665, 0.255423,
		-0.906155, 0.369122, -0.206475,
		38.246220, 34.182308, 47.917583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485619, 33.338474, 47.853008>,  <38.880527, 33.923923, 48.062115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485619, 33.338474, 47.853008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.335690, 33.670357, 47.687550>,  <38.245731, 33.869484, 47.588276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.335690, 33.670357, 47.687550>,  <38.485619, 33.338474, 47.853008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335690, 33.670357, 47.687550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074509, -0.417770, -0.905493,
		-0.924099, -0.370217, 0.094768,
		-0.374820, 0.829703, -0.413645,
		38.223244, 33.919270, 47.563457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175598, 33.092636, 47.309818>,  <38.485619, 33.338474, 47.853008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175598, 33.092636, 47.309818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.183102, 33.482418, 47.220295>,  <38.187603, 33.716286, 47.166580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.183102, 33.482418, 47.220295>,  <38.175598, 33.092636, 47.309818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183102, 33.482418, 47.220295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106658, -0.224516, -0.968615,
		-0.994119, -0.005705, -0.108144,
		0.018754, 0.974453, -0.223804,
		38.188728, 33.774754, 47.153152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991825, 33.123089, 46.626835>,  <38.175598, 33.092636, 47.309818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991825, 33.123089, 46.626835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.091724, 33.509285, 46.656391>,  <38.151665, 33.741001, 46.674126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.091724, 33.509285, 46.656391>,  <37.991825, 33.123089, 46.626835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091724, 33.509285, 46.656391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203865, 0.022171, -0.978748,
		-0.946608, 0.259502, -0.191292,
		0.249746, 0.965488, 0.073891,
		38.166649, 33.798931, 46.678558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491493, 33.521019, 46.283836>,  <37.991825, 33.123089, 46.626835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491493, 33.521019, 46.283836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.842880, 33.712139, 46.284729>,  <38.053711, 33.826813, 46.285263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.842880, 33.712139, 46.284729>,  <37.491493, 33.521019, 46.283836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842880, 33.712139, 46.284729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000850, 0.006224, -0.999980,
		-0.477806, 0.878446, 0.005873,
		0.878465, 0.477801, 0.002227,
		38.106419, 33.855480, 46.285397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877468, 33.811089, 46.330994>,  <37.491493, 33.521019, 46.283836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877468, 33.811089, 46.330994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.530983, 33.694748, 46.168468>,  <36.323093, 33.624943, 46.070953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.530983, 33.694748, 46.168468>,  <36.877468, 33.811089, 46.330994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530983, 33.694748, 46.168468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438418, 0.052255, 0.897251,
		-0.239734, 0.955341, -0.172778,
		-0.866209, -0.290850, -0.406311,
		36.271122, 33.607494, 46.046574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411556, 34.092846, 46.853077>,  <36.877468, 33.811089, 46.330994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411556, 34.092846, 46.853077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.182541, 33.860950, 46.621181>,  <36.045132, 33.721813, 46.482044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.182541, 33.860950, 46.621181>,  <36.411556, 34.092846, 46.853077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182541, 33.860950, 46.621181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634525, -0.134476, 0.761114,
		-0.519211, 0.803626, -0.290868,
		-0.572536, -0.579742, -0.579742,
		36.010780, 33.687027, 46.447258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606972, 34.213150, 46.981010>,  <36.411556, 34.092846, 46.853077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606972, 34.213150, 46.981010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604908, 33.862377, 46.788773>,  <35.603668, 33.651913, 46.673431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604908, 33.862377, 46.788773>,  <35.606972, 34.213150, 46.981010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604908, 33.862377, 46.788773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830822, -0.263704, 0.490097,
		-0.556515, 0.401813, -0.727212,
		-0.005159, -0.876930, -0.480590,
		35.603359, 33.599297, 46.644596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865295, 34.046402, 46.581730>,  <35.606972, 34.213150, 46.981010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865295, 34.046402, 46.581730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.065083, 33.730850, 46.724953>,  <35.184956, 33.541519, 46.810886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.065083, 33.730850, 46.724953>,  <34.865295, 34.046402, 46.581730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065083, 33.730850, 46.724953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811031, -0.280478, 0.513381,
		-0.304577, -0.546799, -0.779900,
		0.499462, -0.788887, 0.358044,
		35.214924, 33.494186, 46.832371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320248, 33.615543, 46.855488>,  <34.865295, 34.046402, 46.581730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320248, 33.615543, 46.855488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.623173, 33.391521, 46.989841>,  <34.804928, 33.257111, 47.070454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.623173, 33.391521, 46.989841>,  <34.320248, 33.615543, 46.855488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623173, 33.391521, 46.989841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573861, -0.325215, 0.751611,
		-0.311709, -0.761954, -0.567683,
		0.757312, -0.560055, 0.335884,
		34.850368, 33.223507, 47.090607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969395, 32.933258, 47.061497>,  <34.320248, 33.615543, 46.855488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969395, 32.933258, 47.061497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325790, 32.953831, 47.241940>,  <34.539627, 32.966175, 47.350204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325790, 32.953831, 47.241940>,  <33.969395, 32.933258, 47.061497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325790, 32.953831, 47.241940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426032, -0.248777, 0.869832,
		0.156963, -0.967194, -0.199744,
		0.890988, 0.051434, 0.451105,
		34.593086, 32.969261, 47.377270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058392, 32.381344, 47.604977>,  <33.969395, 32.933258, 47.061497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058392, 32.381344, 47.604977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.345158, 32.631584, 47.728043>,  <34.517216, 32.781727, 47.801884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.345158, 32.631584, 47.728043>,  <34.058392, 32.381344, 47.604977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345158, 32.631584, 47.728043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312840, -0.105706, 0.943906,
		0.623030, -0.772949, 0.119931,
		0.716914, 0.625600, 0.307667,
		34.560230, 32.819263, 47.820343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533863, 32.012871, 48.011845>,  <34.058392, 32.381344, 47.604977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533863, 32.012871, 48.011845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.549091, 32.400803, 48.108162>,  <34.558228, 32.633560, 48.165951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.549091, 32.400803, 48.108162>,  <34.533863, 32.012871, 48.011845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549091, 32.400803, 48.108162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127625, -0.234274, 0.963757,
		0.991091, -0.067427, 0.114855,
		0.038075, 0.969830, 0.240792,
		34.560513, 32.691750, 48.180401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647564, 31.867586, 48.662418>,  <34.533863, 32.012871, 48.011845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647564, 31.867586, 48.662418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.559288, 32.257668, 48.669071>,  <34.506325, 32.491714, 48.673061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.559288, 32.257668, 48.669071>,  <34.647564, 31.867586, 48.662418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559288, 32.257668, 48.669071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294594, -0.082900, 0.952020,
		0.929791, 0.205200, 0.305584,
		-0.220688, 0.975203, 0.016629,
		34.493080, 32.550228, 48.674061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929871, 32.048378, 49.313808>,  <34.647564, 31.867586, 48.662418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929871, 32.048378, 49.313808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.715302, 32.366627, 49.201206>,  <34.586559, 32.557575, 49.133644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.715302, 32.366627, 49.201206>,  <34.929871, 32.048378, 49.313808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715302, 32.366627, 49.201206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010069, 0.339571, 0.940527,
		0.843892, 0.501681, -0.190163,
		-0.536418, 0.795618, -0.281510,
		34.554375, 32.605312, 49.116753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213348, 32.661736, 49.728363>,  <34.929871, 32.048378, 49.313808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213348, 32.661736, 49.728363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.840992, 32.753334, 49.614513>,  <34.617580, 32.808292, 49.546204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.840992, 32.753334, 49.614513>,  <35.213348, 32.661736, 49.728363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840992, 32.753334, 49.614513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133166, 0.512799, 0.848118,
		0.340171, 0.827404, -0.446863,
		-0.930887, 0.228998, -0.284622,
		34.561726, 32.822033, 49.529125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151920, 33.339237, 49.842182>,  <35.213348, 32.661736, 49.728363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151920, 33.339237, 49.842182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.776463, 33.201439, 49.835709>,  <34.551186, 33.118759, 49.831825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.776463, 33.201439, 49.835709>,  <35.151920, 33.339237, 49.842182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776463, 33.201439, 49.835709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212970, 0.542084, 0.812889,
		-0.271263, 0.766464, -0.582193,
		-0.938648, -0.344496, -0.016187,
		34.494869, 33.098091, 49.830853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764767, 33.890938, 49.986179>,  <35.151920, 33.339237, 49.842182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764767, 33.890938, 49.986179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.553226, 33.566383, 50.085758>,  <34.426300, 33.371651, 50.145504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.553226, 33.566383, 50.085758>,  <34.764767, 33.890938, 49.986179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553226, 33.566383, 50.085758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194392, 0.401323, 0.895071,
		-0.826151, 0.424968, -0.369967,
		-0.528853, -0.811383, 0.248943,
		34.394569, 33.322968, 50.160442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183762, 34.171680, 50.283218>,  <34.764767, 33.890938, 49.986179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183762, 34.171680, 50.283218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.193691, 33.785416, 50.386658>,  <34.199650, 33.553658, 50.448723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.193691, 33.785416, 50.386658>,  <34.183762, 34.171680, 50.283218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193691, 33.785416, 50.386658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305918, 0.238931, 0.921589,
		-0.951734, -0.101986, -0.289483,
		0.024823, -0.965666, 0.258598,
		34.201138, 33.495716, 50.464237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925396, 34.923176, 50.205162>,  <34.183762, 34.171680, 50.283218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925396, 34.923176, 50.205162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.820229, 35.274254, 50.365425>,  <33.757126, 35.484901, 50.461582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.820229, 35.274254, 50.365425>,  <33.925396, 34.923176, 50.205162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820229, 35.274254, 50.365425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611700, 0.169498, -0.772719,
		-0.746120, -0.448247, 0.492320,
		-0.262922, 0.877693, 0.400659,
		33.741352, 35.537563, 50.485622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221607, 34.984623, 50.106651>,  <33.925396, 34.923176, 50.205162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221607, 34.984623, 50.106651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.323147, 35.368370, 50.155926>,  <33.384071, 35.598618, 50.185490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.323147, 35.368370, 50.155926>,  <33.221607, 34.984623, 50.106651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323147, 35.368370, 50.155926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640664, 0.262180, -0.721673,
		-0.724646, 0.104275, 0.681186,
		0.253846, 0.959369, 0.123183,
		33.399300, 35.656181, 50.192883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726940, 35.322952, 49.795010>,  <33.221607, 34.984623, 50.106651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726940, 35.322952, 49.795010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.969593, 35.636368, 49.848763>,  <33.115185, 35.824417, 49.881012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.969593, 35.636368, 49.848763>,  <32.726940, 35.322952, 49.795010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969593, 35.636368, 49.848763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381029, 0.434924, -0.815879,
		-0.697719, 0.443739, 0.562392,
		0.606635, 0.783541, 0.134378,
		33.151585, 35.871429, 49.889076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400864, 35.919529, 49.592731>,  <32.726940, 35.322952, 49.795010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400864, 35.919529, 49.592731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.779396, 36.044651, 49.560226>,  <33.006516, 36.119724, 49.540722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.779396, 36.044651, 49.560226>,  <32.400864, 35.919529, 49.592731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779396, 36.044651, 49.560226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209218, 0.401289, -0.891737,
		-0.246327, 0.860884, 0.445198,
		0.946335, 0.312803, -0.081264,
		33.063297, 36.138493, 49.535847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329411, 36.562744, 49.275368>,  <32.400864, 35.919529, 49.592731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329411, 36.562744, 49.275368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.696617, 36.418526, 49.209332>,  <32.916943, 36.331993, 49.169708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.696617, 36.418526, 49.209332>,  <32.329411, 36.562744, 49.275368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696617, 36.418526, 49.209332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008629, 0.434393, -0.900682,
		0.396452, 0.825415, 0.401890,
		0.918015, -0.360545, -0.165093,
		32.972023, 36.310364, 49.159805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671898, 37.112705, 48.909962>,  <32.329411, 36.562744, 49.275368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671898, 37.112705, 48.909962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.889214, 36.787319, 48.826912>,  <33.019604, 36.592087, 48.777081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.889214, 36.787319, 48.826912>,  <32.671898, 37.112705, 48.909962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889214, 36.787319, 48.826912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027746, 0.229775, -0.972848,
		0.839086, 0.534300, 0.102264,
		0.543291, -0.813466, -0.207626,
		33.052200, 36.543278, 48.764626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284077, 37.381939, 48.562584>,  <32.671898, 37.112705, 48.909962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284077, 37.381939, 48.562584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.231445, 36.995945, 48.471817>,  <33.199867, 36.764347, 48.417358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.231445, 36.995945, 48.471817>,  <33.284077, 37.381939, 48.562584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231445, 36.995945, 48.471817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023070, 0.231822, -0.972485,
		0.991037, -0.122726, -0.052765,
		-0.131581, -0.964986, -0.226913,
		33.191971, 36.706448, 48.403744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005295, 37.634087, 48.603405>,  <33.284077, 37.381939, 48.562584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005295, 37.634087, 48.603405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.119354, 38.017185, 48.588421>,  <34.187790, 38.247044, 48.579430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.119354, 38.017185, 48.588421>,  <34.005295, 37.634087, 48.603405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119354, 38.017185, 48.588421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055058, 0.055381, 0.996946,
		0.956899, -0.282220, 0.068524,
		0.285153, 0.957750, -0.037456,
		34.204899, 38.304512, 48.577183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391495, 37.720997, 49.230114>,  <34.005295, 37.634087, 48.603405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391495, 37.720997, 49.230114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327171, 38.100266, 49.120491>,  <34.288578, 38.327827, 49.054718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327171, 38.100266, 49.120491>,  <34.391495, 37.720997, 49.230114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327171, 38.100266, 49.120491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028400, 0.281999, 0.958994,
		0.986577, 0.146434, -0.072277,
		-0.160811, 0.948174, -0.274055,
		34.278927, 38.384716, 49.038273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024227, 38.177467, 49.367153>,  <34.391495, 37.720997, 49.230114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024227, 38.177467, 49.367153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684967, 38.387215, 49.397278>,  <34.481411, 38.513065, 49.415352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684967, 38.387215, 49.397278>,  <35.024227, 38.177467, 49.367153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684967, 38.387215, 49.397278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200978, 0.186979, 0.961586,
		0.490146, 0.830707, -0.263973,
		-0.848154, 0.524370, 0.075307,
		34.430519, 38.544525, 49.419868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106968, 38.398357, 50.036156>,  <35.024227, 38.177467, 49.367153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106968, 38.398357, 50.036156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764797, 38.592754, 49.964542>,  <34.559494, 38.709393, 49.921574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764797, 38.592754, 49.964542>,  <35.106968, 38.398357, 50.036156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764797, 38.592754, 49.964542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032836, 0.395867, 0.917720,
		0.516878, 0.779166, -0.354595,
		-0.855429, 0.485992, -0.179031,
		34.508167, 38.738552, 49.910831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256680, 39.111008, 50.117607>,  <35.106968, 38.398357, 50.036156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256680, 39.111008, 50.117607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.866035, 39.032608, 50.152992>,  <34.631649, 38.985569, 50.174221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.866035, 39.032608, 50.152992>,  <35.256680, 39.111008, 50.117607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866035, 39.032608, 50.152992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034378, 0.263775, 0.963971,
		-0.212269, 0.944462, -0.250866,
		-0.976606, -0.195997, 0.088460,
		34.573055, 38.973808, 50.179531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999180, 39.714504, 50.427395>,  <35.256680, 39.111008, 50.117607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999180, 39.714504, 50.427395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.750973, 39.405193, 50.479542>,  <34.602047, 39.219608, 50.510830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.750973, 39.405193, 50.479542>,  <34.999180, 39.714504, 50.427395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750973, 39.405193, 50.479542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129145, 0.264740, 0.955633,
		-0.773483, 0.576154, -0.264141,
		-0.620521, -0.773278, 0.130365,
		34.564816, 39.173210, 50.518650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509693, 39.991848, 50.727978>,  <34.999180, 39.714504, 50.427395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509693, 39.991848, 50.727978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470490, 39.600861, 50.802757>,  <34.446968, 39.366268, 50.847626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470490, 39.600861, 50.802757>,  <34.509693, 39.991848, 50.727978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470490, 39.600861, 50.802757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237680, 0.205405, 0.949377,
		-0.966386, 0.048619, -0.252457,
		-0.098013, -0.977469, 0.186945,
		34.441086, 39.307621, 50.858841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853840, 39.934036, 51.040363>,  <34.509693, 39.991848, 50.727978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853840, 39.934036, 51.040363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092205, 39.629971, 51.143925>,  <34.235226, 39.447529, 51.206062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092205, 39.629971, 51.143925>,  <33.853840, 39.934036, 51.040363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092205, 39.629971, 51.143925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048531, 0.287719, 0.956485,
		-0.801579, -0.582549, 0.134565,
		0.595915, -0.760168, 0.258901,
		34.270981, 39.401920, 51.221596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517117, 39.561436, 51.590298>,  <33.853840, 39.934036, 51.040363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517117, 39.561436, 51.590298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.908241, 39.488052, 51.630749>,  <34.142918, 39.444023, 51.655018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.908241, 39.488052, 51.630749>,  <33.517117, 39.561436, 51.590298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908241, 39.488052, 51.630749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039100, 0.314423, 0.948477,
		-0.205800, -0.931387, 0.300274,
		0.977813, -0.183456, 0.101125,
		34.201584, 39.433014, 51.661087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.927444, 37.151638, 35.850796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246189, 37.185951, 36.090012>,  <37.437435, 37.206539, 36.233540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246189, 37.185951, 36.090012>,  <36.927444, 37.151638, 35.850796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246189, 37.185951, 36.090012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569521, -0.223693, 0.790954,
		0.201626, -0.970877, -0.129399,
		0.796865, 0.085781, 0.598037,
		37.485249, 37.211685, 36.269424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941849, 36.582249, 36.330261>,  <36.927444, 37.151638, 35.850796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941849, 36.582249, 36.330261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166218, 36.855190, 36.517780>,  <37.300838, 37.018955, 36.630291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166218, 36.855190, 36.517780>,  <36.941849, 36.582249, 36.330261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166218, 36.855190, 36.517780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458303, -0.215643, 0.862239,
		0.689441, -0.698496, 0.191765,
		0.560918, 0.682350, 0.468796,
		37.334492, 37.059895, 36.658421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818268, 36.416565, 36.963665>,  <36.941849, 36.582249, 36.330261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818268, 36.416565, 36.963665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987213, 36.770393, 37.042812>,  <37.088581, 36.982689, 37.090302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987213, 36.770393, 37.042812>,  <36.818268, 36.416565, 36.963665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987213, 36.770393, 37.042812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519226, 0.057176, 0.852723,
		0.742977, -0.462895, 0.483439,
		0.422362, 0.884567, 0.197866,
		37.113922, 37.035763, 37.102173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936993, 36.401257, 37.718769>,  <36.818268, 36.416565, 36.963665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936993, 36.401257, 37.718769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978481, 36.785355, 37.615097>,  <37.003372, 37.015812, 37.552895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978481, 36.785355, 37.615097>,  <36.936993, 36.401257, 37.718769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978481, 36.785355, 37.615097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527898, 0.274002, 0.803895,
		0.842951, 0.053444, 0.535329,
		0.103718, 0.960243, -0.259184,
		37.009598, 37.073429, 37.537342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154202, 36.690514, 38.295750>,  <36.936993, 36.401257, 37.718769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154202, 36.690514, 38.295750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968788, 36.979759, 38.090912>,  <36.857540, 37.153309, 37.968010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968788, 36.979759, 38.090912>,  <37.154202, 36.690514, 38.295750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968788, 36.979759, 38.090912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586322, 0.183008, 0.789135,
		0.664355, 0.666041, 0.339149,
		-0.463530, 0.723116, -0.512097,
		36.829731, 37.196693, 37.937283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017010, 37.255611, 38.837296>,  <37.154202, 36.690514, 38.295750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017010, 37.255611, 38.837296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787373, 37.283852, 38.511002>,  <36.649590, 37.300797, 38.315224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787373, 37.283852, 38.511002>,  <37.017010, 37.255611, 38.837296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787373, 37.283852, 38.511002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770893, 0.289143, 0.567557,
		0.275934, 0.954679, -0.111571,
		-0.574095, 0.070599, -0.815740,
		36.615143, 37.305031, 38.266281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626438, 37.844234, 38.924057>,  <37.017010, 37.255611, 38.837296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626438, 37.844234, 38.924057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418468, 37.670258, 38.629982>,  <36.293686, 37.565872, 38.453537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418468, 37.670258, 38.629982>,  <36.626438, 37.844234, 38.924057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418468, 37.670258, 38.629982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853597, 0.231911, 0.466466,
		-0.032390, 0.870080, -0.491845,
		-0.519927, -0.434946, -0.735186,
		36.262489, 37.539772, 38.409428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114880, 38.315701, 38.759422>,  <36.626438, 37.844234, 38.924057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114880, 38.315701, 38.759422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986313, 37.948372, 38.667007>,  <35.909172, 37.727974, 38.611561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986313, 37.948372, 38.667007>,  <36.114880, 38.315701, 38.759422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986313, 37.948372, 38.667007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774504, 0.114569, 0.622108,
		-0.544826, 0.378892, -0.748068,
		-0.321417, -0.918322, -0.231033,
		35.889889, 37.672874, 38.597698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463959, 38.367756, 38.481953>,  <36.114880, 38.315701, 38.759422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463959, 38.367756, 38.481953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496521, 37.986187, 38.597473>,  <35.516060, 37.757248, 38.666786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496521, 37.986187, 38.597473>,  <35.463959, 38.367756, 38.481953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496521, 37.986187, 38.597473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798730, 0.110880, 0.591385,
		-0.596157, -0.278821, -0.752898,
		0.081409, -0.953921, 0.288804,
		35.520943, 37.700012, 38.684116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813286, 38.108154, 38.508415>,  <35.463959, 38.367756, 38.481953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813286, 38.108154, 38.508415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004333, 37.838017, 38.733192>,  <35.118961, 37.675934, 38.868061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004333, 37.838017, 38.733192>,  <34.813286, 38.108154, 38.508415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004333, 37.838017, 38.733192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701459, 0.091985, 0.706749,
		-0.528991, -0.731742, -0.429794,
		0.477623, -0.675347, 0.561946,
		35.147621, 37.635414, 38.901775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221642, 37.714870, 38.891586>,  <34.813286, 38.108154, 38.508415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221642, 37.714870, 38.891586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560909, 37.651615, 39.093819>,  <34.764469, 37.613663, 39.215157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560909, 37.651615, 39.093819>,  <34.221642, 37.714870, 38.891586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560909, 37.651615, 39.093819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486332, 0.145881, 0.861510,
		-0.209991, -0.976581, 0.046824,
		0.848166, -0.158138, 0.505577,
		34.815357, 37.604176, 39.245491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039974, 37.461586, 39.596035>,  <34.221642, 37.714870, 38.891586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039974, 37.461586, 39.596035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417400, 37.577488, 39.660206>,  <34.643856, 37.647030, 39.698708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417400, 37.577488, 39.660206>,  <34.039974, 37.461586, 39.596035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417400, 37.577488, 39.660206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249018, 0.301304, 0.920438,
		0.218360, -0.908439, 0.356452,
		0.943562, 0.289750, 0.160425,
		34.700470, 37.664413, 39.708332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922234, 36.681713, 39.683098>,  <34.039974, 37.461586, 39.596035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922234, 36.681713, 39.683098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569260, 36.498913, 39.727757>,  <33.357475, 36.389233, 39.754551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569260, 36.498913, 39.727757>,  <33.922234, 36.681713, 39.683098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569260, 36.498913, 39.727757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099316, -0.051001, -0.993748,
		0.459839, -0.888002, -0.000383,
		-0.882431, -0.457002, 0.111646,
		33.304531, 36.361813, 39.761250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886532, 36.143932, 39.083866>,  <33.922234, 36.681713, 39.683098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886532, 36.143932, 39.083866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519409, 36.241924, 39.208843>,  <33.299137, 36.300720, 39.283829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519409, 36.241924, 39.208843>,  <33.886532, 36.143932, 39.083866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519409, 36.241924, 39.208843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314900, 0.030112, -0.948647,
		-0.241806, -0.969061, 0.049506,
		-0.917806, 0.244978, 0.312439,
		33.244068, 36.315418, 39.302574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460358, 35.590725, 38.650146>,  <33.886532, 36.143932, 39.083866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460358, 35.590725, 38.650146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189289, 35.841202, 38.804367>,  <33.026649, 35.991489, 38.896900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189289, 35.841202, 38.804367>,  <33.460358, 35.590725, 38.650146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189289, 35.841202, 38.804367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555949, -0.093081, -0.825988,
		-0.481340, -0.774092, 0.411209,
		-0.677667, 0.626193, 0.385552,
		32.985989, 36.029060, 38.920033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816250, 35.239975, 38.584892>,  <33.460358, 35.590725, 38.650146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816250, 35.239975, 38.584892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749561, 35.634277, 38.593735>,  <32.709549, 35.870857, 38.599041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749561, 35.634277, 38.593735>,  <32.816250, 35.239975, 38.584892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749561, 35.634277, 38.593735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618336, -0.087062, -0.781076,
		-0.768027, -0.143888, 0.624044,
		-0.166718, 0.985757, 0.022105,
		32.699547, 35.930004, 38.600365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189487, 35.345913, 38.359596>,  <32.816250, 35.239975, 38.584892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189487, 35.345913, 38.359596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347805, 35.712288, 38.333050>,  <32.442795, 35.932114, 38.317123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347805, 35.712288, 38.333050>,  <32.189487, 35.345913, 38.359596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347805, 35.712288, 38.333050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552027, 0.179545, -0.814267,
		-0.733901, 0.358921, 0.576685,
		0.395798, 0.915937, -0.066366,
		32.466545, 35.987068, 38.313141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630886, 35.774910, 38.252434>,  <32.189487, 35.345913, 38.359596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630886, 35.774910, 38.252434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943415, 35.978329, 38.107700>,  <32.130932, 36.100380, 38.020863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943415, 35.978329, 38.107700>,  <31.630886, 35.774910, 38.252434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943415, 35.978329, 38.107700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508102, 0.181604, -0.841933,
		-0.362450, 0.841667, 0.400283,
		0.781321, 0.508543, -0.361831,
		32.177811, 36.130890, 37.999149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407557, 36.260296, 37.820488>,  <31.630886, 35.774910, 38.252434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407557, 36.260296, 37.820488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782801, 36.298546, 37.687340>,  <32.007946, 36.321495, 37.607452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782801, 36.298546, 37.687340>,  <31.407557, 36.260296, 37.820488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782801, 36.298546, 37.687340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344933, 0.171571, -0.922814,
		-0.031137, 0.980520, 0.193938,
		0.938111, 0.095630, -0.332871,
		32.064236, 36.327236, 37.587479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492348, 36.925468, 37.402058>,  <31.407557, 36.260296, 37.820488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492348, 36.925468, 37.402058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772594, 36.666241, 37.282627>,  <31.940742, 36.510704, 37.210968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772594, 36.666241, 37.282627>,  <31.492348, 36.925468, 37.402058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772594, 36.666241, 37.282627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211744, 0.210759, -0.954330,
		0.681398, 0.731839, 0.010436,
		0.700615, -0.648069, -0.298573,
		31.982779, 36.471821, 37.193054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964771, 37.249950, 36.900082>,  <31.492348, 36.925468, 37.402058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964771, 37.249950, 36.900082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010937, 36.858086, 36.834427>,  <32.038635, 36.622967, 36.795036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010937, 36.858086, 36.834427>,  <31.964771, 37.249950, 36.900082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010937, 36.858086, 36.834427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033588, 0.161295, -0.986335,
		0.992749, 0.119350, -0.014289,
		0.115414, -0.979663, -0.164135,
		32.045563, 36.564186, 36.785187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190460, 37.290226, 36.227974>,  <31.964771, 37.249950, 36.900082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190460, 37.290226, 36.227974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150211, 36.894569, 36.270802>,  <32.126060, 36.657173, 36.296497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150211, 36.894569, 36.270802>,  <32.190460, 37.290226, 36.227974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150211, 36.894569, 36.270802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048647, -0.102598, -0.993533,
		0.993734, -0.105184, -0.037795,
		-0.100626, -0.989146, 0.107072,
		32.120022, 36.597824, 36.302921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695358, 36.907112, 35.861279>,  <32.190460, 37.290226, 36.227974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695358, 36.907112, 35.861279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387058, 36.654110, 35.891949>,  <32.202080, 36.502308, 35.910351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387058, 36.654110, 35.891949>,  <32.695358, 36.907112, 35.861279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387058, 36.654110, 35.891949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045402, -0.174556, -0.983600,
		0.635521, -0.754626, 0.163256,
		-0.770748, -0.632510, 0.076673,
		32.155834, 36.464355, 35.914951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964027, 36.384350, 35.503319>,  <32.695358, 36.907112, 35.861279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964027, 36.384350, 35.503319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565632, 36.350899, 35.490574>,  <32.326595, 36.330826, 35.482929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565632, 36.350899, 35.490574>,  <32.964027, 36.384350, 35.503319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565632, 36.350899, 35.490574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053254, -0.267740, -0.962018,
		0.071923, -0.959855, 0.271119,
		-0.995987, -0.083630, -0.031860,
		32.266834, 36.325809, 35.481014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800827, 35.652977, 35.129875>,  <32.964027, 36.384350, 35.503319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800827, 35.652977, 35.129875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501129, 35.916508, 35.102798>,  <32.321312, 36.074627, 35.086552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501129, 35.916508, 35.102798>,  <32.800827, 35.652977, 35.129875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501129, 35.916508, 35.102798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069052, -0.179357, -0.981358,
		-0.658687, -0.730600, 0.179875,
		-0.749241, 0.658828, -0.067691,
		32.276356, 36.114155, 35.082493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460964, 35.153095, 35.066071>,  <32.800827, 35.652977, 35.129875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460964, 35.153095, 35.066071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207981, 34.882572, 34.915016>,  <33.056190, 34.720261, 34.824383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207981, 34.882572, 34.915016>,  <33.460964, 35.153095, 35.066071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207981, 34.882572, 34.915016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601471, -0.735985, 0.310737,
		-0.488087, -0.030609, 0.872258,
		-0.632458, -0.676305, -0.377636,
		33.018242, 34.679680, 34.801727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238865, 34.816383, 35.581547>,  <33.460964, 35.153095, 35.066071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238865, 34.816383, 35.581547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262199, 34.617085, 35.235519>,  <33.276199, 34.497505, 35.027901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262199, 34.617085, 35.235519>,  <33.238865, 34.816383, 35.581547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262199, 34.617085, 35.235519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833346, -0.452820, 0.317000,
		-0.549665, -0.739396, 0.388794,
		0.058335, -0.498244, -0.865072,
		33.279701, 34.467613, 34.975998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435497, 34.065125, 35.752056>,  <33.238865, 34.816383, 35.581547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435497, 34.065125, 35.752056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546921, 34.121197, 35.372002>,  <33.613777, 34.154839, 35.143970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546921, 34.121197, 35.372002>,  <33.435497, 34.065125, 35.752056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546921, 34.121197, 35.372002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744803, -0.656118, 0.121565,
		-0.606359, -0.741525, -0.287174,
		0.278563, 0.140176, -0.950133,
		33.630489, 34.163250, 35.086960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520058, 33.422466, 36.124069>,  <33.435497, 34.065125, 35.752056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520058, 33.422466, 36.124069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516140, 33.264076, 36.491352>,  <33.513790, 33.169041, 36.711723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516140, 33.264076, 36.491352>,  <33.520058, 33.422466, 36.124069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516140, 33.264076, 36.491352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131315, 0.909790, 0.393748,
		-0.991292, 0.124430, 0.043089,
		-0.009792, -0.395978, 0.918208,
		33.513203, 33.145283, 36.766815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056160, 33.105373, 36.472000>,  <33.520058, 33.422466, 36.124069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056160, 33.105373, 36.472000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322525, 33.394703, 36.545059>,  <34.482342, 33.568302, 36.588894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322525, 33.394703, 36.545059>,  <34.056160, 33.105373, 36.472000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322525, 33.394703, 36.545059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349273, 0.085940, 0.933072,
		0.659221, -0.685135, 0.309867,
		0.665910, 0.723329, 0.182646,
		34.522297, 33.611702, 36.599854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361092, 32.900990, 37.004379>,  <34.056160, 33.105373, 36.472000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361092, 32.900990, 37.004379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417278, 33.296379, 37.026939>,  <34.450993, 33.533615, 37.040474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417278, 33.296379, 37.026939>,  <34.361092, 32.900990, 37.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417278, 33.296379, 37.026939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301667, -0.011527, 0.953344,
		0.943009, -0.150929, 0.296572,
		0.140469, 0.988478, 0.056400,
		34.459419, 33.592922, 37.043858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683910, 33.026428, 37.643948>,  <34.361092, 32.900990, 37.004379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683910, 33.026428, 37.643948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537281, 33.381145, 37.531364>,  <34.449303, 33.593975, 37.463814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537281, 33.381145, 37.531364>,  <34.683910, 33.026428, 37.643948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537281, 33.381145, 37.531364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135410, 0.248444, 0.959135,
		0.920481, 0.389708, 0.029008,
		-0.366576, 0.886794, -0.281458,
		34.427307, 33.647182, 37.446926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064140, 33.498779, 37.808609>,  <34.683910, 33.026428, 37.643948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064140, 33.498779, 37.808609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721874, 33.701111, 37.764847>,  <34.516514, 33.822510, 37.738590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721874, 33.701111, 37.764847>,  <35.064140, 33.498779, 37.808609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721874, 33.701111, 37.764847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022918, 0.248223, 0.968432,
		0.517016, 0.826150, -0.223990,
		-0.855669, 0.505828, -0.109402,
		34.465172, 33.852859, 37.732025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255661, 34.142384, 38.001507>,  <35.064140, 33.498779, 37.808609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255661, 34.142384, 38.001507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857742, 34.115665, 38.032295>,  <34.618992, 34.099632, 38.050770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857742, 34.115665, 38.032295>,  <35.255661, 34.142384, 38.001507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857742, 34.115665, 38.032295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064216, 0.175655, 0.982355,
		-0.079141, 0.982183, -0.170451,
		-0.994793, -0.066798, 0.076974,
		34.559303, 34.095627, 38.055386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071632, 34.708504, 38.348026>,  <35.255661, 34.142384, 38.001507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071632, 34.708504, 38.348026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745491, 34.483017, 38.400822>,  <34.549805, 34.347725, 38.432499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745491, 34.483017, 38.400822>,  <35.071632, 34.708504, 38.348026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745491, 34.483017, 38.400822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021686, 0.198075, 0.979947,
		-0.578559, 0.801864, -0.149276,
		-0.815352, -0.563720, 0.131987,
		34.500885, 34.313900, 38.440418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513176, 35.154736, 38.553204>,  <35.071632, 34.708504, 38.348026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513176, 35.154736, 38.553204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486256, 34.777058, 38.682178>,  <34.470104, 34.550449, 38.759563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486256, 34.777058, 38.682178>,  <34.513176, 35.154736, 38.553204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486256, 34.777058, 38.682178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212138, 0.302242, 0.929326,
		-0.974919, 0.130949, 0.179957,
		-0.067304, -0.944194, 0.322441,
		34.466064, 34.493801, 38.778912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231060, 35.221222, 39.202553>,  <34.513176, 35.154736, 38.553204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231060, 35.221222, 39.202553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336678, 34.836266, 39.228123>,  <34.400047, 34.605293, 39.243465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336678, 34.836266, 39.228123>,  <34.231060, 35.221222, 39.202553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336678, 34.836266, 39.228123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225121, 0.125936, 0.966158,
		-0.937872, -0.240713, 0.249906,
		0.264039, -0.962392, 0.063922,
		34.415890, 34.547546, 39.247299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976288, 34.837273, 39.918468>,  <34.231060, 35.221222, 39.202553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976288, 34.837273, 39.918468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299751, 34.643757, 39.784588>,  <34.493828, 34.527649, 39.704262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299751, 34.643757, 39.784588>,  <33.976288, 34.837273, 39.918468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299751, 34.643757, 39.784588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359309, -0.044312, 0.932166,
		-0.465802, -0.874063, 0.137996,
		0.808657, -0.483788, -0.334700,
		34.542347, 34.498619, 39.684177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066700, 34.415192, 40.459106>,  <33.976288, 34.837273, 39.918468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066700, 34.415192, 40.459106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406479, 34.441498, 40.249680>,  <34.610344, 34.457283, 40.124023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406479, 34.441498, 40.249680>,  <34.066700, 34.415192, 40.459106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406479, 34.441498, 40.249680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511287, -0.347980, 0.785809,
		-0.130508, -0.935192, -0.329216,
		0.849443, 0.065769, -0.523566,
		34.661312, 34.461227, 40.092609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469383, 33.907978, 40.702965>,  <34.066700, 34.415192, 40.459106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469383, 33.907978, 40.702965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731239, 34.175385, 40.561806>,  <34.888351, 34.335827, 40.477112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731239, 34.175385, 40.561806>,  <34.469383, 33.907978, 40.702965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731239, 34.175385, 40.561806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686195, -0.329658, 0.648430,
		0.317153, -0.666641, -0.674540,
		0.654637, 0.668518, -0.352894,
		34.927631, 34.375938, 40.455936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107132, 33.586830, 40.836945>,  <34.469383, 33.907978, 40.702965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107132, 33.586830, 40.836945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230400, 33.960274, 40.763832>,  <35.304359, 34.184338, 40.719963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230400, 33.960274, 40.763832>,  <35.107132, 33.586830, 40.836945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230400, 33.960274, 40.763832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629827, -0.056222, 0.774698,
		0.712987, -0.353861, -0.605336,
		0.308169, 0.933607, -0.182785,
		35.322849, 34.240356, 40.708996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750805, 33.533680, 40.917439>,  <35.107132, 33.586830, 40.836945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750805, 33.533680, 40.917439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670937, 33.922863, 40.963875>,  <35.623016, 34.156372, 40.991737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670937, 33.922863, 40.963875>,  <35.750805, 33.533680, 40.917439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670937, 33.922863, 40.963875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434288, -0.018329, 0.900588,
		0.878365, 0.230239, -0.418886,
		-0.199673, 0.972962, 0.116089,
		35.611034, 34.214752, 40.998703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360771, 33.812508, 41.179935>,  <35.750805, 33.533680, 40.917439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360771, 33.812508, 41.179935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066898, 34.061501, 41.287830>,  <35.890575, 34.210896, 41.352566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066898, 34.061501, 41.287830>,  <36.360771, 33.812508, 41.179935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066898, 34.061501, 41.287830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314848, -0.039330, 0.948327,
		0.600922, 0.781648, -0.167091,
		-0.734686, 0.622479, 0.269734,
		35.846493, 34.248245, 41.368752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608646, 34.137592, 41.722610>,  <36.360771, 33.812508, 41.179935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608646, 34.137592, 41.722610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235325, 34.276989, 41.757233>,  <36.011330, 34.360626, 41.778008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235325, 34.276989, 41.757233>,  <36.608646, 34.137592, 41.722610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235325, 34.276989, 41.757233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121742, 0.080321, 0.989306,
		0.337810, 0.933865, -0.117390,
		-0.933308, 0.348489, 0.086558,
		35.955334, 34.381535, 41.783199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653423, 34.787304, 42.043446>,  <36.608646, 34.137592, 41.722610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653423, 34.787304, 42.043446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276619, 34.661655, 42.090672>,  <36.050537, 34.586266, 42.119007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276619, 34.661655, 42.090672>,  <36.653423, 34.787304, 42.043446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276619, 34.661655, 42.090672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037614, 0.250766, 0.967317,
		-0.333457, 0.915667, -0.224410,
		-0.942015, -0.314117, 0.118062,
		35.994015, 34.567421, 42.126091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417538, 35.199242, 42.573788>,  <36.653423, 34.787304, 42.043446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417538, 35.199242, 42.573788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193787, 34.867783, 42.565380>,  <36.059536, 34.668907, 42.560333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193787, 34.867783, 42.565380>,  <36.417538, 35.199242, 42.573788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193787, 34.867783, 42.565380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037487, -0.050626, 0.998014,
		-0.828064, 0.557480, 0.059383,
		-0.559379, -0.828646, -0.021023,
		36.025974, 34.619190, 42.559074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774826, 35.279675, 42.940388>,  <36.417538, 35.199242, 42.573788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774826, 35.279675, 42.940388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843575, 34.885635, 42.942799>,  <35.884823, 34.649212, 42.944244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843575, 34.885635, 42.942799>,  <35.774826, 35.279675, 42.940388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843575, 34.885635, 42.942799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034120, 0.012065, 0.999345,
		-0.984528, -0.171555, 0.035685,
		0.171873, -0.985101, 0.006025,
		35.895138, 34.590107, 42.944607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401924, 34.941269, 43.490662>,  <35.774826, 35.279675, 42.940388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401924, 34.941269, 43.490662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672920, 34.656322, 43.417408>,  <35.835518, 34.485355, 43.373455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672920, 34.656322, 43.417408>,  <35.401924, 34.941269, 43.490662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672920, 34.656322, 43.417408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074868, -0.180907, 0.980646,
		-0.731709, -0.678092, -0.069230,
		0.677492, -0.712365, -0.183139,
		35.876167, 34.442612, 43.362465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163494, 34.384827, 43.891384>,  <35.401924, 34.941269, 43.490662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163494, 34.384827, 43.891384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550262, 34.323460, 43.809868>,  <35.782322, 34.286640, 43.760956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550262, 34.323460, 43.809868>,  <35.163494, 34.384827, 43.891384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550262, 34.323460, 43.809868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176744, -0.173137, 0.968909,
		-0.183941, -0.972874, -0.140292,
		0.966916, -0.153426, -0.203797,
		35.840340, 34.277435, 43.748730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248886, 33.857937, 44.333862>,  <35.163494, 34.384827, 43.891384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248886, 33.857937, 44.333862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615845, 33.981945, 44.234051>,  <35.836021, 34.056351, 44.174164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615845, 33.981945, 44.234051>,  <35.248886, 33.857937, 44.333862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615845, 33.981945, 44.234051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345308, -0.308391, 0.886373,
		0.197844, -0.899322, -0.389971,
		0.917399, 0.310024, -0.249530,
		35.891064, 34.074951, 44.159191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692856, 33.281696, 44.263348>,  <35.248886, 33.857937, 44.333862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692856, 33.281696, 44.263348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910633, 33.610241, 44.331402>,  <36.041298, 33.807369, 44.372234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910633, 33.610241, 44.331402>,  <35.692856, 33.281696, 44.263348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910633, 33.610241, 44.331402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331451, -0.396990, 0.855885,
		0.770536, -0.409585, -0.488379,
		0.544439, 0.821364, 0.170138,
		36.073963, 33.856651, 44.382442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403229, 33.039513, 44.452576>,  <35.692856, 33.281696, 44.263348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403229, 33.039513, 44.452576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352795, 33.415958, 44.578049>,  <36.322536, 33.641827, 44.653332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352795, 33.415958, 44.578049>,  <36.403229, 33.039513, 44.452576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352795, 33.415958, 44.578049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109497, -0.301075, 0.947293,
		0.985958, 0.153785, -0.065089,
		-0.126083, 0.941118, 0.313686,
		36.314968, 33.698296, 44.672153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824944, 33.026787, 44.999096>,  <36.403229, 33.039513, 44.452576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824944, 33.026787, 44.999096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616432, 33.361851, 45.064327>,  <36.491325, 33.562889, 45.103466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616432, 33.361851, 45.064327>,  <36.824944, 33.026787, 44.999096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616432, 33.361851, 45.064327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091227, -0.135301, 0.986596,
		0.848497, 0.529168, -0.005888,
		-0.521278, 0.837661, 0.163077,
		36.460049, 33.613148, 45.113251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049732, 33.297619, 45.696262>,  <36.824944, 33.026787, 44.999096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049732, 33.297619, 45.696262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683708, 33.448307, 45.638641>,  <36.464096, 33.538719, 45.604069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683708, 33.448307, 45.638641>,  <37.049732, 33.297619, 45.696262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683708, 33.448307, 45.638641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225930, -0.182906, 0.956818,
		0.334103, 0.908090, 0.252482,
		-0.915058, 0.376719, -0.144055,
		36.409191, 33.561321, 45.595425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456551, 33.922951, 45.644173>,  <37.049732, 33.297619, 45.696262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456551, 33.922951, 45.644173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837135, 33.957005, 45.762478>,  <38.065487, 33.977436, 45.833462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837135, 33.957005, 45.762478>,  <37.456551, 33.922951, 45.644173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837135, 33.957005, 45.762478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299737, -0.038142, -0.953259,
		-0.069876, 0.995639, -0.061809,
		0.951459, 0.085136, 0.295765,
		38.122574, 33.982544, 45.851208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698391, 34.398148, 45.285572>,  <37.456551, 33.922951, 45.644173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698391, 34.398148, 45.285572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028145, 34.212673, 45.415424>,  <38.225998, 34.101391, 45.493336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028145, 34.212673, 45.415424>,  <37.698391, 34.398148, 45.285572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028145, 34.212673, 45.415424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355309, -0.022525, -0.934478,
		0.440614, 0.885715, 0.146181,
		0.824388, -0.463683, 0.324627,
		38.275463, 34.073566, 45.512814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299896, 34.600861, 44.909653>,  <37.698391, 34.398148, 45.285572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299896, 34.600861, 44.909653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426289, 34.245090, 45.041763>,  <38.502125, 34.031628, 45.121029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426289, 34.245090, 45.041763>,  <38.299896, 34.600861, 44.909653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426289, 34.245090, 45.041763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215347, -0.271789, -0.937953,
		0.924004, 0.367497, 0.105655,
		0.315979, -0.889425, 0.330274,
		38.521084, 33.978264, 45.140846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004604, 34.460613, 44.665871>,  <38.299896, 34.600861, 44.909653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004604, 34.460613, 44.665871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857979, 34.097397, 44.746956>,  <38.770004, 33.879467, 44.795609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857979, 34.097397, 44.746956>,  <39.004604, 34.460613, 44.665871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857979, 34.097397, 44.746956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144885, -0.270937, -0.951631,
		0.919041, -0.319467, 0.230878,
		-0.366568, -0.908038, 0.202716,
		38.748009, 33.824986, 44.807770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508251, 34.102825, 44.475212>,  <39.004604, 34.460613, 44.665871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508251, 34.102825, 44.475212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195580, 33.854725, 44.449070>,  <39.007977, 33.705864, 44.433384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195580, 33.854725, 44.449070>,  <39.508251, 34.102825, 44.475212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195580, 33.854725, 44.449070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286159, -0.263565, -0.921220,
		0.554161, -0.738799, 0.383513,
		-0.781677, -0.620250, -0.065356,
		38.961075, 33.668652, 44.429462>
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
