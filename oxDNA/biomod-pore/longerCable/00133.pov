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
	<24.395248, 35.361721, 34.760941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255573, 34.995583, 34.841152>,  <24.171768, 34.775898, 34.889278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255573, 34.995583, 34.841152>,  <24.395248, 35.361721, 34.760941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255573, 34.995583, 34.841152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689802, -0.395935, -0.606142,
		0.634226, -0.073332, 0.769662,
		-0.349186, -0.915346, 0.200527,
		24.150818, 34.720978, 34.901310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819658, 35.000546, 35.259781>,  <24.395248, 35.361721, 34.760941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819658, 35.000546, 35.259781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628464, 34.794495, 34.975197>,  <24.513746, 34.670864, 34.804447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628464, 34.794495, 34.975197>,  <24.819658, 35.000546, 35.259781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.628464, 34.794495, 34.975197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846531, -0.054072, -0.529587,
		0.234336, -0.855405, 0.461918,
		-0.477988, -0.515129, -0.711456,
		24.485067, 34.639957, 34.761761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.173912, 34.394070, 35.172928>,  <24.819658, 35.000546, 35.259781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.173912, 34.394070, 35.172928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994896, 34.490017, 34.828331>,  <24.887486, 34.547585, 34.621574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994896, 34.490017, 34.828331>,  <25.173912, 34.394070, 35.172928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994896, 34.490017, 34.828331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847326, -0.194259, -0.494269,
		-0.285910, -0.951172, -0.116304,
		-0.447543, 0.239864, -0.861494,
		24.860634, 34.561977, 34.569881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705313, 34.314629, 34.681782>,  <25.173912, 34.394070, 35.172928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705313, 34.314629, 34.681782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450262, 34.434666, 34.397987>,  <25.297232, 34.506687, 34.227711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450262, 34.434666, 34.397987>,  <25.705313, 34.314629, 34.681782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450262, 34.434666, 34.397987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703779, -0.147589, -0.694919,
		-0.313254, -0.942423, -0.117093,
		-0.637626, 0.300094, -0.709491,
		25.258974, 34.524693, 34.185139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587711, 33.809597, 34.131222>,  <25.705313, 34.314629, 34.681782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587711, 33.809597, 34.131222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553030, 34.188248, 34.007038>,  <25.532221, 34.415436, 33.932526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553030, 34.188248, 34.007038>,  <25.587711, 33.809597, 34.131222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553030, 34.188248, 34.007038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844634, -0.095406, -0.526774,
		-0.528277, -0.307900, -0.791278,
		-0.086701, 0.946623, -0.310463,
		25.527020, 34.472233, 33.913898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.477659, 33.982384, 33.318447>,  <25.587711, 33.809597, 34.131222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.477659, 33.982384, 33.318447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710892, 34.215210, 33.545151>,  <25.850832, 34.354904, 33.681171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710892, 34.215210, 33.545151>,  <25.477659, 33.982384, 33.318447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710892, 34.215210, 33.545151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800115, -0.290514, -0.524802,
		-0.140819, 0.759473, -0.635114,
		0.583083, 0.582067, 0.566756,
		25.885817, 34.389832, 33.715179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921175, 34.454441, 32.811146>,  <25.477659, 33.982384, 33.318447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921175, 34.454441, 32.811146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097300, 34.396362, 33.165558>,  <26.202974, 34.361515, 33.378204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097300, 34.396362, 33.165558>,  <25.921175, 34.454441, 32.811146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097300, 34.396362, 33.165558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776389, -0.434060, -0.456959,
		0.450939, 0.889106, -0.078389,
		0.440310, -0.145200, 0.886027,
		26.229393, 34.352802, 33.431366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668119, 34.796543, 32.975334>,  <25.921175, 34.454441, 32.811146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668119, 34.796543, 32.975334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616463, 34.441559, 33.152306>,  <26.585468, 34.228569, 33.258488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616463, 34.441559, 33.152306>,  <26.668119, 34.796543, 32.975334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616463, 34.441559, 33.152306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795944, -0.358873, -0.487528,
		0.591436, 0.289188, 0.752711,
		-0.129140, -0.887457, 0.442427,
		26.577721, 34.175323, 33.285034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309128, 34.633251, 33.183838>,  <26.668119, 34.796543, 32.975334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309128, 34.633251, 33.183838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121574, 34.280533, 33.204174>,  <27.009043, 34.068901, 33.216377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121574, 34.280533, 33.204174>,  <27.309128, 34.633251, 33.183838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121574, 34.280533, 33.204174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747297, -0.426730, -0.509362,
		0.470849, -0.200837, 0.859050,
		-0.468881, -0.881797, 0.050841,
		26.980909, 34.015995, 33.219425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849192, 34.134865, 33.410973>,  <27.309128, 34.633251, 33.183838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849192, 34.134865, 33.410973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553997, 33.910240, 33.261292>,  <27.376881, 33.775467, 33.171482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553997, 33.910240, 33.261292>,  <27.849192, 34.134865, 33.410973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553997, 33.910240, 33.261292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672312, -0.564117, -0.479341,
		0.058083, -0.605329, 0.793853,
		-0.737985, -0.561559, -0.374205,
		27.332602, 33.741772, 33.149029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223993, 33.528259, 33.419857>,  <27.849192, 34.134865, 33.410973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223993, 33.528259, 33.419857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917206, 33.505215, 33.164219>,  <27.733133, 33.491386, 33.010838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917206, 33.505215, 33.164219>,  <28.223993, 33.528259, 33.419857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917206, 33.505215, 33.164219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530578, -0.617086, -0.581112,
		-0.360894, -0.784784, 0.503856,
		-0.766970, -0.057615, -0.639092,
		27.687115, 33.487930, 32.972492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088085, 32.810036, 33.279785>,  <28.223993, 33.528259, 33.419857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088085, 32.810036, 33.279785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988239, 33.048912, 32.974876>,  <27.928331, 33.192238, 32.791931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988239, 33.048912, 32.974876>,  <28.088085, 32.810036, 33.279785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988239, 33.048912, 32.974876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544612, -0.564311, -0.620444,
		-0.800681, -0.570012, -0.184378,
		-0.249614, 0.597193, -0.762269,
		27.913355, 33.228069, 32.746197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706940, 32.506622, 32.686386>,  <28.088085, 32.810036, 33.279785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706940, 32.506622, 32.686386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907721, 32.820713, 32.541351>,  <28.028189, 33.009167, 32.454330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907721, 32.820713, 32.541351>,  <27.706940, 32.506622, 32.686386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907721, 32.820713, 32.541351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479167, -0.601481, -0.639234,
		-0.720029, 0.147126, -0.678168,
		0.501953, 0.785223, -0.362586,
		28.058306, 33.056278, 32.432575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404554, 32.476009, 32.030468>,  <27.706940, 32.506622, 32.686386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404554, 32.476009, 32.030468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751841, 32.674160, 32.041809>,  <27.960213, 32.793049, 32.048615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751841, 32.674160, 32.041809>,  <27.404554, 32.476009, 32.030468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751841, 32.674160, 32.041809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220978, -0.334868, -0.915987,
		-0.444260, 0.801542, -0.400204,
		0.868218, 0.495372, 0.028355,
		28.012306, 32.822773, 32.050316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304321, 32.963791, 31.576815>,  <27.404554, 32.476009, 32.030468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304321, 32.963791, 31.576815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693707, 32.876301, 31.603725>,  <27.927338, 32.823807, 31.619871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693707, 32.876301, 31.603725>,  <27.304321, 32.963791, 31.576815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693707, 32.876301, 31.603725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006791, -0.321468, -0.946896,
		0.228740, 0.921312, -0.314423,
		0.973464, -0.218729, 0.067276,
		27.985746, 32.810680, 31.623909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256060, 33.611664, 31.793671>,  <27.304321, 32.963791, 31.576815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256060, 33.611664, 31.793671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368273, 33.407902, 32.119076>,  <27.435600, 33.285645, 32.314320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368273, 33.407902, 32.119076>,  <27.256060, 33.611664, 31.793671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368273, 33.407902, 32.119076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692251, 0.479732, 0.539116,
		-0.664897, -0.714397, -0.218055,
		0.280535, -0.509406, 0.813515,
		27.452433, 33.255081, 32.363129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671648, 33.399403, 32.071026>,  <27.256060, 33.611664, 31.793671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671648, 33.399403, 32.071026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961193, 33.418530, 32.346340>,  <27.134920, 33.430008, 32.511528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961193, 33.418530, 32.346340>,  <26.671648, 33.399403, 32.071026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961193, 33.418530, 32.346340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634356, 0.438440, 0.636681,
		-0.271327, -0.897488, 0.347704,
		0.723861, 0.047819, 0.688287,
		27.178350, 33.432877, 32.552826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431982, 32.971828, 32.563896>,  <26.671648, 33.399403, 32.071026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431982, 32.971828, 32.563896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699778, 33.211128, 32.740025>,  <26.860455, 33.354710, 32.845703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699778, 33.211128, 32.740025>,  <26.431982, 32.971828, 32.563896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699778, 33.211128, 32.740025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651400, 0.187932, 0.735092,
		0.357019, -0.778960, 0.515518,
		0.669489, 0.598250, 0.440320,
		26.900625, 33.390602, 32.872120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346415, 32.857567, 33.309822>,  <26.431982, 32.971828, 32.563896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346415, 32.857567, 33.309822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526798, 33.213196, 33.278378>,  <26.635029, 33.426575, 33.259510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526798, 33.213196, 33.278378>,  <26.346415, 32.857567, 33.309822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526798, 33.213196, 33.278378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653354, 0.388829, 0.649570,
		0.608082, -0.241570, 0.756227,
		0.450960, 0.889076, -0.078609,
		26.662086, 33.479919, 33.254795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569532, 33.056309, 33.931015>,  <26.346415, 32.857567, 33.309822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569532, 33.056309, 33.931015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541653, 33.395271, 33.720478>,  <26.524925, 33.598648, 33.594154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541653, 33.395271, 33.720478>,  <26.569532, 33.056309, 33.931015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541653, 33.395271, 33.720478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842858, 0.232203, 0.485460,
		0.533602, 0.477472, 0.698061,
		-0.069702, 0.847409, -0.526346,
		26.520742, 33.649494, 33.562576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476219, 33.695599, 34.347660>,  <26.569532, 33.056309, 33.931015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476219, 33.695599, 34.347660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311266, 33.714466, 33.983746>,  <26.212294, 33.725788, 33.765396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311266, 33.714466, 33.983746>,  <26.476219, 33.695599, 34.347660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311266, 33.714466, 33.983746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898071, 0.146678, 0.414674,
		0.153007, 0.988059, -0.018126,
		-0.412381, 0.047170, -0.909789,
		26.187551, 33.728619, 33.710808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843096, 34.349445, 34.567249>,  <26.476219, 33.695599, 34.347660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843096, 34.349445, 34.567249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662952, 34.389534, 34.212368>,  <26.554867, 34.413586, 33.999439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662952, 34.389534, 34.212368>,  <26.843096, 34.349445, 34.567249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662952, 34.389534, 34.212368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737251, 0.518759, 0.432838,
		0.503625, 0.849026, -0.159741,
		-0.450358, 0.100219, -0.887206,
		26.527845, 34.419601, 33.946205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749884, 35.041698, 34.449524>,  <26.843096, 34.349445, 34.567249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749884, 35.041698, 34.449524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490517, 34.850914, 34.212185>,  <26.334896, 34.736443, 34.069782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490517, 34.850914, 34.212185>,  <26.749884, 35.041698, 34.449524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490517, 34.850914, 34.212185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751849, 0.523548, 0.400776,
		0.119488, 0.705976, -0.698084,
		-0.648418, -0.476965, -0.593345,
		26.295992, 34.707825, 34.034180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489017, 35.122063, 34.764816>,  <26.749884, 35.041698, 34.449524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489017, 35.122063, 34.764816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485374, 35.272598, 35.135391>,  <27.483189, 35.362919, 35.357735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485374, 35.272598, 35.135391>,  <27.489017, 35.122063, 34.764816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485374, 35.272598, 35.135391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559175, -0.766162, 0.316732,
		0.828999, 0.520924, -0.203466,
		-0.009105, 0.376343, 0.926436,
		27.482643, 35.385502, 35.413322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211435, 35.187256, 35.051159>,  <27.489017, 35.122063, 34.764816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211435, 35.187256, 35.051159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945486, 35.158707, 35.348576>,  <27.785917, 35.141579, 35.527027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945486, 35.158707, 35.348576>,  <28.211435, 35.187256, 35.051159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945486, 35.158707, 35.348576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506536, -0.774657, 0.378587,
		0.548969, 0.628342, 0.551198,
		-0.664871, -0.071369, 0.743541,
		27.746025, 35.137295, 35.571636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767557, 35.333237, 34.539612>,  <28.211435, 35.187256, 35.051159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767557, 35.333237, 34.539612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978006, 35.249596, 34.209892>,  <29.104275, 35.199409, 34.012062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978006, 35.249596, 34.209892>,  <28.767557, 35.333237, 34.539612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978006, 35.249596, 34.209892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400946, 0.915798, 0.023592,
		0.749959, -0.342912, 0.565662,
		0.526122, -0.209107, -0.824300,
		29.135843, 35.186863, 33.962601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535744, 35.404739, 34.507736>,  <28.767557, 35.333237, 34.539612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535744, 35.404739, 34.507736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454527, 35.530140, 34.136684>,  <29.405796, 35.605381, 33.914055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454527, 35.530140, 34.136684>,  <29.535744, 35.404739, 34.507736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454527, 35.530140, 34.136684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518999, 0.837793, 0.169537,
		0.830310, -0.447014, -0.332813,
		-0.203043, 0.313497, -0.927628,
		29.393614, 35.624187, 33.858395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182520, 35.569374, 34.202625>,  <29.535744, 35.404739, 34.507736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182520, 35.569374, 34.202625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890398, 35.788113, 34.038864>,  <29.715124, 35.919357, 33.940609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890398, 35.788113, 34.038864>,  <30.182520, 35.569374, 34.202625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890398, 35.788113, 34.038864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607443, 0.794031, -0.022971,
		0.312518, -0.265465, -0.912064,
		-0.730305, 0.546848, -0.409404,
		29.671307, 35.952168, 33.916042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443188, 35.888523, 33.532135>,  <30.182520, 35.569374, 34.202625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443188, 35.888523, 33.532135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140636, 36.092014, 33.696617>,  <29.959106, 36.214108, 33.795307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140636, 36.092014, 33.696617>,  <30.443188, 35.888523, 33.532135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140636, 36.092014, 33.696617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636904, 0.716082, 0.285622,
		-0.149157, 0.477939, -0.865637,
		-0.756377, 0.508725, 0.411210,
		29.913723, 36.244633, 33.819981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485203, 36.705681, 33.271763>,  <30.443188, 35.888523, 33.532135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485203, 36.705681, 33.271763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285389, 36.672955, 33.616730>,  <30.165501, 36.653316, 33.823711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285389, 36.672955, 33.616730>,  <30.485203, 36.705681, 33.271763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285389, 36.672955, 33.616730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501635, 0.784321, 0.364969,
		-0.706277, 0.614936, -0.350753,
		-0.499536, -0.081819, 0.862421,
		30.135529, 36.648407, 33.875458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173002, 37.362953, 33.461994>,  <30.485203, 36.705681, 33.271763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173002, 37.362953, 33.461994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286514, 37.110935, 33.751133>,  <30.354622, 36.959724, 33.924618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286514, 37.110935, 33.751133>,  <30.173002, 37.362953, 33.461994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286514, 37.110935, 33.751133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458593, 0.751214, 0.474731,
		-0.842117, 0.196775, 0.502114,
		0.283779, -0.630045, 0.722850,
		30.371649, 36.921921, 33.967987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912460, 37.635868, 34.124691>,  <30.173002, 37.362953, 33.461994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912460, 37.635868, 34.124691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254520, 37.428928, 34.137794>,  <30.459757, 37.304764, 34.145657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254520, 37.428928, 34.137794>,  <29.912460, 37.635868, 34.124691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254520, 37.428928, 34.137794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442950, 0.762079, 0.472261,
		-0.269287, -0.389343, 0.880850,
		0.855149, -0.517346, 0.032759,
		30.511065, 37.273724, 34.147621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215836, 37.504047, 34.825043>,  <29.912460, 37.635868, 34.124691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215836, 37.504047, 34.825043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466475, 37.595631, 34.527061>,  <30.616858, 37.650581, 34.348274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466475, 37.595631, 34.527061>,  <30.215836, 37.504047, 34.825043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466475, 37.595631, 34.527061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244940, 0.849581, 0.467136,
		0.739850, -0.475175, 0.476267,
		0.626598, 0.228954, -0.744952,
		30.654453, 37.664318, 34.303577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057487, 37.514877, 34.988487>,  <30.215836, 37.504047, 34.825043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057487, 37.514877, 34.988487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884995, 37.756542, 34.720451>,  <30.781500, 37.901543, 34.559628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884995, 37.756542, 34.720451>,  <31.057487, 37.514877, 34.988487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884995, 37.756542, 34.720451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219272, 0.790610, 0.571713,
		0.875191, 0.099608, -0.473412,
		-0.431231, 0.604164, -0.670094,
		30.755625, 37.937790, 34.519424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218428, 38.122490, 34.606682>,  <31.057487, 37.514877, 34.988487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218428, 38.122490, 34.606682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941759, 38.340290, 34.796467>,  <30.775759, 38.470970, 34.910339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941759, 38.340290, 34.796467>,  <31.218428, 38.122490, 34.606682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941759, 38.340290, 34.796467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281386, -0.808216, 0.517308,
		0.665143, 0.224298, 0.712232,
		-0.691669, 0.544496, 0.474465,
		30.734259, 38.503639, 34.938805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316175, 38.187325, 35.357624>,  <31.218428, 38.122490, 34.606682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316175, 38.187325, 35.357624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928438, 38.213375, 35.262856>,  <30.695795, 38.229004, 35.205994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928438, 38.213375, 35.262856>,  <31.316175, 38.187325, 35.357624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928438, 38.213375, 35.262856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199756, -0.770345, 0.605529,
		-0.143079, 0.634292, 0.759738,
		-0.969343, 0.065124, -0.236924,
		30.637634, 38.232914, 35.191780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989038, 38.123821, 34.991093>,  <31.316175, 38.187325, 35.357624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989038, 38.123821, 34.991093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262882, 38.122910, 34.699532>,  <32.427189, 38.122364, 34.524593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262882, 38.122910, 34.699532>,  <31.989038, 38.123821, 34.991093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262882, 38.122910, 34.699532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015233, 0.999821, 0.011187,
		0.728751, -0.018762, 0.684521,
		0.684608, -0.002275, -0.728907,
		32.468266, 38.122227, 34.480858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632492, 38.544823, 35.199211>,  <31.989038, 38.123821, 34.991093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632492, 38.544823, 35.199211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582542, 38.534084, 34.802486>,  <32.552574, 38.527641, 34.564453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582542, 38.534084, 34.802486>,  <32.632492, 38.544823, 35.199211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582542, 38.534084, 34.802486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044514, 0.998779, -0.021431,
		0.991174, 0.041474, -0.125914,
		-0.124871, -0.026846, -0.991810,
		32.545082, 38.526031, 34.504944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967255, 39.197838, 34.988937>,  <32.632492, 38.544823, 35.199211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967255, 39.197838, 34.988937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767418, 39.046364, 34.677296>,  <32.647514, 38.955479, 34.490311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767418, 39.046364, 34.677296>,  <32.967255, 39.197838, 34.988937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767418, 39.046364, 34.677296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390144, 0.901370, -0.187935,
		0.773431, 0.210073, -0.598058,
		-0.499591, -0.378684, -0.779107,
		32.617542, 38.932758, 34.443565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121498, 39.583130, 34.329075>,  <32.967255, 39.197838, 34.988937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121498, 39.583130, 34.329075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760418, 39.415718, 34.369026>,  <32.543770, 39.315273, 34.392998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760418, 39.415718, 34.369026>,  <33.121498, 39.583130, 34.329075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760418, 39.415718, 34.369026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422406, 0.906175, -0.020493,
		-0.081929, -0.060687, -0.994789,
		-0.902696, -0.418526, 0.099877,
		32.489609, 39.290161, 34.398991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650906, 39.873135, 33.754749>,  <33.121498, 39.583130, 34.329075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650906, 39.873135, 33.754749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450451, 39.760555, 34.082077>,  <32.330177, 39.693008, 34.278473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450451, 39.760555, 34.082077>,  <32.650906, 39.873135, 33.754749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450451, 39.760555, 34.082077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533662, 0.844922, -0.036215,
		-0.681222, -0.454854, -0.573624,
		-0.501140, -0.281451, 0.818318,
		32.300110, 39.676121, 34.327572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939262, 39.787281, 33.575069>,  <32.650906, 39.873135, 33.754749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939262, 39.787281, 33.575069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971107, 39.897484, 33.958267>,  <31.990213, 39.963604, 34.188187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971107, 39.897484, 33.958267>,  <31.939262, 39.787281, 33.575069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971107, 39.897484, 33.958267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630510, 0.758293, -0.165675,
		-0.772087, -0.590838, 0.234076,
		0.079611, 0.275503, 0.957998,
		31.994991, 39.980133, 34.245667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528439, 39.145485, 33.818737>,  <31.939262, 39.787281, 33.575069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528439, 39.145485, 33.818737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924826, 39.184746, 33.855289>,  <32.162659, 39.208302, 33.877220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924826, 39.184746, 33.855289>,  <31.528439, 39.145485, 33.818737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924826, 39.184746, 33.855289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106605, -0.989961, -0.092801,
		0.081354, 0.101705, -0.991482,
		0.990968, 0.098148, 0.091380,
		32.222115, 39.214191, 33.882702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854328, 38.724461, 33.368546>,  <31.528439, 39.145485, 33.818737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854328, 38.724461, 33.368546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106861, 38.752777, 33.677456>,  <32.258381, 38.769768, 33.862801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106861, 38.752777, 33.677456>,  <31.854328, 38.724461, 33.368546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106861, 38.752777, 33.677456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121516, -0.992554, -0.008360,
		0.765935, 0.099121, -0.635231,
		0.631330, 0.070788, 0.772277,
		32.296261, 38.774014, 33.909138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444794, 38.465725, 33.199726>,  <31.854328, 38.724461, 33.368546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444794, 38.465725, 33.199726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493874, 38.468185, 33.596695>,  <32.523323, 38.469662, 33.834877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493874, 38.468185, 33.596695>,  <32.444794, 38.465725, 33.199726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493874, 38.468185, 33.596695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351996, -0.935241, -0.037727,
		0.927924, 0.353959, -0.116921,
		0.122703, 0.006148, 0.992424,
		32.530685, 38.470032, 33.894421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192577, 38.248123, 33.380211>,  <32.444794, 38.465725, 33.199726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192577, 38.248123, 33.380211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949505, 38.182888, 33.691116>,  <32.803661, 38.143745, 33.877659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949505, 38.182888, 33.691116>,  <33.192577, 38.248123, 33.380211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949505, 38.182888, 33.691116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235052, -0.971774, -0.020134,
		0.758604, 0.170461, 0.628859,
		-0.607677, -0.163088, 0.777259,
		32.767200, 38.133961, 33.924294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562992, 37.666279, 33.689781>,  <33.192577, 38.248123, 33.380211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562992, 37.666279, 33.689781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201099, 37.657215, 33.859932>,  <32.983963, 37.651775, 33.962021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201099, 37.657215, 33.859932>,  <33.562992, 37.666279, 33.689781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201099, 37.657215, 33.859932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069328, -0.993104, 0.094546,
		0.420301, 0.115029, 0.900064,
		-0.904732, -0.022662, 0.425378,
		32.929680, 37.650417, 33.987545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521439, 37.292671, 34.398296>,  <33.562992, 37.666279, 33.689781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521439, 37.292671, 34.398296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174679, 37.224808, 34.210804>,  <32.966625, 37.184090, 34.098309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174679, 37.224808, 34.210804>,  <33.521439, 37.292671, 34.398296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174679, 37.224808, 34.210804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136933, -0.985175, 0.103339,
		-0.479314, 0.025399, 0.877275,
		-0.866895, -0.169660, -0.468731,
		32.914612, 37.173908, 34.070183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488132, 36.779068, 34.868565>,  <33.521439, 37.292671, 34.398296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488132, 36.779068, 34.868565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876282, 36.689507, 34.904900>,  <34.109169, 36.635769, 34.926701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876282, 36.689507, 34.904900>,  <33.488132, 36.779068, 34.868565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876282, 36.689507, 34.904900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047578, 0.545620, 0.836681,
		-0.236900, -0.807567, 0.540106,
		0.970368, -0.223907, 0.090835,
		34.167393, 36.622334, 34.932152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580906, 36.314552, 35.454479>,  <33.488132, 36.779068, 34.868565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580906, 36.314552, 35.454479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887531, 36.560612, 35.380756>,  <34.071507, 36.708248, 35.336525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887531, 36.560612, 35.380756>,  <33.580906, 36.314552, 35.454479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887531, 36.560612, 35.380756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168576, 0.469704, 0.866580,
		0.619647, -0.633219, 0.463758,
		0.766563, 0.615152, -0.184305,
		34.117500, 36.745155, 35.325466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797234, 36.388527, 36.103462>,  <33.580906, 36.314552, 35.454479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797234, 36.388527, 36.103462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969517, 36.682144, 35.893440>,  <34.072887, 36.858315, 35.767429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969517, 36.682144, 35.893440>,  <33.797234, 36.388527, 36.103462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969517, 36.682144, 35.893440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186282, 0.496942, 0.847554,
		0.883059, -0.462852, 0.077295,
		0.430703, 0.734041, -0.525050,
		34.098728, 36.902355, 35.735924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946590, 35.678673, 36.279980>,  <33.797234, 36.388527, 36.103462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946590, 35.678673, 36.279980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065166, 35.382671, 36.521484>,  <34.136311, 35.205070, 36.666386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065166, 35.382671, 36.521484>,  <33.946590, 35.678673, 36.279980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065166, 35.382671, 36.521484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241563, 0.669712, 0.702235,
		-0.923998, -0.062323, 0.377284,
		0.296437, -0.740001, 0.603758,
		34.154099, 35.160671, 36.702610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554386, 35.643238, 36.931797>,  <33.946590, 35.678673, 36.279980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554386, 35.643238, 36.931797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926937, 35.524403, 37.015972>,  <34.150467, 35.453102, 37.066479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926937, 35.524403, 37.015972>,  <33.554386, 35.643238, 36.931797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926937, 35.524403, 37.015972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055752, 0.687589, 0.723956,
		-0.359772, -0.662541, 0.656965,
		0.931373, -0.297087, 0.210438,
		34.206348, 35.435276, 37.079102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638371, 35.349155, 37.632187>,  <33.554386, 35.643238, 36.931797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638371, 35.349155, 37.632187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943008, 35.554630, 37.474152>,  <34.125793, 35.677917, 37.379330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943008, 35.554630, 37.474152>,  <33.638371, 35.349155, 37.632187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943008, 35.554630, 37.474152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239181, 0.789420, 0.565339,
		0.602296, -0.336065, 0.724086,
		0.761598, 0.513689, -0.395084,
		34.171486, 35.708736, 37.355625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883125, 35.948544, 38.068192>,  <33.638371, 35.349155, 37.632187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883125, 35.948544, 38.068192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065639, 36.050636, 37.727215>,  <34.175148, 36.111893, 37.522629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065639, 36.050636, 37.727215>,  <33.883125, 35.948544, 38.068192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065639, 36.050636, 37.727215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025519, 0.953834, 0.299249,
		0.889468, -0.158295, 0.428705,
		0.456283, 0.255233, -0.852444,
		34.202526, 36.127205, 37.471481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497047, 36.288185, 38.321247>,  <33.883125, 35.948544, 38.068192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497047, 36.288185, 38.321247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312344, 36.369396, 37.975864>,  <34.201519, 36.418125, 37.768635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312344, 36.369396, 37.975864>,  <34.497047, 36.288185, 38.321247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312344, 36.369396, 37.975864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307819, 0.876274, 0.370664,
		0.831878, 0.436947, -0.342135,
		-0.461764, 0.203032, -0.863453,
		34.173813, 36.430305, 37.716827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803898, 36.970795, 38.024807>,  <34.497047, 36.288185, 38.321247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803898, 36.970795, 38.024807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437840, 36.912445, 37.874489>,  <34.218204, 36.877434, 37.784298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437840, 36.912445, 37.874489>,  <34.803898, 36.970795, 38.024807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437840, 36.912445, 37.874489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313848, 0.842874, 0.437108,
		0.252988, 0.517962, -0.817137,
		-0.915148, -0.145874, -0.375799,
		34.163296, 36.868683, 37.761749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511551, 37.538109, 37.612930>,  <34.803898, 36.970795, 38.024807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511551, 37.538109, 37.612930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225006, 37.330605, 37.799568>,  <34.053078, 37.206104, 37.911552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225006, 37.330605, 37.799568>,  <34.511551, 37.538109, 37.612930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225006, 37.330605, 37.799568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319962, 0.838522, 0.441028,
		-0.620035, 0.166645, -0.766672,
		-0.716366, -0.518758, 0.466593,
		34.010098, 37.174976, 37.939545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710442, 37.722805, 37.490105>,  <34.511551, 37.538109, 37.612930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710442, 37.722805, 37.490105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767216, 37.580402, 37.859562>,  <33.801281, 37.494961, 38.081234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767216, 37.580402, 37.859562>,  <33.710442, 37.722805, 37.490105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767216, 37.580402, 37.859562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417883, 0.824315, 0.381942,
		-0.897346, -0.440183, -0.031774,
		0.141933, -0.356011, 0.923640,
		33.809795, 37.473598, 38.136654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866432, 37.286358, 36.908092>,  <33.710442, 37.722805, 37.490105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866432, 37.286358, 36.908092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926559, 37.679886, 36.869095>,  <33.962635, 37.916004, 36.845695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926559, 37.679886, 36.869095>,  <33.866432, 37.286358, 36.908092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926559, 37.679886, 36.869095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235963, -0.131467, -0.962828,
		-0.960066, 0.121726, -0.251907,
		0.150319, 0.983819, -0.097494,
		33.971657, 37.975033, 36.839848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283463, 37.550186, 36.583641>,  <33.866432, 37.286358, 36.908092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283463, 37.550186, 36.583641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642429, 37.720245, 36.536488>,  <33.857807, 37.822281, 36.508194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642429, 37.720245, 36.536488>,  <33.283463, 37.550186, 36.583641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642429, 37.720245, 36.536488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009742, -0.286229, -0.958112,
		-0.441080, 0.858675, -0.261008,
		0.897415, 0.425146, -0.117885,
		33.911655, 37.847790, 36.501122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350788, 37.785290, 35.969540>,  <33.283463, 37.550186, 36.583641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350788, 37.785290, 35.969540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740284, 37.782738, 36.060566>,  <33.973980, 37.781204, 36.115181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740284, 37.782738, 36.060566>,  <33.350788, 37.785290, 35.969540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740284, 37.782738, 36.060566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212085, -0.337946, -0.916958,
		0.082760, 0.941144, -0.327718,
		0.973741, -0.006384, 0.227570,
		34.032406, 37.780823, 36.128838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758289, 38.018692, 35.407040>,  <33.350788, 37.785290, 35.969540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758289, 38.018692, 35.407040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007137, 37.791050, 35.622105>,  <34.156448, 37.654465, 35.751144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007137, 37.791050, 35.622105>,  <33.758289, 38.018692, 35.407040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007137, 37.791050, 35.622105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336829, -0.425384, -0.839997,
		0.706761, 0.703682, -0.072949,
		0.622122, -0.569105, 0.537665,
		34.193775, 37.620319, 35.783405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431156, 37.986275, 35.029320>,  <33.758289, 38.018692, 35.407040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431156, 37.986275, 35.029320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373650, 37.670696, 35.268284>,  <34.339146, 37.481350, 35.411663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373650, 37.670696, 35.268284>,  <34.431156, 37.986275, 35.029320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373650, 37.670696, 35.268284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341313, -0.606172, -0.718374,
		0.928891, 0.100630, 0.356421,
		-0.143762, -0.788942, 0.597414,
		34.330521, 37.434013, 35.447510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045681, 37.608425, 35.210354>,  <34.431156, 37.986275, 35.029320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045681, 37.608425, 35.210354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724686, 37.370071, 35.198116>,  <34.532089, 37.227058, 35.190773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724686, 37.370071, 35.198116>,  <35.045681, 37.608425, 35.210354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724686, 37.370071, 35.198116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310816, -0.373709, -0.873919,
		0.509320, -0.710819, 0.485107,
		-0.802488, -0.595884, -0.030596,
		34.483940, 37.191307, 35.188938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267021, 36.876640, 34.996078>,  <35.045681, 37.608425, 35.210354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267021, 36.876640, 34.996078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906342, 36.990955, 34.866299>,  <34.689934, 37.059544, 34.788433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906342, 36.990955, 34.866299>,  <35.267021, 36.876640, 34.996078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906342, 36.990955, 34.866299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292149, -0.150455, -0.944464,
		-0.318731, -0.946408, 0.052172,
		-0.901698, 0.285788, -0.324446,
		34.635834, 37.076691, 34.768967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091484, 36.524448, 34.477154>,  <35.267021, 36.876640, 34.996078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091484, 36.524448, 34.477154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840694, 36.830406, 34.418053>,  <34.690220, 37.013981, 34.382591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840694, 36.830406, 34.418053>,  <35.091484, 36.524448, 34.477154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840694, 36.830406, 34.418053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107069, -0.103256, -0.988876,
		-0.771645, -0.635822, -0.017157,
		-0.626977, 0.764898, -0.147754,
		34.652603, 37.059875, 34.373726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260868, 36.422703, 34.167366>,  <35.091484, 36.524448, 34.477154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260868, 36.422703, 34.167366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413757, 36.777298, 34.063030>,  <34.505493, 36.990055, 34.000431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413757, 36.777298, 34.063030>,  <34.260868, 36.422703, 34.167366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413757, 36.777298, 34.063030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081035, -0.249026, -0.965101,
		-0.920508, 0.390025, -0.023348,
		0.382227, 0.886491, -0.260836,
		34.528427, 37.043247, 33.984779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980309, 36.655674, 33.446339>,  <34.260868, 36.422703, 34.167366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980309, 36.655674, 33.446339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311893, 36.879375, 33.449326>,  <34.510845, 37.013596, 33.451118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311893, 36.879375, 33.449326>,  <33.980309, 36.655674, 33.446339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311893, 36.879375, 33.449326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036339, 0.067171, -0.997080,
		-0.558123, 0.826270, 0.076005,
		0.828962, 0.559255, 0.007464,
		34.560581, 37.047153, 33.451565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916969, 37.324764, 33.084682>,  <33.980309, 36.655674, 33.446339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916969, 37.324764, 33.084682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304455, 37.226067, 33.074055>,  <34.536945, 37.166847, 33.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304455, 37.226067, 33.074055>,  <33.916969, 37.324764, 33.084682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304455, 37.226067, 33.074055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008927, 0.141623, -0.989881,
		0.248006, 0.958677, 0.139395,
		0.968717, -0.246741, -0.026565,
		34.595070, 37.152046, 33.066086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173431, 37.825497, 32.718437>,  <33.916969, 37.324764, 33.084682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173431, 37.825497, 32.718437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428402, 37.518341, 32.693039>,  <34.581383, 37.334045, 32.677799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428402, 37.518341, 32.693039>,  <34.173431, 37.825497, 32.718437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428402, 37.518341, 32.693039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051593, 0.039691, -0.997879,
		0.768785, 0.639347, -0.014318,
		0.637423, -0.767893, -0.063499,
		34.619629, 37.287971, 32.673988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542976, 38.054131, 32.119480>,  <34.173431, 37.825497, 32.718437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542976, 38.054131, 32.119480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637909, 37.668549, 32.167591>,  <34.694866, 37.437199, 32.196457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637909, 37.668549, 32.167591>,  <34.542976, 38.054131, 32.119480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637909, 37.668549, 32.167591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216176, -0.068306, -0.973962,
		0.947071, 0.257152, 0.192173,
		0.237329, -0.963954, 0.120281,
		34.709106, 37.379364, 32.203674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294846, 37.921085, 31.881012>,  <34.542976, 38.054131, 32.119480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294846, 37.921085, 31.881012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073463, 37.588120, 31.869890>,  <34.940636, 37.388340, 31.863216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073463, 37.588120, 31.869890>,  <35.294846, 37.921085, 31.881012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073463, 37.588120, 31.869890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119577, -0.046379, -0.991741,
		0.824250, -0.552209, 0.125206,
		-0.553456, -0.832414, -0.027804,
		34.907425, 37.338394, 31.861549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700531, 37.510029, 31.451607>,  <35.294846, 37.921085, 31.881012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700531, 37.510029, 31.451607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328621, 37.363434, 31.465511>,  <35.105476, 37.275478, 31.473854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328621, 37.363434, 31.465511>,  <35.700531, 37.510029, 31.451607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328621, 37.363434, 31.465511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028885, -0.166760, -0.985574,
		0.366996, -0.915357, 0.165635,
		-0.929774, -0.366486, 0.034760,
		35.049690, 37.253487, 31.475939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746696, 37.108562, 30.943439>,  <35.700531, 37.510029, 31.451607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746696, 37.108562, 30.943439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349632, 37.110146, 30.991779>,  <35.111393, 37.111095, 31.020782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349632, 37.110146, 30.991779>,  <35.746696, 37.108562, 30.943439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349632, 37.110146, 30.991779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120629, 0.035997, -0.992045,
		-0.008280, -0.999344, -0.035255,
		-0.992663, 0.003961, 0.120847,
		35.051834, 37.111332, 31.028034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492538, 36.578480, 30.487574>,  <35.746696, 37.108562, 30.943439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492538, 36.578480, 30.487574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201187, 36.843861, 30.556030>,  <35.026375, 37.003090, 30.597105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201187, 36.843861, 30.556030>,  <35.492538, 36.578480, 30.487574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201187, 36.843861, 30.556030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181021, 0.054569, -0.981964,
		-0.660825, -0.746227, 0.080352,
		-0.728383, 0.663452, 0.171143,
		34.982674, 37.042896, 30.607374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034737, 36.431313, 29.939646>,  <35.492538, 36.578480, 30.487574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034737, 36.431313, 29.939646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893421, 36.782478, 30.068924>,  <34.808632, 36.993176, 30.146492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893421, 36.782478, 30.068924>,  <35.034737, 36.431313, 29.939646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893421, 36.782478, 30.068924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300612, 0.220619, -0.927879,
		-0.885899, -0.424969, 0.185968,
		-0.353291, 0.877912, 0.323197,
		34.787434, 37.045853, 30.165884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408573, 36.454983, 29.671516>,  <35.034737, 36.431313, 29.939646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408573, 36.454983, 29.671516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511555, 36.835220, 29.740910>,  <34.573345, 37.063362, 29.782545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511555, 36.835220, 29.740910>,  <34.408573, 36.454983, 29.671516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511555, 36.835220, 29.740910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067609, 0.161376, -0.984574,
		-0.963923, 0.265210, -0.022722,
		0.257453, 0.950590, 0.173485,
		34.588791, 37.120396, 29.792955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017746, 36.904797, 29.209139>,  <34.408573, 36.454983, 29.671516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017746, 36.904797, 29.209139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317467, 37.149544, 29.310461>,  <34.497299, 37.296391, 29.371254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317467, 37.149544, 29.310461>,  <34.017746, 36.904797, 29.209139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317467, 37.149544, 29.310461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030527, 0.350184, -0.936184,
		-0.661520, 0.709221, 0.243717,
		0.749306, 0.611864, 0.253303,
		34.542259, 37.333103, 29.386452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849400, 37.534271, 28.952171>,  <34.017746, 36.904797, 29.209139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849400, 37.534271, 28.952171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246399, 37.534157, 29.001072>,  <34.484600, 37.534088, 29.030413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246399, 37.534157, 29.001072>,  <33.849400, 37.534271, 28.952171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246399, 37.534157, 29.001072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114990, 0.341781, -0.932718,
		-0.041515, 0.939780, 0.339250,
		0.992499, -0.000289, 0.122254,
		34.544147, 37.534069, 29.037748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093033, 38.250145, 28.784315>,  <33.849400, 37.534271, 28.952171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093033, 38.250145, 28.784315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395859, 37.992088, 28.743034>,  <34.577553, 37.837254, 28.718266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395859, 37.992088, 28.743034>,  <34.093033, 38.250145, 28.784315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395859, 37.992088, 28.743034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142282, 0.316966, -0.937704,
		0.637663, 0.695216, 0.331755,
		0.757062, -0.645141, -0.103201,
		34.622978, 37.798546, 28.712074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514744, 38.680141, 28.468098>,  <34.093033, 38.250145, 28.784315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514744, 38.680141, 28.468098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627781, 38.304092, 28.391878>,  <34.695602, 38.078461, 28.346146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627781, 38.304092, 28.391878>,  <34.514744, 38.680141, 28.468098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627781, 38.304092, 28.391878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163486, 0.242943, -0.956165,
		0.945207, 0.239050, 0.222351,
		0.282590, -0.940124, -0.190550,
		34.712559, 38.022057, 28.334713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229279, 38.769802, 28.091696>,  <34.514744, 38.680141, 28.468098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229279, 38.769802, 28.091696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096184, 38.404888, 27.996181>,  <35.016327, 38.185940, 27.938873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096184, 38.404888, 27.996181>,  <35.229279, 38.769802, 28.091696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096184, 38.404888, 27.996181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093910, 0.219901, -0.970992,
		0.938332, -0.345510, 0.012503,
		-0.332738, -0.912286, -0.238787,
		34.996361, 38.131203, 27.924545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637604, 38.647152, 27.645939>,  <35.229279, 38.769802, 28.091696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637604, 38.647152, 27.645939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338253, 38.387524, 27.591337>,  <35.158642, 38.231747, 27.558577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338253, 38.387524, 27.591337>,  <35.637604, 38.647152, 27.645939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338253, 38.387524, 27.591337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009546, 0.216321, -0.976276,
		0.663202, -0.729322, -0.168086,
		-0.748380, -0.649072, -0.136502,
		35.113739, 38.192802, 27.550386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801647, 38.257442, 27.074379>,  <35.637604, 38.647152, 27.645939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801647, 38.257442, 27.074379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402706, 38.228386, 27.075647>,  <35.163342, 38.210953, 27.076408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402706, 38.228386, 27.075647>,  <35.801647, 38.257442, 27.074379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402706, 38.228386, 27.075647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020111, 0.233695, -0.972102,
		0.069874, -0.969593, -0.234538,
		-0.997353, -0.072641, 0.003170,
		35.103500, 38.206593, 27.076599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611923, 37.951023, 26.464499>,  <35.801647, 38.257442, 27.074379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611923, 37.951023, 26.464499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258774, 38.104221, 26.573198>,  <35.046883, 38.196140, 26.638418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258774, 38.104221, 26.573198>,  <35.611923, 37.951023, 26.464499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258774, 38.104221, 26.573198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243732, 0.120918, -0.962275,
		-0.401403, -0.915803, -0.013408,
		-0.882876, 0.382993, 0.271747,
		34.993912, 38.219120, 26.654722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143669, 37.613731, 26.129930>,  <35.611923, 37.951023, 26.464499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143669, 37.613731, 26.129930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963894, 37.963886, 26.201153>,  <34.856030, 38.173981, 26.243887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963894, 37.963886, 26.201153>,  <35.143669, 37.613731, 26.129930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963894, 37.963886, 26.201153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096077, 0.150799, -0.983885,
		-0.888129, -0.459303, 0.016330,
		-0.449439, 0.875386, 0.178058,
		34.829063, 38.226501, 26.254570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714371, 37.572079, 25.667864>,  <35.143669, 37.613731, 26.129930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714371, 37.572079, 25.667864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674889, 37.953495, 25.781717>,  <34.651199, 38.182346, 25.850029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674889, 37.953495, 25.781717>,  <34.714371, 37.572079, 25.667864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674889, 37.953495, 25.781717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256376, 0.252006, -0.933148,
		-0.961524, -0.165079, 0.219591,
		-0.098705, 0.953542, 0.284632,
		34.645275, 38.239559, 25.867107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968338, 37.836353, 25.530312>,  <34.714371, 37.572079, 25.667864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968338, 37.836353, 25.530312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221836, 38.144592, 25.557289>,  <34.373936, 38.329536, 25.573475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221836, 38.144592, 25.557289>,  <33.968338, 37.836353, 25.530312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221836, 38.144592, 25.557289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471197, 0.453710, -0.756387,
		-0.613471, 0.447574, 0.650639,
		0.633740, 0.770600, 0.067442,
		34.411957, 38.375771, 25.577522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515659, 38.231510, 25.215557>,  <33.968338, 37.836353, 25.530312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515659, 38.231510, 25.215557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864727, 38.426735, 25.221699>,  <34.074169, 38.543869, 25.225384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864727, 38.426735, 25.221699>,  <33.515659, 38.231510, 25.215557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864727, 38.426735, 25.221699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257977, 0.487514, -0.834133,
		-0.414598, 0.723963, 0.551350,
		0.872672, 0.488066, 0.015356,
		34.126530, 38.573154, 25.226305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253544, 38.844814, 25.086519>,  <33.515659, 38.231510, 25.215557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253544, 38.844814, 25.086519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646835, 38.847309, 25.013615>,  <33.882812, 38.848808, 24.969872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646835, 38.847309, 25.013615>,  <33.253544, 38.844814, 25.086519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646835, 38.847309, 25.013615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168891, 0.408218, -0.897125,
		0.068805, 0.912863, 0.402426,
		0.983230, 0.006239, -0.182262,
		33.941803, 38.849182, 24.958937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399860, 39.564507, 24.790155>,  <33.253544, 38.844814, 25.086519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399860, 39.564507, 24.790155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700970, 39.336140, 24.659073>,  <33.881634, 39.199120, 24.580423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700970, 39.336140, 24.659073>,  <33.399860, 39.564507, 24.790155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700970, 39.336140, 24.659073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040926, 0.537447, -0.842304,
		0.657010, 0.620650, 0.427939,
		0.752771, -0.570916, -0.327707,
		33.926800, 39.164864, 24.560760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907375, 40.020309, 24.750710>,  <33.399860, 39.564507, 24.790155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907375, 40.020309, 24.750710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016308, 39.716820, 24.514009>,  <34.081665, 39.534725, 24.371988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016308, 39.716820, 24.514009>,  <33.907375, 40.020309, 24.750710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016308, 39.716820, 24.514009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002074, 0.615457, -0.788168,
		0.962202, 0.213413, 0.169180,
		0.272328, -0.758728, -0.591751,
		34.098007, 39.489201, 24.336485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568317, 40.212601, 24.386082>,  <33.907375, 40.020309, 24.750710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568317, 40.212601, 24.386082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397911, 39.927212, 24.163561>,  <34.295670, 39.755978, 24.030048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397911, 39.927212, 24.163561>,  <34.568317, 40.212601, 24.386082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397911, 39.927212, 24.163561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020196, 0.607240, -0.794262,
		0.904492, -0.349601, -0.244283,
		-0.426013, -0.713470, -0.556304,
		34.270107, 39.713169, 23.996670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031555, 40.191807, 23.771603>,  <34.568317, 40.212601, 24.386082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031555, 40.191807, 23.771603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684887, 40.019196, 23.671471>,  <34.476887, 39.915627, 23.611391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684887, 40.019196, 23.671471>,  <35.031555, 40.191807, 23.771603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684887, 40.019196, 23.671471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133835, 0.282277, -0.949952,
		0.480599, -0.856795, -0.186886,
		-0.866668, -0.431534, -0.250331,
		34.424885, 39.889736, 23.596371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182579, 39.980545, 23.113876>,  <35.031555, 40.191807, 23.771603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182579, 39.980545, 23.113876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784592, 39.941460, 23.122700>,  <34.545799, 39.918007, 23.127995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784592, 39.941460, 23.122700>,  <35.182579, 39.980545, 23.113876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784592, 39.941460, 23.122700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036329, 0.146769, -0.988503,
		0.093352, -0.984333, -0.149580,
		-0.994970, -0.097713, 0.022058,
		34.486099, 39.912144, 23.129316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995049, 39.437222, 22.595331>,  <35.182579, 39.980545, 23.113876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995049, 39.437222, 22.595331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678921, 39.677086, 22.645607>,  <34.489243, 39.821003, 22.675772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678921, 39.677086, 22.645607>,  <34.995049, 39.437222, 22.595331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678921, 39.677086, 22.645607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055248, 0.134557, -0.989365,
		-0.610196, -0.788861, -0.073213,
		-0.790322, 0.599661, 0.125689,
		34.441826, 39.856983, 22.683313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580208, 39.320488, 21.963800>,  <34.995049, 39.437222, 22.595331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580208, 39.320488, 21.963800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448345, 39.673317, 22.098425>,  <34.369228, 39.885014, 22.179199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448345, 39.673317, 22.098425>,  <34.580208, 39.320488, 21.963800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448345, 39.673317, 22.098425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093298, 0.324309, -0.941339,
		-0.939480, -0.341719, -0.024615,
		-0.329656, 0.882073, 0.336563,
		34.349449, 39.937939, 22.199394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053696, 39.518764, 21.516941>,  <34.580208, 39.320488, 21.963800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053696, 39.518764, 21.516941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191296, 39.855755, 21.682781>,  <34.273857, 40.057949, 21.782286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191296, 39.855755, 21.682781>,  <34.053696, 39.518764, 21.516941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191296, 39.855755, 21.682781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030034, 0.431450, -0.901637,
		-0.938488, 0.322618, 0.123117,
		0.344003, 0.842478, 0.414600,
		34.294495, 40.108498, 21.807161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670174, 39.928131, 21.247517>,  <34.053696, 39.518764, 21.516941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670174, 39.928131, 21.247517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961349, 40.178337, 21.359827>,  <34.136055, 40.328461, 21.427214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961349, 40.178337, 21.359827>,  <33.670174, 39.928131, 21.247517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961349, 40.178337, 21.359827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163946, 0.238835, -0.957120,
		-0.665751, 0.742759, 0.071307,
		0.727940, 0.625513, 0.280777,
		34.179733, 40.365990, 21.444059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569252, 40.496296, 20.815706>,  <33.670174, 39.928131, 21.247517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569252, 40.496296, 20.815706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935913, 40.558285, 20.963072>,  <34.155910, 40.595478, 21.051491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935913, 40.558285, 20.963072>,  <33.569252, 40.496296, 20.815706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935913, 40.558285, 20.963072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220597, 0.572488, -0.789680,
		-0.333287, 0.805135, 0.490589,
		0.916655, 0.154968, 0.368413,
		34.210911, 40.604774, 21.073595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623100, 41.201153, 20.786552>,  <33.569252, 40.496296, 20.815706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623100, 41.201153, 20.786552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986862, 41.035038, 20.795721>,  <34.205120, 40.935371, 20.801222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986862, 41.035038, 20.795721>,  <33.623100, 41.201153, 20.786552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986862, 41.035038, 20.795721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312453, 0.645769, -0.696675,
		0.274516, 0.640720, 0.717021,
		0.909403, -0.415284, 0.022921,
		34.259682, 40.910454, 20.802597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094807, 41.788811, 20.949854>,  <33.623100, 41.201153, 20.786552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094807, 41.788811, 20.949854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320587, 41.517490, 20.761683>,  <34.456055, 41.354698, 20.648779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320587, 41.517490, 20.761683>,  <34.094807, 41.788811, 20.949854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320587, 41.517490, 20.761683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224974, 0.674732, -0.702939,
		0.794215, 0.290943, 0.533455,
		0.564454, -0.678299, -0.470428,
		34.489922, 41.313999, 20.620554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727440, 42.097767, 20.754660>,  <34.094807, 41.788811, 20.949854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727440, 42.097767, 20.754660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734344, 41.772911, 20.521374>,  <34.738487, 41.577999, 20.381403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734344, 41.772911, 20.521374>,  <34.727440, 42.097767, 20.754660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734344, 41.772911, 20.521374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235752, 0.570161, -0.786979,
		0.971660, -0.123908, 0.201306,
		0.017264, -0.812135, -0.583214,
		34.739525, 41.529270, 20.346409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360603, 42.172001, 20.418112>,  <34.727440, 42.097767, 20.754660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360603, 42.172001, 20.418112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140972, 41.942120, 20.175383>,  <35.009193, 41.804192, 20.029745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140972, 41.942120, 20.175383>,  <35.360603, 42.172001, 20.418112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140972, 41.942120, 20.175383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470998, 0.387013, -0.792705,
		0.690418, -0.721067, 0.058184,
		-0.549076, -0.574702, -0.606822,
		34.976250, 41.769711, 19.993336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747040, 41.935028, 19.831186>,  <35.360603, 42.172001, 20.418112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747040, 41.935028, 19.831186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368729, 41.925262, 19.701632>,  <35.141743, 41.919403, 19.623898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368729, 41.925262, 19.701632>,  <35.747040, 41.935028, 19.831186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368729, 41.925262, 19.701632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284840, 0.416891, -0.863173,
		0.156096, -0.908629, -0.387334,
		-0.945780, -0.024410, -0.323889,
		35.084995, 41.917938, 19.604465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780014, 41.798187, 19.154245>,  <35.747040, 41.935028, 19.831186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780014, 41.798187, 19.154245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400265, 41.923779, 19.158453>,  <35.172417, 41.999134, 19.160976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400265, 41.923779, 19.158453>,  <35.780014, 41.798187, 19.154245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400265, 41.923779, 19.158453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146175, 0.471128, -0.869869,
		-0.278076, -0.824291, -0.493171,
		-0.949372, 0.313979, 0.010518,
		35.115452, 42.017971, 19.161608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527294, 41.758621, 18.496143>,  <35.780014, 41.798187, 19.154245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527294, 41.758621, 18.496143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248428, 42.000156, 18.650721>,  <35.081108, 42.145077, 18.743467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248428, 42.000156, 18.650721>,  <35.527294, 41.758621, 18.496143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248428, 42.000156, 18.650721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004960, 0.543088, -0.839661,
		-0.716896, -0.583463, -0.381615,
		-0.697162, 0.603843, 0.386444,
		35.039280, 42.181309, 18.766653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078148, 41.891098, 17.963888>,  <35.527294, 41.758621, 18.496143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078148, 41.891098, 17.963888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014378, 42.183086, 18.229738>,  <34.976116, 42.358280, 18.389248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014378, 42.183086, 18.229738>,  <35.078148, 41.891098, 17.963888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014378, 42.183086, 18.229738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005165, 0.672609, -0.739980,
		-0.987197, -0.121401, -0.103458,
		-0.159421, 0.729972, 0.664624,
		34.966553, 42.402077, 18.429125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514145, 42.286938, 17.687603>,  <35.078148, 41.891098, 17.963888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514145, 42.286938, 17.687603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695656, 42.528263, 17.949930>,  <34.804562, 42.673058, 18.107327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695656, 42.528263, 17.949930>,  <34.514145, 42.286938, 17.687603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695656, 42.528263, 17.949930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133589, 0.681581, -0.719445,
		-0.881044, 0.414079, 0.228690,
		0.453778, 0.603313, 0.655819,
		34.831791, 42.709255, 18.146675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277409, 42.968578, 17.546429>,  <34.514145, 42.286938, 17.687603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277409, 42.968578, 17.546429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625164, 43.012218, 17.739201>,  <34.833817, 43.038403, 17.854864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625164, 43.012218, 17.739201>,  <34.277409, 42.968578, 17.546429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625164, 43.012218, 17.739201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197132, 0.817765, -0.540740,
		-0.453099, 0.565119, 0.689450,
		0.869390, 0.109096, 0.481932,
		34.885983, 43.044949, 17.883780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407784, 43.609871, 17.764961>,  <34.277409, 42.968578, 17.546429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407784, 43.609871, 17.764961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789627, 43.490761, 17.767746>,  <35.018734, 43.419292, 17.769417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789627, 43.490761, 17.767746>,  <34.407784, 43.609871, 17.764961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789627, 43.490761, 17.767746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271588, 0.860582, -0.430859,
		0.122310, 0.413192, 0.902393,
		0.954610, -0.297778, 0.006961,
		35.076012, 43.401428, 17.769835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903118, 44.095512, 17.914709>,  <34.407784, 43.609871, 17.764961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903118, 44.095512, 17.914709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126503, 43.840481, 17.702442>,  <35.260532, 43.687462, 17.575081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126503, 43.840481, 17.702442>,  <34.903118, 44.095512, 17.914709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126503, 43.840481, 17.702442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509510, 0.768473, -0.387103,
		0.654614, -0.054199, 0.754018,
		0.558462, -0.637583, -0.530668,
		35.294041, 43.649204, 17.543242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972446, 44.295555, 18.662502>,  <34.903118, 44.095512, 17.914709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972446, 44.295555, 18.662502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160435, 44.630371, 18.774563>,  <35.273228, 44.831261, 18.841799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160435, 44.630371, 18.774563>,  <34.972446, 44.295555, 18.662502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160435, 44.630371, 18.774563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034889, 0.334757, -0.941658,
		-0.881991, 0.432779, 0.186531,
		0.469973, 0.837042, 0.280154,
		35.301426, 44.881485, 18.858608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573990, 44.738098, 18.358257>,  <34.972446, 44.295555, 18.662502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573990, 44.738098, 18.358257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928181, 44.915890, 18.412474>,  <35.140694, 45.022564, 18.445004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928181, 44.915890, 18.412474>,  <34.573990, 44.738098, 18.358257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928181, 44.915890, 18.412474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054772, 0.389484, -0.919403,
		-0.461444, 0.806686, 0.369224,
		0.885477, 0.444476, 0.135541,
		35.193825, 45.049232, 18.453136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552361, 45.448376, 18.263083>,  <34.573990, 44.738098, 18.358257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552361, 45.448376, 18.263083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920570, 45.321239, 18.172211>,  <35.141495, 45.244957, 18.117687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920570, 45.321239, 18.172211>,  <34.552361, 45.448376, 18.263083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920570, 45.321239, 18.172211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156226, 0.233511, -0.959722,
		0.358088, 0.918939, 0.165297,
		0.920525, -0.317841, -0.227179,
		35.196728, 45.225887, 18.104057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135151, 46.006218, 17.960646>,  <34.552361, 45.448376, 18.263083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135151, 46.006218, 17.960646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147980, 45.630547, 17.823877>,  <35.155678, 45.405144, 17.741816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147980, 45.630547, 17.823877>,  <35.135151, 46.006218, 17.960646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147980, 45.630547, 17.823877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227678, 0.326237, -0.917460,
		0.973208, 0.107275, -0.203367,
		0.032075, -0.939181, -0.341921,
		35.157600, 45.348793, 17.721302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742901, 45.780388, 18.364986>,  <35.135151, 46.006218, 17.960646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742901, 45.780388, 18.364986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601498, 45.603203, 18.035425>,  <35.516655, 45.496891, 17.837688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601498, 45.603203, 18.035425>,  <35.742901, 45.780388, 18.364986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601498, 45.603203, 18.035425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897227, 0.088580, -0.432594,
		0.264603, -0.892155, 0.366121,
		-0.353510, -0.442959, -0.823904,
		35.495445, 45.470314, 17.788254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392357, 45.580879, 18.648069>,  <35.742901, 45.780388, 18.364986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392357, 45.580879, 18.648069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028519, 45.426174, 18.587326>,  <35.810215, 45.333351, 18.550880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028519, 45.426174, 18.587326>,  <36.392357, 45.580879, 18.648069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028519, 45.426174, 18.587326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099655, -0.151749, 0.983382,
		-0.403376, 0.909610, 0.099487,
		-0.909592, -0.386758, -0.151860,
		35.755642, 45.310146, 18.541769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014629, 45.956955, 19.152832>,  <36.392357, 45.580879, 18.648069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014629, 45.956955, 19.152832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804333, 45.627495, 19.067791>,  <35.678154, 45.429821, 19.016768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804333, 45.627495, 19.067791>,  <36.014629, 45.956955, 19.152832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804333, 45.627495, 19.067791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178227, -0.137723, 0.974304,
		-0.831761, 0.550127, -0.074389,
		-0.525746, -0.823646, -0.212600,
		35.646610, 45.380402, 19.004011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388939, 45.987244, 19.553396>,  <36.014629, 45.956955, 19.152832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388939, 45.987244, 19.553396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436909, 45.603779, 19.450176>,  <35.465691, 45.373699, 19.388245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436909, 45.603779, 19.450176>,  <35.388939, 45.987244, 19.553396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436909, 45.603779, 19.450176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219286, -0.279084, 0.934893,
		-0.968262, -0.055533, -0.243691,
		0.119928, -0.958659, -0.258049,
		35.472889, 45.316181, 19.372761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803417, 45.610367, 19.975538>,  <35.388939, 45.987244, 19.553396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803417, 45.610367, 19.975538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072559, 45.330708, 19.878828>,  <35.234043, 45.162910, 19.820803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072559, 45.330708, 19.878828>,  <34.803417, 45.610367, 19.975538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072559, 45.330708, 19.878828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162114, -0.458229, 0.873925,
		-0.721794, -0.548829, -0.421663,
		0.672854, -0.699152, -0.241774,
		35.274414, 45.120964, 19.806295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542919, 45.056076, 20.141090>,  <34.803417, 45.610367, 19.975538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542919, 45.056076, 20.141090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932896, 44.967186, 20.136806>,  <35.166882, 44.913853, 20.134237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932896, 44.967186, 20.136806>,  <34.542919, 45.056076, 20.141090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932896, 44.967186, 20.136806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114327, -0.541712, 0.832753,
		-0.190855, -0.810658, -0.553541,
		0.974938, -0.222220, -0.010708,
		35.225376, 44.900520, 20.133595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547173, 44.338398, 20.452566>,  <34.542919, 45.056076, 20.141090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547173, 44.338398, 20.452566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938946, 44.418552, 20.461926>,  <35.174011, 44.466644, 20.467541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938946, 44.418552, 20.461926>,  <34.547173, 44.338398, 20.452566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938946, 44.418552, 20.461926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093521, -0.553711, 0.827441,
		0.178764, -0.808239, -0.561065,
		0.979437, 0.200388, 0.023396,
		35.232777, 44.478668, 20.468945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790359, 43.735222, 20.654686>,  <34.547173, 44.338398, 20.452566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790359, 43.735222, 20.654686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096840, 43.984852, 20.715965>,  <35.280727, 44.134628, 20.752733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096840, 43.984852, 20.715965>,  <34.790359, 43.735222, 20.654686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096840, 43.984852, 20.715965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264547, -0.523601, 0.809850,
		0.585618, -0.579982, -0.566280,
		0.766203, 0.624070, 0.153197,
		35.326702, 44.172073, 20.761925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507862, 43.454063, 20.635054>,  <34.790359, 43.735222, 20.654686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507862, 43.454063, 20.635054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522152, 43.773003, 20.876041>,  <35.530724, 43.964367, 21.020634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522152, 43.773003, 20.876041>,  <35.507862, 43.454063, 20.635054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522152, 43.773003, 20.876041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386233, -0.567024, 0.727535,
		0.921709, 0.206705, -0.328215,
		0.035721, 0.797344, 0.602468,
		35.532867, 44.012207, 21.056782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896370, 43.264187, 21.099371>,  <35.507862, 43.454063, 20.635054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896370, 43.264187, 21.099371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792274, 43.600933, 21.288492>,  <35.729816, 43.802979, 21.401964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792274, 43.600933, 21.288492>,  <35.896370, 43.264187, 21.099371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792274, 43.600933, 21.288492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375370, -0.362942, 0.852860,
		0.889591, 0.399423, -0.221559,
		-0.260239, 0.841863, 0.472802,
		35.714203, 43.853493, 21.430332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478882, 43.548122, 21.512379>,  <35.896370, 43.264187, 21.099371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478882, 43.548122, 21.512379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150349, 43.648376, 21.717352>,  <35.953228, 43.708527, 21.840336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150349, 43.648376, 21.717352>,  <36.478882, 43.548122, 21.512379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150349, 43.648376, 21.717352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382283, -0.424911, 0.820555,
		0.423396, 0.869847, 0.253183,
		-0.821337, 0.250633, 0.512433,
		35.903946, 43.723568, 21.871082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749615, 43.774708, 22.125694>,  <36.478882, 43.548122, 21.512379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749615, 43.774708, 22.125694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359005, 43.713806, 22.186638>,  <36.124638, 43.677265, 22.223204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359005, 43.713806, 22.186638>,  <36.749615, 43.774708, 22.125694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359005, 43.713806, 22.186638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204002, -0.426749, 0.881061,
		-0.069126, 0.891461, 0.447793,
		-0.976527, -0.152255, 0.152361,
		36.066048, 43.668129, 22.232346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698639, 43.862644, 22.790899>,  <36.749615, 43.774708, 22.125694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698639, 43.862644, 22.790899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350235, 43.679119, 22.720654>,  <36.141193, 43.569004, 22.678507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350235, 43.679119, 22.720654>,  <36.698639, 43.862644, 22.790899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350235, 43.679119, 22.720654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048072, -0.435350, 0.898977,
		-0.488914, 0.774572, 0.401248,
		-0.871006, -0.458811, -0.175613,
		36.088932, 43.541477, 22.667969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301929, 43.901684, 23.389463>,  <36.698639, 43.862644, 22.790899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301929, 43.901684, 23.389463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134357, 43.590336, 23.202429>,  <36.033813, 43.403526, 23.090208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134357, 43.590336, 23.202429>,  <36.301929, 43.901684, 23.389463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134357, 43.590336, 23.202429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030906, -0.502432, 0.864065,
		-0.907491, 0.376436, 0.186429,
		-0.418933, -0.778369, -0.467586,
		36.008678, 43.356827, 23.062153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695034, 43.618412, 23.795961>,  <36.301929, 43.901684, 23.389463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695034, 43.618412, 23.795961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819736, 43.307316, 23.577631>,  <35.894558, 43.120659, 23.446632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819736, 43.307316, 23.577631>,  <35.695034, 43.618412, 23.795961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819736, 43.307316, 23.577631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162754, -0.609675, 0.775763,
		-0.936119, -0.153013, -0.316650,
		0.311756, -0.777743, -0.545825,
		35.913261, 43.073994, 23.413883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271816, 43.165600, 23.923506>,  <35.695034, 43.618412, 23.795961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271816, 43.165600, 23.923506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528328, 42.900902, 23.768147>,  <35.682236, 42.742085, 23.674931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528328, 42.900902, 23.768147>,  <35.271816, 43.165600, 23.923506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528328, 42.900902, 23.768147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205543, -0.635834, 0.743954,
		-0.739265, -0.397249, -0.543764,
		0.641279, -0.661747, -0.388398,
		35.720711, 42.702377, 23.651627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930523, 42.422714, 23.851118>,  <35.271816, 43.165600, 23.923506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930523, 42.422714, 23.851118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328869, 42.386497, 23.854023>,  <35.567875, 42.364769, 23.855766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328869, 42.386497, 23.854023>,  <34.930523, 42.422714, 23.851118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328869, 42.386497, 23.854023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071454, -0.731533, 0.678052,
		-0.056077, -0.675768, -0.734979,
		0.995866, -0.090540, 0.007264,
		35.627628, 42.359337, 23.856203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015469, 41.675179, 23.845387>,  <34.930523, 42.422714, 23.851118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015469, 41.675179, 23.845387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338329, 41.857929, 23.994925>,  <35.532047, 41.967579, 24.084648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338329, 41.857929, 23.994925>,  <35.015469, 41.675179, 23.845387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338329, 41.857929, 23.994925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049766, -0.578358, 0.814264,
		0.588237, -0.675843, -0.444088,
		0.807156, 0.456880, 0.373846,
		35.580475, 41.994991, 24.107079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425911, 41.194065, 24.142675>,  <35.015469, 41.675179, 23.845387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425911, 41.194065, 24.142675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577076, 41.514820, 24.327787>,  <35.667774, 41.707272, 24.438854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577076, 41.514820, 24.327787>,  <35.425911, 41.194065, 24.142675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577076, 41.514820, 24.327787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091184, -0.529655, 0.843298,
		0.921340, -0.276495, -0.273282,
		0.377912, 0.801883, 0.462781,
		35.690449, 41.755386, 24.466621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979065, 40.921665, 24.450365>,  <35.425911, 41.194065, 24.142675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979065, 40.921665, 24.450365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902088, 41.261848, 24.646200>,  <35.855904, 41.465958, 24.763700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902088, 41.261848, 24.646200>,  <35.979065, 40.921665, 24.450365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902088, 41.261848, 24.646200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182357, -0.459230, 0.869398,
		0.964217, 0.256585, -0.066713,
		-0.192438, 0.850454, 0.489588,
		35.844357, 41.516983, 24.793076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412823, 40.823292, 25.065147>,  <35.979065, 40.921665, 24.450365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412823, 40.823292, 25.065147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169933, 41.129440, 25.150457>,  <36.024200, 41.313129, 25.201643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169933, 41.129440, 25.150457>,  <36.412823, 40.823292, 25.065147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169933, 41.129440, 25.150457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006918, -0.263324, 0.964683,
		0.794498, 0.587257, 0.154602,
		-0.607227, 0.765369, 0.213273,
		35.987766, 41.359051, 25.214439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705776, 41.172432, 25.669516>,  <36.412823, 40.823292, 25.065147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705776, 41.172432, 25.669516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330791, 41.310268, 25.689178>,  <36.105801, 41.392971, 25.700975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330791, 41.310268, 25.689178>,  <36.705776, 41.172432, 25.669516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330791, 41.310268, 25.689178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087809, 0.097470, 0.991357,
		0.336817, 0.933680, -0.121633,
		-0.937466, 0.344587, 0.049156,
		36.049553, 41.413643, 25.703926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680611, 41.613857, 26.169176>,  <36.705776, 41.172432, 25.669516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680611, 41.613857, 26.169176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292717, 41.516682, 26.178989>,  <36.059982, 41.458378, 26.184877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292717, 41.516682, 26.178989>,  <36.680611, 41.613857, 26.169176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292717, 41.516682, 26.178989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058725, -0.134512, 0.989170,
		-0.237008, 0.960670, 0.144708,
		-0.969731, -0.242939, 0.024535,
		36.001797, 41.443798, 26.186350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504986, 41.931099, 26.768152>,  <36.680611, 41.613857, 26.169176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504986, 41.931099, 26.768152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199898, 41.676971, 26.719769>,  <36.016846, 41.524494, 26.690739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199898, 41.676971, 26.719769>,  <36.504986, 41.931099, 26.768152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199898, 41.676971, 26.719769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032913, -0.224922, 0.973821,
		-0.645891, 0.738772, 0.192463,
		-0.762720, -0.635316, -0.120960,
		35.971081, 41.486378, 26.683481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112545, 42.175293, 27.310862>,  <36.504986, 41.931099, 26.768152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112545, 42.175293, 27.310862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019978, 41.803211, 27.196899>,  <35.964439, 41.579964, 27.128523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019978, 41.803211, 27.196899>,  <36.112545, 42.175293, 27.310862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019978, 41.803211, 27.196899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040682, -0.283345, 0.958154,
		-0.972004, 0.233321, 0.027727,
		-0.231414, -0.930202, -0.284905,
		35.950554, 41.524151, 27.111427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536980, 41.914021, 27.759260>,  <36.112545, 42.175293, 27.310862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536980, 41.914021, 27.759260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702221, 41.585278, 27.602346>,  <35.801365, 41.388031, 27.508198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702221, 41.585278, 27.602346>,  <35.536980, 41.914021, 27.759260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702221, 41.585278, 27.602346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135827, -0.481546, 0.865831,
		-0.900497, -0.304398, -0.310561,
		0.413106, -0.821861, -0.392285,
		35.826153, 41.338718, 27.484661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066612, 41.474171, 27.907200>,  <35.536980, 41.914021, 27.759260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066612, 41.474171, 27.907200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417538, 41.286060, 27.868929>,  <35.628094, 41.173195, 27.845966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417538, 41.286060, 27.868929>,  <35.066612, 41.474171, 27.907200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417538, 41.286060, 27.868929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153910, -0.464544, 0.872073,
		-0.454545, -0.750368, -0.479935,
		0.877326, -0.470263, -0.095667,
		35.680733, 41.144978, 27.840225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839703, 40.734493, 27.951683>,  <35.066612, 41.474171, 27.907200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839703, 40.734493, 27.951683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234577, 40.763355, 28.008615>,  <35.471500, 40.780674, 28.042776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234577, 40.763355, 28.008615>,  <34.839703, 40.734493, 27.951683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234577, 40.763355, 28.008615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066829, -0.623020, 0.779346,
		0.144911, -0.778871, -0.610214,
		0.987185, 0.072156, 0.142334,
		35.530731, 40.785004, 28.051315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004070, 40.094818, 28.281849>,  <34.839703, 40.734493, 27.951683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004070, 40.094818, 28.281849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341400, 40.302837, 28.336042>,  <35.543797, 40.427647, 28.368559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341400, 40.302837, 28.336042>,  <35.004070, 40.094818, 28.281849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341400, 40.302837, 28.336042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204265, -0.543378, 0.814258,
		0.497069, -0.659010, -0.564472,
		0.843326, 0.520044, 0.135484,
		35.594398, 40.458851, 28.376688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471958, 39.569759, 28.514647>,  <35.004070, 40.094818, 28.281849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471958, 39.569759, 28.514647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616467, 39.921608, 28.638416>,  <35.703171, 40.132717, 28.712679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616467, 39.921608, 28.638416>,  <35.471958, 39.569759, 28.514647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616467, 39.921608, 28.638416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169799, -0.388347, 0.905734,
		0.916870, -0.274677, -0.289658,
		0.361273, 0.879624, 0.309424,
		35.724850, 40.185493, 28.731243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920170, 39.412014, 28.923429>,  <35.471958, 39.569759, 28.514647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920170, 39.412014, 28.923429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866444, 39.790874, 29.039949>,  <35.834209, 40.018192, 29.109861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866444, 39.790874, 29.039949>,  <35.920170, 39.412014, 28.923429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866444, 39.790874, 29.039949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097094, -0.305128, 0.947349,
		0.986170, 0.098960, 0.132946,
		-0.134316, 0.947156, 0.291300,
		35.826149, 40.075020, 29.127338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489208, 39.693768, 29.406139>,  <35.920170, 39.412014, 28.923429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489208, 39.693768, 29.406139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156895, 39.902390, 29.483887>,  <35.957508, 40.027561, 29.530535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156895, 39.902390, 29.483887>,  <36.489208, 39.693768, 29.406139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156895, 39.902390, 29.483887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105103, -0.195921, 0.974971,
		0.546582, 0.830418, 0.107951,
		-0.830783, 0.521556, 0.194366,
		35.907661, 40.058857, 29.542196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665997, 40.092495, 29.986015>,  <36.489208, 39.693768, 29.406139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665997, 40.092495, 29.986015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266171, 40.094700, 29.997627>,  <36.026276, 40.096024, 30.004595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266171, 40.094700, 29.997627>,  <36.665997, 40.092495, 29.986015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266171, 40.094700, 29.997627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029059, 0.005357, 0.999563,
		0.005357, 0.999970, -0.005515,
		-0.999563, 0.005515, 0.029029,
		35.966301, 40.096355, 30.006336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438030, 40.654682, 30.429041>,  <36.665997, 40.092495, 29.986015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438030, 40.654682, 30.429041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125824, 40.405319, 30.410416>,  <35.938499, 40.255703, 30.399240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125824, 40.405319, 30.410416>,  <36.438030, 40.654682, 30.429041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125824, 40.405319, 30.410416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015362, -0.055334, 0.998350,
		-0.624951, 0.779940, 0.033613,
		-0.780513, -0.623403, -0.046562,
		35.891670, 40.218300, 30.396446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961765, 40.876060, 31.002087>,  <36.438030, 40.654682, 30.429041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961765, 40.876060, 31.002087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820957, 40.513153, 30.910036>,  <35.736473, 40.295410, 30.854807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820957, 40.513153, 30.910036>,  <35.961765, 40.876060, 31.002087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820957, 40.513153, 30.910036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357636, -0.096833, 0.928827,
		-0.864975, 0.409263, -0.290384,
		-0.352016, -0.907264, -0.230125,
		35.715351, 40.240974, 30.840998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194061, 40.727669, 31.358847>,  <35.961765, 40.876060, 31.002087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194061, 40.727669, 31.358847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363556, 40.373592, 31.282028>,  <35.465252, 40.161144, 31.235937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363556, 40.373592, 31.282028>,  <35.194061, 40.727669, 31.358847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363556, 40.373592, 31.282028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303102, -0.338371, 0.890862,
		-0.853568, -0.319278, -0.411683,
		0.423734, -0.885193, -0.192049,
		35.490677, 40.108036, 31.224413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734554, 40.165375, 31.556118>,  <35.194061, 40.727669, 31.358847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734554, 40.165375, 31.556118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090519, 39.983185, 31.565876>,  <35.304096, 39.873871, 31.571732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090519, 39.983185, 31.565876>,  <34.734554, 40.165375, 31.556118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090519, 39.983185, 31.565876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207346, -0.356312, 0.911070,
		-0.406278, -0.815832, -0.411528,
		0.889913, -0.455477, 0.024397,
		35.357494, 39.846542, 31.573195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557587, 39.507847, 31.885410>,  <34.734554, 40.165375, 31.556118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557587, 39.507847, 31.885410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938988, 39.580891, 31.981319>,  <35.167828, 39.624718, 32.038864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938988, 39.580891, 31.981319>,  <34.557587, 39.507847, 31.885410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938988, 39.580891, 31.981319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136578, -0.447379, 0.883855,
		0.268671, -0.875503, -0.401635,
		0.953501, 0.182612, 0.239772,
		35.225037, 39.635674, 32.053249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656357, 39.114510, 32.448509>,  <34.557587, 39.507847, 31.885410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656357, 39.114510, 32.448509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995110, 39.326851, 32.461109>,  <35.198360, 39.454254, 32.468670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995110, 39.326851, 32.461109>,  <34.656357, 39.114510, 32.448509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995110, 39.326851, 32.461109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191140, -0.359135, 0.913503,
		0.496250, -0.767604, -0.405611,
		0.846878, 0.530854, 0.031501,
		35.249172, 39.486107, 32.470558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202095, 38.683079, 32.667503>,  <34.656357, 39.114510, 32.448509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202095, 38.683079, 32.667503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328930, 39.057583, 32.728004>,  <35.405029, 39.282284, 32.764305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328930, 39.057583, 32.728004>,  <35.202095, 38.683079, 32.667503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328930, 39.057583, 32.728004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219871, -0.227707, 0.948582,
		0.922558, -0.267526, -0.278058,
		0.317086, 0.936258, 0.151252,
		35.424057, 39.338459, 32.773380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973728, 38.621571, 32.775452>,  <35.202095, 38.683079, 32.667503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973728, 38.621571, 32.775452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851414, 38.969975, 32.929253>,  <35.778027, 39.179016, 33.021534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851414, 38.969975, 32.929253>,  <35.973728, 38.621571, 32.775452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851414, 38.969975, 32.929253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447461, -0.224995, 0.865538,
		0.840402, 0.436715, -0.320943,
		-0.305783, 0.871009, 0.384500,
		35.759678, 39.231277, 33.044601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521450, 38.850761, 33.151535>,  <35.973728, 38.621571, 32.775452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521450, 38.850761, 33.151535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216816, 39.062004, 33.301785>,  <36.034035, 39.188751, 33.391933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216816, 39.062004, 33.301785>,  <36.521450, 38.850761, 33.151535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216816, 39.062004, 33.301785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377215, -0.110074, 0.919561,
		0.526975, 0.842012, -0.115380,
		-0.761581, 0.528109, 0.375626,
		35.988342, 39.220436, 33.414471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705482, 38.413834, 32.444210>,  <36.521450, 38.850761, 33.151535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705482, 38.413834, 32.444210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084438, 38.457584, 32.564537>,  <37.311813, 38.483833, 32.636734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084438, 38.457584, 32.564537>,  <36.705482, 38.413834, 32.444210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084438, 38.457584, 32.564537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132306, 0.721947, -0.679182,
		-0.291456, 0.683250, 0.669495,
		0.947390, 0.109373, 0.300814,
		37.368656, 38.490395, 32.654781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931408, 39.073673, 32.310093>,  <36.705482, 38.413834, 32.444210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931408, 39.073673, 32.310093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281689, 38.890209, 32.370453>,  <37.491856, 38.780128, 32.406670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281689, 38.890209, 32.370453>,  <36.931408, 39.073673, 32.310093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281689, 38.890209, 32.370453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376861, 0.453869, -0.807452,
		0.301861, 0.763957, 0.570307,
		0.875703, -0.458665, 0.150900,
		37.544399, 38.752609, 32.415722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457043, 39.599392, 32.308151>,  <36.931408, 39.073673, 32.310093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457043, 39.599392, 32.308151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634136, 39.251137, 32.222389>,  <37.740391, 39.042183, 32.170933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634136, 39.251137, 32.222389>,  <37.457043, 39.599392, 32.308151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634136, 39.251137, 32.222389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252441, 0.350475, -0.901909,
		0.860384, 0.345180, 0.374953,
		0.442732, -0.870642, -0.214406,
		37.766956, 38.989944, 32.158066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123878, 39.773792, 32.026951>,  <37.457043, 39.599392, 32.308151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123878, 39.773792, 32.026951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100990, 39.392811, 31.907249>,  <38.087257, 39.164223, 31.835428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100990, 39.392811, 31.907249>,  <38.123878, 39.773792, 32.026951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100990, 39.392811, 31.907249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369836, 0.258195, -0.892500,
		0.927333, -0.161747, 0.337478,
		-0.057224, -0.952456, -0.299253,
		38.083824, 39.107075, 31.817474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849930, 39.487911, 31.929182>,  <38.123878, 39.773792, 32.026951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849930, 39.487911, 31.929182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578457, 39.295254, 31.707401>,  <38.415573, 39.179661, 31.574333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578457, 39.295254, 31.707401>,  <38.849930, 39.487911, 31.929182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578457, 39.295254, 31.707401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502117, 0.246654, -0.828879,
		0.535980, -0.840942, 0.074442,
		-0.678678, -0.481641, -0.554453,
		38.374855, 39.150761, 31.541065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260441, 39.466572, 31.418772>,  <38.849930, 39.487911, 31.929182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260441, 39.466572, 31.418772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900669, 39.351284, 31.287340>,  <38.684807, 39.282112, 31.208481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900669, 39.351284, 31.287340>,  <39.260441, 39.466572, 31.418772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900669, 39.351284, 31.287340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233328, 0.319065, -0.918562,
		0.369584, -0.902845, -0.219726,
		-0.899425, -0.288217, -0.328580,
		38.630840, 39.264820, 31.188766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483013, 39.323685, 30.792433>,  <39.260441, 39.466572, 31.418772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483013, 39.323685, 30.792433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083431, 39.320732, 30.774412>,  <38.843681, 39.318962, 30.763599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083431, 39.320732, 30.774412>,  <39.483013, 39.323685, 30.792433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083431, 39.320732, 30.774412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038315, 0.400996, -0.915278,
		0.024821, -0.916050, -0.400295,
		-0.998958, -0.007381, -0.045052,
		38.783745, 39.318520, 30.760897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330502, 39.186840, 30.123816>,  <39.483013, 39.323685, 30.792433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330502, 39.186840, 30.123816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986279, 39.351513, 30.243792>,  <38.779747, 39.450317, 30.315777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986279, 39.351513, 30.243792>,  <39.330502, 39.186840, 30.123816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986279, 39.351513, 30.243792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066617, 0.492838, -0.867568,
		-0.504984, -0.766570, -0.396688,
		-0.860554, 0.411682, 0.299942,
		38.728111, 39.475018, 30.333775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853535, 39.204830, 29.620825>,  <39.330502, 39.186840, 30.123816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853535, 39.204830, 29.620825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684673, 39.483871, 29.852388>,  <38.583355, 39.651295, 29.991327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684673, 39.483871, 29.852388>,  <38.853535, 39.204830, 29.620825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684673, 39.483871, 29.852388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065632, 0.613410, -0.787033,
		-0.904144, -0.370247, -0.213171,
		-0.422157, 0.697600, 0.578911,
		38.558025, 39.693150, 30.026062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201824, 39.433712, 29.247034>,  <38.853535, 39.204830, 29.620825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201824, 39.433712, 29.247034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307262, 39.707699, 29.518723>,  <38.370525, 39.872089, 29.681736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307262, 39.707699, 29.518723>,  <38.201824, 39.433712, 29.247034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307262, 39.707699, 29.518723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097730, 0.719463, -0.687621,
		-0.959669, 0.114876, 0.256591,
		0.263599, 0.684965, 0.679219,
		38.386341, 39.913189, 29.722488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737568, 39.967525, 29.138893>,  <38.201824, 39.433712, 29.247034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737568, 39.967525, 29.138893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056847, 40.142719, 29.304327>,  <38.248413, 40.247837, 29.403587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056847, 40.142719, 29.304327>,  <37.737568, 39.967525, 29.138893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056847, 40.142719, 29.304327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011082, 0.675773, -0.737026,
		-0.602295, 0.592875, 0.534546,
		0.798197, 0.437984, 0.413585,
		38.296307, 40.274113, 29.428402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577354, 40.639778, 29.253740>,  <37.737568, 39.967525, 29.138893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577354, 40.639778, 29.253740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976776, 40.661304, 29.254202>,  <38.216427, 40.674221, 29.254478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976776, 40.661304, 29.254202>,  <37.577354, 40.639778, 29.253740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976776, 40.661304, 29.254202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038514, 0.729280, -0.683131,
		-0.037604, 0.682096, 0.730295,
		0.998550, 0.053815, 0.001154,
		38.276340, 40.677448, 29.254547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782719, 41.384594, 29.263695>,  <37.577354, 40.639778, 29.253740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782719, 41.384594, 29.263695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090260, 41.190929, 29.096628>,  <38.274784, 41.074730, 28.996387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090260, 41.190929, 29.096628>,  <37.782719, 41.384594, 29.263695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090260, 41.190929, 29.096628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031868, 0.681399, -0.731218,
		0.638628, 0.548891, 0.539327,
		0.768856, -0.484163, -0.417668,
		38.320915, 41.045681, 28.971327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221626, 41.953205, 29.073433>,  <37.782719, 41.384594, 29.263695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221626, 41.953205, 29.073433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371502, 41.645184, 28.866888>,  <38.461426, 41.460369, 28.742962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371502, 41.645184, 28.866888>,  <38.221626, 41.953205, 29.073433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371502, 41.645184, 28.866888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030212, 0.546496, -0.836916,
		0.926660, 0.329180, 0.181499,
		0.374685, -0.770053, -0.516361,
		38.483906, 41.414169, 28.711979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769547, 42.236744, 28.750809>,  <38.221626, 41.953205, 29.073433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769547, 42.236744, 28.750809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647999, 41.914959, 28.546652>,  <38.575069, 41.721889, 28.424158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647999, 41.914959, 28.546652>,  <38.769547, 42.236744, 28.750809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647999, 41.914959, 28.546652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150631, 0.488418, -0.859510,
		0.940730, -0.338062, -0.027239,
		-0.303872, -0.804464, -0.510392,
		38.556839, 41.673618, 28.393534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104645, 42.281548, 28.050852>,  <38.769547, 42.236744, 28.750809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104645, 42.281548, 28.050852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842834, 41.986462, 27.984678>,  <38.685749, 41.809410, 27.944975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842834, 41.986462, 27.984678>,  <39.104645, 42.281548, 28.050852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842834, 41.986462, 27.984678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116110, 0.314307, -0.942194,
		0.747068, -0.597484, -0.291379,
		-0.654529, -0.737715, -0.165434,
		38.646477, 41.765148, 27.935047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381001, 42.006115, 27.392933>,  <39.104645, 42.281548, 28.050852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381001, 42.006115, 27.392933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002914, 41.881638, 27.432377>,  <38.776062, 41.806950, 27.456043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002914, 41.881638, 27.432377>,  <39.381001, 42.006115, 27.392933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002914, 41.881638, 27.432377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198035, 0.306473, -0.931051,
		0.259516, -0.899573, -0.351311,
		-0.945216, -0.311195, 0.098612,
		38.719349, 41.788277, 27.461960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244984, 41.642605, 26.846201>,  <39.381001, 42.006115, 27.392933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244984, 41.642605, 26.846201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875610, 41.735661, 26.968285>,  <38.653988, 41.791492, 27.041534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875610, 41.735661, 26.968285>,  <39.244984, 41.642605, 26.846201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875610, 41.735661, 26.968285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204781, 0.373902, -0.904578,
		-0.324558, -0.897818, -0.297634,
		-0.923432, 0.232638, 0.305209,
		38.598579, 41.805450, 27.059847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870827, 41.316059, 26.429224>,  <39.244984, 41.642605, 26.846201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870827, 41.316059, 26.429224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656975, 41.619919, 26.577337>,  <38.528664, 41.802235, 26.666204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656975, 41.619919, 26.577337>,  <38.870827, 41.316059, 26.429224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656975, 41.619919, 26.577337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064572, 0.400156, -0.914169,
		-0.842618, -0.512649, -0.164881,
		-0.534626, 0.759649, 0.370282,
		38.496586, 41.847813, 26.688421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509689, 41.280319, 25.889679>,  <38.870827, 41.316059, 26.429224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509689, 41.280319, 25.889679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471184, 41.638020, 26.064518>,  <38.448082, 41.852638, 26.169420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471184, 41.638020, 26.064518>,  <38.509689, 41.280319, 25.889679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471184, 41.638020, 26.064518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251767, 0.402980, -0.879898,
		-0.962988, -0.194749, 0.186350,
		-0.096264, 0.894248, 0.437096,
		38.442303, 41.906296, 26.195646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908077, 41.531700, 25.650934>,  <38.509689, 41.280319, 25.889679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908077, 41.531700, 25.650934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097507, 41.860619, 25.777145>,  <38.211166, 42.057968, 25.852873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097507, 41.860619, 25.777145>,  <37.908077, 41.531700, 25.650934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097507, 41.860619, 25.777145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221576, 0.457962, -0.860915,
		-0.852424, 0.337798, 0.399081,
		0.473579, 0.822292, 0.315530,
		38.239582, 42.107307, 25.871805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447762, 42.062168, 25.471224>,  <37.908077, 41.531700, 25.650934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447762, 42.062168, 25.471224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814022, 42.222343, 25.485237>,  <38.033779, 42.318447, 25.493645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814022, 42.222343, 25.485237>,  <37.447762, 42.062168, 25.471224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814022, 42.222343, 25.485237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160284, 0.443651, -0.881750,
		-0.368629, 0.801763, 0.470414,
		0.915654, 0.400439, 0.035033,
		38.088718, 42.342476, 25.495747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362686, 42.814213, 25.219234>,  <37.447762, 42.062168, 25.471224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362686, 42.814213, 25.219234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734131, 42.674278, 25.169756>,  <37.956997, 42.590317, 25.140070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734131, 42.674278, 25.169756>,  <37.362686, 42.814213, 25.219234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734131, 42.674278, 25.169756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077009, 0.144399, -0.986519,
		0.362984, 0.925614, 0.107149,
		0.928608, -0.349839, -0.123695,
		38.012714, 42.569328, 25.132647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722858, 43.286343, 24.753635>,  <37.362686, 42.814213, 25.219234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722858, 43.286343, 24.753635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917870, 42.939255, 24.714899>,  <38.034878, 42.731003, 24.691658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917870, 42.939255, 24.714899>,  <37.722858, 43.286343, 24.753635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917870, 42.939255, 24.714899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132620, 0.183223, -0.974085,
		0.862976, 0.462052, 0.204403,
		0.487529, -0.867720, -0.096839,
		38.064129, 42.678940, 24.685846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227917, 43.456726, 24.297546>,  <37.722858, 43.286343, 24.753635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227917, 43.456726, 24.297546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214588, 43.057091, 24.286915>,  <38.206593, 42.817310, 24.280535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214588, 43.057091, 24.286915>,  <38.227917, 43.456726, 24.297546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214588, 43.057091, 24.286915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299904, 0.015374, -0.953846,
		0.953387, -0.039756, 0.299120,
		-0.033322, -0.999091, -0.026581,
		38.204590, 42.757362, 24.278940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840698, 43.188046, 24.031683>,  <38.227917, 43.456726, 24.297546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840698, 43.188046, 24.031683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568188, 42.902035, 23.968954>,  <38.404678, 42.730427, 23.931316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568188, 42.902035, 23.968954>,  <38.840698, 43.188046, 24.031683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568188, 42.902035, 23.968954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170603, 0.053244, -0.983900,
		0.711864, -0.697067, 0.085712,
		-0.681281, -0.715026, -0.156824,
		38.363804, 42.687527, 23.921907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171349, 42.625168, 23.653381>,  <38.840698, 43.188046, 24.031683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171349, 42.625168, 23.653381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777943, 42.611378, 23.582367>,  <38.541901, 42.603104, 23.539759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777943, 42.611378, 23.582367>,  <39.171349, 42.625168, 23.653381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777943, 42.611378, 23.582367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176438, 0.032629, -0.983771,
		0.039738, -0.998872, -0.026003,
		-0.983509, -0.034505, -0.177535,
		38.482891, 42.601036, 23.529106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087906, 42.073650, 23.185511>,  <39.171349, 42.625168, 23.653381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087906, 42.073650, 23.185511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774986, 42.318134, 23.137455>,  <38.587234, 42.464825, 23.108622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774986, 42.318134, 23.137455>,  <39.087906, 42.073650, 23.185511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774986, 42.318134, 23.137455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055427, -0.123798, -0.990758,
		-0.620436, -0.781725, 0.062969,
		-0.782296, 0.611212, -0.120137,
		38.540298, 42.501499, 23.101414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638893, 41.707138, 22.614109>,  <39.087906, 42.073650, 23.185511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638893, 41.707138, 22.614109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519341, 42.084126, 22.674017>,  <38.447609, 42.310318, 22.709961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519341, 42.084126, 22.674017>,  <38.638893, 41.707138, 22.614109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519341, 42.084126, 22.674017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131379, 0.114810, -0.984662,
		-0.945204, -0.313972, 0.089505,
		-0.298880, 0.942465, 0.149768,
		38.429676, 42.366863, 22.718948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024750, 41.750118, 22.223848>,  <38.638893, 41.707138, 22.614109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024750, 41.750118, 22.223848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118145, 42.134388, 22.283964>,  <38.174183, 42.364948, 22.320034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118145, 42.134388, 22.283964>,  <38.024750, 41.750118, 22.223848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118145, 42.134388, 22.283964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064986, 0.169633, -0.983362,
		-0.970186, 0.219836, 0.102037,
		0.233487, 0.960675, 0.150289,
		38.188190, 42.422592, 22.329050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507427, 42.090797, 21.827496>,  <38.024750, 41.750118, 22.223848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507427, 42.090797, 21.827496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815975, 42.339226, 21.883018>,  <38.001102, 42.488281, 21.916332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815975, 42.339226, 21.883018>,  <37.507427, 42.090797, 21.827496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815975, 42.339226, 21.883018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022488, 0.191378, -0.981259,
		-0.635991, 0.760034, 0.133657,
		0.771369, 0.621066, 0.138807,
		38.047386, 42.525547, 21.924660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486008, 42.635773, 21.224869>,  <37.507427, 42.090797, 21.827496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486008, 42.635773, 21.224869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856339, 42.692070, 21.365170>,  <38.078537, 42.725849, 21.449350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856339, 42.692070, 21.365170>,  <37.486008, 42.635773, 21.224869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856339, 42.692070, 21.365170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285213, 0.348739, -0.892768,
		-0.247970, 0.926592, 0.282733,
		0.925832, 0.140740, 0.350753,
		38.134087, 42.734291, 21.470396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614761, 43.249660, 21.097660>,  <37.486008, 42.635773, 21.224869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614761, 43.249660, 21.097660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967262, 43.063717, 21.131845>,  <38.178761, 42.952148, 21.152357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967262, 43.063717, 21.131845>,  <37.614761, 43.249660, 21.097660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967262, 43.063717, 21.131845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250492, 0.305999, -0.918487,
		0.400819, 0.830823, 0.386106,
		0.881248, -0.464863, 0.085464,
		38.231636, 42.924259, 21.157484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153156, 43.765545, 20.861618>,  <37.614761, 43.249660, 21.097660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153156, 43.765545, 20.861618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330811, 43.407387, 20.848894>,  <38.437405, 43.192493, 20.841261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330811, 43.407387, 20.848894>,  <38.153156, 43.765545, 20.861618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330811, 43.407387, 20.848894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295275, 0.179798, -0.938342,
		0.845903, 0.407363, 0.344243,
		0.444140, -0.895393, -0.031808,
		38.464054, 43.138767, 20.839352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652020, 43.912529, 20.540869>,  <38.153156, 43.765545, 20.861618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652020, 43.912529, 20.540869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617222, 43.517426, 20.489086>,  <38.596344, 43.280361, 20.458015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617222, 43.517426, 20.489086>,  <38.652020, 43.912529, 20.540869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617222, 43.517426, 20.489086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330420, 0.093985, -0.939143,
		0.939816, -0.124477, 0.318200,
		-0.086995, -0.987761, -0.129458,
		38.591122, 43.221096, 20.450249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281372, 43.740768, 20.300018>,  <38.652020, 43.912529, 20.540869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281372, 43.740768, 20.300018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052765, 43.426186, 20.206337>,  <38.915600, 43.237438, 20.150127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052765, 43.426186, 20.206337>,  <39.281372, 43.740768, 20.300018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052765, 43.426186, 20.206337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440511, -0.053245, -0.896167,
		0.692325, -0.615348, 0.376872,
		-0.571522, -0.786455, -0.234205,
		38.881310, 43.190250, 20.136076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732197, 43.210854, 19.986429>,  <39.281372, 43.740768, 20.300018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732197, 43.210854, 19.986429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361172, 43.133347, 19.858633>,  <39.138557, 43.086842, 19.781956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361172, 43.133347, 19.858633>,  <39.732197, 43.210854, 19.986429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361172, 43.133347, 19.858633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348648, -0.141258, -0.926548,
		0.134403, -0.970825, 0.198582,
		-0.927567, -0.193766, -0.319490,
		39.082901, 43.075218, 19.762787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646908, 42.705250, 19.431543>,  <39.732197, 43.210854, 19.986429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646908, 42.705250, 19.431543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867397, 42.486515, 19.179474>,  <39.999691, 42.355274, 19.028233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867397, 42.486515, 19.179474>,  <39.646908, 42.705250, 19.431543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867397, 42.486515, 19.179474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480318, -0.409600, 0.775579,
		-0.682234, -0.730204, 0.036873,
		0.551227, -0.546837, -0.630173,
		40.032764, 42.322464, 18.990421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663063, 42.040451, 19.648750>,  <39.646908, 42.705250, 19.431543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663063, 42.040451, 19.648750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995869, 42.013809, 19.428455>,  <40.195553, 41.997826, 19.296278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995869, 42.013809, 19.428455>,  <39.663063, 42.040451, 19.648750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995869, 42.013809, 19.428455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478832, -0.415070, 0.773587,
		-0.280120, -0.907348, -0.313453,
		0.832018, -0.066606, -0.550736,
		40.245476, 41.993828, 19.263235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963840, 41.377674, 19.709951>,  <39.663063, 42.040451, 19.648750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963840, 41.377674, 19.709951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273693, 41.594551, 19.579735>,  <40.459602, 41.724678, 19.501604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273693, 41.594551, 19.579735>,  <39.963840, 41.377674, 19.709951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273693, 41.594551, 19.579735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573782, -0.386084, 0.722297,
		0.265937, -0.746303, -0.610172,
		0.774630, 0.542191, -0.325541,
		40.506081, 41.757210, 19.482073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553238, 40.905506, 19.614710>,  <39.963840, 41.377674, 19.709951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553238, 40.905506, 19.614710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690693, 41.277065, 19.669926>,  <40.773167, 41.500000, 19.703056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690693, 41.277065, 19.669926>,  <40.553238, 40.905506, 19.614710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690693, 41.277065, 19.669926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565564, -0.322053, 0.759222,
		0.749699, -0.182828, -0.636024,
		0.343641, 0.928900, 0.138042,
		40.793785, 41.555737, 19.711338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178055, 40.802113, 19.947672>,  <40.553238, 40.905506, 19.614710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178055, 40.802113, 19.947672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131119, 41.192715, 20.019964>,  <41.102959, 41.427078, 20.063339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131119, 41.192715, 20.019964>,  <41.178055, 40.802113, 19.947672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131119, 41.192715, 20.019964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545474, -0.088705, 0.833420,
		0.829873, 0.196375, -0.522252,
		-0.117336, 0.976508, 0.180732,
		41.095917, 41.485668, 20.074184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824673, 41.028900, 20.286816>,  <41.178055, 40.802113, 19.947672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824673, 41.028900, 20.286816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560837, 41.310886, 20.391096>,  <41.402534, 41.480080, 20.453665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560837, 41.310886, 20.391096>,  <41.824673, 41.028900, 20.286816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560837, 41.310886, 20.391096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348699, -0.020263, 0.937016,
		0.665850, 0.708949, -0.232457,
		-0.659586, 0.704969, 0.260702,
		41.362961, 41.522377, 20.469307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173130, 41.662842, 20.667240>,  <41.824673, 41.028900, 20.286816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173130, 41.662842, 20.667240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796417, 41.633785, 20.798555>,  <41.570389, 41.616352, 20.877346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796417, 41.633785, 20.798555>,  <42.173130, 41.662842, 20.667240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796417, 41.633785, 20.798555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332264, -0.051507, 0.941779,
		-0.051507, 0.996027, 0.072646,
		-0.941779, -0.072646, 0.328290,
		41.513882, 41.611992, 20.897043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319012, 42.016945, 21.301773>,  <42.173130, 41.662842, 20.667240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319012, 42.016945, 21.301773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946922, 41.872879, 21.329941>,  <41.723667, 41.786438, 21.346842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946922, 41.872879, 21.329941>,  <42.319012, 42.016945, 21.301773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946922, 41.872879, 21.329941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096345, -0.054521, 0.993854,
		-0.354111, 0.931294, 0.085417,
		-0.930227, -0.360164, 0.070419,
		41.667854, 41.764832, 21.351067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908211, 42.495480, 21.806963>,  <42.319012, 42.016945, 21.301773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908211, 42.495480, 21.806963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719696, 42.142899, 21.794783>,  <41.606586, 41.931351, 21.787476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719696, 42.142899, 21.794783>,  <41.908211, 42.495480, 21.806963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719696, 42.142899, 21.794783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031656, -0.017597, 0.999344,
		-0.881413, 0.471939, -0.019610,
		-0.471284, -0.881456, -0.030450,
		41.578312, 41.878460, 21.785648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303413, 42.555519, 22.230804>,  <41.908211, 42.495480, 21.806963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303413, 42.555519, 22.230804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367836, 42.161945, 22.199999>,  <41.406490, 41.925800, 22.181517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367836, 42.161945, 22.199999>,  <41.303413, 42.555519, 22.230804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367836, 42.161945, 22.199999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183542, -0.106530, 0.977222,
		-0.969728, -0.143255, -0.197751,
		0.161059, -0.983935, -0.077012,
		41.416153, 41.866764, 22.176895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832146, 42.207352, 22.708218>,  <41.303413, 42.555519, 22.230804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832146, 42.207352, 22.708218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072540, 41.898964, 22.623909>,  <41.216778, 41.713932, 22.573324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072540, 41.898964, 22.623909>,  <40.832146, 42.207352, 22.708218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072540, 41.898964, 22.623909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011930, -0.255028, 0.966860,
		-0.799173, -0.583581, -0.144071,
		0.600983, -0.770969, -0.210774,
		41.252834, 41.667675, 22.560677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552975, 41.615280, 22.967581>,  <40.832146, 42.207352, 22.708218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552975, 41.615280, 22.967581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933388, 41.498425, 22.927204>,  <41.161636, 41.428310, 22.902979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933388, 41.498425, 22.927204>,  <40.552975, 41.615280, 22.967581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933388, 41.498425, 22.927204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030759, -0.414409, 0.909571,
		-0.307554, -0.861928, -0.403102,
		0.951033, -0.292141, -0.100941,
		41.218697, 41.410782, 22.896921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578796, 41.023296, 23.297533>,  <40.552975, 41.615280, 22.967581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578796, 41.023296, 23.297533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951778, 41.167179, 23.311081>,  <41.175568, 41.253510, 23.319210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951778, 41.167179, 23.311081>,  <40.578796, 41.023296, 23.297533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951778, 41.167179, 23.311081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040757, -0.197868, 0.979381,
		0.358991, -0.911844, -0.199163,
		0.932451, 0.359706, 0.033869,
		41.231514, 41.275089, 23.321241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033218, 40.580372, 23.412600>,  <40.578796, 41.023296, 23.297533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033218, 40.580372, 23.412600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223240, 40.899334, 23.561445>,  <41.337254, 41.090710, 23.650753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223240, 40.899334, 23.561445>,  <41.033218, 40.580372, 23.412600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223240, 40.899334, 23.561445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004823, -0.425229, 0.905073,
		0.879944, -0.428163, -0.205853,
		0.475054, 0.797406, 0.372113,
		41.365757, 41.138557, 23.673079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409950, 40.250355, 23.785280>,  <41.033218, 40.580372, 23.412600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409950, 40.250355, 23.785280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449520, 40.628460, 23.909662>,  <41.473263, 40.855324, 23.984291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449520, 40.628460, 23.909662>,  <41.409950, 40.250355, 23.785280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449520, 40.628460, 23.909662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257538, -0.326161, 0.909557,
		0.961191, -0.009899, -0.275708,
		0.098929, 0.945262, 0.310953,
		41.479198, 40.912037, 24.002949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062622, 40.222935, 24.187574>,  <41.409950, 40.250355, 23.785280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062622, 40.222935, 24.187574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820511, 40.519127, 24.304417>,  <41.675243, 40.696842, 24.374521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820511, 40.519127, 24.304417>,  <42.062622, 40.222935, 24.187574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820511, 40.519127, 24.304417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071251, -0.315089, 0.946384,
		0.792816, 0.593642, 0.137958,
		-0.605282, 0.740479, 0.292105,
		41.638927, 40.741272, 24.392048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294979, 40.334919, 24.802505>,  <42.062622, 40.222935, 24.187574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294979, 40.334919, 24.802505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940414, 40.519505, 24.817047>,  <41.727676, 40.630257, 24.825773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940414, 40.519505, 24.817047>,  <42.294979, 40.334919, 24.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940414, 40.519505, 24.817047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065516, -0.202818, 0.977022,
		0.458238, 0.863662, 0.210014,
		-0.886411, 0.461468, 0.036355,
		41.674492, 40.657944, 24.827953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392422, 40.840054, 25.300188>,  <42.294979, 40.334919, 24.802505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392422, 40.840054, 25.300188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999744, 40.765205, 25.285978>,  <41.764137, 40.720299, 25.277452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999744, 40.765205, 25.285978>,  <42.392422, 40.840054, 25.300188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999744, 40.765205, 25.285978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022754, -0.069971, 0.997289,
		-0.189094, 0.979843, 0.064433,
		-0.981695, -0.187116, -0.035527,
		41.705235, 40.709072, 25.275320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214222, 41.035721, 25.910076>,  <42.392422, 40.840054, 25.300188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214222, 41.035721, 25.910076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890121, 40.832253, 25.793633>,  <41.695660, 40.710171, 25.723766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890121, 40.832253, 25.793633>,  <42.214222, 41.035721, 25.910076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890121, 40.832253, 25.793633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188430, -0.244236, 0.951232,
		-0.554966, 0.825591, 0.102043,
		-0.810251, -0.508673, -0.291109,
		41.647045, 40.679649, 25.706299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703243, 41.213146, 26.512461>,  <42.214222, 41.035721, 25.910076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703243, 41.213146, 26.512461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597050, 40.869469, 26.337505>,  <41.533333, 40.663261, 26.232533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597050, 40.869469, 26.337505>,  <41.703243, 41.213146, 26.512461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597050, 40.869469, 26.337505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327919, -0.346151, 0.879005,
		-0.906634, 0.376794, -0.189846,
		-0.265489, -0.859189, -0.437390,
		41.517403, 40.611713, 26.206289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894844, 41.095181, 26.629450>,  <41.703243, 41.213146, 26.512461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894844, 41.095181, 26.629450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093845, 40.754734, 26.562399>,  <41.213245, 40.550468, 26.522169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093845, 40.754734, 26.562399>,  <40.894844, 41.095181, 26.629450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093845, 40.754734, 26.562399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343452, -0.370708, 0.862912,
		-0.796575, -0.371730, -0.476744,
		0.497503, -0.851113, -0.167626,
		41.243095, 40.499401, 26.512112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487137, 40.680965, 26.928133>,  <40.894844, 41.095181, 26.629450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487137, 40.680965, 26.928133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813240, 40.450665, 26.903296>,  <41.008904, 40.312485, 26.888393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813240, 40.450665, 26.903296>,  <40.487137, 40.680965, 26.928133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813240, 40.450665, 26.903296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305458, -0.518651, 0.798559,
		-0.491969, -0.632075, -0.598706,
		0.815268, -0.575746, -0.062087,
		41.057819, 40.277939, 26.884666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283787, 40.192184, 27.302549>,  <40.487137, 40.680965, 26.928133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283787, 40.192184, 27.302549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681606, 40.150658, 27.298483>,  <40.920296, 40.125744, 27.296043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681606, 40.150658, 27.298483>,  <40.283787, 40.192184, 27.302549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681606, 40.150658, 27.298483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035027, -0.424176, 0.904902,
		-0.098254, -0.899610, -0.425498,
		0.994545, -0.103814, -0.010166,
		40.979969, 40.119514, 27.295433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422852, 39.495529, 27.448174>,  <40.283787, 40.192184, 27.302549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422852, 39.495529, 27.448174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745697, 39.701115, 27.564383>,  <40.939404, 39.824467, 27.634108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745697, 39.701115, 27.564383>,  <40.422852, 39.495529, 27.448174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745697, 39.701115, 27.564383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018350, -0.470007, 0.882472,
		0.590107, -0.717589, -0.369919,
		0.807116, 0.513966, 0.290522,
		40.987831, 39.855305, 27.651539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791515, 39.089108, 27.828503>,  <40.422852, 39.495529, 27.448174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791515, 39.089108, 27.828503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946472, 39.434700, 27.957163>,  <41.039444, 39.642056, 28.034359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946472, 39.434700, 27.957163>,  <40.791515, 39.089108, 27.828503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946472, 39.434700, 27.957163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210399, -0.256833, 0.943276,
		0.897587, -0.433090, 0.082287,
		0.387389, 0.863985, 0.321652,
		41.062691, 39.693897, 28.053658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058155, 38.930256, 28.460936>,  <40.791515, 39.089108, 27.828503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058155, 38.930256, 28.460936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072231, 39.329403, 28.482901>,  <41.080677, 39.568893, 28.496080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072231, 39.329403, 28.482901>,  <41.058155, 38.930256, 28.460936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072231, 39.329403, 28.482901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139397, -0.049507, 0.988998,
		0.989611, -0.042461, 0.137358,
		0.035194, 0.997871, 0.054912,
		41.082790, 39.628765, 28.499374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563274, 39.192650, 28.964767>,  <41.058155, 38.930256, 28.460936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563274, 39.192650, 28.964767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274124, 39.467850, 28.939156>,  <41.100632, 39.632969, 28.923788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274124, 39.467850, 28.939156>,  <41.563274, 39.192650, 28.964767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274124, 39.467850, 28.939156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092370, -0.004384, 0.995715,
		0.684774, 0.725695, 0.066720,
		-0.722878, 0.688003, -0.064031,
		41.057262, 39.674252, 28.919947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825623, 39.782715, 29.327833>,  <41.563274, 39.192650, 28.964767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825623, 39.782715, 29.327833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427380, 39.819447, 29.335129>,  <41.188435, 39.841488, 29.339506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427380, 39.819447, 29.335129>,  <41.825623, 39.782715, 29.327833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427380, 39.819447, 29.335129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013025, -0.057071, 0.998285,
		0.092717, 0.994138, 0.055624,
		-0.995607, 0.091834, 0.018240,
		41.128696, 39.846996, 29.340601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739353, 40.099770, 29.875858>,  <41.825623, 39.782715, 29.327833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739353, 40.099770, 29.875858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357052, 39.999416, 29.814428>,  <41.127670, 39.939205, 29.777571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357052, 39.999416, 29.814428>,  <41.739353, 40.099770, 29.875858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357052, 39.999416, 29.814428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120743, -0.141480, 0.982550,
		-0.268235, 0.957622, 0.104928,
		-0.955757, -0.250885, -0.153576,
		41.070324, 39.924152, 29.768356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300922, 40.457935, 30.333719>,  <41.739353, 40.099770, 29.875858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300922, 40.457935, 30.333719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135597, 40.108982, 30.229317>,  <41.036404, 39.899612, 30.166676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135597, 40.108982, 30.229317>,  <41.300922, 40.457935, 30.333719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135597, 40.108982, 30.229317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040072, -0.268932, 0.962325,
		-0.909707, 0.408200, 0.076195,
		-0.413312, -0.872381, -0.261007,
		41.011604, 39.847267, 30.151014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782661, 40.328251, 30.907135>,  <41.300922, 40.457935, 30.333719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782661, 40.328251, 30.907135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822617, 39.979500, 30.715364>,  <40.846588, 39.770248, 30.600302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822617, 39.979500, 30.715364>,  <40.782661, 40.328251, 30.907135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822617, 39.979500, 30.715364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031232, -0.478850, 0.877341,
		-0.994508, -0.102610, -0.020601,
		0.099889, -0.871880, -0.479425,
		40.852585, 39.717937, 30.571537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322498, 39.767876, 31.206215>,  <40.782661, 40.328251, 30.907135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322498, 39.767876, 31.206215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627998, 39.566525, 31.044573>,  <40.811298, 39.445713, 30.947588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627998, 39.566525, 31.044573>,  <40.322498, 39.767876, 31.206215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627998, 39.566525, 31.044573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018260, -0.608921, 0.793021,
		-0.645262, -0.613042, -0.455867,
		0.763743, -0.503383, -0.404108,
		40.857121, 39.415512, 30.923342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134434, 38.951309, 31.403397>,  <40.322498, 39.767876, 31.206215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134434, 38.951309, 31.403397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517040, 38.926380, 31.289423>,  <40.746605, 38.911423, 31.221039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517040, 38.926380, 31.289423>,  <40.134434, 38.951309, 31.403397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517040, 38.926380, 31.289423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204016, -0.555184, 0.806318,
		-0.208443, -0.829389, -0.518330,
		0.956519, -0.062324, -0.284933,
		40.803997, 38.907684, 31.203943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299225, 38.242577, 31.362602>,  <40.134434, 38.951309, 31.403397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299225, 38.242577, 31.362602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624668, 38.463825, 31.434263>,  <40.819935, 38.596573, 31.477261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624668, 38.463825, 31.434263>,  <40.299225, 38.242577, 31.362602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624668, 38.463825, 31.434263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192020, -0.546479, 0.815161,
		0.548784, -0.628824, -0.550832,
		0.813612, 0.553118, 0.179152,
		40.868752, 38.629761, 31.488008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636246, 37.775421, 31.686743>,  <40.299225, 38.242577, 31.362602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636246, 37.775421, 31.686743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880001, 38.085323, 31.754148>,  <41.026253, 38.271267, 31.794592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880001, 38.085323, 31.754148>,  <40.636246, 37.775421, 31.686743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880001, 38.085323, 31.754148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258954, -0.395361, 0.881268,
		0.749393, -0.493396, -0.441554,
		0.609387, 0.774758, 0.168514,
		41.062817, 38.317749, 31.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340702, 37.428989, 31.782333>,  <40.636246, 37.775421, 31.686743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340702, 37.428989, 31.782333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328247, 37.797157, 31.938210>,  <41.320774, 38.018059, 32.031734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328247, 37.797157, 31.938210>,  <41.340702, 37.428989, 31.782333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328247, 37.797157, 31.938210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199808, -0.376276, 0.904706,
		0.979340, 0.106037, -0.172190,
		-0.031141, 0.920420, 0.389689,
		41.318905, 38.073284, 32.055115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947853, 37.439003, 32.179329>,  <41.340702, 37.428989, 31.782333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947853, 37.439003, 32.179329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692070, 37.711082, 32.322670>,  <41.538601, 37.874332, 32.408676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692070, 37.711082, 32.322670>,  <41.947853, 37.439003, 32.179329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692070, 37.711082, 32.322670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106022, -0.383632, 0.917380,
		0.761478, 0.624622, 0.173201,
		-0.639461, 0.680202, 0.358352,
		41.500233, 37.915142, 32.430176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223633, 37.597416, 32.823505>,  <41.947853, 37.439003, 32.179329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223633, 37.597416, 32.823505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837414, 37.701370, 32.828941>,  <41.605682, 37.763744, 32.832203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837414, 37.701370, 32.828941>,  <42.223633, 37.597416, 32.823505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837414, 37.701370, 32.828941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050886, -0.239737, 0.969503,
		0.255219, 0.935406, 0.244701,
		-0.965543, 0.259887, 0.013586,
		41.547752, 37.779335, 32.833015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147270, 37.759953, 33.495731>,  <42.223633, 37.597416, 32.823505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147270, 37.759953, 33.495731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771011, 37.723469, 33.364975>,  <41.545254, 37.701580, 33.286522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771011, 37.723469, 33.364975>,  <42.147270, 37.759953, 33.495731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771011, 37.723469, 33.364975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245130, -0.483535, 0.840300,
		-0.234703, 0.870560, 0.432481,
		-0.940652, -0.091207, -0.326888,
		41.488815, 37.696106, 33.266907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700539, 38.027313, 34.030563>,  <42.147270, 37.759953, 33.495731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700539, 38.027313, 34.030563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432808, 37.795204, 33.844967>,  <41.272171, 37.655941, 33.733608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432808, 37.795204, 33.844967>,  <41.700539, 38.027313, 34.030563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432808, 37.795204, 33.844967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197763, -0.462839, 0.864101,
		-0.716166, 0.670125, 0.195033,
		-0.669325, -0.580269, -0.463996,
		41.232010, 37.621124, 33.705769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031761, 38.040230, 34.408474>,  <41.700539, 38.027313, 34.030563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031761, 38.040230, 34.408474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061085, 37.691093, 34.215485>,  <41.078678, 37.481613, 34.099693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061085, 37.691093, 34.215485>,  <41.031761, 38.040230, 34.408474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061085, 37.691093, 34.215485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245584, -0.484673, 0.839512,
		-0.966600, 0.056945, -0.249885,
		0.073306, -0.872840, -0.482469,
		41.083076, 37.429241, 34.070744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317486, 37.692707, 34.473724>,  <41.031761, 38.040230, 34.408474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317486, 37.692707, 34.473724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616772, 37.435059, 34.410130>,  <40.796345, 37.280472, 34.371971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616772, 37.435059, 34.410130>,  <40.317486, 37.692707, 34.473724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616772, 37.435059, 34.410130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213154, -0.460322, 0.861782,
		-0.628279, -0.610912, -0.481718,
		0.748219, -0.644120, -0.158992,
		40.841236, 37.241821, 34.362431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988308, 37.077950, 34.273571>,  <40.317486, 37.692707, 34.473724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988308, 37.077950, 34.273571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350807, 36.998222, 34.422695>,  <40.568306, 36.950386, 34.512169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350807, 36.998222, 34.422695>,  <39.988308, 37.077950, 34.273571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350807, 36.998222, 34.422695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422139, -0.379427, 0.823306,
		-0.022646, -0.903497, -0.427995,
		0.906248, -0.199318, 0.372809,
		40.622681, 36.938427, 34.534538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860371, 36.556175, 34.643776>,  <39.988308, 37.077950, 34.273571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860371, 36.556175, 34.643776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227013, 36.636646, 34.781967>,  <40.446999, 36.684929, 34.864880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227013, 36.636646, 34.781967>,  <39.860371, 36.556175, 34.643776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227013, 36.636646, 34.781967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255158, -0.370869, 0.892945,
		0.307769, -0.906633, -0.288609,
		0.916609, 0.201180, 0.345476,
		40.501995, 36.696999, 34.885609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087048, 35.907284, 34.887043>,  <39.860371, 36.556175, 34.643776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087048, 35.907284, 34.887043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347416, 36.177040, 35.026466>,  <40.503639, 36.338894, 35.110123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347416, 36.177040, 35.026466>,  <40.087048, 35.907284, 34.887043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347416, 36.177040, 35.026466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002770, -0.457038, 0.889443,
		0.759137, -0.579926, -0.295630,
		0.650925, 0.674390, 0.348561,
		40.542694, 36.379356, 35.131035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488426, 35.510689, 35.293579>,  <40.087048, 35.907284, 34.887043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488426, 35.510689, 35.293579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559856, 35.878139, 35.434570>,  <40.602715, 36.098610, 35.519165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559856, 35.878139, 35.434570>,  <40.488426, 35.510689, 35.293579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559856, 35.878139, 35.434570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072085, -0.345055, 0.935810,
		0.981283, -0.192518, 0.004602,
		0.178572, 0.918626, 0.352474,
		40.613426, 36.153728, 35.540314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857418, 35.363064, 35.873989>,  <40.488426, 35.510689, 35.293579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857418, 35.363064, 35.873989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777290, 35.753777, 35.904350>,  <40.729214, 35.988205, 35.922565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777290, 35.753777, 35.904350>,  <40.857418, 35.363064, 35.873989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777290, 35.753777, 35.904350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206113, -0.117755, 0.971417,
		0.957804, 0.178951, 0.224917,
		-0.200322, 0.976786, 0.075903,
		40.717194, 36.046814, 35.927120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425465, 35.783611, 36.360886>,  <40.857418, 35.363064, 35.873989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425465, 35.783611, 36.360886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057823, 35.941025, 36.368610>,  <40.837238, 36.035473, 36.373245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057823, 35.941025, 36.368610>,  <41.425465, 35.783611, 36.360886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057823, 35.941025, 36.368610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101763, -0.284451, 0.953275,
		0.380641, 0.874196, 0.301488,
		-0.919107, 0.393535, 0.019313,
		40.782089, 36.059086, 36.374405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382915, 36.220661, 36.982792>,  <41.425465, 35.783611, 36.360886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382915, 36.220661, 36.982792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005768, 36.144669, 36.873318>,  <40.779480, 36.099072, 36.807632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005768, 36.144669, 36.873318>,  <41.382915, 36.220661, 36.982792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005768, 36.144669, 36.873318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210353, -0.297550, 0.931244,
		-0.258357, 0.935612, 0.240587,
		-0.942870, -0.189985, -0.273683,
		40.722908, 36.087673, 36.791214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035267, 36.205376, 37.576904>,  <41.382915, 36.220661, 36.982792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035267, 36.205376, 37.576904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718967, 36.096500, 37.357586>,  <40.529186, 36.031174, 37.225994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718967, 36.096500, 37.357586>,  <41.035267, 36.205376, 37.576904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718967, 36.096500, 37.357586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408750, -0.431979, 0.803939,
		-0.455676, 0.859830, 0.230330,
		-0.790748, -0.272188, -0.548298,
		40.481743, 36.014843, 37.193096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418743, 36.465858, 37.898449>,  <41.035267, 36.205376, 37.576904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418743, 36.465858, 37.898449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367798, 36.128872, 37.689056>,  <40.337231, 35.926682, 37.563419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367798, 36.128872, 37.689056>,  <40.418743, 36.465858, 37.898449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367798, 36.128872, 37.689056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374629, -0.447824, 0.811854,
		-0.918386, 0.299509, -0.258577,
		-0.127360, -0.842466, -0.523480,
		40.329590, 35.876133, 37.532013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700741, 36.159477, 38.195419>,  <40.418743, 36.465858, 37.898449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700741, 36.159477, 38.195419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921246, 35.871147, 38.027359>,  <40.053547, 35.698151, 37.926521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921246, 35.871147, 38.027359>,  <39.700741, 36.159477, 38.195419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921246, 35.871147, 38.027359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153025, -0.582387, 0.798379,
		-0.820182, -0.375818, -0.431349,
		0.551257, -0.720823, -0.420154,
		40.086624, 35.654900, 37.901314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353168, 35.611603, 38.236248>,  <39.700741, 36.159477, 38.195419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353168, 35.611603, 38.236248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740505, 35.511982, 38.229473>,  <39.972908, 35.452209, 38.225410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740505, 35.511982, 38.229473>,  <39.353168, 35.611603, 38.236248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740505, 35.511982, 38.229473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128962, -0.557205, 0.820299,
		-0.213731, -0.792147, -0.571684,
		0.968342, -0.249049, -0.016935,
		40.031010, 35.437267, 38.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306808, 35.148647, 38.749176>,  <39.353168, 35.611603, 38.236248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306808, 35.148647, 38.749176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700325, 35.141788, 38.677780>,  <39.936436, 35.137672, 38.634941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700325, 35.141788, 38.677780>,  <39.306808, 35.148647, 38.749176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700325, 35.141788, 38.677780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144254, -0.515573, 0.844616,
		-0.106511, -0.856674, -0.504742,
		0.983792, -0.017150, -0.178493,
		39.995464, 35.136642, 38.624233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599113, 34.528900, 39.074242>,  <39.306808, 35.148647, 38.749176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599113, 34.528900, 39.074242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932243, 34.749466, 39.054913>,  <40.132122, 34.881805, 39.043316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932243, 34.749466, 39.054913>,  <39.599113, 34.528900, 39.074242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932243, 34.749466, 39.054913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361419, -0.475590, 0.801991,
		0.419251, -0.685386, -0.595378,
		0.832829, 0.551417, -0.048321,
		40.182091, 34.914890, 39.040417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266216, 34.057995, 39.232891>,  <39.599113, 34.528900, 39.074242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266216, 34.057995, 39.232891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396801, 34.435242, 39.258041>,  <40.475151, 34.661591, 39.273132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396801, 34.435242, 39.258041>,  <40.266216, 34.057995, 39.232891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396801, 34.435242, 39.258041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493252, -0.226728, 0.839819,
		0.806302, -0.243159, -0.539213,
		0.326464, 0.943116, 0.062873,
		40.494740, 34.718178, 39.276905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798553, 34.000797, 39.555317>,  <40.266216, 34.057995, 39.232891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798553, 34.000797, 39.555317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806396, 34.398750, 39.594963>,  <40.811100, 34.637524, 39.618752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806396, 34.398750, 39.594963>,  <40.798553, 34.000797, 39.555317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806396, 34.398750, 39.594963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629614, -0.089295, 0.771759,
		0.776661, 0.047275, -0.628143,
		0.019605, 0.994883, 0.099117,
		40.812279, 34.697216, 39.624699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555283, 34.238701, 39.505863>,  <40.798553, 34.000797, 39.555317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555283, 34.238701, 39.505863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316547, 34.465424, 39.733025>,  <41.173306, 34.601456, 39.869324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316547, 34.465424, 39.733025>,  <41.555283, 34.238701, 39.505863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316547, 34.465424, 39.733025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612917, -0.134699, 0.778581,
		0.517801, 0.812765, -0.267011,
		-0.596838, 0.566805, 0.567905,
		41.137497, 34.635464, 39.903397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006210, 34.887733, 39.705040>,  <41.555283, 34.238701, 39.505863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006210, 34.887733, 39.705040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709576, 34.858120, 39.971745>,  <41.531593, 34.840351, 40.131767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709576, 34.858120, 39.971745>,  <42.006210, 34.887733, 39.705040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709576, 34.858120, 39.971745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662070, 0.079552, 0.745208,
		-0.108209, 0.994078, -0.009982,
		-0.741589, -0.074029, 0.666757,
		41.487099, 34.835911, 40.171772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130577, 35.414898, 40.163219>,  <42.006210, 34.887733, 39.705040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130577, 35.414898, 40.163219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912922, 35.129467, 40.339725>,  <41.782330, 34.958210, 40.445629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912922, 35.129467, 40.339725>,  <42.130577, 35.414898, 40.163219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912922, 35.129467, 40.339725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753667, -0.184642, 0.630788,
		-0.368640, 0.675807, 0.638271,
		-0.544143, -0.713578, 0.441266,
		41.749680, 34.915394, 40.472107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279663, 35.382011, 40.917160>,  <42.130577, 35.414898, 40.163219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279663, 35.382011, 40.917160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160976, 35.021580, 40.790661>,  <42.089764, 34.805321, 40.714760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160976, 35.021580, 40.790661>,  <42.279663, 35.382011, 40.917160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160976, 35.021580, 40.790661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829720, -0.407205, 0.381770,
		-0.472784, -0.149122, 0.868469,
		-0.296715, -0.901080, -0.316250,
		42.071960, 34.751255, 40.695786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166592, 35.651932, 41.591499>,  <42.279663, 35.382011, 40.917160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166592, 35.651932, 41.591499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115505, 35.338310, 41.834465>,  <42.084854, 35.150139, 41.980244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115505, 35.338310, 41.834465>,  <42.166592, 35.651932, 41.591499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115505, 35.338310, 41.834465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182224, -0.620551, -0.762700,
		0.974928, 0.013278, 0.222126,
		-0.127714, -0.784054, 0.607412,
		42.077190, 35.103096, 42.016689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442394, 35.007946, 41.512920>,  <42.166592, 35.651932, 41.591499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442394, 35.007946, 41.512920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723747, 35.218163, 41.704361>,  <42.892559, 35.344292, 41.819225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723747, 35.218163, 41.704361>,  <42.442394, 35.007946, 41.512920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723747, 35.218163, 41.704361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674693, -0.705525, -0.216849,
		0.223700, 0.475435, -0.850835,
		0.703383, 0.525544, 0.478599,
		42.934761, 35.375824, 41.847942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011387, 34.975388, 41.124134>,  <42.442394, 35.007946, 41.512920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011387, 34.975388, 41.124134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132832, 35.019451, 41.502697>,  <43.205696, 35.045891, 41.729836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132832, 35.019451, 41.502697>,  <43.011387, 34.975388, 41.124134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132832, 35.019451, 41.502697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644374, -0.755428, -0.118784,
		0.701857, 0.645904, -0.300341,
		0.303609, 0.110163, 0.946407,
		43.223915, 35.052502, 41.786617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913120, 34.385853, 40.741951>,  <43.011387, 34.975388, 41.124134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913120, 34.385853, 40.741951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700439, 34.384819, 41.080723>,  <42.572830, 34.384197, 41.283985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700439, 34.384819, 41.080723>,  <42.913120, 34.385853, 40.741951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700439, 34.384819, 41.080723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803121, 0.318997, -0.503227,
		-0.268868, -0.947752, -0.171685,
		-0.531702, -0.002582, 0.846928,
		42.540928, 34.384045, 41.334801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262985, 34.114193, 40.542362>,  <42.913120, 34.385853, 40.741951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262985, 34.114193, 40.542362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204029, 34.326210, 40.876389>,  <42.168655, 34.453419, 41.076805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204029, 34.326210, 40.876389>,  <42.262985, 34.114193, 40.542362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204029, 34.326210, 40.876389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810822, 0.418758, -0.408912,
		-0.566429, -0.737361, 0.368044,
		-0.147395, 0.530039, 0.835065,
		42.159809, 34.485222, 41.126907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665142, 33.791260, 40.890362>,  <42.262985, 34.114193, 40.542362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665142, 33.791260, 40.890362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731236, 34.182346, 40.942165>,  <41.770893, 34.416996, 40.973248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731236, 34.182346, 40.942165>,  <41.665142, 33.791260, 40.890362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731236, 34.182346, 40.942165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882015, 0.205250, -0.424173,
		-0.441302, -0.044140, 0.896273,
		0.165237, 0.977714, 0.129509,
		41.780807, 34.475662, 40.981018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997623, 34.052074, 41.118477>,  <41.665142, 33.791260, 40.890362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997623, 34.052074, 41.118477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218899, 34.327778, 40.931332>,  <41.351665, 34.493202, 40.819042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218899, 34.327778, 40.931332>,  <40.997623, 34.052074, 41.118477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218899, 34.327778, 40.931332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782327, 0.236836, -0.576084,
		-0.286265, 0.684708, 0.670244,
		0.553187, 0.689263, -0.467868,
		41.384853, 34.534557, 40.790970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495380, 34.574722, 40.942665>,  <40.997623, 34.052074, 41.118477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495380, 34.574722, 40.942665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810749, 34.696995, 40.729141>,  <40.999969, 34.770359, 40.601025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810749, 34.696995, 40.729141>,  <40.495380, 34.574722, 40.942665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810749, 34.696995, 40.729141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607797, 0.253444, -0.752561,
		-0.094752, 0.917783, 0.385612,
		0.788419, 0.305680, -0.533812,
		41.047276, 34.788700, 40.568996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396667, 35.293537, 40.722328>,  <40.495380, 34.574722, 40.942665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396667, 35.293537, 40.722328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607800, 35.079910, 40.458157>,  <40.734478, 34.951733, 40.299652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607800, 35.079910, 40.458157>,  <40.396667, 35.293537, 40.722328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607800, 35.079910, 40.458157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605530, 0.308632, -0.733539,
		0.595588, 0.787095, -0.160487,
		0.527833, -0.534066, -0.660428,
		40.766151, 34.919689, 40.260029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487705, 35.729282, 40.165390>,  <40.396667, 35.293537, 40.722328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487705, 35.729282, 40.165390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538593, 35.376720, 39.983425>,  <40.569126, 35.165184, 39.874245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538593, 35.376720, 39.983425>,  <40.487705, 35.729282, 40.165390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538593, 35.376720, 39.983425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316455, 0.398602, -0.860798,
		0.940038, 0.253467, -0.228216,
		0.127217, -0.881403, -0.454912,
		40.576759, 35.112301, 39.846951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781544, 35.886017, 39.635223>,  <40.487705, 35.729282, 40.165390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781544, 35.886017, 39.635223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696445, 35.522663, 39.491238>,  <40.645386, 35.304649, 39.404846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696445, 35.522663, 39.491238>,  <40.781544, 35.886017, 39.635223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696445, 35.522663, 39.491238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065333, 0.380797, -0.922348,
		0.974920, -0.172712, -0.140362,
		-0.212750, -0.908386, -0.359963,
		40.632622, 35.250149, 39.383247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411667, 36.190929, 39.426258>,  <40.781544, 35.886017, 39.635223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411667, 36.190929, 39.426258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032761, 36.277828, 39.332039>,  <40.805416, 36.329967, 39.275509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032761, 36.277828, 39.332039>,  <41.411667, 36.190929, 39.426258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032761, 36.277828, 39.332039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151116, -0.345328, -0.926236,
		-0.282565, -0.912991, 0.294289,
		-0.947271, 0.217250, -0.235545,
		40.748581, 36.343002, 39.261375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057076, 35.800755, 38.949734>,  <41.411667, 36.190929, 39.426258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057076, 35.800755, 38.949734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794407, 35.499302, 38.961140>,  <40.636806, 35.318428, 38.967983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794407, 35.499302, 38.961140>,  <41.057076, 35.800755, 38.949734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794407, 35.499302, 38.961140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318618, 0.242954, -0.916218,
		0.683566, -0.610743, -0.399663,
		-0.656673, -0.753635, 0.028518,
		40.597404, 35.273212, 38.969696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296635, 35.236664, 38.460697>,  <41.057076, 35.800755, 38.949734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296635, 35.236664, 38.460697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899719, 35.208103, 38.501209>,  <40.661568, 35.190968, 38.525517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899719, 35.208103, 38.501209>,  <41.296635, 35.236664, 38.460697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899719, 35.208103, 38.501209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115607, 0.239193, -0.964065,
		0.044610, -0.968343, -0.245604,
		-0.992293, -0.071401, 0.101277,
		40.602032, 35.186684, 38.531593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003750, 34.712704, 38.052143>,  <41.296635, 35.236664, 38.460697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003750, 34.712704, 38.052143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697948, 34.964806, 38.106274>,  <40.514469, 35.116066, 38.138752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697948, 34.964806, 38.106274>,  <41.003750, 34.712704, 38.052143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697948, 34.964806, 38.106274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064466, 0.134121, -0.988866,
		-0.641391, -0.764713, -0.061905,
		-0.764501, 0.630259, 0.135322,
		40.468597, 35.153885, 38.146870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700241, 34.706169, 37.374325>,  <41.003750, 34.712704, 38.052143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700241, 34.706169, 37.374325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476181, 34.997749, 37.531734>,  <40.341743, 35.172699, 37.626179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476181, 34.997749, 37.531734>,  <40.700241, 34.706169, 37.374325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476181, 34.997749, 37.531734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125277, 0.395042, -0.910081,
		-0.818862, -0.559083, -0.129963,
		-0.560152, 0.728950, 0.393525,
		40.308136, 35.216434, 37.649792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242313, 34.737370, 36.823006>,  <40.700241, 34.706169, 37.374325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242313, 34.737370, 36.823006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261845, 35.070580, 37.043434>,  <40.273563, 35.270508, 37.175694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261845, 35.070580, 37.043434>,  <40.242313, 34.737370, 36.823006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261845, 35.070580, 37.043434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192265, 0.549251, -0.813239,
		-0.980128, -0.066245, 0.186979,
		0.048826, 0.833027, 0.551073,
		40.276493, 35.320488, 37.208755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655758, 35.143784, 36.694427>,  <40.242313, 34.737370, 36.823006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655758, 35.143784, 36.694427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947498, 35.389156, 36.815586>,  <40.122543, 35.536381, 36.888283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947498, 35.389156, 36.815586>,  <39.655758, 35.143784, 36.694427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947498, 35.389156, 36.815586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177591, 0.597325, -0.782090,
		-0.660688, 0.516626, 0.544600,
		0.729351, 0.613434, 0.302897,
		40.166302, 35.573185, 36.906456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477268, 35.821903, 36.429848>,  <39.655758, 35.143784, 36.694427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477268, 35.821903, 36.429848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854347, 35.874714, 36.552418>,  <40.080593, 35.906399, 36.625961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854347, 35.874714, 36.552418>,  <39.477268, 35.821903, 36.429848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854347, 35.874714, 36.552418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132310, 0.695176, -0.706559,
		-0.306301, 0.706612, 0.637871,
		0.942695, 0.132023, 0.306424,
		40.137157, 35.914322, 36.644344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566360, 36.518726, 36.458515>,  <39.477268, 35.821903, 36.429848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566360, 36.518726, 36.458515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927135, 36.358185, 36.394749>,  <40.143600, 36.261860, 36.356491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927135, 36.358185, 36.394749>,  <39.566360, 36.518726, 36.458515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927135, 36.358185, 36.394749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175761, 0.678337, -0.713419,
		0.394472, 0.615444, 0.682364,
		0.901942, -0.401357, -0.159414,
		40.197720, 36.237778, 36.346924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081295, 37.088531, 36.344498>,  <39.566360, 36.518726, 36.458515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081295, 37.088531, 36.344498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267673, 36.765308, 36.200310>,  <40.379501, 36.571377, 36.113796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267673, 36.765308, 36.200310>,  <40.081295, 37.088531, 36.344498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267673, 36.765308, 36.200310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491962, 0.575218, -0.653527,
		0.735435, 0.127172, 0.665555,
		0.465950, -0.808054, -0.360472,
		40.407459, 36.522892, 36.092167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788368, 37.330311, 36.087425>,  <40.081295, 37.088531, 36.344498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788368, 37.330311, 36.087425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736732, 36.969154, 35.923416>,  <40.705753, 36.752460, 35.825008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736732, 36.969154, 35.923416>,  <40.788368, 37.330311, 36.087425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736732, 36.969154, 35.923416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443057, 0.317405, -0.838424,
		0.887151, -0.289894, 0.359060,
		-0.129087, -0.902893, -0.410026,
		40.698006, 36.698288, 35.800407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260860, 37.399754, 35.651123>,  <40.788368, 37.330311, 36.087425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260860, 37.399754, 35.651123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037624, 37.093731, 35.522610>,  <40.903683, 36.910118, 35.445499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037624, 37.093731, 35.522610>,  <41.260860, 37.399754, 35.651123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037624, 37.093731, 35.522610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370021, 0.117112, -0.921612,
		0.742715, -0.633221, 0.217729,
		-0.558086, -0.765059, -0.321286,
		40.870197, 36.864212, 35.426224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678406, 36.965282, 35.374996>,  <41.260860, 37.399754, 35.651123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678406, 36.965282, 35.374996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323898, 36.876427, 35.212425>,  <41.111195, 36.823112, 35.114883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323898, 36.876427, 35.212425>,  <41.678406, 36.965282, 35.374996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323898, 36.876427, 35.212425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362835, 0.212421, -0.907319,
		0.287891, -0.951593, -0.107659,
		-0.886267, -0.222146, -0.406425,
		41.058018, 36.809784, 35.090496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762512, 36.482388, 34.811481>,  <41.678406, 36.965282, 35.374996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762512, 36.482388, 34.811481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395153, 36.630459, 34.755604>,  <41.174736, 36.719303, 34.722076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395153, 36.630459, 34.755604>,  <41.762512, 36.482388, 34.811481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395153, 36.630459, 34.755604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168116, 0.045490, -0.984717,
		-0.358170, -0.927845, -0.104011,
		-0.918396, 0.370182, -0.139692,
		41.119633, 36.741512, 34.713696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584587, 36.207130, 34.043171>,  <41.762512, 36.482388, 34.811481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584587, 36.207130, 34.043171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357464, 36.521385, 34.141445>,  <41.221188, 36.709938, 34.200409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357464, 36.521385, 34.141445>,  <41.584587, 36.207130, 34.043171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357464, 36.521385, 34.141445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012187, 0.306457, -0.951806,
		-0.823069, -0.537452, -0.183584,
		-0.567811, 0.785640, 0.245685,
		41.187122, 36.757076, 34.215149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400604, 36.220982, 34.067085>,  <41.584587, 36.207130, 34.043171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400604, 36.220982, 34.067085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765957, 36.157833, 33.916988>,  <42.985168, 36.119946, 33.826931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765957, 36.157833, 33.916988>,  <42.400604, 36.220982, 34.067085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765957, 36.157833, 33.916988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401744, 0.498594, 0.768118,
		0.065831, -0.852338, 0.518831,
		0.913383, -0.157872, -0.375245,
		43.039970, 36.110470, 33.804417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822186, 35.998650, 34.579262>,  <42.400604, 36.220982, 34.067085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822186, 35.998650, 34.579262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094238, 36.141270, 34.323048>,  <43.257469, 36.226841, 34.169319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094238, 36.141270, 34.323048>,  <42.822186, 35.998650, 34.579262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094238, 36.141270, 34.323048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466772, 0.463125, 0.753418,
		0.565279, -0.811412, 0.148561,
		0.680135, 0.356548, -0.640539,
		43.298279, 36.248234, 34.130886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529133, 35.894382, 34.922462>,  <42.822186, 35.998650, 34.579262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529133, 35.894382, 34.922462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496685, 36.186653, 34.651306>,  <43.477219, 36.362015, 34.488613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496685, 36.186653, 34.651306>,  <43.529133, 35.894382, 34.922462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496685, 36.186653, 34.651306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289231, 0.668123, 0.685534,
		0.953816, -0.140459, -0.265529,
		-0.081117, 0.730673, -0.677892,
		43.472351, 36.405853, 34.447937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127945, 36.357185, 34.916363>,  <43.529133, 35.894382, 34.922462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127945, 36.357185, 34.916363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825603, 36.572411, 34.767136>,  <43.644199, 36.701546, 34.677601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825603, 36.572411, 34.767136>,  <44.127945, 36.357185, 34.916363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825603, 36.572411, 34.767136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141704, 0.690718, 0.709104,
		0.639224, 0.483113, -0.598326,
		-0.755852, 0.538062, -0.373065,
		43.598846, 36.733829, 34.655216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511799, 36.834003, 35.164021>,  <44.127945, 36.357185, 34.916363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511799, 36.834003, 35.164021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779205, 37.086506, 35.006744>,  <43.939648, 37.238007, 34.912380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779205, 37.086506, 35.006744>,  <43.511799, 36.834003, 35.164021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779205, 37.086506, 35.006744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333674, -0.217903, -0.917159,
		-0.664643, 0.744331, 0.064964,
		0.668514, 0.631260, -0.393191,
		43.979759, 37.275883, 34.888786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244156, 37.405865, 34.705780>,  <43.511799, 36.834003, 35.164021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244156, 37.405865, 34.705780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610825, 37.306202, 34.580795>,  <43.830826, 37.246403, 34.505802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610825, 37.306202, 34.580795>,  <43.244156, 37.405865, 34.705780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610825, 37.306202, 34.580795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392549, -0.414728, -0.820918,
		0.074949, 0.875170, -0.477975,
		0.916672, -0.249156, -0.312464,
		43.885826, 37.231457, 34.487057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332760, 37.544273, 33.996967>,  <43.244156, 37.405865, 34.705780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332760, 37.544273, 33.996967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554119, 37.248035, 34.149429>,  <43.686935, 37.070293, 34.240906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554119, 37.248035, 34.149429>,  <43.332760, 37.544273, 33.996967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554119, 37.248035, 34.149429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342611, -0.619504, -0.706281,
		0.759192, 0.260264, -0.596565,
		0.553394, -0.740593, 0.381153,
		43.720139, 37.025856, 34.263775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581070, 37.260506, 33.431400>,  <43.332760, 37.544273, 33.996967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581070, 37.260506, 33.431400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589088, 36.995331, 33.730762>,  <43.593899, 36.836227, 33.910381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589088, 36.995331, 33.730762>,  <43.581070, 37.260506, 33.431400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589088, 36.995331, 33.730762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142449, -0.742817, -0.654165,
		0.989599, -0.093498, -0.109323,
		0.020044, -0.662934, 0.748410,
		43.595100, 36.796452, 33.955284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119331, 36.736900, 33.271442>,  <43.581070, 37.260506, 33.431400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119331, 36.736900, 33.271442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834255, 36.598408, 33.515472>,  <43.663208, 36.515312, 33.661892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834255, 36.598408, 33.515472>,  <44.119331, 36.736900, 33.271442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834255, 36.598408, 33.515472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256264, -0.681085, -0.685896,
		0.652991, -0.645174, 0.396678,
		-0.712693, -0.346229, 0.610077,
		43.620449, 36.494537, 33.698494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063805, 36.100136, 33.078419>,  <44.119331, 36.736900, 33.271442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063805, 36.100136, 33.078419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743729, 36.102230, 33.318306>,  <43.551682, 36.103485, 33.462238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743729, 36.102230, 33.318306>,  <44.063805, 36.100136, 33.078419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743729, 36.102230, 33.318306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481425, -0.601939, -0.637102,
		0.357662, -0.798525, 0.484186,
		-0.800192, 0.005231, 0.599720,
		43.503670, 36.103798, 33.498222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803596, 35.460991, 33.156860>,  <44.063805, 36.100136, 33.078419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803596, 35.460991, 33.156860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465221, 35.649300, 33.257072>,  <43.262196, 35.762283, 33.317200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465221, 35.649300, 33.257072>,  <43.803596, 35.460991, 33.156860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465221, 35.649300, 33.257072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528645, -0.678478, -0.510100,
		-0.070162, -0.563954, 0.822820,
		-0.845938, 0.470770, 0.250528,
		43.211441, 35.790531, 33.332230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984932, 35.436745, 33.773983>,  <43.803596, 35.460991, 33.156860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984932, 35.436745, 33.773983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288944, 35.184818, 33.838093>,  <44.471352, 35.033661, 33.876556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288944, 35.184818, 33.838093>,  <43.984932, 35.436745, 33.773983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288944, 35.184818, 33.838093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631941, 0.773771, 0.043914,
		-0.151672, 0.067907, 0.986095,
		0.760030, -0.629815, 0.160273,
		44.516953, 34.995872, 33.886173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378235, 35.857372, 34.259148>,  <43.984932, 35.436745, 33.773983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378235, 35.857372, 34.259148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595005, 35.614765, 34.026440>,  <44.725067, 35.469200, 33.886814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595005, 35.614765, 34.026440>,  <44.378235, 35.857372, 34.259148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595005, 35.614765, 34.026440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690078, 0.716240, -0.103887,
		0.479694, -0.345165, 0.806694,
		0.541928, -0.606516, -0.581766,
		44.757584, 35.432812, 33.851910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200577, 35.857658, 34.420574>,  <44.378235, 35.857372, 34.259148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200577, 35.857658, 34.420574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150234, 35.785625, 34.030346>,  <45.120029, 35.742405, 33.796211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150234, 35.785625, 34.030346>,  <45.200577, 35.857658, 34.420574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150234, 35.785625, 34.030346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815436, 0.541287, -0.205115,
		0.564999, -0.821328, 0.078720,
		-0.125856, -0.180081, -0.975567,
		45.112476, 35.731602, 33.737675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701336, 36.080559, 33.956226>,  <45.200577, 35.857658, 34.420574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701336, 36.080559, 33.956226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614147, 35.911057, 33.604565>,  <45.561832, 35.809353, 33.393566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614147, 35.911057, 33.604565>,  <45.701336, 36.080559, 33.956226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614147, 35.911057, 33.604565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517516, 0.713554, -0.472248,
		0.827445, -0.557915, 0.063766,
		-0.217973, -0.423759, -0.879157,
		45.548756, 35.783928, 33.340816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337570, 36.093777, 33.574223>,  <45.701336, 36.080559, 33.956226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337570, 36.093777, 33.574223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012188, 36.059689, 33.344082>,  <45.816959, 36.039238, 33.205997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012188, 36.059689, 33.344082>,  <46.337570, 36.093777, 33.574223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012188, 36.059689, 33.344082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366234, 0.693439, -0.620496,
		0.451849, -0.715459, -0.532870,
		-0.813452, -0.085215, -0.575355,
		45.768154, 36.034122, 33.171474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376621, 35.368557, 33.939819>,  <46.337570, 36.093777, 33.574223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376621, 35.368557, 33.939819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474731, 34.980831, 33.933247>,  <46.533600, 34.748196, 33.929302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474731, 34.980831, 33.933247>,  <46.376621, 35.368557, 33.939819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474731, 34.980831, 33.933247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694379, 0.163827, 0.700712,
		-0.676517, -0.183282, 0.713254,
		0.245278, -0.969313, -0.016435,
		46.548313, 34.690037, 33.928314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297497, 34.993767, 34.647720>,  <46.376621, 35.368557, 33.939819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297497, 34.993767, 34.647720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596287, 34.833199, 34.435722>,  <46.775562, 34.736858, 34.308525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596287, 34.833199, 34.435722>,  <46.297497, 34.993767, 34.647720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596287, 34.833199, 34.435722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645118, 0.244830, 0.723796,
		-0.160786, -0.882566, 0.441843,
		0.746974, -0.401418, -0.529994,
		46.820377, 34.712772, 34.276726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705139, 34.473454, 35.091999>,  <46.297497, 34.993767, 34.647720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705139, 34.473454, 35.091999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885349, 34.688683, 34.807041>,  <46.993473, 34.817818, 34.636066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885349, 34.688683, 34.807041>,  <46.705139, 34.473454, 35.091999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.885349, 34.688683, 34.807041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638270, 0.363803, 0.678423,
		0.624211, -0.760347, -0.179532,
		0.450523, 0.538070, -0.712397,
		47.020508, 34.850105, 34.593323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119534, 34.725552, 35.501907>,  <46.705139, 34.473454, 35.091999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119534, 34.725552, 35.501907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212906, 34.876755, 35.143551>,  <47.268929, 34.967476, 34.928535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212906, 34.876755, 35.143551>,  <47.119534, 34.725552, 35.501907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.212906, 34.876755, 35.143551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687078, 0.587835, 0.427053,
		0.688065, -0.715234, -0.122502,
		0.233432, 0.378009, -0.895890,
		47.282936, 34.990158, 34.874783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909344, 34.631569, 35.258915>,  <47.119534, 34.725552, 35.501907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909344, 34.631569, 35.258915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729931, 34.945740, 35.088303>,  <47.622284, 35.134243, 34.985935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729931, 34.945740, 35.088303>,  <47.909344, 34.631569, 35.258915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.729931, 34.945740, 35.088303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670096, 0.611310, 0.421036,
		0.591434, -0.096969, -0.800502,
		-0.448528, 0.785428, -0.426528,
		47.595371, 35.181370, 34.960342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.814316, 37.940289, 24.092016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431660, 37.824020, 24.099434>,  <37.202065, 37.754261, 24.103884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431660, 37.824020, 24.099434>,  <37.814316, 37.940289, 24.092016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431660, 37.824020, 24.099434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034827, -0.050947, 0.998094,
		-0.289168, 0.955467, 0.058862,
		-0.956645, -0.290667, 0.018544,
		37.144665, 37.736820, 24.104998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519848, 38.336918, 24.639004>,  <37.814316, 37.940289, 24.092016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519848, 38.336918, 24.639004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253761, 38.042347, 24.589756>,  <37.094109, 37.865604, 24.560207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253761, 38.042347, 24.589756>,  <37.519848, 38.336918, 24.639004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253761, 38.042347, 24.589756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134483, -0.044022, 0.989938,
		-0.734438, 0.675081, -0.069752,
		-0.665218, -0.736429, -0.123118,
		37.054195, 37.821419, 24.552820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970654, 38.520172, 25.109053>,  <37.519848, 38.336918, 24.639004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970654, 38.520172, 25.109053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931400, 38.128841, 25.036112>,  <36.907848, 37.894043, 24.992348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931400, 38.128841, 25.036112>,  <36.970654, 38.520172, 25.109053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931400, 38.128841, 25.036112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284696, -0.147979, 0.947128,
		-0.953582, 0.144859, -0.264003,
		-0.098133, -0.978324, -0.182351,
		36.901962, 37.835342, 24.981407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391304, 38.299271, 25.516916>,  <36.970654, 38.520172, 25.109053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391304, 38.299271, 25.516916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571117, 37.949379, 25.444511>,  <36.679005, 37.739445, 25.401070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571117, 37.949379, 25.444511>,  <36.391304, 38.299271, 25.516916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571117, 37.949379, 25.444511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312461, -0.343822, 0.885525,
		-0.836830, -0.341518, -0.427879,
		0.449537, -0.874730, -0.181010,
		36.705978, 37.686958, 25.390209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907288, 37.801994, 25.721851>,  <36.391304, 38.299271, 25.516916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907288, 37.801994, 25.721851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272316, 37.638634, 25.730099>,  <36.491333, 37.540615, 25.735046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272316, 37.638634, 25.730099>,  <35.907288, 37.801994, 25.721851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272316, 37.638634, 25.730099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213840, -0.433631, 0.875349,
		-0.348553, -0.803226, -0.483051,
		0.912570, -0.408401, 0.020619,
		36.546085, 37.516113, 25.736284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767433, 37.130219, 26.048479>,  <35.907288, 37.801994, 25.721851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767433, 37.130219, 26.048479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160751, 37.200169, 26.068642>,  <36.396744, 37.242138, 26.080738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160751, 37.200169, 26.068642>,  <35.767433, 37.130219, 26.048479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160751, 37.200169, 26.068642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008861, -0.322634, 0.946482,
		0.181778, -0.930229, -0.318796,
		0.983300, 0.174874, 0.050405,
		36.455742, 37.252632, 26.083763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146889, 36.506409, 26.203609>,  <35.767433, 37.130219, 26.048479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146889, 36.506409, 26.203609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398418, 36.791172, 26.328688>,  <36.549335, 36.962029, 26.403734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398418, 36.791172, 26.328688>,  <36.146889, 36.506409, 26.203609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398418, 36.791172, 26.328688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262786, -0.573067, 0.776233,
		0.731799, -0.405939, -0.547434,
		0.628819, 0.711904, 0.312695,
		36.587063, 37.004742, 26.422497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701519, 36.137321, 26.493622>,  <36.146889, 36.506409, 26.203609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701519, 36.137321, 26.493622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703827, 36.504742, 26.651722>,  <36.705212, 36.725193, 26.746582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703827, 36.504742, 26.651722>,  <36.701519, 36.137321, 26.493622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703827, 36.504742, 26.651722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299523, -0.378699, 0.875713,
		0.954072, 0.113333, -0.277314,
		0.005772, 0.918555, 0.395252,
		36.705559, 36.780308, 26.770298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257092, 36.156376, 26.961607>,  <36.701519, 36.137321, 26.493622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257092, 36.156376, 26.961607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055450, 36.493847, 27.035465>,  <36.934467, 36.696331, 27.079781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055450, 36.493847, 27.035465>,  <37.257092, 36.156376, 26.961607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055450, 36.493847, 27.035465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233225, -0.072872, 0.969689,
		0.831559, 0.531883, -0.160032,
		-0.504099, 0.843677, 0.184646,
		36.904221, 36.746948, 27.090858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737415, 36.693092, 27.279047>,  <37.257092, 36.156376, 26.961607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737415, 36.693092, 27.279047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366543, 36.767723, 27.408981>,  <37.144020, 36.812504, 27.486942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366543, 36.767723, 27.408981>,  <37.737415, 36.693092, 27.279047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366543, 36.767723, 27.408981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304226, -0.130919, 0.943561,
		0.218575, 0.973678, 0.064624,
		-0.927185, 0.186579, 0.324834,
		37.088387, 36.823696, 27.506432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856899, 37.103386, 27.826130>,  <37.737415, 36.693092, 27.279047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856899, 37.103386, 27.826130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485165, 36.971359, 27.892336>,  <37.262123, 36.892143, 27.932060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485165, 36.971359, 27.892336>,  <37.856899, 37.103386, 27.826130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485165, 36.971359, 27.892336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256649, -0.255152, 0.932217,
		-0.265459, 0.908821, 0.321832,
		-0.929335, -0.330063, 0.165515,
		37.206364, 36.872341, 27.941990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716080, 37.362209, 28.535316>,  <37.856899, 37.103386, 27.826130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716080, 37.362209, 28.535316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443493, 37.073952, 28.484297>,  <37.279942, 36.900997, 28.453686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443493, 37.073952, 28.484297>,  <37.716080, 37.362209, 28.535316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443493, 37.073952, 28.484297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108350, -0.271712, 0.956260,
		-0.723780, 0.637844, 0.263245,
		-0.681471, -0.720645, -0.127549,
		37.239052, 36.857758, 28.446032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258492, 37.404167, 29.149540>,  <37.716080, 37.362209, 28.535316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258492, 37.404167, 29.149540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194229, 37.041603, 28.993282>,  <37.155674, 36.824062, 28.899529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194229, 37.041603, 28.993282>,  <37.258492, 37.404167, 29.149540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194229, 37.041603, 28.993282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138549, -0.412576, 0.900325,
		-0.977238, 0.090516, 0.191865,
		-0.160653, -0.906415, -0.390644,
		37.146034, 36.769680, 28.876089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766602, 37.054157, 29.687691>,  <37.258492, 37.404167, 29.149540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766602, 37.054157, 29.687691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930882, 36.765312, 29.465025>,  <37.029449, 36.592007, 29.331425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930882, 36.765312, 29.465025>,  <36.766602, 37.054157, 29.687691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930882, 36.765312, 29.465025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121287, -0.561837, 0.818308,
		-0.903666, -0.403598, -0.143165,
		0.410703, -0.722114, -0.556665,
		37.054092, 36.548679, 29.298025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483707, 36.509689, 29.937187>,  <36.766602, 37.054157, 29.687691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483707, 36.509689, 29.937187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777550, 36.344738, 29.721670>,  <36.953857, 36.245770, 29.592360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777550, 36.344738, 29.721670>,  <36.483707, 36.509689, 29.937187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777550, 36.344738, 29.721670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151607, -0.674259, 0.722766,
		-0.661325, -0.612641, -0.432806,
		0.734619, -0.412366, -0.538785,
		36.997932, 36.221024, 29.560032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419334, 35.695923, 30.049150>,  <36.483707, 36.509689, 29.937187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419334, 35.695923, 30.049150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804466, 35.762436, 29.964012>,  <37.035545, 35.802345, 29.912930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804466, 35.762436, 29.964012>,  <36.419334, 35.695923, 30.049150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804466, 35.762436, 29.964012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257910, -0.331964, 0.907349,
		0.080220, -0.928520, -0.362512,
		0.962833, 0.166283, -0.212844,
		37.093315, 35.812321, 29.900158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706120, 35.057148, 30.234795>,  <36.419334, 35.695923, 30.049150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706120, 35.057148, 30.234795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004910, 35.322651, 30.219505>,  <37.184181, 35.481953, 30.210331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004910, 35.322651, 30.219505>,  <36.706120, 35.057148, 30.234795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004910, 35.322651, 30.219505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414803, -0.420334, 0.807006,
		0.519586, -0.618667, -0.589305,
		0.746973, 0.663755, -0.038225,
		37.229000, 35.521778, 30.208038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309578, 34.671715, 30.169729>,  <36.706120, 35.057148, 30.234795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309578, 34.671715, 30.169729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422359, 35.032188, 30.301411>,  <37.490028, 35.248474, 30.380419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422359, 35.032188, 30.301411>,  <37.309578, 34.671715, 30.169729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422359, 35.032188, 30.301411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410906, -0.423484, 0.807352,
		0.866983, -0.092362, -0.489703,
		0.281950, 0.901183, 0.329201,
		37.506943, 35.302544, 30.400171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067459, 34.660797, 30.259960>,  <37.309578, 34.671715, 30.169729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067459, 34.660797, 30.259960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937008, 34.957397, 30.494501>,  <37.858738, 35.135357, 30.635225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937008, 34.957397, 30.494501>,  <38.067459, 34.660797, 30.259960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937008, 34.957397, 30.494501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648825, -0.275521, 0.709305,
		0.687505, 0.611768, -0.391250,
		-0.326133, 0.741504, 0.586353,
		37.839169, 35.179848, 30.670406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633411, 34.911934, 30.644663>,  <38.067459, 34.660797, 30.259960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633411, 34.911934, 30.644663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330929, 35.034882, 30.875719>,  <38.149437, 35.108650, 31.014353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330929, 35.034882, 30.875719>,  <38.633411, 34.911934, 30.644663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330929, 35.034882, 30.875719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545922, -0.190292, 0.815940,
		0.360718, 0.932369, -0.023901,
		-0.756208, 0.307372, 0.577643,
		38.104065, 35.127094, 31.049011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831890, 35.417572, 31.143583>,  <38.633411, 34.911934, 30.644663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831890, 35.417572, 31.143583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513084, 35.238914, 31.306202>,  <38.321800, 35.131721, 31.403772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513084, 35.238914, 31.306202>,  <38.831890, 35.417572, 31.143583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513084, 35.238914, 31.306202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561372, -0.299553, 0.771447,
		-0.222781, 0.843076, 0.489481,
		-0.797014, -0.446644, 0.406545,
		38.273979, 35.104919, 31.428165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837746, 35.642101, 31.756418>,  <38.831890, 35.417572, 31.143583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837746, 35.642101, 31.756418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588421, 35.334679, 31.814116>,  <38.438824, 35.150227, 31.848734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588421, 35.334679, 31.814116>,  <38.837746, 35.642101, 31.756418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588421, 35.334679, 31.814116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434592, -0.187122, 0.880974,
		-0.650084, 0.611811, 0.450643,
		-0.623315, -0.768552, 0.144243,
		38.401428, 35.104115, 31.857388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125847, 36.085049, 32.370739>,  <38.837746, 35.642101, 31.756418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125847, 36.085049, 32.370739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.502964, 36.024670, 32.251842>,  <39.729237, 35.988441, 32.180504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.502964, 36.024670, 32.251842>,  <39.125847, 36.085049, 32.370739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502964, 36.024670, 32.251842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169480, 0.550772, -0.817268,
		0.287076, 0.820893, 0.493682,
		0.942796, -0.150949, -0.297238,
		39.785801, 35.979385, 32.162670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434669, 36.822834, 32.121811>,  <39.125847, 36.085049, 32.370739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434669, 36.822834, 32.121811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.679604, 36.552418, 31.957857>,  <39.826565, 36.390167, 31.859484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.679604, 36.552418, 31.957857>,  <39.434669, 36.822834, 32.121811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679604, 36.552418, 31.957857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009211, 0.512318, -0.858746,
		0.790542, 0.529619, 0.307486,
		0.612339, -0.676043, -0.409887,
		39.863304, 36.349606, 31.834890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975063, 37.196651, 31.726881>,  <39.434669, 36.822834, 32.121811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975063, 37.196651, 31.726881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950371, 36.824493, 31.582355>,  <39.935555, 36.601196, 31.495640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950371, 36.824493, 31.582355>,  <39.975063, 37.196651, 31.726881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950371, 36.824493, 31.582355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146191, 0.366526, -0.918850,
		0.987328, -0.003898, -0.158641,
		-0.061728, -0.930400, -0.361312,
		39.931854, 36.545372, 31.473963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604801, 37.153168, 31.214710>,  <39.975063, 37.196651, 31.726881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604801, 37.153168, 31.214710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.327812, 36.873825, 31.142292>,  <40.161617, 36.706219, 31.098841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.327812, 36.873825, 31.142292>,  <40.604801, 37.153168, 31.214710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327812, 36.873825, 31.142292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003046, 0.248118, -0.968725,
		0.721437, -0.671368, -0.169688,
		-0.692473, -0.698357, -0.181046,
		40.120071, 36.664318, 31.087978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872463, 36.939949, 30.619249>,  <40.604801, 37.153168, 31.214710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872463, 36.939949, 30.619249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.510902, 36.768883, 30.616196>,  <40.293964, 36.666245, 30.614365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.510902, 36.768883, 30.616196>,  <40.872463, 36.939949, 30.619249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510902, 36.768883, 30.616196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076629, 0.179468, -0.980775,
		0.420812, -0.885943, -0.194994,
		-0.903906, -0.427664, -0.007633,
		40.239731, 36.640583, 30.613905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861176, 36.417500, 30.090841>,  <40.872463, 36.939949, 30.619249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861176, 36.417500, 30.090841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.479969, 36.530685, 30.134083>,  <40.251244, 36.598598, 30.160028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.479969, 36.530685, 30.134083>,  <40.861176, 36.417500, 30.090841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479969, 36.530685, 30.134083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067617, 0.149151, -0.986500,
		-0.295273, -0.947461, -0.123010,
		-0.953017, 0.282969, 0.108104,
		40.194065, 36.615578, 30.166513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470184, 35.994389, 29.532925>,  <40.861176, 36.417500, 30.090841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470184, 35.994389, 29.532925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.221752, 36.289024, 29.640024>,  <40.072693, 36.465805, 29.704285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.221752, 36.289024, 29.640024>,  <40.470184, 35.994389, 29.532925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221752, 36.289024, 29.640024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174002, 0.203509, -0.963487,
		-0.764184, -0.644995, 0.001771,
		-0.621084, 0.736590, 0.267749,
		40.035427, 36.510002, 29.720348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030857, 35.878189, 29.068966>,  <40.470184, 35.994389, 29.532925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030857, 35.878189, 29.068966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.983261, 36.255463, 29.193060>,  <39.954704, 36.481827, 29.267517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.983261, 36.255463, 29.193060>,  <40.030857, 35.878189, 29.068966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983261, 36.255463, 29.193060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130505, 0.294889, -0.946577,
		-0.984281, -0.153124, 0.088001,
		-0.118993, 0.943183, 0.310237,
		39.947563, 36.538418, 29.286131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613491, 36.117313, 28.594072>,  <40.030857, 35.878189, 29.068966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613491, 36.117313, 28.594072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.751575, 36.451313, 28.765469>,  <39.834427, 36.651714, 28.868307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.751575, 36.451313, 28.765469>,  <39.613491, 36.117313, 28.594072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751575, 36.451313, 28.765469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018425, 0.462499, -0.886428,
		-0.938345, 0.298109, 0.175044,
		0.345210, 0.835001, 0.428491,
		39.855137, 36.701813, 28.894016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103935, 36.575405, 28.372416>,  <39.613491, 36.117313, 28.594072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103935, 36.575405, 28.372416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430470, 36.788265, 28.462225>,  <39.626389, 36.915981, 28.516111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430470, 36.788265, 28.462225>,  <39.103935, 36.575405, 28.372416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430470, 36.788265, 28.462225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010865, 0.402810, -0.915219,
		-0.577477, 0.744686, 0.334609,
		0.816334, 0.532154, 0.224523,
		39.675369, 36.947910, 28.529581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935123, 37.243484, 28.252459>,  <39.103935, 36.575405, 28.372416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935123, 37.243484, 28.252459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333511, 37.216137, 28.229256>,  <39.572544, 37.199730, 28.215334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333511, 37.216137, 28.229256>,  <38.935123, 37.243484, 28.252459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333511, 37.216137, 28.229256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018257, 0.478755, -0.877759,
		0.087782, 0.875283, 0.475578,
		0.995972, -0.068369, -0.058007,
		39.632301, 37.195625, 28.211853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129505, 37.877560, 28.148888>,  <38.935123, 37.243484, 28.252459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129505, 37.877560, 28.148888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.421745, 37.647255, 28.002066>,  <39.597088, 37.509071, 27.913973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.421745, 37.647255, 28.002066>,  <39.129505, 37.877560, 28.148888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421745, 37.647255, 28.002066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055104, 0.486095, -0.872167,
		0.680580, 0.657430, 0.323413,
		0.730599, -0.575758, -0.367053,
		39.640926, 37.474529, 27.891951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498215, 38.306801, 27.705967>,  <39.129505, 37.877560, 28.148888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498215, 38.306801, 27.705967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628849, 37.950409, 27.579800>,  <39.707230, 37.736572, 27.504099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628849, 37.950409, 27.579800>,  <39.498215, 38.306801, 27.705967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628849, 37.950409, 27.579800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091868, 0.362062, -0.927616,
		0.940693, 0.273968, 0.200097,
		0.326584, -0.890984, -0.315420,
		39.726826, 37.683113, 27.485174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857235, 38.569614, 27.201576>,  <39.498215, 38.306801, 27.705967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857235, 38.569614, 27.201576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838444, 38.176723, 27.128891>,  <39.827171, 37.940987, 27.085279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838444, 38.176723, 27.128891>,  <39.857235, 38.569614, 27.201576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838444, 38.176723, 27.128891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112909, 0.175524, -0.977979,
		0.992494, -0.066458, 0.102657,
		-0.046976, -0.982229, -0.181711,
		39.824352, 37.882053, 27.074377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543743, 38.233089, 26.936169>,  <39.857235, 38.569614, 27.201576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543743, 38.233089, 26.936169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.217163, 38.040115, 26.809256>,  <40.021214, 37.924332, 26.733109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.217163, 38.040115, 26.809256>,  <40.543743, 38.233089, 26.936169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217163, 38.040115, 26.809256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144976, 0.360610, -0.921381,
		0.558921, -0.798259, -0.224478,
		-0.816449, -0.482435, -0.317281,
		39.972229, 37.895386, 26.714071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798531, 38.098022, 26.399729>,  <40.543743, 38.233089, 26.936169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798531, 38.098022, 26.399729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.408489, 38.023636, 26.351402>,  <40.174465, 37.979004, 26.322407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.408489, 38.023636, 26.351402>,  <40.798531, 38.098022, 26.399729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408489, 38.023636, 26.351402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054678, 0.326369, -0.943659,
		0.214916, -0.926769, -0.308075,
		-0.975101, -0.185963, -0.120816,
		40.115959, 37.967846, 26.315157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784748, 37.892376, 25.824921>,  <40.798531, 38.098022, 26.399729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784748, 37.892376, 25.824921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392963, 37.971840, 25.838694>,  <40.157894, 38.019520, 25.846958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392963, 37.971840, 25.838694>,  <40.784748, 37.892376, 25.824921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392963, 37.971840, 25.838694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025923, 0.293435, -0.955628,
		-0.199951, -0.935109, -0.292559,
		-0.979463, 0.198663, 0.034432,
		40.099125, 38.031437, 25.849024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531456, 37.457378, 25.387873>,  <40.784748, 37.892376, 25.824921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531456, 37.457378, 25.387873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.274288, 37.757244, 25.450687>,  <40.119987, 37.937164, 25.488377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.274288, 37.757244, 25.450687>,  <40.531456, 37.457378, 25.387873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274288, 37.757244, 25.450687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105097, 0.116741, -0.987586,
		-0.758692, -0.651439, 0.003733,
		-0.642916, 0.749666, 0.157035,
		40.081413, 37.982143, 25.497797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.513710, 37.225208, 25.044407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561970, 37.618263, 25.100800>,  <39.590927, 37.854095, 25.134634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561970, 37.618263, 25.100800>,  <39.513710, 37.225208, 25.044407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561970, 37.618263, 25.100800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366084, 0.176050, -0.913777,
		-0.922727, 0.058637, 0.380967,
		0.120651, 0.982633, 0.140980,
		39.598164, 37.913052, 25.143093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835018, 37.601326, 24.877855>,  <39.513710, 37.225208, 25.044407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835018, 37.601326, 24.877855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137535, 37.858307, 24.828428>,  <39.319046, 38.012497, 24.798773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137535, 37.858307, 24.828428>,  <38.835018, 37.601326, 24.877855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137535, 37.858307, 24.828428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399576, 0.304044, -0.864810,
		-0.518033, 0.703425, 0.486657,
		0.756294, 0.642456, -0.123566,
		39.364422, 38.051044, 24.791359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538059, 38.016396, 24.445959>,  <38.835018, 37.601326, 24.877855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538059, 38.016396, 24.445959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926731, 38.104733, 24.412319>,  <39.159935, 38.157734, 24.392136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926731, 38.104733, 24.412319>,  <38.538059, 38.016396, 24.445959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926731, 38.104733, 24.412319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156417, 0.334302, -0.929396,
		-0.177131, 0.916228, 0.359376,
		0.971678, 0.220838, -0.084098,
		39.218235, 38.170982, 24.387091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658024, 38.748833, 24.314283>,  <38.538059, 38.016396, 24.445959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658024, 38.748833, 24.314283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983036, 38.566471, 24.168987>,  <39.178043, 38.457054, 24.081810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983036, 38.566471, 24.168987>,  <38.658024, 38.748833, 24.314283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983036, 38.566471, 24.168987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247781, 0.293913, -0.923157,
		0.527630, 0.840100, 0.125851,
		0.812534, -0.455902, -0.363239,
		39.226795, 38.429699, 24.060017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875973, 39.198490, 23.794788>,  <38.658024, 38.748833, 24.314283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875973, 39.198490, 23.794788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066181, 38.858715, 23.703289>,  <39.180305, 38.654850, 23.648390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066181, 38.858715, 23.703289>,  <38.875973, 39.198490, 23.794788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066181, 38.858715, 23.703289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192856, 0.153043, -0.969218,
		0.858303, 0.505002, -0.091045,
		0.475524, -0.849441, -0.228750,
		39.208839, 38.603882, 23.634665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153015, 39.374866, 23.170660>,  <38.875973, 39.198490, 23.794788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153015, 39.374866, 23.170660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.202702, 38.978268, 23.186195>,  <39.232513, 38.740311, 23.195517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.202702, 38.978268, 23.186195>,  <39.153015, 39.374866, 23.170660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202702, 38.978268, 23.186195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055532, -0.046025, -0.997395,
		0.990699, 0.121739, -0.060777,
		0.124220, -0.991494, 0.038836,
		39.239967, 38.680820, 23.197845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750057, 39.211052, 22.656248>,  <39.153015, 39.374866, 23.170660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750057, 39.211052, 22.656248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532463, 38.882500, 22.724844>,  <39.401909, 38.685368, 22.766003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532463, 38.882500, 22.724844>,  <39.750057, 39.211052, 22.656248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532463, 38.882500, 22.724844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026842, -0.221305, -0.974835,
		0.838667, -0.525691, 0.142434,
		-0.543983, -0.821385, 0.171491,
		39.369267, 38.636086, 22.776291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011429, 38.661915, 22.189716>,  <39.750057, 39.211052, 22.656248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011429, 38.661915, 22.189716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629295, 38.586590, 22.280815>,  <39.400013, 38.541393, 22.335474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629295, 38.586590, 22.280815>,  <40.011429, 38.661915, 22.189716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629295, 38.586590, 22.280815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208653, -0.115914, -0.971096,
		0.209270, -0.975244, 0.071444,
		-0.955338, -0.188314, 0.227745,
		39.342693, 38.530094, 22.349138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831799, 37.985806, 21.799068>,  <40.011429, 38.661915, 22.189716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831799, 37.985806, 21.799068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474842, 38.146873, 21.880545>,  <39.260666, 38.243515, 21.929430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474842, 38.146873, 21.880545>,  <39.831799, 37.985806, 21.799068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474842, 38.146873, 21.880545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280389, -0.141121, -0.949456,
		-0.353571, -0.904402, 0.238839,
		-0.892395, 0.402668, 0.203689,
		39.207123, 38.267673, 21.941650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248169, 37.557713, 21.480545>,  <39.831799, 37.985806, 21.799068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248169, 37.557713, 21.480545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105591, 37.928120, 21.530239>,  <39.020042, 38.150364, 21.560055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105591, 37.928120, 21.530239>,  <39.248169, 37.557713, 21.480545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105591, 37.928120, 21.530239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166698, 0.067803, -0.983674,
		-0.919325, -0.371336, 0.130197,
		-0.356446, 0.926019, 0.124234,
		38.998657, 38.205925, 21.567509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605087, 37.590832, 21.081566>,  <39.248169, 37.557713, 21.480545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605087, 37.590832, 21.081566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682621, 37.981274, 21.120876>,  <38.729141, 38.215538, 21.144463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682621, 37.981274, 21.120876>,  <38.605087, 37.590832, 21.081566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682621, 37.981274, 21.120876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195204, 0.136545, -0.971211,
		-0.961418, 0.169068, 0.217005,
		0.193832, 0.976100, 0.098274,
		38.740772, 38.274105, 21.150358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094234, 37.930336, 20.607336>,  <38.605087, 37.590832, 21.081566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094234, 37.930336, 20.607336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369225, 38.215069, 20.664858>,  <38.534218, 38.385906, 20.699371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369225, 38.215069, 20.664858>,  <38.094234, 37.930336, 20.607336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369225, 38.215069, 20.664858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130987, 0.316318, -0.939567,
		-0.714298, 0.627092, 0.310701,
		0.687475, 0.711828, 0.143804,
		38.575466, 38.428616, 20.707998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842491, 38.593525, 20.256582>,  <38.094234, 37.930336, 20.607336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842491, 38.593525, 20.256582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234356, 38.641903, 20.320635>,  <38.469475, 38.670929, 20.359066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234356, 38.641903, 20.320635>,  <37.842491, 38.593525, 20.256582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234356, 38.641903, 20.320635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112295, 0.330939, -0.936947,
		-0.166316, 0.935869, 0.310625,
		0.979657, 0.120947, 0.160134,
		38.528252, 38.678188, 20.368675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988331, 39.191341, 19.873350>,  <37.842491, 38.593525, 20.256582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988331, 39.191341, 19.873350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337105, 39.037308, 19.994299>,  <38.546371, 38.944885, 20.066868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337105, 39.037308, 19.994299>,  <37.988331, 39.191341, 19.873350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337105, 39.037308, 19.994299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487112, 0.619917, -0.615162,
		0.049445, 0.683673, 0.728111,
		0.871939, -0.385088, 0.302374,
		38.598686, 38.921780, 20.085011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300629, 39.746929, 20.133120>,  <37.988331, 39.191341, 19.873350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300629, 39.746929, 20.133120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.580181, 39.509365, 19.973700>,  <38.747913, 39.366825, 19.878048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.580181, 39.509365, 19.973700>,  <38.300629, 39.746929, 20.133120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580181, 39.509365, 19.973700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276804, 0.738392, -0.614945,
		0.659507, 0.319451, 0.680442,
		0.698878, -0.593909, -0.398549,
		38.789845, 39.331192, 19.854136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940956, 40.171936, 20.017859>,  <38.300629, 39.746929, 20.133120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940956, 40.171936, 20.017859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991310, 39.852150, 19.782911>,  <39.021523, 39.660278, 19.641943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991310, 39.852150, 19.782911>,  <38.940956, 40.171936, 20.017859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991310, 39.852150, 19.782911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396453, 0.583288, -0.708943,
		0.909383, -0.143617, 0.390381,
		0.125888, -0.799468, -0.587370,
		39.029076, 39.612309, 19.606701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657009, 40.090950, 19.886314>,  <38.940956, 40.171936, 20.017859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657009, 40.090950, 19.886314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471226, 39.907436, 19.583317>,  <39.359756, 39.797329, 19.401518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.471226, 39.907436, 19.583317>,  <39.657009, 40.090950, 19.886314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471226, 39.907436, 19.583317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337686, 0.698975, -0.630398,
		0.818687, -0.548587, -0.169717,
		-0.464456, -0.458788, -0.757492,
		39.331890, 39.769798, 19.356070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052670, 40.208065, 19.328131>,  <39.657009, 40.090950, 19.886314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052670, 40.208065, 19.328131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723309, 40.078243, 19.141937>,  <39.525692, 40.000351, 19.030222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723309, 40.078243, 19.141937>,  <40.052670, 40.208065, 19.328131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723309, 40.078243, 19.141937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181954, 0.625978, -0.758317,
		0.537495, -0.709096, -0.456379,
		-0.823402, -0.324551, -0.465483,
		39.476288, 39.980877, 19.002293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241577, 40.196259, 18.601234>,  <40.052670, 40.208065, 19.328131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241577, 40.196259, 18.601234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842754, 40.225937, 18.608915>,  <39.603458, 40.243744, 18.613523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842754, 40.225937, 18.608915>,  <40.241577, 40.196259, 18.601234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842754, 40.225937, 18.608915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029458, 0.602325, -0.797708,
		-0.070751, -0.794796, -0.602739,
		-0.997059, 0.074195, 0.019202,
		39.543636, 40.248196, 18.614676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934540, 40.026859, 17.867943>,  <40.241577, 40.196259, 18.601234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934540, 40.026859, 17.867943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.675755, 40.266895, 18.056128>,  <39.520485, 40.410915, 18.169039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.675755, 40.266895, 18.056128>,  <39.934540, 40.026859, 17.867943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675755, 40.266895, 18.056128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136364, 0.515984, -0.845674,
		-0.750231, -0.611272, -0.251991,
		-0.646961, 0.600089, 0.470463,
		39.481667, 40.446922, 18.197266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691315, 40.318180, 17.247435>,  <39.934540, 40.026859, 17.867943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691315, 40.318180, 17.247435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517975, 40.535809, 17.534821>,  <39.413971, 40.666386, 17.707253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517975, 40.535809, 17.534821>,  <39.691315, 40.318180, 17.247435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517975, 40.535809, 17.534821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203385, 0.717604, -0.666093,
		-0.877975, -0.434778, -0.200319,
		-0.433352, 0.544071, 0.718465,
		39.387970, 40.699028, 17.750360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039215, 40.459740, 16.989325>,  <39.691315, 40.318180, 17.247435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039215, 40.459740, 16.989325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167534, 40.736366, 17.248192>,  <39.244526, 40.902344, 17.403511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167534, 40.736366, 17.248192>,  <39.039215, 40.459740, 16.989325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167534, 40.736366, 17.248192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206700, 0.717928, -0.664722,
		-0.924318, 0.079472, 0.373257,
		0.320799, 0.691566, 0.647166,
		39.263775, 40.943836, 17.442341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916779, 40.685795, 16.266273>,  <39.039215, 40.459740, 16.989325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916779, 40.685795, 16.266273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.634445, 40.404457, 16.232555>,  <38.465046, 40.235653, 16.212324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.634445, 40.404457, 16.232555>,  <38.916779, 40.685795, 16.266273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634445, 40.404457, 16.232555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037771, -0.156195, 0.987004,
		-0.707372, 0.693475, 0.136813,
		-0.705832, -0.703346, -0.084295,
		38.422695, 40.193455, 16.207268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429909, 40.766926, 16.800852>,  <38.916779, 40.685795, 16.266273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429909, 40.766926, 16.800852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520878, 40.390804, 16.699570>,  <38.575459, 40.165131, 16.638802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520878, 40.390804, 16.699570>,  <38.429909, 40.766926, 16.800852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520878, 40.390804, 16.699570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350200, -0.163650, 0.922268,
		-0.908648, -0.298413, 0.292077,
		0.227418, -0.940302, -0.253204,
		38.589104, 40.108715, 16.623608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429653, 41.192921, 17.376553>,  <38.429909, 40.766926, 16.800852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429653, 41.192921, 17.376553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351818, 41.577534, 17.454113>,  <38.305115, 41.808300, 17.500648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351818, 41.577534, 17.454113>,  <38.429653, 41.192921, 17.376553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351818, 41.577534, 17.454113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341658, 0.251741, -0.905481,
		-0.919459, -0.109951, -0.377500,
		-0.194591, 0.961529, 0.193900,
		38.293442, 41.865993, 17.512283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786839, 41.139854, 17.811752>,  <38.429653, 41.192921, 17.376553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786839, 41.139854, 17.811752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.603867, 40.846825, 17.610121>,  <37.494083, 40.671005, 17.489141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.603867, 40.846825, 17.610121>,  <37.786839, 41.139854, 17.811752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603867, 40.846825, 17.610121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840399, 0.170839, 0.514338,
		-0.290674, 0.658900, -0.693800,
		-0.457426, -0.732574, -0.504080,
		37.466640, 40.627052, 17.458897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159054, 41.322044, 17.811922>,  <37.786839, 41.139854, 17.811752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159054, 41.322044, 17.811922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105072, 40.934029, 17.731115>,  <37.072681, 40.701218, 17.682632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105072, 40.934029, 17.731115>,  <37.159054, 41.322044, 17.811922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105072, 40.934029, 17.731115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918035, 0.045698, 0.393857,
		-0.372825, 0.238610, -0.896698,
		-0.134955, -0.970039, -0.202015,
		37.064587, 40.643017, 17.670511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458149, 41.205265, 17.796602>,  <37.159054, 41.322044, 17.811922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458149, 41.205265, 17.796602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595615, 40.839806, 17.883453>,  <36.678093, 40.620529, 17.935564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595615, 40.839806, 17.883453>,  <36.458149, 41.205265, 17.796602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595615, 40.839806, 17.883453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643494, -0.060713, 0.763040,
		-0.683967, -0.401949, -0.608791,
		0.343664, -0.913647, 0.217126,
		36.698715, 40.565712, 17.948591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948925, 40.971958, 18.159184>,  <36.458149, 41.205265, 17.796602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948925, 40.971958, 18.159184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238361, 40.704926, 18.229326>,  <36.412025, 40.544704, 18.271412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238361, 40.704926, 18.229326>,  <35.948925, 40.971958, 18.159184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238361, 40.704926, 18.229326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409462, -0.210646, 0.887676,
		-0.555658, -0.714117, -0.425771,
		0.723592, -0.667581, 0.175357,
		36.455441, 40.504650, 18.281933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542358, 40.414333, 18.511789>,  <35.948925, 40.971958, 18.159184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542358, 40.414333, 18.511789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927273, 40.330051, 18.580614>,  <36.158222, 40.279480, 18.621908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927273, 40.330051, 18.580614>,  <35.542358, 40.414333, 18.511789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927273, 40.330051, 18.580614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250454, -0.439326, 0.862708,
		-0.106187, -0.873267, -0.475530,
		0.962287, -0.210707, 0.172063,
		36.215958, 40.266838, 18.632233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633785, 39.623951, 18.681520>,  <35.542358, 40.414333, 18.511789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633785, 39.623951, 18.681520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936878, 39.824596, 18.848484>,  <36.118732, 39.944984, 18.948662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936878, 39.824596, 18.848484>,  <35.633785, 39.623951, 18.681520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936878, 39.824596, 18.848484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200157, -0.430163, 0.880283,
		0.621117, -0.750562, -0.225545,
		0.757728, 0.501614, 0.417411,
		36.164196, 39.975082, 18.973707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977695, 39.046272, 19.065666>,  <35.633785, 39.623951, 18.681520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977695, 39.046272, 19.065666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094200, 39.397030, 19.218618>,  <36.164104, 39.607487, 19.310390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094200, 39.397030, 19.218618>,  <35.977695, 39.046272, 19.065666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094200, 39.397030, 19.218618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070702, -0.418351, 0.905530,
		0.954027, -0.236711, -0.183848,
		0.291261, 0.876898, 0.382382,
		36.181580, 39.660099, 19.333334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617435, 38.915009, 19.492651>,  <35.977695, 39.046272, 19.065666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617435, 38.915009, 19.492651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470947, 39.262806, 19.625231>,  <36.383057, 39.471485, 19.704779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470947, 39.262806, 19.625231>,  <36.617435, 38.915009, 19.492651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470947, 39.262806, 19.625231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192342, -0.277771, 0.941195,
		0.910434, 0.408433, -0.065517,
		-0.366217, 0.869497, 0.331451,
		36.361084, 39.523655, 19.724667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028393, 39.314651, 19.993458>,  <36.617435, 38.915009, 19.492651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028393, 39.314651, 19.993458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640377, 39.391266, 20.053234>,  <36.407566, 39.437233, 20.089100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640377, 39.391266, 20.053234>,  <37.028393, 39.314651, 19.993458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640377, 39.391266, 20.053234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065581, -0.385857, 0.920225,
		0.233917, 0.902458, 0.361736,
		-0.970042, 0.191533, 0.149443,
		36.349365, 39.448727, 20.098066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092144, 39.431278, 20.653065>,  <37.028393, 39.314651, 19.993458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092144, 39.431278, 20.653065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702591, 39.368477, 20.587450>,  <36.468861, 39.330795, 20.548080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702591, 39.368477, 20.587450>,  <37.092144, 39.431278, 20.653065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702591, 39.368477, 20.587450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084700, -0.419094, 0.903983,
		-0.210679, 0.894264, 0.394849,
		-0.973879, -0.157007, -0.164039,
		36.410427, 39.321373, 20.538239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891838, 39.672256, 21.235270>,  <37.092144, 39.431278, 20.653065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891838, 39.672256, 21.235270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600845, 39.438263, 21.091845>,  <36.426250, 39.297867, 21.005789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600845, 39.438263, 21.091845>,  <36.891838, 39.672256, 21.235270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600845, 39.438263, 21.091845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130769, -0.394796, 0.909415,
		-0.673553, 0.708469, 0.210708,
		-0.727479, -0.584985, -0.358562,
		36.382603, 39.262768, 20.984276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437763, 39.704407, 21.763126>,  <36.891838, 39.672256, 21.235270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437763, 39.704407, 21.763126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.332672, 39.372581, 21.566027>,  <36.269615, 39.173489, 21.447767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.332672, 39.372581, 21.566027>,  <36.437763, 39.704407, 21.763126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332672, 39.372581, 21.566027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032429, -0.517994, 0.854770,
		-0.964324, 0.208594, 0.162994,
		-0.262730, -0.829561, -0.492749,
		36.253853, 39.123714, 21.418201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105644, 39.370102, 22.177673>,  <36.437763, 39.704407, 21.763126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105644, 39.370102, 22.177673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183224, 39.074409, 21.919706>,  <36.229771, 38.896996, 21.764925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.183224, 39.074409, 21.919706>,  <36.105644, 39.370102, 22.177673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183224, 39.074409, 21.919706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020246, -0.660279, 0.750747,
		-0.980802, -0.132551, -0.143029,
		0.193951, -0.739230, -0.644920,
		36.241409, 38.852642, 21.726231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667488, 38.824642, 22.426195>,  <36.105644, 39.370102, 22.177673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667488, 38.824642, 22.426195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.962925, 38.660542, 22.212215>,  <36.140186, 38.562080, 22.083828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.962925, 38.660542, 22.212215>,  <35.667488, 38.824642, 22.426195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962925, 38.660542, 22.212215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155436, -0.668504, 0.727284,
		-0.655992, -0.620315, -0.429981,
		0.738589, -0.410258, -0.534952,
		36.184505, 38.537464, 22.051731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661869, 38.101997, 22.579161>,  <35.667488, 38.824642, 22.426195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661869, 38.101997, 22.579161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036888, 38.121426, 22.441383>,  <36.261902, 38.133083, 22.358717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036888, 38.121426, 22.441383>,  <35.661869, 38.101997, 22.579161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036888, 38.121426, 22.441383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304435, -0.593613, 0.744945,
		-0.168284, -0.803283, -0.571328,
		0.937550, 0.048570, -0.344443,
		36.318153, 38.135998, 22.338051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884350, 37.346210, 22.462551>,  <35.661869, 38.101997, 22.579161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884350, 37.346210, 22.462551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185802, 37.603661, 22.515890>,  <36.366676, 37.758129, 22.547894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185802, 37.603661, 22.515890>,  <35.884350, 37.346210, 22.462551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185802, 37.603661, 22.515890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301137, -0.518424, 0.800346,
		0.584253, -0.563013, -0.584522,
		0.753635, 0.643625, 0.133347,
		36.411892, 37.796749, 22.555895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483742, 36.973904, 22.713137>,  <35.884350, 37.346210, 22.462551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483742, 36.973904, 22.713137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579254, 37.351158, 22.805641>,  <36.636562, 37.577511, 22.861145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579254, 37.351158, 22.805641>,  <36.483742, 36.973904, 22.713137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579254, 37.351158, 22.805641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398651, -0.312365, 0.862268,
		0.885471, -0.113703, -0.450568,
		0.238785, 0.943133, 0.231263,
		36.650890, 37.634098, 22.875019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156818, 36.974018, 23.038572>,  <36.483742, 36.973904, 22.713137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156818, 36.974018, 23.038572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991814, 37.317101, 23.161318>,  <36.892811, 37.522949, 23.234964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991814, 37.317101, 23.161318>,  <37.156818, 36.974018, 23.038572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991814, 37.317101, 23.161318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263459, -0.210132, 0.941506,
		0.872021, 0.469231, -0.139289,
		-0.412515, 0.857710, 0.306862,
		36.868057, 37.574413, 23.253376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631794, 37.341759, 23.378941>,  <37.156818, 36.974018, 23.038572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631794, 37.341759, 23.378941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308220, 37.528427, 23.521959>,  <37.114075, 37.640427, 23.607771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308220, 37.528427, 23.521959>,  <37.631794, 37.341759, 23.378941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308220, 37.528427, 23.521959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352350, -0.101992, 0.930294,
		0.470606, 0.878532, -0.081926,
		-0.808937, 0.466669, 0.357548,
		37.065540, 37.668427, 23.629223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.769600, 36.899689, 27.689341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.417374, 37.080921, 27.744940>,  <40.206036, 37.189659, 27.778299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.417374, 37.080921, 27.744940>,  <40.769600, 36.899689, 27.689341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417374, 37.080921, 27.744940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147907, -0.015906, 0.988873,
		0.450247, 0.891329, -0.053007,
		-0.880569, 0.453077, 0.138996,
		40.153202, 37.216843, 27.786638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888645, 37.433422, 28.139874>,  <40.769600, 36.899689, 27.689341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888645, 37.433422, 28.139874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.503368, 37.330372, 28.170565>,  <40.272202, 37.268543, 28.188978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.503368, 37.330372, 28.170565>,  <40.888645, 37.433422, 28.139874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503368, 37.330372, 28.170565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119432, -0.154434, 0.980758,
		-0.240817, 0.953824, 0.179519,
		-0.963194, -0.257624, 0.076726,
		40.214409, 37.253086, 28.193583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803825, 37.440861, 28.799374>,  <40.888645, 37.433422, 28.139874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803825, 37.440861, 28.799374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439594, 37.291615, 28.728230>,  <40.221054, 37.202068, 28.685543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439594, 37.291615, 28.728230>,  <40.803825, 37.440861, 28.799374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439594, 37.291615, 28.728230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121270, -0.170213, 0.977917,
		-0.395147, 0.912039, 0.109745,
		-0.910578, -0.373112, -0.177862,
		40.166420, 37.179680, 28.674871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461834, 37.769478, 29.350565>,  <40.803825, 37.440861, 28.799374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461834, 37.769478, 29.350565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251358, 37.458019, 29.213839>,  <40.125072, 37.271145, 29.131802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251358, 37.458019, 29.213839>,  <40.461834, 37.769478, 29.350565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251358, 37.458019, 29.213839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214988, -0.267096, 0.939383,
		-0.822745, 0.567776, -0.026858,
		-0.526185, -0.778646, -0.341817,
		40.093502, 37.224426, 29.111294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763664, 37.838707, 29.608049>,  <40.461834, 37.769478, 29.350565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763664, 37.838707, 29.608049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825420, 37.450657, 29.533188>,  <39.862473, 37.217827, 29.488272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825420, 37.450657, 29.533188>,  <39.763664, 37.838707, 29.608049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825420, 37.450657, 29.533188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373365, -0.232666, 0.898034,
		-0.914747, -0.068769, -0.398131,
		0.154388, -0.970122, -0.187154,
		39.871738, 37.159618, 29.477041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282555, 37.508644, 30.081739>,  <39.763664, 37.838707, 29.608049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282555, 37.508644, 30.081739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.511112, 37.204021, 29.959398>,  <39.648247, 37.021248, 29.885994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.511112, 37.204021, 29.959398>,  <39.282555, 37.508644, 30.081739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511112, 37.204021, 29.959398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011199, -0.365415, 0.930777,
		-0.820599, -0.535266, -0.200267,
		0.571394, -0.761553, -0.305854,
		39.682529, 36.975555, 29.867641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934212, 36.902065, 30.418587>,  <39.282555, 37.508644, 30.081739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934212, 36.902065, 30.418587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317165, 36.820919, 30.336361>,  <39.546940, 36.772232, 30.287025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317165, 36.820919, 30.336361>,  <38.934212, 36.902065, 30.418587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317165, 36.820919, 30.336361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090463, -0.465307, 0.880514,
		-0.274276, -0.861589, -0.427127,
		0.957387, -0.202865, -0.205564,
		39.604382, 36.760059, 30.274693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942833, 36.307167, 30.670946>,  <38.934212, 36.902065, 30.418587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942833, 36.307167, 30.670946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331890, 36.397427, 30.648853>,  <39.565323, 36.451584, 30.635597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331890, 36.397427, 30.648853>,  <38.942833, 36.307167, 30.670946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331890, 36.397427, 30.648853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183840, -0.602277, 0.776830,
		0.142028, -0.765731, -0.627283,
		0.972641, 0.225651, -0.055232,
		39.623684, 36.465122, 30.632284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381027, 35.663647, 30.657923>,  <38.942833, 36.307167, 30.670946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381027, 35.663647, 30.657923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.610065, 35.962276, 30.793432>,  <39.747490, 36.141453, 30.874739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.610065, 35.962276, 30.793432>,  <39.381027, 35.663647, 30.657923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610065, 35.962276, 30.793432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187509, -0.521524, 0.832377,
		0.798108, -0.413091, -0.438611,
		0.572594, 0.746571, 0.338774,
		39.781845, 36.186249, 30.895065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982567, 35.316334, 30.997650>,  <39.381027, 35.663647, 30.657923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982567, 35.316334, 30.997650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.976368, 35.691254, 31.136919>,  <39.972649, 35.916206, 31.220480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.976368, 35.691254, 31.136919>,  <39.982567, 35.316334, 30.997650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976368, 35.691254, 31.136919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336745, -0.322980, 0.884470,
		0.941468, 0.130956, -0.310625,
		-0.015502, 0.937302, 0.348174,
		39.971718, 35.972443, 31.241371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631035, 35.421825, 31.356472>,  <39.982567, 35.316334, 30.997650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631035, 35.421825, 31.356472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392624, 35.706020, 31.506117>,  <40.249577, 35.876537, 31.595903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392624, 35.706020, 31.506117>,  <40.631035, 35.421825, 31.356472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392624, 35.706020, 31.506117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357744, -0.182154, 0.915881,
		0.718864, 0.679731, -0.145601,
		-0.596031, 0.710483, 0.374114,
		40.213814, 35.919167, 31.618351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986515, 35.921429, 31.739988>,  <40.631035, 35.421825, 31.356472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986515, 35.921429, 31.739988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.609272, 35.927555, 31.872837>,  <40.382927, 35.931232, 31.952547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.609272, 35.927555, 31.872837>,  <40.986515, 35.921429, 31.739988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609272, 35.927555, 31.872837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326011, -0.153445, 0.932830,
		0.065253, 0.988039, 0.139721,
		-0.943111, 0.015319, 0.332124,
		40.326340, 35.932152, 31.972475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132275, 36.429050, 32.327206>,  <40.986515, 35.921429, 31.739988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132275, 36.429050, 32.327206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792027, 36.219311, 32.342697>,  <40.587879, 36.093468, 32.351990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792027, 36.219311, 32.342697>,  <41.132275, 36.429050, 32.327206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792027, 36.219311, 32.342697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150114, -0.171610, 0.973661,
		-0.503895, 0.834030, 0.224687,
		-0.850621, -0.524352, 0.038726,
		40.536839, 36.062004, 32.354317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883793, 35.974682, 32.854385>,  <41.132275, 36.429050, 32.327206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883793, 35.974682, 32.854385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.161270, 35.929382, 32.569862>,  <41.327755, 35.902203, 32.399147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.161270, 35.929382, 32.569862>,  <40.883793, 35.974682, 32.854385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161270, 35.929382, 32.569862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351540, -0.915183, -0.197127,
		-0.628657, 0.386800, -0.674668,
		0.693693, -0.113247, -0.711312,
		41.369377, 35.895409, 32.356468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089413, 36.401291, 33.388210>,  <40.883793, 35.974682, 32.854385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089413, 36.401291, 33.388210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088669, 36.728916, 33.617691>,  <41.088223, 36.925491, 33.755379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088669, 36.728916, 33.617691>,  <41.089413, 36.401291, 33.388210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088669, 36.728916, 33.617691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075067, 0.572198, -0.816673,
		-0.997177, 0.041548, -0.062548,
		-0.001858, 0.819062, 0.573701,
		41.088112, 36.974636, 33.789803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622478, 36.772812, 33.044445>,  <41.089413, 36.401291, 33.388210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622478, 36.772812, 33.044445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825020, 37.036060, 33.267330>,  <40.946545, 37.194008, 33.401062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825020, 37.036060, 33.267330>,  <40.622478, 36.772812, 33.044445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825020, 37.036060, 33.267330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089611, 0.602513, -0.793062,
		-0.857656, 0.451504, 0.246112,
		0.506356, 0.658120, 0.557208,
		40.976925, 37.233498, 33.434494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274094, 37.433285, 32.900009>,  <40.622478, 36.772812, 33.044445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274094, 37.433285, 32.900009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645393, 37.503418, 33.031227>,  <40.868172, 37.545498, 33.109959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645393, 37.503418, 33.031227>,  <40.274094, 37.433285, 32.900009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645393, 37.503418, 33.031227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134447, 0.664154, -0.735407,
		-0.346809, 0.726746, 0.592928,
		0.928250, 0.175329, 0.328043,
		40.923870, 37.556015, 33.129639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283909, 38.122616, 32.934383>,  <40.274094, 37.433285, 32.900009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283909, 38.122616, 32.934383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.665401, 38.008999, 32.894958>,  <40.894299, 37.940830, 32.871304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.665401, 38.008999, 32.894958>,  <40.283909, 38.122616, 32.934383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665401, 38.008999, 32.894958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075383, 0.543266, -0.836170,
		0.291053, 0.790052, 0.539542,
		0.953732, -0.284042, -0.098562,
		40.951523, 37.923786, 32.865391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527584, 38.729622, 32.717388>,  <40.283909, 38.122616, 32.934383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527584, 38.729622, 32.717388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851101, 38.499008, 32.670971>,  <41.045212, 38.360641, 32.643120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851101, 38.499008, 32.670971>,  <40.527584, 38.729622, 32.717388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851101, 38.499008, 32.670971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218980, 0.478371, -0.850417,
		0.545809, 0.662396, 0.513151,
		0.808789, -0.576535, -0.116047,
		41.093739, 38.326046, 32.636158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144299, 39.203255, 32.724045>,  <40.527584, 38.729622, 32.717388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144299, 39.203255, 32.724045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235558, 38.870792, 32.521214>,  <41.290314, 38.671314, 32.399513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235558, 38.870792, 32.521214>,  <41.144299, 39.203255, 32.724045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235558, 38.870792, 32.521214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245145, 0.553077, -0.796247,
		0.942259, 0.057355, 0.329937,
		0.228149, -0.831153, -0.507082,
		41.304001, 38.621445, 32.369087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719276, 39.290920, 32.266136>,  <41.144299, 39.203255, 32.724045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719276, 39.290920, 32.266136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532085, 38.985596, 32.087990>,  <41.419769, 38.802402, 31.981102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532085, 38.985596, 32.087990>,  <41.719276, 39.290920, 32.266136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532085, 38.985596, 32.087990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000230, 0.503853, -0.863789,
		0.883741, -0.404336, -0.235615,
		-0.467976, -0.763312, -0.445368,
		41.391693, 38.756603, 31.954380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936058, 39.347076, 31.605034>,  <41.719276, 39.290920, 32.266136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936058, 39.347076, 31.605034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.617867, 39.108650, 31.561359>,  <41.426952, 38.965595, 31.535154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.617867, 39.108650, 31.561359>,  <41.936058, 39.347076, 31.605034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617867, 39.108650, 31.561359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136262, 0.351507, -0.926216,
		0.590465, -0.721906, -0.360837,
		-0.795477, -0.596067, -0.109185,
		41.379223, 38.929829, 31.528605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064575, 38.985165, 30.951378>,  <41.936058, 39.347076, 31.605034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064575, 38.985165, 30.951378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.673981, 38.972107, 31.036621>,  <41.439625, 38.964272, 31.087767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.673981, 38.972107, 31.036621>,  <42.064575, 38.985165, 30.951378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673981, 38.972107, 31.036621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211769, 0.330551, -0.919723,
		-0.040421, -0.943224, -0.329690,
		-0.976484, -0.032642, 0.213106,
		41.381035, 38.962315, 31.100554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709553, 38.635864, 30.367413>,  <42.064575, 38.985165, 30.951378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709553, 38.635864, 30.367413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448681, 38.879238, 30.548281>,  <41.292156, 39.025265, 30.656801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448681, 38.879238, 30.548281>,  <41.709553, 38.635864, 30.367413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448681, 38.879238, 30.548281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202083, 0.435357, -0.877284,
		-0.730630, -0.663525, -0.160977,
		-0.652182, 0.608439, 0.452172,
		41.253025, 39.061771, 30.683933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035770, 38.639500, 29.868189>,  <41.709553, 38.635864, 30.367413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035770, 38.639500, 29.868189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.986336, 38.971176, 30.086241>,  <40.956673, 39.170181, 30.217072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.986336, 38.971176, 30.086241>,  <41.035770, 38.639500, 29.868189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986336, 38.971176, 30.086241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443220, 0.445377, -0.777943,
		-0.887852, -0.337758, 0.312471,
		-0.123589, 0.829192, 0.545130,
		40.949261, 39.219933, 30.249781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291634, 38.790359, 29.830927>,  <41.035770, 38.639500, 29.868189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291634, 38.790359, 29.830927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518303, 39.111637, 29.904415>,  <40.654305, 39.304405, 29.948509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518303, 39.111637, 29.904415>,  <40.291634, 38.790359, 29.830927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518303, 39.111637, 29.904415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285984, 0.400856, -0.870361,
		-0.772716, 0.440673, 0.456857,
		0.566678, 0.803195, 0.183723,
		40.688305, 39.352596, 29.959532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918087, 39.309792, 29.572863>,  <40.291634, 38.790359, 29.830927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918087, 39.309792, 29.572863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251629, 39.523563, 29.628107>,  <40.451752, 39.651829, 29.661253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251629, 39.523563, 29.628107>,  <39.918087, 39.309792, 29.572863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251629, 39.523563, 29.628107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133652, 0.438236, -0.888868,
		-0.535563, 0.722726, 0.436852,
		0.833852, 0.534431, 0.138110,
		40.501785, 39.683891, 29.669540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874115, 40.017494, 29.181463>,  <39.918087, 39.309792, 29.572863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874115, 40.017494, 29.181463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263123, 39.942745, 29.237019>,  <40.496525, 39.897896, 29.270351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263123, 39.942745, 29.237019>,  <39.874115, 40.017494, 29.181463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263123, 39.942745, 29.237019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207576, 0.425634, -0.880766,
		0.105477, 0.885389, 0.452727,
		0.972516, -0.186876, 0.138891,
		40.554878, 39.886681, 29.278687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591763, 40.738331, 29.228132>,  <39.874115, 40.017494, 29.181463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591763, 40.738331, 29.228132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193516, 40.700981, 29.230232>,  <38.954567, 40.678570, 29.231493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193516, 40.700981, 29.230232>,  <39.591763, 40.738331, 29.228132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193516, 40.700981, 29.230232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045711, -0.436877, 0.898359,
		-0.081594, 0.894661, 0.439230,
		-0.995617, -0.093379, 0.005249,
		38.894833, 40.672966, 29.231808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381058, 40.673958, 29.947659>,  <39.591763, 40.738331, 29.228132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381058, 40.673958, 29.947659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028061, 40.559349, 29.798466>,  <38.816265, 40.490582, 29.708950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028061, 40.559349, 29.798466>,  <39.381058, 40.673958, 29.947659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028061, 40.559349, 29.798466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110369, -0.644720, 0.756409,
		-0.457201, 0.708688, 0.537335,
		-0.882489, -0.286525, -0.372984,
		38.763313, 40.473392, 29.686571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856552, 40.867718, 30.441603>,  <39.381058, 40.673958, 29.947659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856552, 40.867718, 30.441603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718311, 40.569275, 30.213961>,  <38.635368, 40.390209, 30.077375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718311, 40.569275, 30.213961>,  <38.856552, 40.867718, 30.441603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718311, 40.569275, 30.213961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131005, -0.562172, 0.816578,
		-0.929192, 0.356766, 0.096543,
		-0.345601, -0.746110, -0.569104,
		38.614632, 40.345440, 30.043230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325123, 40.604408, 30.913704>,  <38.856552, 40.867718, 30.441603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325123, 40.604408, 30.913704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.371727, 40.335075, 30.621664>,  <38.399689, 40.173473, 30.446440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.371727, 40.335075, 30.621664>,  <38.325123, 40.604408, 30.913704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371727, 40.335075, 30.621664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306022, -0.723679, 0.618579,
		-0.944868, 0.151356, -0.290370,
		0.116509, -0.673336, -0.730099,
		38.406681, 40.133076, 30.402634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790642, 40.209038, 30.827522>,  <38.325123, 40.604408, 30.913704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790642, 40.209038, 30.827522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067444, 39.971817, 30.662882>,  <38.233524, 39.829483, 30.564096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067444, 39.971817, 30.662882>,  <37.790642, 40.209038, 30.827522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067444, 39.971817, 30.662882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293095, -0.751880, 0.590568,
		-0.659714, -0.288038, -0.694127,
		0.692007, -0.593051, -0.411603,
		38.275047, 39.793903, 30.539400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394901, 39.543400, 30.649099>,  <37.790642, 40.209038, 30.827522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394901, 39.543400, 30.649099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786224, 39.468357, 30.684240>,  <38.021019, 39.423332, 30.705324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786224, 39.468357, 30.684240>,  <37.394901, 39.543400, 30.649099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786224, 39.468357, 30.684240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201692, -0.765820, 0.610606,
		-0.047274, -0.615080, -0.787046,
		0.978308, -0.187607, 0.087853,
		38.079716, 39.412075, 30.710596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484978, 38.793709, 30.711119>,  <37.394901, 39.543400, 30.649099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484978, 38.793709, 30.711119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828167, 38.934444, 30.860838>,  <38.034081, 39.018887, 30.950668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828167, 38.934444, 30.860838>,  <37.484978, 38.793709, 30.711119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828167, 38.934444, 30.860838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017611, -0.708058, 0.705935,
		0.513396, -0.612264, -0.601296,
		0.857971, 0.351835, 0.374297,
		38.085560, 39.039993, 30.973127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650585, 38.225765, 31.096554>,  <37.484978, 38.793709, 30.711119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650585, 38.225765, 31.096554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.888771, 38.526077, 31.210928>,  <38.031681, 38.706264, 31.279552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.888771, 38.526077, 31.210928>,  <37.650585, 38.225765, 31.096554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888771, 38.526077, 31.210928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090985, -0.416647, 0.904504,
		0.798214, -0.512583, -0.316408,
		0.595463, 0.750776, 0.285936,
		38.067410, 38.751308, 31.296709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286770, 37.938396, 31.359776>,  <37.650585, 38.225765, 31.096554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286770, 37.938396, 31.359776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.139301, 38.284103, 31.496664>,  <38.050819, 38.491528, 31.578796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.139301, 38.284103, 31.496664>,  <38.286770, 37.938396, 31.359776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139301, 38.284103, 31.496664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060275, -0.389607, 0.919007,
		0.927602, 0.318186, 0.195732,
		-0.368674, 0.864271, 0.342221,
		38.028698, 38.543385, 31.599331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431870, 37.855404, 32.032806>,  <38.286770, 37.938396, 31.359776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431870, 37.855404, 32.032806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216972, 38.192104, 32.054096>,  <38.088036, 38.394123, 32.066868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216972, 38.192104, 32.054096>,  <38.431870, 37.855404, 32.032806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216972, 38.192104, 32.054096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096199, -0.123845, 0.987628,
		0.837925, 0.525473, 0.147509,
		-0.537240, 0.841749, 0.053223,
		38.055801, 38.444630, 32.070065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641361, 38.129398, 32.605152>,  <38.431870, 37.855404, 32.032806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641361, 38.129398, 32.605152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293468, 38.319229, 32.550972>,  <38.084732, 38.433128, 32.518463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293468, 38.319229, 32.550972>,  <38.641361, 38.129398, 32.605152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293468, 38.319229, 32.550972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185977, -0.060924, 0.980664,
		0.457151, 0.878101, 0.141248,
		-0.869727, 0.474580, -0.135455,
		38.032551, 38.461605, 32.510334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629852, 38.633831, 33.080647>,  <38.641361, 38.129398, 32.605152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629852, 38.633831, 33.080647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.246132, 38.593372, 32.975193>,  <38.015900, 38.569096, 32.911922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.246132, 38.593372, 32.975193>,  <38.629852, 38.633831, 33.080647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246132, 38.593372, 32.975193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260928, -0.039356, 0.964556,
		-0.107940, 0.994092, 0.011362,
		-0.959305, -0.101150, -0.263635,
		37.958340, 38.563026, 32.896103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.945354, 43.108868, 26.380421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727329, 42.818218, 26.213125>,  <38.596512, 42.643829, 26.112747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727329, 42.818218, 26.213125>,  <38.945354, 43.108868, 26.380421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727329, 42.818218, 26.213125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012102, -0.505624, 0.862669,
		-0.838307, 0.465149, 0.284392,
		-0.545065, -0.726623, -0.418239,
		38.563808, 42.600231, 26.087654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384293, 43.075974, 26.812435>,  <38.945354, 43.108868, 26.380421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384293, 43.075974, 26.812435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385700, 42.721729, 26.626671>,  <38.386543, 42.509182, 26.515213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385700, 42.721729, 26.626671>,  <38.384293, 43.075974, 26.812435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385700, 42.721729, 26.626671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031566, -0.464279, 0.885127,
		-0.999496, 0.011544, -0.029589,
		0.003519, -0.885614, -0.464409,
		38.386757, 42.456043, 26.487349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807636, 42.814301, 27.202663>,  <38.384293, 43.075974, 26.812435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807636, 42.814301, 27.202663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021927, 42.522980, 27.031746>,  <38.150501, 42.348186, 26.929195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021927, 42.522980, 27.031746>,  <37.807636, 42.814301, 27.202663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021927, 42.522980, 27.031746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184900, -0.594936, 0.782217,
		-0.823897, -0.340050, -0.453386,
		0.535729, -0.728297, -0.427292,
		38.182644, 42.304489, 26.903559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398201, 42.217052, 27.296206>,  <37.807636, 42.814301, 27.202663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398201, 42.217052, 27.296206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768532, 42.078842, 27.234941>,  <37.990730, 41.995914, 27.198183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768532, 42.078842, 27.234941>,  <37.398201, 42.217052, 27.296206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768532, 42.078842, 27.234941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031047, -0.473401, 0.880299,
		-0.376672, -0.810249, -0.449015,
		0.925826, -0.345525, -0.153162,
		38.046280, 41.975185, 27.188993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418316, 41.573071, 27.610403>,  <37.398201, 42.217052, 27.296206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418316, 41.573071, 27.610403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812706, 41.626759, 27.570740>,  <38.049339, 41.658970, 27.546942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812706, 41.626759, 27.570740>,  <37.418316, 41.573071, 27.610403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812706, 41.626759, 27.570740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159080, -0.576509, 0.801455,
		0.050402, -0.805992, -0.589776,
		0.985978, 0.134216, -0.099160,
		38.108498, 41.667023, 27.540991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628185, 40.958385, 27.881718>,  <37.418316, 41.573071, 27.610403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628185, 40.958385, 27.881718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941338, 41.206776, 27.897148>,  <38.129230, 41.355808, 27.906406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941338, 41.206776, 27.897148>,  <37.628185, 40.958385, 27.881718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941338, 41.206776, 27.897148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360038, -0.502736, 0.785894,
		0.507413, -0.601372, -0.617157,
		0.782882, 0.620973, 0.038578,
		38.176201, 41.393066, 27.908722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270657, 40.534374, 27.749222>,  <37.628185, 40.958385, 27.881718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270657, 40.534374, 27.749222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338737, 40.870674, 27.954815>,  <38.379585, 41.072453, 28.078171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338737, 40.870674, 27.954815>,  <38.270657, 40.534374, 27.749222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338737, 40.870674, 27.954815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477544, -0.526625, 0.703291,
		0.861964, 0.125745, -0.491127,
		0.170204, 0.840746, 0.513981,
		38.389797, 41.122898, 28.109009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957695, 40.370834, 28.057278>,  <38.270657, 40.534374, 27.749222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957695, 40.370834, 28.057278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808048, 40.691513, 28.243748>,  <38.718258, 40.883919, 28.355629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808048, 40.691513, 28.243748>,  <38.957695, 40.370834, 28.057278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808048, 40.691513, 28.243748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231505, -0.406028, 0.884051,
		0.898020, 0.438663, -0.033694,
		-0.374120, 0.801696, 0.466174,
		38.695812, 40.932022, 28.383600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422901, 40.568890, 28.542330>,  <38.957695, 40.370834, 28.057278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422901, 40.568890, 28.542330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065269, 40.700829, 28.663542>,  <38.850693, 40.779991, 28.736269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065269, 40.700829, 28.663542>,  <39.422901, 40.568890, 28.542330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065269, 40.700829, 28.663542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117463, -0.480195, 0.869261,
		0.432240, 0.812780, 0.390586,
		-0.894076, 0.329850, 0.303031,
		38.797047, 40.799782, 28.754452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107033, 40.504681, 28.642256>,  <39.422901, 40.568890, 28.542330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107033, 40.504681, 28.642256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400539, 40.255890, 28.751606>,  <40.576645, 40.106617, 28.817217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400539, 40.255890, 28.751606>,  <40.107033, 40.504681, 28.642256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400539, 40.255890, 28.751606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414370, 0.090826, -0.905565,
		0.538408, 0.777753, 0.324372,
		0.733767, -0.621974, 0.273376,
		40.620670, 40.069298, 28.833618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741585, 40.911060, 28.539297>,  <40.107033, 40.504681, 28.642256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741585, 40.911060, 28.539297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839081, 40.523201, 28.531626>,  <40.897579, 40.290485, 28.527023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839081, 40.523201, 28.531626>,  <40.741585, 40.911060, 28.539297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839081, 40.523201, 28.531626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552362, 0.155046, -0.819059,
		0.797175, 0.189042, 0.573389,
		0.243738, -0.969651, -0.019179,
		40.912201, 40.232307, 28.525871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508842, 40.865063, 28.541584>,  <40.741585, 40.911060, 28.539297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508842, 40.865063, 28.541584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369732, 40.530003, 28.373108>,  <41.286266, 40.328968, 28.272022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369732, 40.530003, 28.373108>,  <41.508842, 40.865063, 28.541584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369732, 40.530003, 28.373108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467149, 0.234692, -0.852463,
		0.812913, -0.493222, 0.309687,
		-0.347772, -0.837647, -0.421191,
		41.265400, 40.278709, 28.246750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960876, 40.573753, 27.990744>,  <41.508842, 40.865063, 28.541584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960876, 40.573753, 27.990744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663673, 40.327114, 27.886629>,  <41.485352, 40.179131, 27.824160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663673, 40.327114, 27.886629>,  <41.960876, 40.573753, 27.990744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663673, 40.327114, 27.886629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177730, 0.193166, -0.964934,
		0.645258, -0.763211, -0.033935,
		-0.743004, -0.616600, -0.260287,
		41.440773, 40.142136, 27.808542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217232, 40.049263, 27.505964>,  <41.960876, 40.573753, 27.990744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217232, 40.049263, 27.505964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828808, 40.065044, 27.411741>,  <41.595753, 40.074512, 27.355207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828808, 40.065044, 27.411741>,  <42.217232, 40.049263, 27.505964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828808, 40.065044, 27.411741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231717, -0.083439, -0.969198,
		-0.057890, -0.995732, 0.071883,
		-0.971059, 0.039450, -0.235559,
		41.537491, 40.076881, 27.341074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081814, 39.467945, 26.928129>,  <42.217232, 40.049263, 27.505964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081814, 39.467945, 26.928129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778320, 39.728279, 26.917213>,  <41.596226, 39.884480, 26.910664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778320, 39.728279, 26.917213>,  <42.081814, 39.467945, 26.928129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778320, 39.728279, 26.917213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186240, 0.176592, -0.966504,
		-0.624211, -0.738400, -0.255196,
		-0.758732, 0.650831, -0.027289,
		41.550701, 39.923527, 26.909027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713627, 39.291805, 26.321859>,  <42.081814, 39.467945, 26.928129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713627, 39.291805, 26.321859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610031, 39.674290, 26.376396>,  <41.547874, 39.903778, 26.409119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610031, 39.674290, 26.376396>,  <41.713627, 39.291805, 26.321859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610031, 39.674290, 26.376396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043291, 0.152508, -0.987354,
		-0.964909, -0.249816, -0.080894,
		-0.258993, 0.956208, 0.136342,
		41.532333, 39.961151, 26.417299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186668, 39.436661, 25.837234>,  <41.713627, 39.291805, 26.321859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186668, 39.436661, 25.837234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321980, 39.802486, 25.925898>,  <41.403168, 40.021984, 25.979095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321980, 39.802486, 25.925898>,  <41.186668, 39.436661, 25.837234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321980, 39.802486, 25.925898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152133, 0.285594, -0.946198,
		-0.928667, 0.286359, 0.235746,
		0.338280, 0.914568, 0.221658,
		41.423462, 40.076859, 25.992395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685635, 39.887188, 25.425787>,  <41.186668, 39.436661, 25.837234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685635, 39.887188, 25.425787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974628, 40.150738, 25.509590>,  <41.148026, 40.308868, 25.559872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974628, 40.150738, 25.509590>,  <40.685635, 39.887188, 25.425787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974628, 40.150738, 25.509590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103346, 0.402538, -0.909551,
		-0.683618, 0.635486, 0.358921,
		0.722486, 0.658878, 0.209507,
		41.191376, 40.348400, 25.572443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391811, 40.517982, 25.295107>,  <40.685635, 39.887188, 25.425787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391811, 40.517982, 25.295107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789742, 40.548801, 25.268597>,  <41.028500, 40.567291, 25.252689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789742, 40.548801, 25.268597>,  <40.391811, 40.517982, 25.295107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789742, 40.548801, 25.268597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099138, 0.592119, -0.799729,
		-0.022371, 0.802159, 0.596691,
		0.994822, 0.077045, -0.066278,
		41.088188, 40.571915, 25.248713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500965, 41.185310, 24.982645>,  <40.391811, 40.517982, 25.295107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500965, 41.185310, 24.982645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864220, 41.024364, 24.936371>,  <41.082172, 40.927795, 24.908606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864220, 41.024364, 24.936371>,  <40.500965, 41.185310, 24.982645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864220, 41.024364, 24.936371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100975, 0.478660, -0.872174,
		0.406311, 0.780374, 0.475319,
		0.908138, -0.402369, -0.115687,
		41.136662, 40.903652, 24.901665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019238, 41.730606, 24.957596>,  <40.500965, 41.185310, 24.982645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019238, 41.730606, 24.957596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156727, 41.403149, 24.773565>,  <41.239220, 41.206673, 24.663147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156727, 41.403149, 24.773565>,  <41.019238, 41.730606, 24.957596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156727, 41.403149, 24.773565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213389, 0.545201, -0.810692,
		0.914506, 0.180475, 0.362087,
		0.343720, -0.818648, -0.460078,
		41.259842, 41.157555, 24.635542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587532, 41.914783, 24.565094>,  <41.019238, 41.730606, 24.957596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587532, 41.914783, 24.565094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453976, 41.587578, 24.377750>,  <41.373840, 41.391254, 24.265345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453976, 41.587578, 24.377750>,  <41.587532, 41.914783, 24.565094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453976, 41.587578, 24.377750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140335, 0.448199, -0.882850,
		0.932106, -0.360506, -0.034854,
		-0.333894, -0.818018, -0.468360,
		41.353806, 41.342171, 24.237242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044609, 41.924725, 23.970379>,  <41.587532, 41.914783, 24.565094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044609, 41.924725, 23.970379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690235, 41.751156, 23.904858>,  <41.477612, 41.647015, 23.865545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690235, 41.751156, 23.904858>,  <42.044609, 41.924725, 23.970379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690235, 41.751156, 23.904858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042753, 0.428070, -0.902734,
		0.461840, -0.792758, -0.397792,
		-0.885932, -0.433925, -0.163807,
		41.424454, 41.620979, 23.855717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.311417, 39.297928, 23.282372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.663074, 39.465691, 23.372889>,  <33.874069, 39.566349, 23.427198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.663074, 39.465691, 23.372889>,  <33.311417, 39.297928, 23.282372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663074, 39.465691, 23.372889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055960, -0.562413, 0.824961,
		0.473266, -0.712593, -0.517910,
		0.879140, 0.419408, 0.226294,
		33.926815, 39.591515, 23.440777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746635, 38.690979, 23.387400>,  <33.311417, 39.297928, 23.282372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746635, 38.690979, 23.387400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.913670, 39.009106, 23.563169>,  <34.013889, 39.199982, 23.668631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.913670, 39.009106, 23.563169>,  <33.746635, 38.690979, 23.387400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913670, 39.009106, 23.563169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183552, -0.547471, 0.816446,
		0.889906, -0.260277, -0.374597,
		0.417583, 0.795318, 0.439423,
		34.038944, 39.247700, 23.694996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411190, 38.476593, 23.525970>,  <33.746635, 38.690979, 23.387400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411190, 38.476593, 23.525970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.290920, 38.777016, 23.761091>,  <34.218758, 38.957268, 23.902163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.290920, 38.777016, 23.761091>,  <34.411190, 38.476593, 23.525970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290920, 38.777016, 23.761091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271791, -0.523286, 0.807652,
		0.914179, 0.402602, -0.046790,
		-0.300677, 0.751055, 0.587800,
		34.200718, 39.002331, 23.937431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892395, 38.454945, 24.031729>,  <34.411190, 38.476593, 23.525970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892395, 38.454945, 24.031729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610550, 38.684753, 24.198313>,  <34.441441, 38.822639, 24.298264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610550, 38.684753, 24.198313>,  <34.892395, 38.454945, 24.031729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610550, 38.684753, 24.198313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292858, -0.299133, 0.908159,
		0.646337, 0.761866, 0.042519,
		-0.704615, 0.574525, 0.416460,
		34.399166, 38.857109, 24.323250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226212, 38.678299, 24.546598>,  <34.892395, 38.454945, 24.031729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226212, 38.678299, 24.546598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846462, 38.745678, 24.652666>,  <34.618614, 38.786106, 24.716307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846462, 38.745678, 24.652666>,  <35.226212, 38.678299, 24.546598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846462, 38.745678, 24.652666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222790, -0.234078, 0.946347,
		0.221484, 0.957513, 0.184698,
		-0.949373, 0.168452, 0.265168,
		34.561649, 38.796215, 24.732216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257347, 39.192173, 25.043989>,  <35.226212, 38.678299, 24.546598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257347, 39.192173, 25.043989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912308, 38.998810, 25.103642>,  <34.705284, 38.882793, 25.139433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912308, 38.998810, 25.103642>,  <35.257347, 39.192173, 25.043989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912308, 38.998810, 25.103642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267296, -0.185236, 0.945643,
		-0.429507, 0.855573, 0.288998,
		-0.862599, -0.483408, 0.149131,
		34.653526, 38.853786, 25.148380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123802, 39.469398, 25.670795>,  <35.257347, 39.192173, 25.043989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123802, 39.469398, 25.670795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892273, 39.144802, 25.638691>,  <34.753357, 38.950043, 25.619429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892273, 39.144802, 25.638691>,  <35.123802, 39.469398, 25.670795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892273, 39.144802, 25.638691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198494, -0.235676, 0.951345,
		-0.790927, 0.534727, 0.297491,
		-0.578822, -0.811495, -0.080262,
		34.718628, 38.901352, 25.614613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592003, 39.510143, 26.142683>,  <35.123802, 39.469398, 25.670795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592003, 39.510143, 26.142683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.613644, 39.117935, 26.067154>,  <34.626629, 38.882610, 26.021837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.613644, 39.117935, 26.067154>,  <34.592003, 39.510143, 26.142683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613644, 39.117935, 26.067154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054457, -0.185920, 0.981055,
		-0.997049, -0.063362, 0.043337,
		0.054105, -0.980520, -0.188822,
		34.629875, 38.823780, 26.010508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151566, 39.266685, 26.639145>,  <34.592003, 39.510143, 26.142683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151566, 39.266685, 26.639145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384933, 38.960007, 26.531958>,  <34.524952, 38.776001, 26.467646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384933, 38.960007, 26.531958>,  <34.151566, 39.266685, 26.639145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384933, 38.960007, 26.531958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018766, -0.317126, 0.948198,
		-0.811957, -0.558222, -0.170628,
		0.583415, -0.766694, -0.267968,
		34.559959, 38.730000, 26.451567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854389, 38.703960, 27.064360>,  <34.151566, 39.266685, 26.639145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854389, 38.703960, 27.064360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.195564, 38.545639, 26.928226>,  <34.400269, 38.450645, 26.846546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.195564, 38.545639, 26.928226>,  <33.854389, 38.703960, 27.064360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195564, 38.545639, 26.928226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079303, -0.546154, 0.833922,
		-0.515943, -0.738278, -0.434451,
		0.852944, -0.395804, -0.340332,
		34.451447, 38.426895, 26.826126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793255, 38.038692, 27.217417>,  <33.854389, 38.703960, 27.064360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793255, 38.038692, 27.217417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.184696, 38.106575, 27.170868>,  <34.419559, 38.147305, 27.142939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.184696, 38.106575, 27.170868>,  <33.793255, 38.038692, 27.217417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184696, 38.106575, 27.170868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190567, -0.534077, 0.823679,
		0.077631, -0.828228, -0.554988,
		0.978600, 0.169706, -0.116372,
		34.478275, 38.157486, 27.135956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096626, 37.382717, 27.323057>,  <33.793255, 38.038692, 27.217417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096626, 37.382717, 27.323057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395790, 37.640289, 27.387529>,  <34.575291, 37.794834, 27.426212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395790, 37.640289, 27.387529>,  <34.096626, 37.382717, 27.323057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395790, 37.640289, 27.387529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257516, -0.505263, 0.823647,
		0.611810, -0.574510, -0.543715,
		0.747913, 0.643931, 0.161179,
		34.620163, 37.833469, 27.435883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511250, 36.929260, 27.671556>,  <34.096626, 37.382717, 27.323057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511250, 36.929260, 27.671556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660835, 37.291599, 27.751152>,  <34.750587, 37.509003, 27.798910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660835, 37.291599, 27.751152>,  <34.511250, 36.929260, 27.671556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660835, 37.291599, 27.751152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254457, -0.306535, 0.917218,
		0.891854, -0.292372, -0.345131,
		0.373964, 0.905845, 0.198988,
		34.773026, 37.563354, 27.810848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187687, 36.834789, 28.071552>,  <34.511250, 36.929260, 27.671556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187687, 36.834789, 28.071552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.041218, 37.196121, 28.160919>,  <34.953339, 37.412922, 28.214540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.041218, 37.196121, 28.160919>,  <35.187687, 36.834789, 28.071552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041218, 37.196121, 28.160919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205774, -0.155546, 0.966159,
		0.907511, 0.399752, -0.128925,
		-0.366170, 0.903329, 0.223419,
		34.931366, 37.467121, 28.227945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903267, 37.186619, 27.849064>,  <35.187687, 36.834789, 28.071552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903267, 37.186619, 27.849064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.276798, 37.072956, 27.762144>,  <36.500916, 37.004757, 27.709991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.276798, 37.072956, 27.762144>,  <35.903267, 37.186619, 27.849064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276798, 37.072956, 27.762144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120938, 0.320902, -0.939359,
		0.336659, 0.903480, 0.265302,
		0.933828, -0.284158, -0.217299,
		36.556946, 36.987709, 27.696955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204128, 37.711891, 27.559362>,  <35.903267, 37.186619, 27.849064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204128, 37.711891, 27.559362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432083, 37.413364, 27.421820>,  <36.568855, 37.234249, 27.339294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432083, 37.413364, 27.421820>,  <36.204128, 37.711891, 27.559362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432083, 37.413364, 27.421820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062123, 0.378132, -0.923665,
		0.819370, 0.547748, 0.169130,
		0.569889, -0.746316, -0.343857,
		36.603050, 37.189468, 27.318663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809956, 38.001526, 27.188530>,  <36.204128, 37.711891, 27.559362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809956, 38.001526, 27.188530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771729, 37.619816, 27.075233>,  <36.748791, 37.390789, 27.007256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771729, 37.619816, 27.075233>,  <36.809956, 38.001526, 27.188530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771729, 37.619816, 27.075233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125290, 0.270750, -0.954462,
		0.987506, -0.126705, 0.093686,
		-0.095570, -0.954275, -0.283242,
		36.743057, 37.333534, 26.990261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366890, 37.945583, 26.778246>,  <36.809956, 38.001526, 27.188530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366890, 37.945583, 26.778246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.134911, 37.638416, 26.669458>,  <36.995724, 37.454117, 26.604187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.134911, 37.638416, 26.669458>,  <37.366890, 37.945583, 26.778246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134911, 37.638416, 26.669458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255452, 0.145584, -0.955798,
		0.773564, -0.623790, 0.111733,
		-0.579951, -0.767913, -0.271967,
		36.960926, 37.408043, 26.587868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783802, 37.568295, 26.262465>,  <37.366890, 37.945583, 26.778246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783802, 37.568295, 26.262465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399708, 37.469067, 26.211226>,  <37.169250, 37.409531, 26.180483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399708, 37.469067, 26.211226>,  <37.783802, 37.568295, 26.262465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399708, 37.469067, 26.211226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112734, 0.075230, -0.990773,
		0.255420, -0.965816, -0.044272,
		-0.960235, -0.248073, -0.128095,
		37.111637, 37.394646, 26.172796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717781, 37.001656, 25.815136>,  <37.783802, 37.568295, 26.262465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717781, 37.001656, 25.815136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351318, 37.159252, 25.785669>,  <37.131439, 37.253811, 25.767990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351318, 37.159252, 25.785669>,  <37.717781, 37.001656, 25.815136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351318, 37.159252, 25.785669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014956, -0.150055, -0.988565,
		-0.400542, -0.906781, 0.131581,
		-0.916156, 0.393994, -0.073665,
		37.076473, 37.277451, 25.763571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403591, 36.565262, 25.262842>,  <37.717781, 37.001656, 25.815136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403591, 36.565262, 25.262842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206486, 36.912537, 25.286312>,  <37.088223, 37.120903, 25.300394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206486, 36.912537, 25.286312>,  <37.403591, 36.565262, 25.262842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206486, 36.912537, 25.286312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005833, 0.070723, -0.997479,
		-0.870146, -0.491174, -0.039913,
		-0.492759, 0.868186, 0.058675,
		37.058659, 37.172993, 25.303915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842445, 36.555496, 24.731956>,  <37.403591, 36.565262, 25.262842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842445, 36.555496, 24.731956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865265, 36.948116, 24.804951>,  <36.878956, 37.183689, 24.848747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865265, 36.948116, 24.804951>,  <36.842445, 36.555496, 24.731956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865265, 36.948116, 24.804951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170496, 0.189675, -0.966931,
		-0.983706, 0.024048, 0.178171,
		0.057047, 0.981553, 0.182484,
		36.882378, 37.242580, 24.859695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173965, 36.880733, 24.444067>,  <36.842445, 36.555496, 24.731956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173965, 36.880733, 24.444067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461243, 37.155293, 24.489767>,  <36.633610, 37.320030, 24.517187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461243, 37.155293, 24.489767>,  <36.173965, 36.880733, 24.444067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461243, 37.155293, 24.489767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209988, 0.370326, -0.904856,
		-0.663405, 0.625869, 0.410101,
		0.718192, 0.686402, 0.114251,
		36.676701, 37.361214, 24.524042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915108, 37.454388, 24.116678>,  <36.173965, 36.880733, 24.444067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915108, 37.454388, 24.116678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305733, 37.540440, 24.113949>,  <36.540108, 37.592072, 24.112310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305733, 37.540440, 24.113949>,  <35.915108, 37.454388, 24.116678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305733, 37.540440, 24.113949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091927, 0.388200, -0.916979,
		-0.194625, 0.896113, 0.398878,
		0.976561, 0.215134, -0.006823,
		36.598701, 37.604980, 24.111902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960335, 38.197994, 23.982559>,  <35.915108, 37.454388, 24.116678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960335, 38.197994, 23.982559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284225, 37.990814, 23.872238>,  <36.478561, 37.866508, 23.806046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284225, 37.990814, 23.872238>,  <35.960335, 38.197994, 23.982559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284225, 37.990814, 23.872238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133621, 0.294910, -0.946136,
		0.571386, 0.802968, 0.169589,
		0.809731, -0.517948, -0.275801,
		36.527145, 37.835430, 23.789497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441124, 38.720013, 23.633879>,  <35.960335, 38.197994, 23.982559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441124, 38.720013, 23.633879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.581310, 38.363678, 23.518236>,  <36.665424, 38.149876, 23.448851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.581310, 38.363678, 23.518236>,  <36.441124, 38.720013, 23.633879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581310, 38.363678, 23.518236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024140, 0.317177, -0.948059,
		0.936263, 0.325287, 0.132666,
		0.350470, -0.890835, -0.289108,
		36.686451, 38.096428, 23.431503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048767, 38.836506, 23.232954>,  <36.441124, 38.720013, 23.633879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048767, 38.836506, 23.232954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924664, 38.475449, 23.113636>,  <36.850201, 38.258816, 23.042046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924664, 38.475449, 23.113636>,  <37.048767, 38.836506, 23.232954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924664, 38.475449, 23.113636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157070, 0.260791, -0.952532,
		0.937586, -0.342386, 0.060865,
		-0.310261, -0.902641, -0.298293,
		36.831585, 38.204655, 23.024149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527782, 38.524410, 22.711468>,  <37.048767, 38.836506, 23.232954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527782, 38.524410, 22.711468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179005, 38.334805, 22.662428>,  <36.969738, 38.221043, 22.633003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179005, 38.334805, 22.662428>,  <37.527782, 38.524410, 22.711468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179005, 38.334805, 22.662428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022780, 0.289407, -0.956935,
		0.489082, -0.831597, -0.263143,
		-0.871940, -0.474014, -0.122600,
		36.917423, 38.192600, 22.625648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143875, 38.102261, 22.668995>,  <37.527782, 38.524410, 22.711468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143875, 38.102261, 22.668995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510159, 38.232227, 22.574415>,  <38.729927, 38.310207, 22.517668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510159, 38.232227, 22.574415>,  <38.143875, 38.102261, 22.668995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510159, 38.232227, 22.574415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289141, -0.124124, 0.949205,
		0.279064, -0.937562, -0.207608,
		0.915707, 0.324917, -0.236449,
		38.784870, 38.329704, 22.503481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623550, 37.581753, 22.957174>,  <38.143875, 38.102261, 22.668995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623550, 37.581753, 22.957174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849155, 37.907097, 22.900143>,  <38.984520, 38.102303, 22.865923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849155, 37.907097, 22.900143>,  <38.623550, 37.581753, 22.957174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849155, 37.907097, 22.900143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471339, -0.175325, 0.864350,
		0.678034, -0.554707, -0.482256,
		0.564012, 0.813364, -0.142578,
		39.018360, 38.151108, 22.857368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316208, 37.370819, 23.158720>,  <38.623550, 37.581753, 22.957174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316208, 37.370819, 23.158720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.319283, 37.770245, 23.179956>,  <39.321125, 38.009899, 23.192698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.319283, 37.770245, 23.179956>,  <39.316208, 37.370819, 23.158720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319283, 37.770245, 23.179956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496202, -0.049902, 0.866772,
		0.868173, 0.019683, -0.495871,
		0.007685, 0.998560, 0.053090,
		39.321587, 38.069813, 23.195883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942142, 37.533325, 23.378279>,  <39.316208, 37.370819, 23.158720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942142, 37.533325, 23.378279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710831, 37.851234, 23.451963>,  <39.572044, 38.041981, 23.496174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710831, 37.851234, 23.451963>,  <39.942142, 37.533325, 23.378279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710831, 37.851234, 23.451963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380585, 0.063075, 0.922592,
		0.721629, 0.603625, -0.338953,
		-0.578279, 0.794770, 0.184213,
		39.537346, 38.089664, 23.507227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351273, 37.896656, 23.714930>,  <39.942142, 37.533325, 23.378279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351273, 37.896656, 23.714930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000053, 38.060337, 23.814188>,  <39.789322, 38.158546, 23.873743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000053, 38.060337, 23.814188>,  <40.351273, 37.896656, 23.714930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000053, 38.060337, 23.814188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339520, 0.167219, 0.925615,
		0.337271, 0.896989, -0.285760,
		-0.878051, 0.409204, 0.248148,
		39.736637, 38.183098, 23.888632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506008, 38.335014, 24.301502>,  <40.351273, 37.896656, 23.714930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506008, 38.335014, 24.301502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.108242, 38.313995, 24.338112>,  <39.869583, 38.301384, 24.360077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.108242, 38.313995, 24.338112>,  <40.506008, 38.335014, 24.301502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108242, 38.313995, 24.338112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087056, 0.081811, 0.992839,
		-0.059659, 0.995262, -0.076779,
		-0.994416, -0.052547, 0.091524,
		39.809917, 38.298233, 24.365568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277271, 38.937237, 24.745043>,  <40.506008, 38.335014, 24.301502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277271, 38.937237, 24.745043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.968067, 38.684292, 24.765324>,  <39.782547, 38.532524, 24.777493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.968067, 38.684292, 24.765324>,  <40.277271, 38.937237, 24.745043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968067, 38.684292, 24.765324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015976, 0.060496, 0.998041,
		-0.634195, 0.772304, -0.036661,
		-0.773008, -0.632367, 0.050704,
		39.736164, 38.494583, 24.780535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768261, 39.202354, 25.241980>,  <40.277271, 38.937237, 24.745043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768261, 39.202354, 25.241980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730579, 38.805252, 25.212160>,  <39.707970, 38.566990, 25.194269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730579, 38.805252, 25.212160>,  <39.768261, 39.202354, 25.241980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730579, 38.805252, 25.212160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008162, -0.074109, 0.997217,
		-0.995519, 0.094552, -0.001121,
		-0.094206, -0.992758, -0.074549,
		39.702316, 38.507423, 25.189795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376549, 38.967800, 25.876616>,  <39.768261, 39.202354, 25.241980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376549, 38.967800, 25.876616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.557961, 38.647758, 25.719566>,  <39.666805, 38.455734, 25.625338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.557961, 38.647758, 25.719566>,  <39.376549, 38.967800, 25.876616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557961, 38.647758, 25.719566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069154, -0.470798, 0.879527,
		-0.888556, -0.371737, -0.268849,
		0.453526, -0.800101, -0.392623,
		39.694019, 38.407730, 25.601780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918392, 38.442215, 25.995693>,  <39.376549, 38.967800, 25.876616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918392, 38.442215, 25.995693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285900, 38.296303, 25.935299>,  <39.506405, 38.208755, 25.899061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285900, 38.296303, 25.935299>,  <38.918392, 38.442215, 25.995693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285900, 38.296303, 25.935299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070787, -0.528460, 0.846002,
		-0.388397, -0.766593, -0.511354,
		0.918769, -0.364781, -0.150987,
		39.561531, 38.186867, 25.890003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862038, 37.679363, 26.110144>,  <38.918392, 38.442215, 25.995693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862038, 37.679363, 26.110144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242554, 37.777855, 26.184351>,  <39.470863, 37.836948, 26.228876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242554, 37.777855, 26.184351>,  <38.862038, 37.679363, 26.110144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242554, 37.777855, 26.184351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034508, -0.683027, 0.729578,
		0.306355, -0.687639, -0.658255,
		0.951292, 0.246225, 0.185520,
		39.527943, 37.851723, 26.240007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080914, 37.073658, 26.293514>,  <38.862038, 37.679363, 26.110144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080914, 37.073658, 26.293514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367584, 37.323036, 26.418531>,  <39.539585, 37.472664, 26.493542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367584, 37.323036, 26.418531>,  <39.080914, 37.073658, 26.293514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367584, 37.323036, 26.418531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157547, -0.581299, 0.798293,
		0.679376, -0.522879, -0.514827,
		0.716678, 0.623450, 0.312542,
		39.582588, 37.510071, 26.512295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732216, 36.660526, 26.605074>,  <39.080914, 37.073658, 26.293514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732216, 36.660526, 26.605074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744678, 37.025883, 26.767433>,  <39.752155, 37.245094, 26.864849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744678, 37.025883, 26.767433>,  <39.732216, 36.660526, 26.605074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744678, 37.025883, 26.767433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277589, -0.398028, 0.874368,
		0.960195, 0.085431, -0.265947,
		0.031156, 0.913387, 0.405898,
		39.754025, 37.299900, 26.889202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145206, 36.490925, 27.149651>,  <39.732216, 36.660526, 26.605074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145206, 36.490925, 27.149651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982292, 36.843536, 27.245173>,  <39.884544, 37.055103, 27.302485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982292, 36.843536, 27.245173>,  <40.145206, 36.490925, 27.149651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982292, 36.843536, 27.245173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048090, -0.240410, 0.969480,
		0.912035, 0.406336, 0.055522,
		-0.407283, 0.881529, 0.238803,
		39.860107, 37.107994, 27.316813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.429272, 41.693283, 23.241800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.064041, 41.534515, 23.279196>,  <41.844902, 41.439255, 23.301634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.064041, 41.534515, 23.279196>,  <42.429272, 41.693283, 23.241800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064041, 41.534515, 23.279196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095843, -0.013951, -0.995299,
		0.396355, -0.917749, -0.025303,
		-0.913081, -0.396916, 0.093490,
		41.790115, 41.415440, 23.307243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465065, 41.140995, 22.829893>,  <42.429272, 41.693283, 23.241800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465065, 41.140995, 22.829893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.076393, 41.232231, 22.854582>,  <41.843189, 41.286972, 22.869394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.076393, 41.232231, 22.854582>,  <42.465065, 41.140995, 22.829893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076393, 41.232231, 22.854582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077146, -0.059339, -0.995252,
		-0.223346, -0.971830, 0.075255,
		-0.971681, 0.228092, 0.061720,
		41.784889, 41.300659, 22.873098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115498, 40.735229, 22.369135>,  <42.465065, 41.140995, 22.829893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115498, 40.735229, 22.369135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.852596, 41.031471, 22.425030>,  <41.694855, 41.209217, 22.458567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.852596, 41.031471, 22.425030>,  <42.115498, 40.735229, 22.369135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852596, 41.031471, 22.425030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261197, -0.049915, -0.963994,
		-0.706964, -0.670084, 0.226250,
		-0.657250, 0.740605, 0.139736,
		41.655422, 41.253654, 22.466951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510376, 40.563812, 22.053001>,  <42.115498, 40.735229, 22.369135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510376, 40.563812, 22.053001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.498241, 40.961926, 22.089849>,  <41.490959, 41.200794, 22.111958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.498241, 40.961926, 22.089849>,  <41.510376, 40.563812, 22.053001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498241, 40.961926, 22.089849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371200, 0.074351, -0.925571,
		-0.928057, -0.062277, 0.367194,
		-0.030340, 0.995285, 0.092119,
		41.489140, 41.260509, 22.117485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946133, 40.734840, 21.698149>,  <41.510376, 40.563812, 22.053001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946133, 40.734840, 21.698149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156746, 41.074371, 21.717133>,  <41.283115, 41.278091, 21.728523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156746, 41.074371, 21.717133>,  <40.946133, 40.734840, 21.698149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156746, 41.074371, 21.717133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453449, 0.327621, -0.828884,
		-0.719129, 0.414916, 0.557404,
		0.526534, 0.848828, 0.047458,
		41.314705, 41.329021, 21.731371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481949, 41.378334, 21.595831>,  <40.946133, 40.734840, 21.698149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481949, 41.378334, 21.595831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.854137, 41.488117, 21.498758>,  <41.077450, 41.553986, 21.440516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.854137, 41.488117, 21.498758>,  <40.481949, 41.378334, 21.595831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854137, 41.488117, 21.498758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314833, 0.260270, -0.912765,
		-0.187349, 0.925707, 0.328582,
		0.930473, 0.274454, -0.242682,
		41.133278, 41.570454, 21.425953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351715, 41.952126, 21.154375>,  <40.481949, 41.378334, 21.595831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351715, 41.952126, 21.154375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730846, 41.860718, 21.065468>,  <40.958324, 41.805874, 21.012123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730846, 41.860718, 21.065468>,  <40.351715, 41.952126, 21.154375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730846, 41.860718, 21.065468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191353, 0.149820, -0.970020,
		0.254972, 0.961941, 0.098275,
		0.947826, -0.228522, -0.222270,
		41.015194, 41.792160, 20.998787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510338, 42.502121, 20.694185>,  <40.351715, 41.952126, 21.154375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510338, 42.502121, 20.694185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753529, 42.188694, 20.643000>,  <40.899445, 42.000637, 20.612289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753529, 42.188694, 20.643000>,  <40.510338, 42.502121, 20.694185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753529, 42.188694, 20.643000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046454, 0.125787, -0.990969,
		0.792591, 0.608435, 0.040076,
		0.607981, -0.783572, -0.127962,
		40.935925, 41.953621, 20.604610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111980, 42.774494, 20.441826>,  <40.510338, 42.502121, 20.694185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111980, 42.774494, 20.441826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.091831, 42.394142, 20.319654>,  <41.079742, 42.165932, 20.246351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.091831, 42.394142, 20.319654>,  <41.111980, 42.774494, 20.441826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091831, 42.394142, 20.319654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138442, 0.309511, -0.940764,
		0.989089, -0.005103, -0.147233,
		-0.050371, -0.950882, -0.305427,
		41.076721, 42.108879, 20.228025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411625, 42.715698, 19.744404>,  <41.111980, 42.774494, 20.441826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411625, 42.715698, 19.744404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.204670, 42.373516, 19.735481>,  <41.080498, 42.168205, 19.730127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.204670, 42.373516, 19.735481>,  <41.411625, 42.715698, 19.744404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204670, 42.373516, 19.735481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168679, 0.127503, -0.977390,
		0.838961, -0.501929, -0.210266,
		-0.517390, -0.855459, -0.022305,
		41.049454, 42.116879, 19.728790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570858, 42.343246, 19.115768>,  <41.411625, 42.715698, 19.744404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570858, 42.343246, 19.115768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.226765, 42.163002, 19.211224>,  <41.020309, 42.054855, 19.268497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.226765, 42.163002, 19.211224>,  <41.570858, 42.343246, 19.115768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226765, 42.163002, 19.211224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371315, 0.232841, -0.898838,
		0.349464, -0.861820, -0.367617,
		-0.860232, -0.450613, 0.238637,
		40.968693, 42.027821, 19.282816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310993, 42.167217, 18.487158>,  <41.570858, 42.343246, 19.115768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310993, 42.167217, 18.487158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.996475, 42.099842, 18.724937>,  <40.807766, 42.059418, 18.867605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.996475, 42.099842, 18.724937>,  <41.310993, 42.167217, 18.487158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996475, 42.099842, 18.724937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613100, 0.093594, -0.784442,
		0.076464, -0.981265, -0.176839,
		-0.786296, -0.168401, 0.594457,
		40.760586, 42.049313, 18.903273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898468, 41.655506, 18.192829>,  <41.310993, 42.167217, 18.487158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898468, 41.655506, 18.192829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.664520, 41.866341, 18.439442>,  <40.524151, 41.992840, 18.587410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.664520, 41.866341, 18.439442>,  <40.898468, 41.655506, 18.192829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664520, 41.866341, 18.439442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667421, 0.119227, -0.735075,
		-0.460952, -0.841409, 0.282053,
		-0.584870, 0.527082, 0.616532,
		40.489059, 42.024464, 18.624401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269459, 41.449772, 18.058357>,  <40.898468, 41.655506, 18.192829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269459, 41.449772, 18.058357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.237133, 41.811363, 18.226301>,  <40.217735, 42.028320, 18.327068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.237133, 41.811363, 18.226301>,  <40.269459, 41.449772, 18.058357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237133, 41.811363, 18.226301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616682, 0.285587, -0.733583,
		-0.783053, -0.318207, 0.534390,
		-0.080816, 0.903983, 0.419862,
		40.212887, 42.082558, 18.352261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706367, 41.588791, 18.481050>,  <40.269459, 41.449772, 18.058357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706367, 41.588791, 18.481050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468334, 41.420033, 18.207443>,  <39.325516, 41.318779, 18.043278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468334, 41.420033, 18.207443>,  <39.706367, 41.588791, 18.481050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468334, 41.420033, 18.207443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036142, -0.864312, 0.501655,
		-0.802853, 0.273803, 0.529584,
		-0.595080, -0.421895, -0.684020,
		39.289810, 41.293465, 18.002237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131241, 41.417717, 18.808069>,  <39.706367, 41.588791, 18.481050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131241, 41.417717, 18.808069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163952, 41.183727, 18.485300>,  <39.183578, 41.043335, 18.291639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163952, 41.183727, 18.485300>,  <39.131241, 41.417717, 18.808069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163952, 41.183727, 18.485300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074149, -0.810961, 0.580384,
		-0.993889, 0.012371, -0.109692,
		0.081776, -0.584970, -0.806922,
		39.188484, 41.008236, 18.243223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492016, 41.063744, 18.712166>,  <39.131241, 41.417717, 18.808069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492016, 41.063744, 18.712166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.799252, 40.863319, 18.552679>,  <38.983593, 40.743065, 18.456987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.799252, 40.863319, 18.552679>,  <38.492016, 41.063744, 18.712166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799252, 40.863319, 18.552679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157036, -0.751042, 0.641308,
		-0.620790, -0.429968, -0.655552,
		0.768089, -0.501062, -0.398719,
		39.029678, 40.713001, 18.433064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254620, 40.335865, 18.817957>,  <38.492016, 41.063744, 18.712166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254620, 40.335865, 18.817957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641045, 40.301468, 18.720524>,  <38.872898, 40.280830, 18.662064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641045, 40.301468, 18.720524>,  <38.254620, 40.335865, 18.817957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641045, 40.301468, 18.720524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061775, -0.838700, 0.541079,
		-0.250820, -0.537762, -0.804923,
		0.966060, -0.085989, -0.243583,
		38.930862, 40.275673, 18.647449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339546, 39.658062, 18.488329>,  <38.254620, 40.335865, 18.817957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339546, 39.658062, 18.488329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.709236, 39.750999, 18.609545>,  <38.931049, 39.806763, 18.682274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.709236, 39.750999, 18.609545>,  <38.339546, 39.658062, 18.488329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709236, 39.750999, 18.609545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057449, -0.869155, 0.491191,
		0.377514, -0.436559, -0.816639,
		0.924220, 0.232346, 0.303039,
		38.986504, 39.820702, 18.700457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690075, 39.086849, 18.405830>,  <38.339546, 39.658062, 18.488329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690075, 39.086849, 18.405830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886467, 39.286201, 18.691643>,  <39.004303, 39.405815, 18.863131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886467, 39.286201, 18.691643>,  <38.690075, 39.086849, 18.405830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886467, 39.286201, 18.691643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125074, -0.771372, 0.623973,
		0.862145, -0.395727, -0.316394,
		0.490980, 0.498382, 0.714530,
		39.033760, 39.435715, 18.906002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232189, 38.711094, 18.733849>,  <38.690075, 39.086849, 18.405830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232189, 38.711094, 18.733849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154152, 38.981403, 19.018177>,  <39.107330, 39.143589, 19.188774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154152, 38.981403, 19.018177>,  <39.232189, 38.711094, 18.733849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154152, 38.981403, 19.018177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098388, -0.734577, 0.671354,
		0.975837, 0.061040, 0.209798,
		-0.195092, 0.675774, 0.710823,
		39.095623, 39.184135, 19.231424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612114, 38.448826, 19.318182>,  <39.232189, 38.711094, 18.733849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612114, 38.448826, 19.318182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371342, 38.731968, 19.466038>,  <39.226879, 38.901852, 19.554750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371342, 38.731968, 19.466038>,  <39.612114, 38.448826, 19.318182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371342, 38.731968, 19.466038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136896, -0.547502, 0.825531,
		0.786730, 0.446306, 0.426458,
		-0.601926, 0.707851, 0.369639,
		39.190765, 38.944324, 19.576929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796349, 38.575207, 19.953495>,  <39.612114, 38.448826, 19.318182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796349, 38.575207, 19.953495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.438637, 38.752098, 19.980898>,  <39.224010, 38.858234, 19.997339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.438637, 38.752098, 19.980898>,  <39.796349, 38.575207, 19.953495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438637, 38.752098, 19.980898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026542, -0.205234, 0.978353,
		0.446720, 0.873103, 0.195275,
		-0.894280, 0.442232, 0.068509,
		39.170353, 38.884769, 20.001450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800602, 38.962116, 20.550730>,  <39.796349, 38.575207, 19.953495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800602, 38.962116, 20.550730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416389, 38.870060, 20.488222>,  <39.185863, 38.814827, 20.450718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416389, 38.870060, 20.488222>,  <39.800602, 38.962116, 20.550730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416389, 38.870060, 20.488222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118034, -0.171501, 0.978088,
		-0.251901, 0.957925, 0.137567,
		-0.960528, -0.230144, -0.156269,
		39.128231, 38.801018, 20.441341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490601, 39.351280, 20.969744>,  <39.800602, 38.962116, 20.550730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490601, 39.351280, 20.969744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.234768, 39.053551, 20.892891>,  <39.081268, 38.874912, 20.846779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.234768, 39.053551, 20.892891>,  <39.490601, 39.351280, 20.969744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234768, 39.053551, 20.892891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047359, -0.211307, 0.976272,
		-0.767261, 0.633507, 0.099898,
		-0.639584, -0.744324, -0.192130,
		39.042892, 38.830254, 20.835253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991375, 39.539673, 21.413170>,  <39.490601, 39.351280, 20.969744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991375, 39.539673, 21.413170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.916744, 39.153477, 21.340483>,  <38.871967, 38.921761, 21.296871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.916744, 39.153477, 21.340483>,  <38.991375, 39.539673, 21.413170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916744, 39.153477, 21.340483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115166, -0.162197, 0.980015,
		-0.975668, 0.203772, -0.080930,
		-0.186573, -0.965489, -0.181718,
		38.860771, 38.863831, 21.285967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466450, 39.314800, 21.817953>,  <38.991375, 39.539673, 21.413170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466450, 39.314800, 21.817953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.634033, 38.961334, 21.734430>,  <38.734585, 38.749252, 21.684317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.634033, 38.961334, 21.734430>,  <38.466450, 39.314800, 21.817953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634033, 38.961334, 21.734430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101967, -0.274296, 0.956224,
		-0.902260, -0.379330, -0.205025,
		0.418962, -0.883669, -0.208807,
		38.759724, 38.696232, 21.671787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997856, 38.783787, 22.112642>,  <38.466450, 39.314800, 21.817953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997856, 38.783787, 22.112642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375710, 38.653980, 22.093256>,  <38.602421, 38.576096, 22.081625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375710, 38.653980, 22.093256>,  <37.997856, 38.783787, 22.112642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375710, 38.653980, 22.093256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008975, -0.173212, 0.984844,
		-0.327993, -0.929885, -0.166535,
		0.944637, -0.324517, -0.048467,
		38.659100, 38.556625, 22.078716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539490, 38.219719, 21.902697>,  <37.997856, 38.783787, 22.112642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539490, 38.219719, 21.902697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.159088, 38.189983, 22.022739>,  <36.930847, 38.172142, 22.094765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.159088, 38.189983, 22.022739>,  <37.539490, 38.219719, 21.902697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159088, 38.189983, 22.022739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308136, 0.307511, -0.900272,
		-0.025361, -0.948636, -0.315351,
		-0.951004, -0.074339, 0.300108,
		36.873787, 38.167683, 22.112772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144409, 37.907352, 21.390644>,  <37.539490, 38.219719, 21.902697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144409, 37.907352, 21.390644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864376, 38.111805, 21.590096>,  <36.696358, 38.234474, 21.709766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864376, 38.111805, 21.590096>,  <37.144409, 37.907352, 21.390644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864376, 38.111805, 21.590096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426796, 0.260321, -0.866071,
		-0.572478, -0.819134, 0.035902,
		-0.700082, 0.511129, 0.498631,
		36.654350, 38.265144, 21.739685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573448, 37.834145, 20.975321>,  <37.144409, 37.907352, 21.390644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573448, 37.834145, 20.975321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479481, 38.147732, 21.205175>,  <36.423100, 38.335884, 21.343088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479481, 38.147732, 21.205175>,  <36.573448, 37.834145, 20.975321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479481, 38.147732, 21.205175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508158, 0.404904, -0.760150,
		-0.828607, -0.470578, 0.303261,
		-0.234919, 0.783970, 0.574634,
		36.409004, 38.382923, 21.377565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014988, 38.030472, 20.634848>,  <36.573448, 37.834145, 20.975321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014988, 38.030472, 20.634848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062435, 38.347988, 20.873449>,  <36.090904, 38.538498, 21.016611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062435, 38.347988, 20.873449>,  <36.014988, 38.030472, 20.634848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062435, 38.347988, 20.873449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444386, 0.579664, -0.683016,
		-0.887948, -0.184060, 0.421510,
		0.118619, 0.793795, 0.596505,
		36.098022, 38.586128, 21.052401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387619, 38.472454, 20.640631>,  <36.014988, 38.030472, 20.634848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387619, 38.472454, 20.640631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687851, 38.713829, 20.748325>,  <35.867992, 38.858654, 20.812943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687851, 38.713829, 20.748325>,  <35.387619, 38.472454, 20.640631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687851, 38.713829, 20.748325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235240, 0.624783, -0.744519,
		-0.617484, 0.495489, 0.610905,
		0.750584, 0.603438, 0.269235,
		35.913025, 38.894859, 20.829096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086475, 39.069874, 20.492224>,  <35.387619, 38.472454, 20.640631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086475, 39.069874, 20.492224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.472553, 39.173679, 20.505184>,  <35.704201, 39.235962, 20.512960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.472553, 39.173679, 20.505184>,  <35.086475, 39.069874, 20.492224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472553, 39.173679, 20.505184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122031, 0.556478, -0.821852,
		-0.231308, 0.789295, 0.568779,
		0.965197, 0.259510, 0.032399,
		35.762112, 39.251534, 20.514904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101978, 39.724720, 20.410763>,  <35.086475, 39.069874, 20.492224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101978, 39.724720, 20.410763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479351, 39.637585, 20.310780>,  <35.705776, 39.585304, 20.250790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479351, 39.637585, 20.310780>,  <35.101978, 39.724720, 20.410763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479351, 39.637585, 20.310780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027070, 0.801976, -0.596743,
		0.330454, 0.556221, 0.762508,
		0.943434, -0.217837, -0.249959,
		35.762383, 39.572235, 20.235792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398468, 40.322998, 20.786922>,  <35.101978, 39.724720, 20.410763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398468, 40.322998, 20.786922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065231, 40.543179, 20.808685>,  <34.865288, 40.675289, 20.821743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065231, 40.543179, 20.808685>,  <35.398468, 40.322998, 20.786922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065231, 40.543179, 20.808685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151687, -0.321941, 0.934529,
		0.531930, 0.770296, 0.351703,
		-0.833092, 0.550453, 0.054406,
		34.815304, 40.708313, 20.825006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450420, 40.865822, 21.389246>,  <35.398468, 40.322998, 20.786922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450420, 40.865822, 21.389246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073299, 40.776485, 21.290260>,  <34.847027, 40.722885, 21.230869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073299, 40.776485, 21.290260>,  <35.450420, 40.865822, 21.389246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073299, 40.776485, 21.290260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138433, -0.412995, 0.900151,
		-0.303242, 0.882923, 0.358456,
		-0.942805, -0.223342, -0.247463,
		34.790459, 40.709484, 21.216021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146267, 41.088367, 21.893387>,  <35.450420, 40.865822, 21.389246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146267, 41.088367, 21.893387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845417, 40.872807, 21.741653>,  <34.664909, 40.743469, 21.650614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845417, 40.872807, 21.741653>,  <35.146267, 41.088367, 21.893387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845417, 40.872807, 21.741653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206781, -0.353551, 0.912274,
		-0.625742, 0.764580, 0.154479,
		-0.752123, -0.538905, -0.379333,
		34.619781, 40.711136, 21.627853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621086, 41.236931, 22.281105>,  <35.146267, 41.088367, 21.893387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621086, 41.236931, 22.281105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.517254, 40.881290, 22.130308>,  <34.454956, 40.667908, 22.039829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.517254, 40.881290, 22.130308>,  <34.621086, 41.236931, 22.281105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517254, 40.881290, 22.130308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304004, -0.295298, 0.905749,
		-0.916625, 0.349719, -0.193637,
		-0.259577, -0.889098, -0.376994,
		34.439381, 40.614559, 22.017210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017971, 41.106606, 22.584986>,  <34.621086, 41.236931, 22.281105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017971, 41.106606, 22.584986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131973, 40.738960, 22.476168>,  <34.200375, 40.518375, 22.410877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131973, 40.738960, 22.476168>,  <34.017971, 41.106606, 22.584986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131973, 40.738960, 22.476168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317537, -0.358323, 0.877938,
		-0.904402, -0.163831, -0.393975,
		0.285003, -0.919111, -0.272045,
		34.217476, 40.463226, 22.394554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450478, 40.664158, 22.829823>,  <34.017971, 41.106606, 22.584986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450478, 40.664158, 22.829823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.748211, 40.401447, 22.781469>,  <33.926849, 40.243820, 22.752459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.748211, 40.401447, 22.781469>,  <33.450478, 40.664158, 22.829823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748211, 40.401447, 22.781469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197133, -0.389037, 0.899883,
		-0.638053, -0.645980, -0.419045,
		0.744330, -0.656780, -0.120882,
		33.971512, 40.204414, 22.745205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217697, 40.027752, 23.120056>,  <33.450478, 40.664158, 22.829823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217697, 40.027752, 23.120056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.610073, 39.950138, 23.124182>,  <33.845497, 39.903568, 23.126657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.610073, 39.950138, 23.124182>,  <33.217697, 40.027752, 23.120056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610073, 39.950138, 23.124182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080448, -0.357236, 0.930543,
		-0.176874, -0.913637, -0.366037,
		0.980940, -0.194036, 0.010314,
		33.904354, 39.891926, 23.127275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.220104, 43.512543, 19.286432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.459797, 43.193016, 19.265221>,  <38.603615, 43.001301, 19.252493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.459797, 43.193016, 19.265221>,  <38.220104, 43.512543, 19.286432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459797, 43.193016, 19.265221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048568, -0.102390, 0.993558,
		-0.799098, -0.592800, -0.100152,
		0.599236, -0.798814, -0.053028,
		38.639568, 42.953373, 19.249311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857899, 42.759388, 19.507263>,  <38.220104, 43.512543, 19.286432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857899, 42.759388, 19.507263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.247242, 42.832962, 19.562016>,  <38.480850, 42.877106, 19.594868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.247242, 42.832962, 19.562016>,  <37.857899, 42.759388, 19.507263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247242, 42.832962, 19.562016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134633, -0.024724, 0.990587,
		0.185589, -0.982627, 0.000698,
		0.973361, 0.183936, 0.136883,
		38.539249, 42.888142, 19.603081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133984, 42.160526, 19.840843>,  <37.857899, 42.759388, 19.507263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133984, 42.160526, 19.840843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.345512, 42.488277, 19.929361>,  <38.472431, 42.684929, 19.982471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.345512, 42.488277, 19.929361>,  <38.133984, 42.160526, 19.840843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345512, 42.488277, 19.929361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062045, -0.222716, 0.972907,
		0.846462, -0.528224, -0.066938,
		0.528821, 0.819376, 0.221294,
		38.504158, 42.734089, 19.995750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629154, 41.933979, 20.364727>,  <38.133984, 42.160526, 19.840843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629154, 41.933979, 20.364727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.619026, 42.333511, 20.381231>,  <38.612949, 42.573231, 20.391134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.619026, 42.333511, 20.381231>,  <38.629154, 41.933979, 20.364727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619026, 42.333511, 20.381231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026759, -0.041938, 0.998762,
		0.999321, 0.024183, 0.027790,
		-0.025318, 0.998828, 0.041262,
		38.611431, 42.633160, 20.393610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101231, 42.021927, 20.787542>,  <38.629154, 41.933979, 20.364727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101231, 42.021927, 20.787542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905117, 42.370239, 20.802301>,  <38.787449, 42.579227, 20.811157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905117, 42.370239, 20.802301>,  <39.101231, 42.021927, 20.787542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905117, 42.370239, 20.802301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123469, -0.111302, 0.986087,
		0.862773, 0.478907, 0.162084,
		-0.490284, 0.870782, 0.036898,
		38.758034, 42.631474, 20.813372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325432, 42.261475, 21.342783>,  <39.101231, 42.021927, 20.787542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325432, 42.261475, 21.342783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.004238, 42.493130, 21.286465>,  <38.811523, 42.632122, 21.252674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.004238, 42.493130, 21.286465>,  <39.325432, 42.261475, 21.342783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004238, 42.493130, 21.286465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252449, -0.116499, 0.960571,
		0.539900, 0.806863, 0.239749,
		-0.802980, 0.579137, -0.140794,
		38.763344, 42.666870, 21.244226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329544, 42.793579, 21.792549>,  <39.325432, 42.261475, 21.342783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329544, 42.793579, 21.792549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936798, 42.808853, 21.718275>,  <38.701149, 42.818016, 21.673712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936798, 42.808853, 21.718275>,  <39.329544, 42.793579, 21.792549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936798, 42.808853, 21.718275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185223, 0.015290, 0.982578,
		0.040356, 0.999154, -0.007941,
		-0.981867, 0.038182, -0.185683,
		38.642239, 42.820309, 21.662571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041885, 43.369576, 22.090652>,  <39.329544, 42.793579, 21.792549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041885, 43.369576, 22.090652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739159, 43.112995, 22.040428>,  <38.557522, 42.959045, 22.010294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739159, 43.112995, 22.040428>,  <39.041885, 43.369576, 22.090652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739159, 43.112995, 22.040428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219600, 0.068600, 0.973175,
		-0.615634, 0.764088, -0.192781,
		-0.756816, -0.641454, -0.125561,
		38.512115, 42.920559, 22.002760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474056, 43.693336, 22.444565>,  <39.041885, 43.369576, 22.090652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474056, 43.693336, 22.444565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.392979, 43.302792, 22.414530>,  <38.344334, 43.068466, 22.396509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.392979, 43.302792, 22.414530>,  <38.474056, 43.693336, 22.444565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392979, 43.302792, 22.414530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058690, -0.064430, 0.996195,
		-0.977482, 0.206328, -0.044243,
		-0.202692, -0.976359, -0.075089,
		38.332172, 43.009884, 22.392004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940514, 43.557419, 22.891586>,  <38.474056, 43.693336, 22.444565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940514, 43.557419, 22.891586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.095280, 43.190784, 22.851248>,  <38.188141, 42.970806, 22.827045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.095280, 43.190784, 22.851248>,  <37.940514, 43.557419, 22.891586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095280, 43.190784, 22.851248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141641, -0.167141, 0.975706,
		-0.911171, -0.363233, -0.194496,
		0.386917, -0.916584, -0.100845,
		38.211353, 42.915810, 22.820993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427803, 43.151836, 23.156952>,  <37.940514, 43.557419, 22.891586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427803, 43.151836, 23.156952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.756790, 42.924324, 23.154846>,  <37.954182, 42.787815, 23.153584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.756790, 42.924324, 23.154846>,  <37.427803, 43.151836, 23.156952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756790, 42.924324, 23.154846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154335, -0.232057, 0.960380,
		-0.547469, -0.789073, -0.278643,
		0.822471, -0.568783, -0.005262,
		38.003532, 42.753689, 23.153267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219990, 42.392807, 23.248316>,  <37.427803, 43.151836, 23.156952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219990, 42.392807, 23.248316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601849, 42.460564, 23.346254>,  <37.830963, 42.501217, 23.405018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601849, 42.460564, 23.346254>,  <37.219990, 42.392807, 23.248316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601849, 42.460564, 23.346254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192032, -0.278145, 0.941148,
		0.227525, -0.945485, -0.233003,
		0.954650, 0.169391, 0.244848,
		37.888245, 42.511379, 23.419708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676331, 41.959267, 23.211161>,  <37.219990, 42.392807, 23.248316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676331, 41.959267, 23.211161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.395168, 42.201847, 23.359833>,  <36.226471, 42.347397, 23.449036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.395168, 42.201847, 23.359833>,  <36.676331, 41.959267, 23.211161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395168, 42.201847, 23.359833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070853, 0.460249, -0.884958,
		-0.707750, -0.648373, -0.280540,
		-0.702901, 0.606452, 0.371680,
		36.184299, 42.383781, 23.471336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187065, 42.062061, 22.622456>,  <36.676331, 41.959267, 23.211161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187065, 42.062061, 22.622456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.072922, 42.356750, 22.867672>,  <36.004436, 42.533562, 23.014801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.072922, 42.356750, 22.867672>,  <36.187065, 42.062061, 22.622456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072922, 42.356750, 22.867672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245019, 0.562305, -0.789797,
		-0.926574, -0.375578, 0.020054,
		-0.285354, 0.736718, 0.613041,
		35.987316, 42.577766, 23.051584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515873, 42.333599, 22.407732>,  <36.187065, 42.062061, 22.622456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515873, 42.333599, 22.407732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.662804, 42.653687, 22.597349>,  <35.750961, 42.845741, 22.711119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.662804, 42.653687, 22.597349>,  <35.515873, 42.333599, 22.407732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662804, 42.653687, 22.597349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302786, 0.584792, -0.752555,
		-0.879428, 0.132898, 0.457104,
		0.367324, 0.800223, 0.474043,
		35.773003, 42.893753, 22.739561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047241, 42.893833, 22.345062>,  <35.515873, 42.333599, 22.407732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047241, 42.893833, 22.345062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.385284, 43.087959, 22.434734>,  <35.588112, 43.204433, 22.488537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.385284, 43.087959, 22.434734>,  <35.047241, 42.893833, 22.345062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385284, 43.087959, 22.434734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271692, 0.751074, -0.601724,
		-0.460400, 0.447616, 0.766597,
		0.845113, 0.485312, 0.224181,
		35.638817, 43.233551, 22.501989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843178, 43.433659, 22.582144>,  <35.047241, 42.893833, 22.345062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843178, 43.433659, 22.582144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.221203, 43.511040, 22.476748>,  <35.448017, 43.557468, 22.413509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.221203, 43.511040, 22.476748>,  <34.843178, 43.433659, 22.582144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221203, 43.511040, 22.476748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316802, 0.740658, -0.592505,
		0.080534, 0.643430, 0.761257,
		0.945066, 0.193451, -0.263489,
		35.504723, 43.569077, 22.397701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852512, 44.172447, 22.390352>,  <34.843178, 43.433659, 22.582144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852512, 44.172447, 22.390352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.199383, 44.057011, 22.228012>,  <35.407505, 43.987747, 22.130608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.199383, 44.057011, 22.228012>,  <34.852512, 44.172447, 22.390352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199383, 44.057011, 22.228012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201024, 0.542763, -0.815474,
		0.455621, 0.788747, 0.412659,
		0.867179, -0.288593, -0.405851,
		35.459538, 43.970432, 22.106256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072159, 44.765469, 22.059980>,  <34.852512, 44.172447, 22.390352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072159, 44.765469, 22.059980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.286007, 44.480999, 21.877375>,  <35.414314, 44.310318, 21.767811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.286007, 44.480999, 21.877375>,  <35.072159, 44.765469, 22.059980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286007, 44.480999, 21.877375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094675, 0.486393, -0.868596,
		0.839772, 0.507591, 0.192706,
		0.534622, -0.711178, -0.456515,
		35.446392, 44.267647, 21.740419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534340, 45.166931, 21.606766>,  <35.072159, 44.765469, 22.059980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534340, 45.166931, 21.606766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.543873, 44.793190, 21.464550>,  <35.549591, 44.568943, 21.379221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.543873, 44.793190, 21.464550>,  <35.534340, 45.166931, 21.606766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543873, 44.793190, 21.464550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111129, 0.350961, -0.929773,
		0.993520, 0.061667, -0.095470,
		0.023830, -0.934357, -0.355540,
		35.551022, 44.512882, 21.357887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042130, 45.213177, 21.144621>,  <35.534340, 45.166931, 21.606766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042130, 45.213177, 21.144621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.846241, 44.885975, 21.023924>,  <35.728706, 44.689655, 20.951506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.846241, 44.885975, 21.023924>,  <36.042130, 45.213177, 21.144621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846241, 44.885975, 21.023924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073753, 0.383708, -0.920505,
		0.868754, -0.428537, -0.248240,
		-0.489722, -0.818000, -0.301742,
		35.699326, 44.640575, 20.933401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368511, 45.026878, 20.581478>,  <36.042130, 45.213177, 21.144621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368511, 45.026878, 20.581478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.013664, 44.844128, 20.555302>,  <35.800755, 44.734478, 20.539595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.013664, 44.844128, 20.555302>,  <36.368511, 45.026878, 20.581478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013664, 44.844128, 20.555302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012438, 0.165405, -0.986147,
		0.461374, -0.874016, -0.152416,
		-0.887119, -0.456878, -0.065443,
		35.747528, 44.707066, 20.535669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483170, 44.593273, 19.862099>,  <36.368511, 45.026878, 20.581478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483170, 44.593273, 19.862099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.099133, 44.639229, 19.964096>,  <35.868710, 44.666801, 20.025295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.099133, 44.639229, 19.964096>,  <36.483170, 44.593273, 19.862099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099133, 44.639229, 19.964096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231379, 0.185897, -0.954938,
		-0.157113, -0.975830, -0.151896,
		-0.960093, 0.114887, 0.254993,
		35.811104, 44.673695, 20.040594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161560, 44.191723, 19.452793>,  <36.483170, 44.593273, 19.862099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161560, 44.191723, 19.452793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.898865, 44.474640, 19.557436>,  <35.741249, 44.644390, 19.620222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.898865, 44.474640, 19.557436>,  <36.161560, 44.191723, 19.452793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898865, 44.474640, 19.557436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159635, 0.208652, -0.964873,
		-0.737030, -0.675429, -0.024121,
		-0.656737, 0.707291, 0.261606,
		35.701843, 44.686829, 19.635918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469639, 44.035622, 19.113451>,  <36.161560, 44.191723, 19.452793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469639, 44.035622, 19.113451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.461727, 44.427467, 19.193417>,  <35.456982, 44.662575, 19.241396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.461727, 44.427467, 19.193417>,  <35.469639, 44.035622, 19.113451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461727, 44.427467, 19.193417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202043, 0.191914, -0.960389,
		-0.979177, -0.059388, 0.194128,
		-0.019780, 0.979614, 0.199916,
		35.455791, 44.721352, 19.253391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577282, 43.322441, 19.041502>,  <35.469639, 44.035622, 19.113451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577282, 43.322441, 19.041502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.329678, 43.170025, 18.766800>,  <35.181114, 43.078575, 18.601978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.329678, 43.170025, 18.766800>,  <35.577282, 43.322441, 19.041502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329678, 43.170025, 18.766800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268985, -0.718683, 0.641203,
		-0.737885, 0.581638, 0.342378,
		-0.619009, -0.381040, -0.686757,
		35.143974, 43.055714, 18.560772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841957, 43.307285, 19.292576>,  <35.577282, 43.322441, 19.041502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841957, 43.307285, 19.292576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.858891, 43.029190, 19.005564>,  <34.869053, 42.862331, 18.833355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.858891, 43.029190, 19.005564>,  <34.841957, 43.307285, 19.292576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858891, 43.029190, 19.005564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214117, -0.707804, 0.673177,
		-0.975890, 0.125136, -0.178828,
		0.042336, -0.695237, -0.717533,
		34.871590, 42.820618, 18.790304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157665, 42.974010, 19.328545>,  <34.841957, 43.307285, 19.292576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157665, 42.974010, 19.328545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.427582, 42.738022, 19.151190>,  <34.589531, 42.596428, 19.044777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.427582, 42.738022, 19.151190>,  <34.157665, 42.974010, 19.328545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427582, 42.738022, 19.151190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284661, -0.762363, 0.581181,
		-0.680903, -0.265959, -0.682376,
		0.674788, -0.589974, -0.443387,
		34.630020, 42.561031, 19.018173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863853, 42.386921, 19.219208>,  <34.157665, 42.974010, 19.328545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863853, 42.386921, 19.219208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.248478, 42.277672, 19.207838>,  <34.479252, 42.212124, 19.201015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.248478, 42.277672, 19.207838>,  <33.863853, 42.386921, 19.219208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248478, 42.277672, 19.207838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223644, -0.839005, 0.496038,
		-0.159327, -0.470612, -0.867836,
		0.961560, -0.273119, -0.028426,
		34.536945, 42.195736, 19.199310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864532, 41.740692, 19.239601>,  <33.863853, 42.386921, 19.219208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864532, 41.740692, 19.239601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.249882, 41.781040, 19.338982>,  <34.481091, 41.805248, 19.398611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.249882, 41.781040, 19.338982>,  <33.864532, 41.740692, 19.239601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249882, 41.781040, 19.338982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083151, -0.768494, 0.634431,
		0.254933, -0.631855, -0.731962,
		0.963377, 0.100874, 0.248453,
		34.538895, 41.811302, 19.413517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122276, 40.988613, 19.386124>,  <33.864532, 41.740692, 19.239601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122276, 40.988613, 19.386124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.392582, 41.219406, 19.569614>,  <34.554768, 41.357883, 19.679708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.392582, 41.219406, 19.569614>,  <34.122276, 40.988613, 19.386124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392582, 41.219406, 19.569614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021430, -0.606686, 0.794653,
		0.736803, -0.546831, -0.397614,
		0.675768, 0.576981, 0.458726,
		34.595314, 41.392502, 19.707232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590839, 40.525288, 19.557280>,  <34.122276, 40.988613, 19.386124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590839, 40.525288, 19.557280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.646049, 40.840538, 19.797213>,  <34.679176, 41.029690, 19.941174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.646049, 40.840538, 19.797213>,  <34.590839, 40.525288, 19.557280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646049, 40.840538, 19.797213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037999, -0.600972, 0.798366,
		0.989699, -0.132990, -0.053003,
		0.138028, 0.788128, 0.599835,
		34.687458, 41.076977, 19.977163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106857, 40.317432, 20.018639>,  <34.590839, 40.525288, 19.557280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106857, 40.317432, 20.018639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.913975, 40.619045, 20.197039>,  <34.798244, 40.800014, 20.304079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.913975, 40.619045, 20.197039>,  <35.106857, 40.317432, 20.018639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913975, 40.619045, 20.197039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018827, -0.500060, 0.865786,
		0.875857, 0.425882, 0.226935,
		-0.482203, 0.754032, 0.445999,
		34.769314, 40.845253, 20.330839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833019, 40.607754, 20.090042>,  <35.106857, 40.317432, 20.018639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833019, 40.607754, 20.090042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.033108, 40.279667, 19.979031>,  <36.153160, 40.082813, 19.912424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.033108, 40.279667, 19.979031>,  <35.833019, 40.607754, 20.090042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033108, 40.279667, 19.979031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132497, 0.389239, -0.911558,
		0.855701, 0.419209, 0.303382,
		0.500221, -0.820218, -0.277529,
		36.183174, 40.033600, 19.895771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541012, 40.818665, 19.903645>,  <35.833019, 40.607754, 20.090042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541012, 40.818665, 19.903645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.447830, 40.470478, 19.730200>,  <36.391922, 40.261566, 19.626133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.447830, 40.470478, 19.730200>,  <36.541012, 40.818665, 19.903645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447830, 40.470478, 19.730200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206006, 0.391590, -0.896782,
		0.950418, -0.298236, 0.088099,
		-0.232954, -0.870467, -0.433613,
		36.377945, 40.209339, 19.600117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168179, 40.533375, 19.515570>,  <36.541012, 40.818665, 19.903645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168179, 40.533375, 19.515570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.839840, 40.375313, 19.350613>,  <36.642838, 40.280476, 19.251638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.839840, 40.375313, 19.350613>,  <37.168179, 40.533375, 19.515570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839840, 40.375313, 19.350613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369827, 0.182508, -0.910999,
		0.435252, -0.900301, -0.003672,
		-0.820844, -0.395156, -0.412392,
		36.593586, 40.256767, 19.226894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459324, 40.187199, 19.009113>,  <37.168179, 40.533375, 19.515570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459324, 40.187199, 19.009113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.073280, 40.190865, 18.904444>,  <36.841652, 40.193066, 18.841642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.073280, 40.190865, 18.904444>,  <37.459324, 40.187199, 19.009113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073280, 40.190865, 18.904444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256296, -0.171407, -0.951279,
		-0.053572, -0.985158, 0.163078,
		-0.965113, 0.009166, -0.261674,
		36.783745, 40.193615, 18.825941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314178, 39.593262, 18.660030>,  <37.459324, 40.187199, 19.009113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314178, 39.593262, 18.660030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.057877, 39.874260, 18.536133>,  <36.904095, 40.042858, 18.461794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.057877, 39.874260, 18.536133>,  <37.314178, 39.593262, 18.660030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057877, 39.874260, 18.536133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375257, -0.065402, -0.924611,
		-0.669791, -0.708679, -0.221709,
		-0.640752, 0.702493, -0.309743,
		36.865650, 40.085007, 18.443211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050476, 39.348976, 18.017164>,  <37.314178, 39.593262, 18.660030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050476, 39.348976, 18.017164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.930367, 39.730171, 18.000877>,  <36.858303, 39.958889, 17.991106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.930367, 39.730171, 18.000877>,  <37.050476, 39.348976, 18.017164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930367, 39.730171, 18.000877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511427, 0.124817, -0.850214,
		-0.805159, -0.276118, -0.524861,
		-0.300271, 0.952985, -0.040716,
		36.840286, 40.016068, 17.988663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961769, 39.385071, 17.310890>,  <37.050476, 39.348976, 18.017164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961769, 39.385071, 17.310890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.971283, 39.767460, 17.427881>,  <36.976990, 39.996895, 17.498075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.971283, 39.767460, 17.427881>,  <36.961769, 39.385071, 17.310890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971283, 39.767460, 17.427881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565144, 0.228470, -0.792725,
		-0.824649, 0.184144, -0.534832,
		0.023782, 0.955977, 0.292475,
		36.978416, 40.054253, 17.515623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776749, 39.734440, 16.693352>,  <36.961769, 39.385071, 17.310890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776749, 39.734440, 16.693352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.961445, 39.997070, 16.931913>,  <37.072262, 40.154648, 17.075050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.961445, 39.997070, 16.931913>,  <36.776749, 39.734440, 16.693352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961445, 39.997070, 16.931913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767090, 0.042031, -0.640161,
		-0.445385, 0.753084, -0.484249,
		0.461741, 0.656580, 0.596403,
		37.099968, 40.194046, 17.110834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144440, 40.243618, 16.241529>,  <36.776749, 39.734440, 16.693352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144440, 40.243618, 16.241529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.308994, 40.272850, 16.604940>,  <37.407726, 40.290390, 16.822987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.308994, 40.272850, 16.604940>,  <37.144440, 40.243618, 16.241529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308994, 40.272850, 16.604940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858961, 0.302331, -0.413258,
		-0.304876, 0.950398, 0.061603,
		0.411384, 0.073078, 0.908528,
		37.432411, 40.294773, 16.877499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.681400, 34.077621, 32.080082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887012, 34.417675, 32.034397>,  <38.010380, 34.621708, 32.006985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887012, 34.417675, 32.034397>,  <37.681400, 34.077621, 32.080082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887012, 34.417675, 32.034397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590599, 0.254213, -0.765878,
		-0.622064, 0.461140, 0.632762,
		0.514033, 0.850133, -0.114213,
		38.041222, 34.672714, 32.000134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197140, 34.632423, 31.839758>,  <37.681400, 34.077621, 32.080082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197140, 34.632423, 31.839758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546661, 34.808617, 31.757355>,  <37.756374, 34.914333, 31.707912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546661, 34.808617, 31.757355>,  <37.197140, 34.632423, 31.839758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546661, 34.808617, 31.757355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445122, 0.553962, -0.703557,
		-0.195785, 0.706470, 0.680123,
		0.873804, 0.440484, -0.206008,
		37.808804, 34.940762, 31.695553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099129, 35.478199, 31.733068>,  <37.197140, 34.632423, 31.839758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099129, 35.478199, 31.733068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410149, 35.348953, 31.517284>,  <37.596760, 35.271404, 31.387814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410149, 35.348953, 31.517284>,  <37.099129, 35.478199, 31.733068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410149, 35.348953, 31.517284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376108, 0.448556, -0.810765,
		0.503947, 0.833304, 0.227248,
		0.777548, -0.323113, -0.539460,
		37.643414, 35.252018, 31.355446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265118, 36.089886, 31.422991>,  <37.099129, 35.478199, 31.733068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265118, 36.089886, 31.422991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473919, 35.820602, 31.213497>,  <37.599201, 35.659031, 31.087801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473919, 35.820602, 31.213497>,  <37.265118, 36.089886, 31.422991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473919, 35.820602, 31.213497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202295, 0.498798, -0.842780,
		0.828605, 0.545886, 0.124188,
		0.522006, -0.673209, -0.523736,
		37.630520, 35.618641, 31.056376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786942, 36.411133, 30.945000>,  <37.265118, 36.089886, 31.422991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786942, 36.411133, 30.945000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699131, 36.062000, 30.770655>,  <37.646446, 35.852520, 30.666048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699131, 36.062000, 30.770655>,  <37.786942, 36.411133, 30.945000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699131, 36.062000, 30.770655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332153, 0.486934, -0.807817,
		0.917324, -0.032563, -0.396807,
		-0.219524, -0.872831, -0.435860,
		37.633274, 35.800152, 30.639896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197132, 36.341782, 30.286055>,  <37.786942, 36.411133, 30.945000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197132, 36.341782, 30.286055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888992, 36.090031, 30.245176>,  <37.704109, 35.938980, 30.220650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888992, 36.090031, 30.245176>,  <38.197132, 36.341782, 30.286055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888992, 36.090031, 30.245176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163407, 0.349795, -0.922465,
		0.616322, -0.693925, -0.372311,
		-0.770354, -0.629374, -0.102194,
		37.657887, 35.901218, 30.214518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335102, 36.008209, 29.652044>,  <38.197132, 36.341782, 30.286055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335102, 36.008209, 29.652044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941105, 35.966869, 29.707331>,  <37.704704, 35.942066, 29.740501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941105, 35.966869, 29.707331>,  <38.335102, 36.008209, 29.652044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941105, 35.966869, 29.707331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156051, 0.191332, -0.969041,
		0.073701, -0.976070, -0.204588,
		-0.984995, -0.103345, 0.138215,
		37.645607, 35.935863, 29.748795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087872, 35.688656, 29.136402>,  <38.335102, 36.008209, 29.652044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087872, 35.688656, 29.136402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.764191, 35.888641, 29.259844>,  <37.569984, 36.008633, 29.333908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.764191, 35.888641, 29.259844>,  <38.087872, 35.688656, 29.136402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764191, 35.888641, 29.259844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192681, 0.270381, -0.943275,
		-0.555043, -0.822758, -0.122459,
		-0.809198, 0.499963, 0.308603,
		37.521431, 36.038631, 29.352425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629303, 35.574406, 28.709648>,  <38.087872, 35.688656, 29.136402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629303, 35.574406, 28.709648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446388, 35.889526, 28.874697>,  <37.336639, 36.078598, 28.973726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446388, 35.889526, 28.874697>,  <37.629303, 35.574406, 28.709648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446388, 35.889526, 28.874697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318418, 0.288173, -0.903087,
		-0.830362, -0.544352, 0.119074,
		-0.457284, 0.787805, 0.412620,
		37.309204, 36.125866, 28.998482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957561, 35.592003, 28.337555>,  <37.629303, 35.574406, 28.709648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957561, 35.592003, 28.337555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006741, 35.953876, 28.500742>,  <37.036247, 36.171001, 28.598654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006741, 35.953876, 28.500742>,  <36.957561, 35.592003, 28.337555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006741, 35.953876, 28.500742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246923, 0.426045, -0.870353,
		-0.961204, 0.006269, 0.275767,
		0.122945, 0.904681, 0.407968,
		37.043625, 36.225281, 28.623133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384903, 35.965847, 28.115261>,  <36.957561, 35.592003, 28.337555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384903, 35.965847, 28.115261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660351, 36.233849, 28.226185>,  <36.825619, 36.394650, 28.292740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660351, 36.233849, 28.226185>,  <36.384903, 35.965847, 28.115261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660351, 36.233849, 28.226185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306781, 0.615710, -0.725801,
		-0.657031, 0.414726, 0.629533,
		0.688619, 0.670002, 0.277311,
		36.866936, 36.434849, 28.309378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980247, 36.546387, 28.189581>,  <36.384903, 35.965847, 28.115261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980247, 36.546387, 28.189581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360668, 36.650166, 28.122425>,  <36.588921, 36.712433, 28.082132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360668, 36.650166, 28.122425>,  <35.980247, 36.546387, 28.189581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360668, 36.650166, 28.122425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268508, 0.424830, -0.864536,
		-0.152977, 0.867299, 0.473699,
		0.951053, 0.259446, -0.167888,
		36.645985, 36.728001, 28.072060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614288, 36.937744, 28.639576>,  <35.980247, 36.546387, 28.189581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614288, 36.937744, 28.639576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310055, 37.197235, 28.649868>,  <35.127514, 37.352928, 28.656044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310055, 37.197235, 28.649868>,  <35.614288, 36.937744, 28.639576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310055, 37.197235, 28.649868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089839, 0.065911, 0.993773,
		0.642993, 0.758160, -0.108412,
		-0.760585, 0.648728, 0.025732,
		35.081879, 37.391853, 28.657587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796749, 37.478283, 29.229353>,  <35.614288, 36.937744, 28.639576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796749, 37.478283, 29.229353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400749, 37.483715, 29.173185>,  <35.163151, 37.486977, 29.139484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400749, 37.483715, 29.173185>,  <35.796749, 37.478283, 29.229353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400749, 37.483715, 29.173185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131874, 0.264459, 0.955338,
		0.050111, 0.964301, -0.260023,
		-0.989999, 0.013583, -0.140418,
		35.103748, 37.487789, 29.131060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576019, 37.983479, 29.701735>,  <35.796749, 37.478283, 29.229353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576019, 37.983479, 29.701735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.232288, 37.804852, 29.602030>,  <35.026051, 37.697674, 29.542206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.232288, 37.804852, 29.602030>,  <35.576019, 37.983479, 29.701735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232288, 37.804852, 29.602030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300155, 0.045760, 0.952792,
		-0.414083, 0.893577, -0.173363,
		-0.859327, -0.446571, -0.249263,
		34.974491, 37.670879, 29.527250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035126, 38.299568, 30.031675>,  <35.576019, 37.983479, 29.701735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035126, 38.299568, 30.031675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892166, 37.933292, 29.958162>,  <34.806389, 37.713528, 29.914055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892166, 37.933292, 29.958162>,  <35.035126, 38.299568, 30.031675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892166, 37.933292, 29.958162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311159, -0.068793, 0.947865,
		-0.880593, 0.395955, -0.260338,
		-0.357402, -0.915689, -0.183784,
		34.784946, 37.658585, 29.903027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442509, 38.277370, 30.371784>,  <35.035126, 38.299568, 30.031675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442509, 38.277370, 30.371784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524403, 37.887512, 30.335682>,  <34.573540, 37.653595, 30.314020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524403, 37.887512, 30.335682>,  <34.442509, 38.277370, 30.371784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524403, 37.887512, 30.335682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183792, -0.128848, 0.974484,
		-0.961408, -0.182920, -0.205512,
		0.204732, -0.974648, -0.090256,
		34.585823, 37.595119, 30.308605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974144, 37.863892, 30.799187>,  <34.442509, 38.277370, 30.371784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974144, 37.863892, 30.799187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276318, 37.607769, 30.743580>,  <34.457623, 37.454098, 30.710215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276318, 37.607769, 30.743580>,  <33.974144, 37.863892, 30.799187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276318, 37.607769, 30.743580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154108, -0.379853, 0.912120,
		-0.636841, -0.667624, -0.385631,
		0.755436, -0.640304, -0.139019,
		34.502949, 37.415676, 30.701874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741333, 37.225723, 31.005857>,  <33.974144, 37.863892, 30.799187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741333, 37.225723, 31.005857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138035, 37.181721, 31.032148>,  <34.376057, 37.155319, 31.047922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138035, 37.181721, 31.032148>,  <33.741333, 37.225723, 31.005857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138035, 37.181721, 31.032148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099626, -0.339313, 0.935383,
		-0.080593, -0.934219, -0.347475,
		0.991756, -0.110003, 0.065727,
		34.435562, 37.148720, 31.051867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894909, 36.611931, 31.434969>,  <33.741333, 37.225723, 31.005857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894909, 36.611931, 31.434969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239758, 36.814335, 31.445555>,  <34.446667, 36.935776, 31.451906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239758, 36.814335, 31.445555>,  <33.894909, 36.611931, 31.434969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239758, 36.814335, 31.445555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089967, -0.204262, 0.974773,
		0.498647, -0.837994, -0.221623,
		0.862124, 0.506006, 0.026462,
		34.498394, 36.966137, 31.453493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391350, 36.185394, 31.713140>,  <33.894909, 36.611931, 31.434969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391350, 36.185394, 31.713140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511772, 36.564651, 31.753893>,  <34.584026, 36.792206, 31.778345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511772, 36.564651, 31.753893>,  <34.391350, 36.185394, 31.713140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511772, 36.564651, 31.753893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215985, -0.171859, 0.961153,
		0.928824, -0.267358, -0.256525,
		0.301058, 0.948148, 0.101882,
		34.602089, 36.849094, 31.784458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892017, 36.121132, 32.214817>,  <34.391350, 36.185394, 31.713140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892017, 36.121132, 32.214817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871952, 36.520580, 32.221027>,  <34.859913, 36.760250, 32.224754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871952, 36.520580, 32.221027>,  <34.892017, 36.121132, 32.214817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871952, 36.520580, 32.221027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257629, -0.002076, 0.966242,
		0.964941, 0.052469, -0.257169,
		-0.050164, 0.998620, 0.015521,
		34.856903, 36.820168, 32.225685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481030, 36.321903, 32.613354>,  <34.892017, 36.121132, 32.214817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481030, 36.321903, 32.613354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219345, 36.623993, 32.629566>,  <35.062336, 36.805248, 32.639294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219345, 36.623993, 32.629566>,  <35.481030, 36.321903, 32.613354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219345, 36.623993, 32.629566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253251, 0.168244, 0.952658,
		0.712655, 0.633501, -0.301329,
		-0.654207, 0.755229, 0.040535,
		35.023083, 36.850563, 32.641727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860832, 36.905849, 32.985794>,  <35.481030, 36.321903, 32.613354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860832, 36.905849, 32.985794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466743, 36.961987, 33.025063>,  <35.230289, 36.995667, 33.048622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466743, 36.961987, 33.025063>,  <35.860832, 36.905849, 32.985794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466743, 36.961987, 33.025063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124337, 0.191911, 0.973504,
		0.117781, 0.971327, -0.206525,
		-0.985225, 0.140339, 0.098168,
		35.171177, 37.004089, 33.054512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825924, 37.453423, 33.461071>,  <35.860832, 36.905849, 32.985794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825924, 37.453423, 33.461071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435871, 37.365524, 33.449589>,  <35.201839, 37.312786, 33.442699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435871, 37.365524, 33.449589>,  <35.825924, 37.453423, 33.461071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435871, 37.365524, 33.449589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094551, 0.295397, 0.950684,
		-0.200429, 0.929759, -0.308829,
		-0.975135, -0.219745, -0.028703,
		35.143330, 37.299603, 33.440979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363270, 38.047890, 33.710518>,  <35.825924, 37.453423, 33.461071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363270, 38.047890, 33.710518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117367, 37.739872, 33.778759>,  <34.969826, 37.555061, 33.819702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117367, 37.739872, 33.778759>,  <35.363270, 38.047890, 33.710518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117367, 37.739872, 33.778759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169167, 0.340002, 0.925085,
		-0.770361, 0.539843, -0.339284,
		-0.614758, -0.770045, 0.170601,
		34.932938, 37.508858, 33.829941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716187, 38.299618, 33.926605>,  <35.363270, 38.047890, 33.710518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716187, 38.299618, 33.926605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754425, 37.929562, 34.073563>,  <34.777370, 37.707527, 34.161736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754425, 37.929562, 34.073563>,  <34.716187, 38.299618, 33.926605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754425, 37.929562, 34.073563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294130, 0.326347, 0.898323,
		-0.950972, -0.193940, -0.240913,
		0.095600, -0.925140, 0.367391,
		34.783104, 37.652020, 34.183781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943935, 39.116749, 33.969402>,  <34.716187, 38.299618, 33.926605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943935, 39.116749, 33.969402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320644, 39.250832, 33.958790>,  <35.546669, 39.331280, 33.952423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320644, 39.250832, 33.958790>,  <34.943935, 39.116749, 33.969402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320644, 39.250832, 33.958790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197847, 0.488612, -0.849773,
		-0.271885, 0.805541, 0.526480,
		0.941772, 0.335203, -0.026527,
		35.603176, 39.351391, 33.950832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967999, 39.882881, 33.946426>,  <34.943935, 39.116749, 33.969402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967999, 39.882881, 33.946426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.286480, 39.714592, 33.772507>,  <35.477570, 39.613621, 33.668156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.286480, 39.714592, 33.772507>,  <34.967999, 39.882881, 33.946426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286480, 39.714592, 33.772507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246900, 0.430141, -0.868343,
		0.552353, 0.798733, 0.238605,
		0.796208, -0.420720, -0.434797,
		35.525341, 39.588375, 33.642067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314835, 40.379353, 33.484402>,  <34.967999, 39.882881, 33.946426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314835, 40.379353, 33.484402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449654, 40.024723, 33.357662>,  <35.530544, 39.811947, 33.281620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449654, 40.024723, 33.357662>,  <35.314835, 40.379353, 33.484402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449654, 40.024723, 33.357662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156013, 0.279290, -0.947448,
		0.928470, 0.368770, -0.044182,
		0.337050, -0.886570, -0.316846,
		35.550770, 39.758751, 33.262608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803757, 40.593884, 32.853176>,  <35.314835, 40.379353, 33.484402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803757, 40.593884, 32.853176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680634, 40.213604, 32.838074>,  <35.606762, 39.985435, 32.829014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680634, 40.213604, 32.838074>,  <35.803757, 40.593884, 32.853176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680634, 40.213604, 32.838074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006927, 0.037443, -0.999275,
		0.951425, -0.307842, -0.004940,
		-0.307803, -0.950701, -0.037757,
		35.588291, 39.928394, 32.826748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291748, 40.275593, 32.461662>,  <35.803757, 40.593884, 32.853176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291748, 40.275593, 32.461662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986126, 40.017532, 32.460239>,  <35.802753, 39.862698, 32.459385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986126, 40.017532, 32.460239>,  <36.291748, 40.275593, 32.461662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986126, 40.017532, 32.460239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063448, -0.069657, -0.995551,
		0.642029, -0.760877, 0.094154,
		-0.764050, -0.645147, -0.003554,
		35.756912, 39.823990, 32.459171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593815, 39.742725, 32.065907>,  <36.291748, 40.275593, 32.461662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593815, 39.742725, 32.065907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194859, 39.719437, 32.048794>,  <35.955486, 39.705463, 32.038528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194859, 39.719437, 32.048794>,  <36.593815, 39.742725, 32.065907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194859, 39.719437, 32.048794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044533, -0.029179, -0.998582,
		0.056889, -0.997877, 0.031695,
		-0.997387, -0.058219, -0.042778,
		35.895641, 39.701969, 32.035961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524384, 39.304008, 31.448721>,  <36.593815, 39.742725, 32.065907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524384, 39.304008, 31.448721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173611, 39.489372, 31.499689>,  <35.963146, 39.600590, 31.530270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173611, 39.489372, 31.499689>,  <36.524384, 39.304008, 31.448721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173611, 39.489372, 31.499689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132162, 0.022382, -0.990975,
		-0.462082, -0.885860, 0.041618,
		-0.876934, 0.463412, 0.127420,
		35.910530, 39.628395, 31.537914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938805, 38.899986, 31.048340>,  <36.524384, 39.304008, 31.448721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938805, 38.899986, 31.048340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810230, 39.275238, 31.099878>,  <35.733086, 39.500389, 31.130802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810230, 39.275238, 31.099878>,  <35.938805, 38.899986, 31.048340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810230, 39.275238, 31.099878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009429, 0.139231, -0.990215,
		-0.946886, -0.317071, -0.053599,
		-0.321431, 0.938126, 0.128846,
		35.713802, 39.556675, 31.138533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372627, 39.036129, 30.516724>,  <35.938805, 38.899986, 31.048340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372627, 39.036129, 30.516724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466072, 39.410797, 30.621084>,  <35.522137, 39.635597, 30.683701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466072, 39.410797, 30.621084>,  <35.372627, 39.036129, 30.516724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466072, 39.410797, 30.621084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156790, 0.301104, -0.940613,
		-0.959606, 0.178828, 0.217201,
		0.233608, 0.936673, 0.260903,
		35.536156, 39.691799, 30.699354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823605, 39.444466, 30.308531>,  <35.372627, 39.036129, 30.516724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823605, 39.444466, 30.308531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129589, 39.700207, 30.339705>,  <35.313179, 39.853649, 30.358408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129589, 39.700207, 30.339705>,  <34.823605, 39.444466, 30.308531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129589, 39.700207, 30.339705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118794, 0.258976, -0.958551,
		-0.633031, 0.723993, 0.274056,
		0.764958, 0.639348, 0.077934,
		35.359077, 39.892010, 30.363085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671646, 40.124928, 30.018087>,  <34.823605, 39.444466, 30.308531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671646, 40.124928, 30.018087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071400, 40.110931, 30.018629>,  <35.311253, 40.102531, 30.018953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071400, 40.110931, 30.018629>,  <34.671646, 40.124928, 30.018087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071400, 40.110931, 30.018629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007788, 0.184396, -0.982821,
		0.034144, 0.982229, 0.184555,
		0.999387, -0.034995, 0.001353,
		35.371216, 40.100433, 30.019035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904560, 40.828903, 29.744720>,  <34.671646, 40.124928, 30.018087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904560, 40.828903, 29.744720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195656, 40.561180, 29.684834>,  <35.370316, 40.400547, 29.648901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195656, 40.561180, 29.684834>,  <34.904560, 40.828903, 29.744720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195656, 40.561180, 29.684834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097694, 0.317233, -0.943302,
		0.678857, 0.671854, 0.296252,
		0.727742, -0.669309, -0.149719,
		35.413979, 40.360386, 29.639917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434181, 41.272133, 29.568260>,  <34.904560, 40.828903, 29.744720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434181, 41.272133, 29.568260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529976, 40.910774, 29.425978>,  <35.587452, 40.693958, 29.340609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529976, 40.910774, 29.425978>,  <35.434181, 41.272133, 29.568260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529976, 40.910774, 29.425978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260259, 0.412694, -0.872897,
		0.935367, 0.116473, 0.333951,
		0.239489, -0.903392, -0.355707,
		35.601822, 40.639755, 29.319265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961639, 41.437008, 29.097561>,  <35.434181, 41.272133, 29.568260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961639, 41.437008, 29.097561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885685, 41.060375, 28.986300>,  <35.840111, 40.834396, 28.919542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885685, 41.060375, 28.986300>,  <35.961639, 41.437008, 29.097561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885685, 41.060375, 28.986300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230113, 0.232733, -0.944925,
		0.954458, -0.243438, 0.172476,
		-0.189890, -0.941580, -0.278152,
		35.828716, 40.777901, 28.902853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522152, 41.218212, 28.765118>,  <35.961639, 41.437008, 29.097561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522152, 41.218212, 28.765118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232571, 40.974194, 28.636288>,  <36.058823, 40.827782, 28.558989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232571, 40.974194, 28.636288>,  <36.522152, 41.218212, 28.765118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232571, 40.974194, 28.636288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243781, 0.210519, -0.946706,
		0.645336, -0.763890, -0.003689,
		-0.723955, -0.610045, -0.322077,
		36.015385, 40.791180, 28.539665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803192, 40.871773, 28.167112>,  <36.522152, 41.218212, 28.765118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803192, 40.871773, 28.167112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406452, 40.823547, 28.150650>,  <36.168407, 40.794613, 28.140772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406452, 40.823547, 28.150650>,  <36.803192, 40.871773, 28.167112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406452, 40.823547, 28.150650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042285, -0.006811, -0.999082,
		0.120172, -0.992682, 0.011853,
		-0.991852, -0.120563, -0.041157,
		36.108898, 40.787380, 28.138304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551174, 40.211483, 27.790646>,  <36.803192, 40.871773, 28.167112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551174, 40.211483, 27.790646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297432, 40.520512, 27.779861>,  <36.145187, 40.705929, 27.773390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297432, 40.520512, 27.779861>,  <36.551174, 40.211483, 27.790646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297432, 40.520512, 27.779861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003408, -0.037673, -0.999284,
		-0.773036, -0.633807, 0.026531,
		-0.634353, 0.772573, -0.026962,
		36.107124, 40.752285, 27.771772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276112, 40.190609, 27.118631>,  <36.551174, 40.211483, 27.790646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276112, 40.190609, 27.118631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130043, 40.549500, 27.217934>,  <36.042400, 40.764835, 27.277515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130043, 40.549500, 27.217934>,  <36.276112, 40.190609, 27.118631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130043, 40.549500, 27.217934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192054, 0.188329, -0.963144,
		-0.910915, -0.399391, 0.103544,
		-0.365171, 0.897229, 0.248257,
		36.020493, 40.818668, 27.292410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617443, 40.250381, 26.850855>,  <36.276112, 40.190609, 27.118631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617443, 40.250381, 26.850855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716694, 40.630173, 26.927727>,  <35.776245, 40.858047, 26.973850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716694, 40.630173, 26.927727>,  <35.617443, 40.250381, 26.850855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716694, 40.630173, 26.927727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211224, 0.246636, -0.945809,
		-0.945420, 0.194085, 0.261748,
		0.248124, 0.949475, 0.192179,
		35.791130, 40.915016, 26.985380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063637, 40.590874, 26.477859>,  <35.617443, 40.250381, 26.850855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063637, 40.590874, 26.477859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331345, 40.882881, 26.533199>,  <35.491970, 41.058086, 26.566404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331345, 40.882881, 26.533199>,  <35.063637, 40.590874, 26.477859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331345, 40.882881, 26.533199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040523, 0.221787, -0.974253,
		-0.741911, 0.646434, 0.178019,
		0.669272, 0.730023, 0.138350,
		35.532127, 41.101887, 26.574705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718487, 41.246655, 26.269207>,  <35.063637, 40.590874, 26.477859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718487, 41.246655, 26.269207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114433, 41.293922, 26.237711>,  <35.352001, 41.322285, 26.218813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114433, 41.293922, 26.237711>,  <34.718487, 41.246655, 26.269207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114433, 41.293922, 26.237711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100877, 0.194933, -0.975615,
		-0.099942, 0.973672, 0.204878,
		0.989866, 0.118172, -0.078739,
		35.411392, 41.329372, 26.214088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798439, 41.688614, 25.743847>,  <34.718487, 41.246655, 26.269207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798439, 41.688614, 25.743847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184273, 41.583115, 25.742960>,  <35.415775, 41.519814, 25.742428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184273, 41.583115, 25.742960>,  <34.798439, 41.688614, 25.743847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184273, 41.583115, 25.742960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072861, 0.274534, -0.958813,
		0.253495, 0.924699, 0.284029,
		0.964589, -0.263749, -0.002218,
		35.473648, 41.503990, 25.742294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038174, 42.235268, 25.554131>,  <34.798439, 41.688614, 25.743847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038174, 42.235268, 25.554131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324623, 41.976353, 25.449686>,  <35.496494, 41.821003, 25.387018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324623, 41.976353, 25.449686>,  <35.038174, 42.235268, 25.554131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324623, 41.976353, 25.449686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103319, 0.468289, -0.877514,
		0.690284, 0.601430, 0.402231,
		0.716124, -0.647292, -0.261113,
		35.539459, 41.782166, 25.371351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595798, 42.621197, 25.441288>,  <35.038174, 42.235268, 25.554131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595798, 42.621197, 25.441288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665966, 42.277477, 25.249109>,  <35.708065, 42.071243, 25.133802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665966, 42.277477, 25.249109>,  <35.595798, 42.621197, 25.441288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665966, 42.277477, 25.249109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116712, 0.502722, -0.856533,
		0.977552, 0.094176, 0.188476,
		0.175416, -0.859303, -0.480446,
		35.718590, 42.019688, 25.104975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193447, 42.769028, 25.074747>,  <35.595798, 42.621197, 25.441288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193447, 42.769028, 25.074747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042065, 42.451740, 24.883928>,  <35.951237, 42.261368, 24.769438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042065, 42.451740, 24.883928>,  <36.193447, 42.769028, 25.074747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042065, 42.451740, 24.883928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111185, 0.472690, -0.874187,
		0.918917, -0.383882, -0.090698,
		-0.378456, -0.793221, -0.477045,
		35.928528, 42.213776, 24.740814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675629, 42.713768, 24.508835>,  <36.193447, 42.769028, 25.074747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675629, 42.713768, 24.508835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358974, 42.498409, 24.393290>,  <36.168983, 42.369194, 24.323963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358974, 42.498409, 24.393290>,  <36.675629, 42.713768, 24.508835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358974, 42.498409, 24.393290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199089, 0.219670, -0.955044,
		0.577648, -0.813555, -0.066709,
		-0.791635, -0.538398, -0.288862,
		36.121483, 42.336891, 24.306631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923069, 42.334137, 23.926010>,  <36.675629, 42.713768, 24.508835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923069, 42.334137, 23.926010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523243, 42.345741, 23.923792>,  <36.283348, 42.352703, 23.922461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.523243, 42.345741, 23.923792>,  <36.923069, 42.334137, 23.926010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523243, 42.345741, 23.923792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018326, 0.461920, -0.886732,
		-0.023165, -0.886447, -0.462250,
		-0.999564, 0.029013, -0.005545,
		36.223373, 42.354446, 23.922129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431877, 41.819065, 23.770596>,  <36.923069, 42.334137, 23.926010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431877, 41.819065, 23.770596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.744259, 42.066292, 23.806612>,  <37.931686, 42.214626, 23.828222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.744259, 42.066292, 23.806612>,  <37.431877, 41.819065, 23.770596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744259, 42.066292, 23.806612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011640, -0.158540, 0.987284,
		0.624480, -0.769975, -0.131007,
		0.780954, 0.618064, 0.090042,
		37.978546, 42.251713, 23.833624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106731, 41.459270, 24.063383>,  <37.431877, 41.819065, 23.770596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106731, 41.459270, 24.063383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.125973, 41.848564, 24.153269>,  <38.137516, 42.082142, 24.207201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.125973, 41.848564, 24.153269>,  <38.106731, 41.459270, 24.063383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125973, 41.848564, 24.153269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257030, -0.229461, 0.938767,
		0.965206, 0.012602, -0.261188,
		0.048102, 0.973236, 0.224716,
		38.140404, 42.140533, 24.220684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737484, 41.563507, 24.616222>,  <38.106731, 41.459270, 24.063383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737484, 41.563507, 24.616222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551884, 41.917522, 24.631212>,  <38.440521, 42.129932, 24.640205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551884, 41.917522, 24.631212>,  <38.737484, 41.563507, 24.616222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551884, 41.917522, 24.631212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091782, 0.005956, 0.995761,
		0.881066, 0.465475, -0.083995,
		-0.464003, 0.885041, 0.037474,
		38.412682, 42.183033, 24.642454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167370, 42.045898, 25.010662>,  <38.737484, 41.563507, 24.616222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167370, 42.045898, 25.010662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804733, 42.213039, 25.034325>,  <38.587151, 42.313324, 25.048523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804733, 42.213039, 25.034325>,  <39.167370, 42.045898, 25.010662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804733, 42.213039, 25.034325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042022, -0.050098, 0.997860,
		0.419922, 0.907132, 0.027859,
		-0.906587, 0.417853, 0.059157,
		38.532757, 42.338394, 25.052073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323437, 42.719543, 25.576113>,  <39.167370, 42.045898, 25.010662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323437, 42.719543, 25.576113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946556, 42.590782, 25.538948>,  <38.720428, 42.513523, 25.516649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946556, 42.590782, 25.538948>,  <39.323437, 42.719543, 25.576113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946556, 42.590782, 25.538948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053295, -0.129790, 0.990108,
		-0.330783, 0.937833, 0.105132,
		-0.942201, -0.321907, -0.092914,
		38.663895, 42.494209, 25.511074>
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
