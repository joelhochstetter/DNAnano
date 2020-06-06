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
	<24.357597, 34.716202, 34.828220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182295, 35.067684, 34.903908>,  <24.077112, 35.278572, 34.949322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182295, 35.067684, 34.903908>,  <24.357597, 34.716202, 34.828220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.182295, 35.067684, 34.903908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599762, -0.442675, 0.666577,
		0.669489, 0.178644, 0.721020,
		-0.438258, 0.878707, 0.189222,
		24.050817, 35.331295, 34.960674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947725, 34.200176, 34.706203>,  <24.357597, 34.716202, 34.828220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947725, 34.200176, 34.706203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341513, 34.132000, 34.723053>,  <25.577785, 34.091095, 34.733162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341513, 34.132000, 34.723053>,  <24.947725, 34.200176, 34.706203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341513, 34.132000, 34.723053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109737, -0.784642, -0.610160,
		0.137054, 0.596059, -0.791157,
		0.984466, -0.170444, 0.042128,
		25.636852, 34.080868, 34.735691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116392, 34.352200, 34.010109>,  <24.947725, 34.200176, 34.706203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116392, 34.352200, 34.010109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350489, 34.091946, 34.203671>,  <25.490946, 33.935791, 34.319809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350489, 34.091946, 34.203671>,  <25.116392, 34.352200, 34.010109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350489, 34.091946, 34.203671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137674, -0.667849, -0.731453,
		0.799087, 0.361454, -0.480427,
		0.585240, -0.650637, 0.483907,
		25.526060, 33.896755, 34.348843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622696, 34.122974, 33.525967>,  <25.116392, 34.352200, 34.010109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622696, 34.122974, 33.525967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614264, 33.839176, 33.807724>,  <25.609205, 33.668896, 33.976780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614264, 33.839176, 33.807724>,  <25.622696, 34.122974, 33.525967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614264, 33.839176, 33.807724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004928, -0.704469, -0.709718,
		0.999766, -0.018432, 0.011353,
		-0.021079, -0.709496, 0.704395,
		25.607941, 33.626328, 34.019043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260395, 33.666042, 33.433182>,  <25.622696, 34.122974, 33.525967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260395, 33.666042, 33.433182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998936, 33.443260, 33.638138>,  <25.842060, 33.309589, 33.761112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998936, 33.443260, 33.638138>,  <26.260395, 33.666042, 33.433182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998936, 33.443260, 33.638138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126154, -0.747765, -0.651869,
		0.746211, -0.361452, 0.559036,
		-0.653647, -0.556957, 0.512392,
		25.802841, 33.276173, 33.791855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573149, 32.956367, 33.452572>,  <26.260395, 33.666042, 33.433182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573149, 32.956367, 33.452572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181528, 32.941181, 33.532585>,  <25.946556, 32.932068, 33.580593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181528, 32.941181, 33.532585>,  <26.573149, 32.956367, 33.452572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181528, 32.941181, 33.532585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104036, -0.751237, -0.651782,
		0.175018, -0.658940, 0.731551,
		-0.979053, -0.037966, 0.200033,
		25.887812, 32.929790, 33.592594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403790, 32.215714, 33.281403>,  <26.573149, 32.956367, 33.452572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403790, 32.215714, 33.281403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048157, 32.395000, 33.318573>,  <25.834778, 32.502575, 33.340874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048157, 32.395000, 33.318573>,  <26.403790, 32.215714, 33.281403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048157, 32.395000, 33.318573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362157, -0.564607, -0.741661,
		-0.279961, -0.693050, 0.664307,
		-0.889081, 0.448220, 0.092925,
		25.781433, 32.529465, 33.346451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962902, 31.660116, 33.091770>,  <26.403790, 32.215714, 33.281403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962902, 31.660116, 33.091770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774721, 32.012455, 33.070660>,  <25.661812, 32.223858, 33.057995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774721, 32.012455, 33.070660>,  <25.962902, 31.660116, 33.091770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774721, 32.012455, 33.070660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352817, -0.242581, -0.903700,
		-0.808823, -0.406527, 0.424901,
		-0.470452, 0.880846, -0.052775,
		25.633585, 32.276711, 33.054829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292896, 31.559364, 33.044025>,  <25.962902, 31.660116, 33.091770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292896, 31.559364, 33.044025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354513, 31.924538, 32.892860>,  <25.391483, 32.143642, 32.802162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354513, 31.924538, 32.892860>,  <25.292896, 31.559364, 33.044025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354513, 31.924538, 32.892860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520172, -0.250257, -0.816574,
		-0.840055, 0.322367, 0.436334,
		0.154041, 0.912936, -0.377916,
		25.400724, 32.198418, 32.779488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.711300, 31.752850, 32.795162>,  <25.292896, 31.559364, 33.044025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.711300, 31.752850, 32.795162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957237, 31.993458, 32.591148>,  <25.104799, 32.137821, 32.468739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957237, 31.993458, 32.591148>,  <24.711300, 31.752850, 32.795162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957237, 31.993458, 32.591148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384405, -0.336118, -0.859801,
		-0.688621, 0.724705, 0.024567,
		0.614845, 0.601520, -0.510038,
		25.141691, 32.173912, 32.438137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.265368, 31.939262, 32.218586>,  <24.711300, 31.752850, 32.795162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.265368, 31.939262, 32.218586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646246, 31.977484, 32.102520>,  <24.874773, 32.000416, 32.032879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646246, 31.977484, 32.102520>,  <24.265368, 31.939262, 32.218586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646246, 31.977484, 32.102520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251362, -0.294748, -0.921922,
		-0.173617, 0.950785, -0.256640,
		0.952194, 0.095552, -0.290165,
		24.931904, 32.006149, 32.015472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.293293, 32.478752, 31.703249>,  <24.265368, 31.939262, 32.218586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.293293, 32.478752, 31.703249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586376, 32.207264, 31.683310>,  <24.762226, 32.044373, 31.671347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586376, 32.207264, 31.683310>,  <24.293293, 32.478752, 31.703249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586376, 32.207264, 31.683310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105255, -0.040653, -0.993614,
		0.672356, 0.733274, -0.101225,
		0.732706, -0.678717, -0.049847,
		24.806189, 32.003651, 31.668356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862301, 32.588116, 31.202412>,  <24.293293, 32.478752, 31.703249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862301, 32.588116, 31.202412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819527, 32.195564, 31.266235>,  <24.793863, 31.960033, 31.304529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819527, 32.195564, 31.266235>,  <24.862301, 32.588116, 31.202412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819527, 32.195564, 31.266235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030749, -0.157139, -0.987098,
		0.993791, -0.110460, -0.013373,
		-0.106933, -0.981380, 0.159560,
		24.787447, 31.901150, 31.314104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515249, 32.109825, 31.160873>,  <24.862301, 32.588116, 31.202412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515249, 32.109825, 31.160873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237507, 31.898540, 30.965382>,  <25.070862, 31.771769, 30.848085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237507, 31.898540, 30.965382>,  <25.515249, 32.109825, 31.160873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237507, 31.898540, 30.965382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138788, 0.568098, -0.811173,
		0.706122, -0.631072, -0.321152,
		-0.694355, -0.528216, -0.488732,
		25.029200, 31.740076, 30.818762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739708, 31.735859, 30.586861>,  <25.515249, 32.109825, 31.160873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739708, 31.735859, 30.586861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354244, 31.824326, 30.526926>,  <25.122967, 31.877405, 30.490965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354244, 31.824326, 30.526926>,  <25.739708, 31.735859, 30.586861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354244, 31.824326, 30.526926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250402, 0.552370, -0.795101,
		-0.093083, -0.803725, -0.587675,
		-0.963657, 0.221165, -0.149838,
		25.065147, 31.890675, 30.481976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085140, 32.454845, 30.844393>,  <25.739708, 31.735859, 30.586861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085140, 32.454845, 30.844393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929487, 32.758881, 31.052559>,  <25.836096, 32.941303, 31.177460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929487, 32.758881, 31.052559>,  <26.085140, 32.454845, 30.844393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929487, 32.758881, 31.052559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187438, -0.487794, 0.852598,
		0.901910, 0.429321, 0.047347,
		-0.389134, 0.760092, 0.520417,
		25.812746, 32.986908, 31.208685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169153, 32.181511, 31.615761>,  <26.085140, 32.454845, 30.844393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169153, 32.181511, 31.615761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788649, 32.131065, 31.728331>,  <25.560347, 32.100796, 31.795872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788649, 32.131065, 31.728331>,  <26.169153, 32.181511, 31.615761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788649, 32.131065, 31.728331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208645, 0.408799, 0.888454,
		-0.227095, 0.903868, -0.362561,
		-0.951260, -0.126117, 0.281423,
		25.503271, 32.093231, 31.812757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904182, 32.925045, 31.760748>,  <26.169153, 32.181511, 31.615761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904182, 32.925045, 31.760748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668877, 32.686150, 31.978830>,  <25.527693, 32.542812, 32.109680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668877, 32.686150, 31.978830>,  <25.904182, 32.925045, 31.760748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668877, 32.686150, 31.978830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166201, 0.570516, 0.804294,
		-0.791406, 0.563750, -0.236351,
		-0.588263, -0.597242, 0.545206,
		25.492397, 32.506977, 32.142391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672739, 33.408104, 32.363735>,  <25.904182, 32.925045, 31.760748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672739, 33.408104, 32.363735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559608, 33.044075, 32.484913>,  <25.491730, 32.825657, 32.557621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559608, 33.044075, 32.484913>,  <25.672739, 33.408104, 32.363735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559608, 33.044075, 32.484913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081488, 0.337497, 0.937793,
		-0.955703, 0.240548, -0.169613,
		-0.282828, -0.910073, 0.302945,
		25.474760, 32.771053, 32.575798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077404, 33.431744, 32.860386>,  <25.672739, 33.408104, 32.363735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077404, 33.431744, 32.860386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227127, 33.066708, 32.926205>,  <25.316961, 32.847687, 32.965698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227127, 33.066708, 32.926205>,  <25.077404, 33.431744, 32.860386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227127, 33.066708, 32.926205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050606, 0.197288, 0.979039,
		-0.925923, -0.358134, 0.120029,
		0.374307, -0.912588, 0.164549,
		25.339418, 32.792931, 32.975571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.316288, 33.626415, 33.038559>,  <25.077404, 33.431744, 32.860386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.316288, 33.626415, 33.038559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188248, 33.495464, 32.682949>,  <24.111423, 33.416893, 32.469585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188248, 33.495464, 32.682949>,  <24.316288, 33.626415, 33.038559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188248, 33.495464, 32.682949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013590, -0.939887, 0.341215,
		-0.947287, 0.097141, 0.305306,
		-0.320099, -0.327377, -0.889022,
		24.092218, 33.397251, 32.416241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650869, 33.144161, 33.382614>,  <24.316288, 33.626415, 33.038559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650869, 33.144161, 33.382614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986683, 32.926941, 33.389244>,  <25.188171, 32.796608, 33.393223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986683, 32.926941, 33.389244>,  <24.650869, 33.144161, 33.382614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986683, 32.926941, 33.389244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174570, 0.298513, 0.938305,
		-0.514495, -0.784847, 0.345412,
		0.839536, -0.543052, 0.016573,
		25.238544, 32.764027, 33.394215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622850, 32.827553, 33.945564>,  <24.650869, 33.144161, 33.382614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622850, 32.827553, 33.945564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011118, 32.855946, 33.853680>,  <25.244078, 32.872982, 33.798550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011118, 32.855946, 33.853680>,  <24.622850, 32.827553, 33.945564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011118, 32.855946, 33.853680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176459, 0.438603, 0.881187,
		0.163299, -0.895873, 0.413212,
		0.970667, 0.070982, -0.229708,
		25.302319, 32.877239, 33.784767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.426563, 32.206642, 34.231083>,  <24.622850, 32.827553, 33.945564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.426563, 32.206642, 34.231083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267679, 31.914486, 34.008820>,  <24.172348, 31.739193, 33.875462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267679, 31.914486, 34.008820>,  <24.426563, 32.206642, 34.231083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267679, 31.914486, 34.008820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597653, 0.665354, -0.447342,
		0.696445, 0.154405, -0.700802,
		-0.397210, -0.730386, -0.555663,
		24.148516, 31.695370, 33.842121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.936995, 32.687649, 34.560612>,  <24.426563, 32.206642, 34.231083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.936995, 32.687649, 34.560612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213461, 32.844498, 34.317787>,  <25.379341, 32.938606, 34.172092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213461, 32.844498, 34.317787>,  <24.936995, 32.687649, 34.560612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213461, 32.844498, 34.317787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330957, 0.575005, 0.748223,
		0.642464, -0.718057, 0.267645,
		0.691164, 0.392127, -0.607066,
		25.420811, 32.962135, 34.135666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630695, 32.623531, 34.790901>,  <24.936995, 32.687649, 34.560612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630695, 32.623531, 34.790901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612322, 32.953949, 34.566208>,  <25.601297, 33.152199, 34.431393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612322, 32.953949, 34.566208>,  <25.630695, 32.623531, 34.790901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612322, 32.953949, 34.566208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166895, 0.560767, 0.810979,
		0.984904, -0.056499, -0.163621,
		-0.045934, 0.826044, -0.561731,
		25.598541, 33.201763, 34.397690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254475, 32.969154, 34.911667>,  <25.630695, 32.623531, 34.790901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254475, 32.969154, 34.911667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979471, 33.229633, 34.783119>,  <25.814470, 33.385921, 34.705990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979471, 33.229633, 34.783119>,  <26.254475, 32.969154, 34.911667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979471, 33.229633, 34.783119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230568, 0.615402, 0.753736,
		0.688601, 0.444102, -0.573238,
		-0.687508, 0.651194, -0.321371,
		25.773218, 33.424992, 34.686707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527380, 33.592949, 35.096893>,  <26.254475, 32.969154, 34.911667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527380, 33.592949, 35.096893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132612, 33.634811, 35.047836>,  <25.895752, 33.659927, 35.018402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132612, 33.634811, 35.047836>,  <26.527380, 33.592949, 35.096893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132612, 33.634811, 35.047836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029677, 0.629780, 0.776207,
		0.158469, 0.769692, -0.618435,
		-0.986918, 0.104652, -0.122642,
		25.836536, 33.666206, 35.011044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217064, 34.346130, 35.206905>,  <26.527380, 33.592949, 35.096893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217064, 34.346130, 35.206905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932579, 34.078472, 35.293091>,  <25.761889, 33.917877, 35.344803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932579, 34.078472, 35.293091>,  <26.217064, 34.346130, 35.206905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932579, 34.078472, 35.293091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052412, 0.356129, 0.932966,
		-0.701021, 0.652244, -0.288354,
		-0.711212, -0.669142, 0.215468,
		25.719215, 33.877731, 35.357731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856960, 34.521961, 34.526150>,  <26.217064, 34.346130, 35.206905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856960, 34.521961, 34.526150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619335, 34.715488, 34.783215>,  <25.476761, 34.831604, 34.937454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619335, 34.715488, 34.783215>,  <25.856960, 34.521961, 34.526150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619335, 34.715488, 34.783215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708608, -0.063395, 0.702749,
		0.380744, 0.872870, -0.305176,
		-0.594061, 0.483817, 0.642660,
		25.441116, 34.860634, 34.976013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974226, 34.993408, 33.952965>,  <25.856960, 34.521961, 34.526150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974226, 34.993408, 33.952965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253149, 35.165024, 33.723293>,  <26.420504, 35.267994, 33.585491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253149, 35.165024, 33.723293>,  <25.974226, 34.993408, 33.952965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253149, 35.165024, 33.723293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697756, -0.589614, 0.406808,
		-0.164008, -0.684309, -0.710509,
		0.697308, 0.429042, -0.574182,
		26.462341, 35.293736, 33.551037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257940, 34.526787, 33.667969>,  <25.974226, 34.993408, 33.952965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257940, 34.526787, 33.667969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519136, 34.829285, 33.684471>,  <26.675854, 35.010784, 33.694370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519136, 34.829285, 33.684471>,  <26.257940, 34.526787, 33.667969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519136, 34.829285, 33.684471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713997, -0.632850, 0.299516,
		0.252614, -0.166126, -0.953199,
		0.652989, 0.756243, 0.041253,
		26.715033, 35.056156, 33.696846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848097, 34.280434, 33.331772>,  <26.257940, 34.526787, 33.667969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848097, 34.280434, 33.331772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972624, 34.585602, 33.558411>,  <27.047340, 34.768703, 33.694393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972624, 34.585602, 33.558411>,  <26.848097, 34.280434, 33.331772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972624, 34.585602, 33.558411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846148, -0.493933, 0.200157,
		0.432567, 0.417116, -0.799313,
		0.311318, 0.762918, 0.566601,
		27.066019, 34.814476, 33.728390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521442, 34.473312, 33.081852>,  <26.848097, 34.280434, 33.331772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521442, 34.473312, 33.081852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488565, 34.590931, 33.462753>,  <27.468840, 34.661503, 33.691292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488565, 34.590931, 33.462753>,  <27.521442, 34.473312, 33.081852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488565, 34.590931, 33.462753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904024, -0.380194, 0.195432,
		0.419506, 0.876920, -0.234577,
		-0.082193, 0.294048, 0.952250,
		27.463907, 34.679146, 33.748428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189459, 34.547821, 33.384666>,  <27.521442, 34.473312, 33.081852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189459, 34.547821, 33.384666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997860, 34.611637, 33.729946>,  <27.882900, 34.649929, 33.937115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997860, 34.611637, 33.729946>,  <28.189459, 34.547821, 33.384666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997860, 34.611637, 33.729946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786577, -0.358528, 0.502746,
		0.389689, 0.919785, 0.046242,
		-0.478998, 0.159542, 0.863196,
		27.854160, 34.659500, 33.988907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714060, 34.367393, 33.728249>,  <28.189459, 34.547821, 33.384666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714060, 34.367393, 33.728249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395529, 34.413868, 33.965691>,  <28.204411, 34.441753, 34.108154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395529, 34.413868, 33.965691>,  <28.714060, 34.367393, 33.728249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395529, 34.413868, 33.965691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466777, -0.506101, 0.725245,
		0.384683, 0.854613, 0.348791,
		-0.796328, 0.116181, 0.593602,
		28.156630, 34.448723, 34.143772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913965, 34.666462, 34.317188>,  <28.714060, 34.367393, 33.728249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913965, 34.666462, 34.317188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588352, 34.456017, 34.415615>,  <28.392984, 34.329750, 34.474670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588352, 34.456017, 34.415615>,  <28.913965, 34.666462, 34.317188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588352, 34.456017, 34.415615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540385, -0.530741, 0.652915,
		-0.212912, 0.664466, 0.716347,
		-0.814035, -0.526117, 0.246066,
		28.344141, 34.298180, 34.489433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829369, 34.725945, 35.041565>,  <28.913965, 34.666462, 34.317188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829369, 34.725945, 35.041565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611923, 34.406391, 34.938599>,  <28.481457, 34.214657, 34.876820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611923, 34.406391, 34.938599>,  <28.829369, 34.725945, 35.041565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611923, 34.406391, 34.938599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532996, -0.565488, 0.629396,
		-0.648384, 0.204944, 0.733209,
		-0.543611, -0.798888, -0.257419,
		28.448839, 34.166725, 34.861374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499180, 34.289574, 35.564003>,  <28.829369, 34.725945, 35.041565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499180, 34.289574, 35.564003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570892, 34.054249, 35.248596>,  <28.613920, 33.913055, 35.059353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570892, 34.054249, 35.248596>,  <28.499180, 34.289574, 35.564003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570892, 34.054249, 35.248596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595090, -0.573391, 0.563108,
		-0.783407, -0.570190, 0.247300,
		0.179279, -0.588308, -0.788513,
		28.624676, 33.877758, 35.012043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264626, 34.049175, 35.369129>,  <28.499180, 34.289574, 35.564003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264626, 34.049175, 35.369129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371565, 33.664700, 35.396362>,  <29.435728, 33.434013, 35.412704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371565, 33.664700, 35.396362>,  <29.264626, 34.049175, 35.369129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371565, 33.664700, 35.396362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896792, -0.274041, -0.347369,
		0.352547, 0.031808, -0.935253,
		0.267346, -0.961192, 0.068087,
		29.451769, 33.376343, 35.416790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350338, 33.783932, 34.681580>,  <29.264626, 34.049175, 35.369129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350338, 33.783932, 34.681580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214195, 33.571217, 34.991772>,  <29.132509, 33.443588, 35.177887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214195, 33.571217, 34.991772>,  <29.350338, 33.783932, 34.681580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214195, 33.571217, 34.991772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897097, -0.063455, -0.437252,
		0.281731, -0.844499, -0.455465,
		-0.340358, -0.531784, 0.775476,
		29.112087, 33.411682, 35.224415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099594, 33.190407, 34.408298>,  <29.350338, 33.783932, 34.681580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099594, 33.190407, 34.408298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913204, 33.316624, 34.738945>,  <28.801371, 33.392353, 34.937332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913204, 33.316624, 34.738945>,  <29.099594, 33.190407, 34.408298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913204, 33.316624, 34.738945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853916, 0.084293, -0.513539,
		-0.231720, -0.945161, 0.230167,
		-0.465975, 0.315540, 0.826620,
		28.773411, 33.411285, 34.986931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451492, 32.985622, 34.178261>,  <29.099594, 33.190407, 34.408298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451492, 32.985622, 34.178261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467356, 33.257111, 34.471592>,  <28.476873, 33.420006, 34.647591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467356, 33.257111, 34.471592>,  <28.451492, 32.985622, 34.178261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467356, 33.257111, 34.471592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772419, 0.486392, -0.408402,
		-0.633874, -0.550235, 0.543548,
		0.039661, 0.678722, 0.733323,
		28.479254, 33.460728, 34.691589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779415, 33.162182, 34.337845>,  <28.451492, 32.985622, 34.178261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779415, 33.162182, 34.337845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969837, 33.464649, 34.517437>,  <28.084091, 33.646130, 34.625191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969837, 33.464649, 34.517437>,  <27.779415, 33.162182, 34.337845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969837, 33.464649, 34.517437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687899, 0.638260, -0.345571,
		-0.547874, -0.144339, 0.824015,
		0.476057, 0.756168, 0.448976,
		28.112654, 33.691498, 34.652130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248800, 33.658806, 34.605095>,  <27.779415, 33.162182, 34.337845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248800, 33.658806, 34.605095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587151, 33.872047, 34.598244>,  <27.790161, 33.999992, 34.594135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587151, 33.872047, 34.598244>,  <27.248800, 33.658806, 34.605095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587151, 33.872047, 34.598244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492323, 0.768009, -0.409610,
		-0.205215, 0.354910, 0.912100,
		0.845876, 0.533106, -0.017123,
		27.840914, 34.031979, 34.593105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124910, 34.378376, 34.898510>,  <27.248800, 33.658806, 34.605095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124910, 34.378376, 34.898510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435083, 34.457195, 34.658550>,  <27.621187, 34.504486, 34.514576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435083, 34.457195, 34.658550>,  <27.124910, 34.378376, 34.898510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435083, 34.457195, 34.658550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447327, 0.841962, -0.301659,
		0.445647, 0.502266, 0.741031,
		0.775433, 0.197050, -0.599895,
		27.667713, 34.516312, 34.478580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324488, 35.094292, 34.995731>,  <27.124910, 34.378376, 34.898510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324488, 35.094292, 34.995731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395643, 35.004475, 34.612495>,  <27.438335, 34.950584, 34.382553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395643, 35.004475, 34.612495>,  <27.324488, 35.094292, 34.995731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395643, 35.004475, 34.612495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644255, 0.709377, -0.285868,
		0.743836, 0.668107, -0.018471,
		0.177888, -0.224539, -0.958091,
		27.449009, 34.937115, 34.325069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545473, 35.766308, 34.534172>,  <27.324488, 35.094292, 34.995731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545473, 35.766308, 34.534172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392561, 35.488056, 34.290874>,  <27.300814, 35.321106, 34.144897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392561, 35.488056, 34.290874>,  <27.545473, 35.766308, 34.534172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392561, 35.488056, 34.290874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530103, 0.704246, -0.472260,
		0.756870, 0.141895, -0.637976,
		-0.382280, -0.695632, -0.608242,
		27.277876, 35.279366, 34.108402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496454, 36.061863, 33.836414>,  <27.545473, 35.766308, 34.534172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496454, 36.061863, 33.836414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256481, 35.742203, 33.821232>,  <27.112497, 35.550407, 33.812122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256481, 35.742203, 33.821232>,  <27.496454, 36.061863, 33.836414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256481, 35.742203, 33.821232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700709, 0.547742, -0.457149,
		0.386119, -0.247665, -0.888580,
		-0.599932, -0.799150, -0.037953,
		27.076502, 35.502457, 33.809845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175703, 35.777695, 33.770924>,  <27.496454, 36.061863, 33.836414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175703, 35.777695, 33.770924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037180, 36.063404, 34.014198>,  <27.954067, 36.234829, 34.160164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037180, 36.063404, 34.014198>,  <28.175703, 35.777695, 33.770924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037180, 36.063404, 34.014198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613410, -0.662918, 0.429265,
		0.709788, -0.224411, 0.667712,
		-0.346307, 0.714269, 0.608187,
		27.933289, 36.277683, 34.196655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479925, 35.691399, 33.030766>,  <28.175703, 35.777695, 33.770924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479925, 35.691399, 33.030766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371180, 35.807972, 32.663906>,  <28.305931, 35.877914, 32.443790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371180, 35.807972, 32.663906>,  <28.479925, 35.691399, 33.030766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371180, 35.807972, 32.663906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826277, 0.559238, -0.067227,
		0.493311, -0.776093, -0.392840,
		-0.271866, 0.291431, -0.917146,
		28.289619, 35.895401, 32.388763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735079, 35.427803, 32.366783>,  <28.479925, 35.691399, 33.030766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735079, 35.427803, 32.366783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629290, 35.807690, 32.433815>,  <28.565817, 36.035622, 32.474033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629290, 35.807690, 32.433815>,  <28.735079, 35.427803, 32.366783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629290, 35.807690, 32.433815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960708, 0.274630, -0.040221,
		-0.084221, 0.150360, -0.985037,
		-0.264473, 0.949721, 0.167581,
		28.549948, 36.092606, 32.484089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090914, 35.868099, 31.903738>,  <28.735079, 35.427803, 32.366783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090914, 35.868099, 31.903738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989214, 36.077625, 32.228939>,  <28.928194, 36.203339, 32.424061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989214, 36.077625, 32.228939>,  <29.090914, 35.868099, 31.903738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989214, 36.077625, 32.228939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900235, 0.435402, 0.001004,
		-0.353458, 0.732151, -0.582257,
		-0.254251, 0.523813, 0.813004,
		28.912939, 36.234768, 32.472839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072145, 36.709946, 31.999636>,  <29.090914, 35.868099, 31.903738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072145, 36.709946, 31.999636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176559, 36.481003, 32.310574>,  <29.239208, 36.343636, 32.497135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176559, 36.481003, 32.310574>,  <29.072145, 36.709946, 31.999636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176559, 36.481003, 32.310574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963124, 0.100018, -0.249777,
		0.065214, 0.813880, 0.577361,
		0.261035, -0.572359, 0.777345,
		29.254869, 36.309296, 32.543777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627853, 36.992008, 32.411392>,  <29.072145, 36.709946, 31.999636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627853, 36.992008, 32.411392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660997, 36.595943, 32.456490>,  <29.680883, 36.358303, 32.483547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660997, 36.595943, 32.456490>,  <29.627853, 36.992008, 32.411392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660997, 36.595943, 32.456490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982081, 0.061915, -0.178001,
		0.169270, 0.125471, 0.977550,
		0.082859, -0.990163, 0.112742,
		29.685856, 36.298893, 32.490311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137453, 36.779903, 32.948635>,  <29.627853, 36.992008, 32.411392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137453, 36.779903, 32.948635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111984, 36.493782, 32.670273>,  <30.096703, 36.322109, 32.503254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111984, 36.493782, 32.670273>,  <30.137453, 36.779903, 32.948635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111984, 36.493782, 32.670273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953727, 0.161717, -0.253482,
		0.293856, -0.679847, 0.671906,
		-0.063670, -0.715302, -0.695909,
		30.092884, 36.279190, 32.461498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733948, 36.480137, 33.002537>,  <30.137453, 36.779903, 32.948635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733948, 36.480137, 33.002537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609793, 36.393528, 32.632290>,  <30.535299, 36.341560, 32.410141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609793, 36.393528, 32.632290>,  <30.733948, 36.480137, 33.002537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609793, 36.393528, 32.632290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909071, 0.217080, -0.355619,
		0.277935, -0.951837, 0.129457,
		-0.310389, -0.216524, -0.925622,
		30.516676, 36.328571, 32.354603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160959, 35.901714, 32.683743>,  <30.733948, 36.480137, 33.002537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160959, 35.901714, 32.683743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002226, 36.180515, 32.444843>,  <30.906986, 36.347797, 32.301502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002226, 36.180515, 32.444843>,  <31.160959, 35.901714, 32.683743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002226, 36.180515, 32.444843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878357, 0.099456, -0.467544,
		-0.266479, -0.710139, -0.651684,
		-0.396835, 0.697002, -0.597252,
		30.883175, 36.389614, 32.265667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001194, 35.637604, 32.068214>,  <31.160959, 35.901714, 32.683743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001194, 35.637604, 32.068214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100239, 36.025070, 32.075905>,  <31.159666, 36.257549, 32.080521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100239, 36.025070, 32.075905>,  <31.001194, 35.637604, 32.068214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100239, 36.025070, 32.075905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871305, -0.213957, -0.441644,
		-0.423693, 0.126109, -0.896984,
		0.247612, 0.968669, 0.019227,
		31.174522, 36.315670, 32.081673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481731, 35.637253, 31.548660>,  <31.001194, 35.637604, 32.068214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481731, 35.637253, 31.548660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559029, 35.972500, 31.752703>,  <31.605406, 36.173649, 31.875128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559029, 35.972500, 31.752703>,  <31.481731, 35.637253, 31.548660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559029, 35.972500, 31.752703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932786, 0.004286, -0.360405,
		-0.304250, 0.545466, -0.780960,
		0.193242, 0.838122, 0.510107,
		31.617001, 36.223938, 31.905735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773872, 36.135128, 31.047144>,  <31.481731, 35.637253, 31.548660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773872, 36.135128, 31.047144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905403, 36.250660, 31.406799>,  <31.984322, 36.319981, 31.622593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905403, 36.250660, 31.406799>,  <31.773872, 36.135128, 31.047144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905403, 36.250660, 31.406799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944215, -0.118896, -0.307118,
		0.018199, 0.949969, -0.311814,
		0.328826, 0.288830, 0.899139,
		32.004051, 36.337311, 31.676540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370064, 36.565845, 30.951330>,  <31.773872, 36.135128, 31.047144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370064, 36.565845, 30.951330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373474, 36.415970, 31.322176>,  <32.375519, 36.326046, 31.544683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373474, 36.415970, 31.322176>,  <32.370064, 36.565845, 30.951330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373474, 36.415970, 31.322176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884292, -0.430036, -0.181926,
		0.466856, 0.821388, 0.327667,
		0.008523, -0.374687, 0.927112,
		32.376030, 36.303562, 31.600309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917583, 36.123196, 30.785011>,  <32.370064, 36.565845, 30.951330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917583, 36.123196, 30.785011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259869, 36.158321, 30.581034>,  <33.465240, 36.179398, 30.458647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259869, 36.158321, 30.581034>,  <32.917583, 36.123196, 30.785011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259869, 36.158321, 30.581034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144731, 0.905540, 0.398810,
		0.496797, -0.415072, 0.762174,
		0.855714, 0.087817, -0.509943,
		33.516582, 36.184666, 30.428051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447338, 36.378254, 31.205830>,  <32.917583, 36.123196, 30.785011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447338, 36.378254, 31.205830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541443, 36.474777, 30.829229>,  <33.597904, 36.532692, 30.603270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541443, 36.474777, 30.829229>,  <33.447338, 36.378254, 31.205830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541443, 36.474777, 30.829229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268435, 0.914879, 0.301560,
		0.934129, -0.323676, 0.150457,
		0.235258, 0.241308, -0.941501,
		33.612022, 36.547169, 30.546780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050049, 36.832539, 31.193737>,  <33.447338, 36.378254, 31.205830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050049, 36.832539, 31.193737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905262, 36.928432, 30.833403>,  <33.818390, 36.985970, 30.617201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905262, 36.928432, 30.833403>,  <34.050049, 36.832539, 31.193737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905262, 36.928432, 30.833403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642562, 0.764271, -0.054799,
		0.675346, -0.598680, -0.430685,
		-0.361968, 0.239733, -0.900837,
		33.796673, 37.000351, 30.563152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520103, 36.713020, 30.656734>,  <34.050049, 36.832539, 31.193737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520103, 36.713020, 30.656734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270580, 37.025528, 30.647957>,  <34.120865, 37.213032, 30.642691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270580, 37.025528, 30.647957>,  <34.520103, 36.713020, 30.656734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270580, 37.025528, 30.647957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779843, 0.624047, 0.049097,
		0.052053, 0.013513, -0.998553,
		-0.623807, 0.781270, -0.021946,
		34.083439, 37.259911, 30.641373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632900, 36.010635, 31.017172>,  <34.520103, 36.713020, 30.656734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632900, 36.010635, 31.017172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510357, 36.094746, 30.645811>,  <34.436832, 36.145210, 30.422995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510357, 36.094746, 30.645811>,  <34.632900, 36.010635, 31.017172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510357, 36.094746, 30.645811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373255, -0.870659, -0.320365,
		-0.875688, -0.444675, 0.188240,
		-0.306351, 0.210278, -0.928403,
		34.418449, 36.157829, 30.367290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147758, 35.622326, 30.712954>,  <34.632900, 36.010635, 31.017172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147758, 35.622326, 30.712954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303535, 35.766113, 30.373751>,  <34.397003, 35.852386, 30.170229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303535, 35.766113, 30.373751>,  <34.147758, 35.622326, 30.712954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303535, 35.766113, 30.373751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035600, -0.925883, -0.376128,
		-0.920362, 0.116292, -0.373377,
		0.389445, 0.359466, -0.848008,
		34.420368, 35.873955, 30.119349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748108, 35.189320, 30.283886>,  <34.147758, 35.622326, 30.712954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748108, 35.189320, 30.283886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091145, 35.323689, 30.128099>,  <34.296967, 35.404308, 30.034628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091145, 35.323689, 30.128099>,  <33.748108, 35.189320, 30.283886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091145, 35.323689, 30.128099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114279, -0.862770, -0.492513,
		-0.501467, 0.377869, -0.778297,
		0.857596, 0.335922, -0.389468,
		34.348423, 35.424465, 30.011259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558315, 35.147629, 29.646614>,  <33.748108, 35.189320, 30.283886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558315, 35.147629, 29.646614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958298, 35.151211, 29.648056>,  <34.198288, 35.153358, 29.648922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958298, 35.151211, 29.648056>,  <33.558315, 35.147629, 29.646614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958298, 35.151211, 29.648056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009598, -0.882364, -0.470470,
		-0.001030, 0.470482, -0.882409,
		0.999954, 0.008954, 0.003607,
		34.258286, 35.153896, 29.649137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740929, 34.863773, 28.902931>,  <33.558315, 35.147629, 29.646614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740929, 34.863773, 28.902931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074814, 34.840401, 29.121962>,  <34.275146, 34.826378, 29.253380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074814, 34.840401, 29.121962>,  <33.740929, 34.863773, 28.902931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074814, 34.840401, 29.121962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210916, -0.884608, -0.415912,
		0.508695, 0.462660, -0.726069,
		0.834712, -0.058433, 0.547578,
		34.325226, 34.822872, 29.286236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368523, 34.582996, 28.496363>,  <33.740929, 34.863773, 28.902931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368523, 34.582996, 28.496363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538059, 34.540199, 28.856121>,  <34.639782, 34.514519, 29.071976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538059, 34.540199, 28.856121>,  <34.368523, 34.582996, 28.496363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538059, 34.540199, 28.856121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489010, -0.808801, -0.326665,
		0.762384, 0.578267, -0.290480,
		0.423840, -0.106997, 0.899395,
		34.665211, 34.508099, 29.125940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070896, 34.525063, 28.389521>,  <34.368523, 34.582996, 28.496363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070896, 34.525063, 28.389521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993843, 34.344433, 28.737997>,  <34.947613, 34.236057, 28.947083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993843, 34.344433, 28.737997>,  <35.070896, 34.525063, 28.389521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993843, 34.344433, 28.737997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577986, -0.769680, -0.271155,
		0.792985, 0.451304, 0.409267,
		-0.192631, -0.451572, 0.871192,
		34.936054, 34.208961, 28.999355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692711, 34.263260, 28.483931>,  <35.070896, 34.525063, 28.389521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692711, 34.263260, 28.483931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445900, 34.066425, 28.729574>,  <35.297813, 33.948326, 28.876961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445900, 34.066425, 28.729574>,  <35.692711, 34.263260, 28.483931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445900, 34.066425, 28.729574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512343, -0.843528, -0.161140,
		0.597314, 0.215207, 0.772595,
		-0.617026, -0.492085, 0.614110,
		35.260792, 33.918800, 28.913807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167336, 34.030033, 28.933796>,  <35.692711, 34.263260, 28.483931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167336, 34.030033, 28.933796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823132, 33.829651, 28.970818>,  <35.616608, 33.709423, 28.993031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823132, 33.829651, 28.970818>,  <36.167336, 34.030033, 28.933796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823132, 33.829651, 28.970818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475818, -0.855256, -0.205265,
		0.181987, -0.132594, 0.974320,
		-0.860511, -0.500954, 0.092555,
		35.564980, 33.679363, 28.998585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312256, 33.464733, 29.382517>,  <36.167336, 34.030033, 28.933796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312256, 33.464733, 29.382517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998146, 33.346714, 29.164787>,  <35.809681, 33.275902, 29.034149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998146, 33.346714, 29.164787>,  <36.312256, 33.464733, 29.382517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998146, 33.346714, 29.164787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514748, -0.799664, -0.309149,
		-0.344059, -0.522955, 0.779834,
		-0.785276, -0.295052, -0.544322,
		35.762562, 33.258198, 29.001492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328163, 32.714821, 29.458963>,  <36.312256, 33.464733, 29.382517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328163, 32.714821, 29.458963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109631, 32.794281, 29.133497>,  <35.978512, 32.841957, 28.938217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109631, 32.794281, 29.133497>,  <36.328163, 32.714821, 29.458963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109631, 32.794281, 29.133497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611558, -0.569163, -0.549591,
		-0.572278, -0.797869, 0.189479,
		-0.546346, 0.198641, -0.813663,
		35.945728, 32.853878, 28.889397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342899, 32.040554, 29.112352>,  <36.328163, 32.714821, 29.458963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342899, 32.040554, 29.112352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248344, 32.325977, 28.848545>,  <36.191612, 32.497231, 28.690262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248344, 32.325977, 28.848545>,  <36.342899, 32.040554, 29.112352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248344, 32.325977, 28.848545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628917, -0.405032, -0.663636,
		-0.740666, -0.571655, -0.353022,
		-0.236386, 0.713554, -0.659517,
		36.177429, 32.540043, 28.650690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081882, 31.655275, 28.509609>,  <36.342899, 32.040554, 29.112352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081882, 31.655275, 28.509609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170616, 32.023624, 28.381369>,  <36.223858, 32.244633, 28.304424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170616, 32.023624, 28.381369>,  <36.081882, 31.655275, 28.509609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170616, 32.023624, 28.381369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510824, -0.389818, -0.766225,
		-0.830570, 0.006207, -0.556879,
		0.221837, 0.920871, -0.320601,
		36.237167, 32.299885, 28.285189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917377, 31.656221, 27.882389>,  <36.081882, 31.655275, 28.509609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917377, 31.656221, 27.882389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174118, 31.962643, 27.896189>,  <36.328163, 32.146496, 27.904469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174118, 31.962643, 27.896189>,  <35.917377, 31.656221, 27.882389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174118, 31.962643, 27.896189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451757, -0.341391, -0.824237,
		-0.619633, 0.544622, -0.565193,
		0.641849, 0.766054, 0.034500,
		36.366673, 32.192459, 27.906538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027027, 31.796459, 27.168751>,  <35.917377, 31.656221, 27.882389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027027, 31.796459, 27.168751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316467, 31.994598, 27.361012>,  <36.490131, 32.113483, 27.476368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316467, 31.994598, 27.361012>,  <36.027027, 31.796459, 27.168751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316467, 31.994598, 27.361012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626529, -0.179223, -0.758512,
		-0.289584, 0.850005, -0.440036,
		0.723604, 0.495348, 0.480653,
		36.533550, 32.143204, 27.505207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164768, 32.364208, 26.888699>,  <36.027027, 31.796459, 27.168751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164768, 32.364208, 26.888699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521660, 32.328667, 27.065804>,  <36.735794, 32.307343, 27.172066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521660, 32.328667, 27.065804>,  <36.164768, 32.364208, 26.888699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521660, 32.328667, 27.065804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446863, 0.032238, -0.894021,
		0.065166, 0.995523, 0.068470,
		0.892226, -0.088856, 0.442762,
		36.789326, 32.302010, 27.198631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519497, 32.877476, 26.464031>,  <36.164768, 32.364208, 26.888699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519497, 32.877476, 26.464031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778614, 32.631420, 26.643799>,  <36.934082, 32.483788, 26.751659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778614, 32.631420, 26.643799>,  <36.519497, 32.877476, 26.464031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778614, 32.631420, 26.643799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388144, -0.241121, -0.889497,
		0.655525, 0.750646, 0.082565,
		0.647790, -0.615135, 0.449419,
		36.972950, 32.446880, 26.778625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197426, 32.997547, 26.254778>,  <36.519497, 32.877476, 26.464031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197426, 32.997547, 26.254778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228027, 32.608398, 26.342102>,  <37.246387, 32.374908, 26.394497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228027, 32.608398, 26.342102>,  <37.197426, 32.997547, 26.254778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228027, 32.608398, 26.342102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371901, -0.175307, -0.911568,
		0.925114, 0.150930, 0.348402,
		0.076506, -0.972876, 0.218310,
		37.250980, 32.316536, 26.407595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767784, 32.822777, 25.928009>,  <37.197426, 32.997547, 26.254778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767784, 32.822777, 25.928009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611217, 32.471474, 26.037895>,  <37.517277, 32.260693, 26.103827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611217, 32.471474, 26.037895>,  <37.767784, 32.822777, 25.928009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611217, 32.471474, 26.037895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396496, -0.430357, -0.810915,
		0.830414, -0.208479, 0.516671,
		-0.391412, -0.878253, 0.274713,
		37.493793, 32.207996, 26.120310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343498, 32.264282, 26.016605>,  <37.767784, 32.822777, 25.928009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343498, 32.264282, 26.016605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994415, 32.102901, 25.906620>,  <37.784966, 32.006073, 25.840628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994415, 32.102901, 25.906620>,  <38.343498, 32.264282, 26.016605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994415, 32.102901, 25.906620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406004, -0.286885, -0.867673,
		0.271180, -0.868864, 0.414170,
		-0.872709, -0.403450, -0.274965,
		37.732601, 31.981867, 25.824131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505989, 31.711670, 25.627300>,  <38.343498, 32.264282, 26.016605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505989, 31.711670, 25.627300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116989, 31.722889, 25.534822>,  <37.883587, 31.729620, 25.479336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116989, 31.722889, 25.534822>,  <38.505989, 31.711670, 25.627300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116989, 31.722889, 25.534822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213461, -0.289620, -0.933035,
		-0.093128, -0.956731, 0.275669,
		-0.972503, 0.028047, -0.231197,
		37.825237, 31.731302, 25.465464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342823, 31.047575, 25.117149>,  <38.505989, 31.711670, 25.627300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342823, 31.047575, 25.117149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011253, 31.261408, 25.051291>,  <37.812313, 31.389708, 25.011776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011253, 31.261408, 25.051291>,  <38.342823, 31.047575, 25.117149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011253, 31.261408, 25.051291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106736, -0.137773, -0.984696,
		-0.549083, -0.833812, 0.057144,
		-0.828924, 0.534580, -0.164647,
		37.762577, 31.421782, 25.001896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836239, 30.653742, 24.653627>,  <38.342823, 31.047575, 25.117149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836239, 30.653742, 24.653627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775429, 31.048183, 24.626827>,  <37.738941, 31.284847, 24.610746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775429, 31.048183, 24.626827>,  <37.836239, 30.653742, 24.653627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775429, 31.048183, 24.626827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092400, -0.053313, -0.994294,
		-0.984048, -0.157352, -0.083010,
		-0.152029, 0.986102, -0.067002,
		37.729820, 31.344013, 24.606726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387062, 30.657986, 24.137503>,  <37.836239, 30.653742, 24.653627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387062, 30.657986, 24.137503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507195, 31.039316, 24.149939>,  <37.579273, 31.268114, 24.157400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507195, 31.039316, 24.149939>,  <37.387062, 30.657986, 24.137503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507195, 31.039316, 24.149939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115074, 0.068571, -0.990987,
		-0.946868, 0.294047, 0.130297,
		0.300332, 0.953328, 0.031091,
		37.597294, 31.325315, 24.159266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053925, 30.999971, 23.620956>,  <37.387062, 30.657986, 24.137503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053925, 30.999971, 23.620956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355385, 31.254881, 23.685326>,  <37.536263, 31.407827, 23.723948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355385, 31.254881, 23.685326>,  <37.053925, 30.999971, 23.620956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355385, 31.254881, 23.685326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181382, 0.033677, -0.982836,
		-0.631754, 0.769902, -0.090209,
		0.753649, 0.637273, 0.160922,
		37.581478, 31.446062, 23.733603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986996, 31.490009, 23.067568>,  <37.053925, 30.999971, 23.620956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986996, 31.490009, 23.067568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364822, 31.512125, 23.197025>,  <37.591518, 31.525394, 23.274700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364822, 31.512125, 23.197025>,  <36.986996, 31.490009, 23.067568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364822, 31.512125, 23.197025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328307, -0.146621, -0.933122,
		-0.004137, 0.987646, -0.156644,
		0.944562, 0.055288, 0.323645,
		37.648190, 31.528711, 23.294119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322659, 32.027824, 22.625208>,  <36.986996, 31.490009, 23.067568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322659, 32.027824, 22.625208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608723, 31.802202, 22.790323>,  <37.780361, 31.666830, 22.889393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608723, 31.802202, 22.790323>,  <37.322659, 32.027824, 22.625208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608723, 31.802202, 22.790323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342306, -0.232268, -0.910428,
		0.609406, 0.792399, 0.026970,
		0.715158, -0.564052, 0.412788,
		37.823269, 31.632986, 22.914160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840191, 32.068062, 22.166941>,  <37.322659, 32.027824, 22.625208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840191, 32.068062, 22.166941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938152, 31.739170, 22.372452>,  <37.996929, 31.541836, 22.495758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938152, 31.739170, 22.372452>,  <37.840191, 32.068062, 22.166941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938152, 31.739170, 22.372452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394645, -0.399490, -0.827443,
		0.885594, 0.405405, 0.226650,
		0.244906, -0.822225, 0.513778,
		38.011623, 31.492502, 22.526585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443542, 31.922712, 21.943783>,  <37.840191, 32.068062, 22.166941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443542, 31.922712, 21.943783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328697, 31.578804, 22.112715>,  <38.259789, 31.372459, 22.214073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328697, 31.578804, 22.112715>,  <38.443542, 31.922712, 21.943783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328697, 31.578804, 22.112715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423028, -0.509377, -0.749388,
		0.859426, -0.036502, 0.509955,
		-0.287113, -0.859769, 0.422331,
		38.242561, 31.320873, 22.239414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943604, 31.386883, 21.818724>,  <38.443542, 31.922712, 21.943783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943604, 31.386883, 21.818724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603149, 31.182011, 21.864761>,  <38.398876, 31.059088, 21.892384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603149, 31.182011, 21.864761>,  <38.943604, 31.386883, 21.818724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603149, 31.182011, 21.864761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192362, -0.508295, -0.839424,
		0.488437, -0.692322, 0.531150,
		-0.851133, -0.512179, 0.115094,
		38.347809, 31.028357, 21.899290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221371, 30.668413, 21.838293>,  <38.943604, 31.386883, 21.818724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221371, 30.668413, 21.838293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828094, 30.675446, 21.765602>,  <38.592129, 30.679665, 21.721989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828094, 30.675446, 21.765602>,  <39.221371, 30.668413, 21.838293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828094, 30.675446, 21.765602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140480, -0.562906, -0.814495,
		-0.116613, -0.826334, 0.550975,
		-0.983192, 0.017579, -0.181726,
		38.533138, 30.680719, 21.711084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988201, 29.996357, 21.984423>,  <39.221371, 30.668413, 21.838293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988201, 29.996357, 21.984423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758873, 30.200804, 21.728279>,  <38.621277, 30.323471, 21.574593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758873, 30.200804, 21.728279>,  <38.988201, 29.996357, 21.984423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758873, 30.200804, 21.728279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285936, -0.607612, -0.740979,
		-0.767816, -0.607922, 0.202212,
		-0.573323, 0.511116, -0.640360,
		38.586876, 30.354137, 21.536171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726006, 29.448771, 21.572247>,  <38.988201, 29.996357, 21.984423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726006, 29.448771, 21.572247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649982, 29.784479, 21.368481>,  <38.604370, 29.985905, 21.246222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649982, 29.784479, 21.368481>,  <38.726006, 29.448771, 21.572247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649982, 29.784479, 21.368481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198124, -0.475408, -0.857166,
		-0.961575, -0.263836, -0.075926,
		-0.190056, 0.839272, -0.509413,
		38.592964, 30.036261, 21.215656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636124, 29.155569, 21.026484>,  <38.726006, 29.448771, 21.572247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636124, 29.155569, 21.026484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628311, 29.544861, 20.934883>,  <38.623623, 29.778437, 20.879923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628311, 29.544861, 20.934883>,  <38.636124, 29.155569, 21.026484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628311, 29.544861, 20.934883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352137, -0.207672, -0.912618,
		-0.935745, -0.098461, -0.338655,
		-0.019528, 0.973231, -0.228999,
		38.622452, 29.836830, 20.866182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226578, 29.187180, 20.487270>,  <38.636124, 29.155569, 21.026484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226578, 29.187180, 20.487270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449017, 29.518955, 20.466131>,  <38.582478, 29.718021, 20.453447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449017, 29.518955, 20.466131>,  <38.226578, 29.187180, 20.487270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449017, 29.518955, 20.466131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340365, -0.285280, -0.895973,
		-0.758230, 0.480257, -0.440954,
		0.556093, 0.829439, -0.052846,
		38.615845, 29.767786, 20.450277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037422, 29.559338, 19.887806>,  <38.226578, 29.187180, 20.487270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037422, 29.559338, 19.887806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420097, 29.640224, 19.971575>,  <38.649704, 29.688757, 20.021835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420097, 29.640224, 19.971575>,  <38.037422, 29.559338, 19.887806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420097, 29.640224, 19.971575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253469, -0.224771, -0.940867,
		-0.143186, 0.953198, -0.266291,
		0.956687, 0.202216, 0.209422,
		38.707104, 29.700890, 20.034401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290482, 30.021029, 19.456942>,  <38.037422, 29.559338, 19.887806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290482, 30.021029, 19.456942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638325, 29.863245, 19.575722>,  <38.847031, 29.768576, 19.646990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638325, 29.863245, 19.575722>,  <38.290482, 30.021029, 19.456942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638325, 29.863245, 19.575722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243323, -0.180936, -0.952920,
		0.429616, 0.900924, -0.061363,
		0.869611, -0.394459, 0.296949,
		38.899208, 29.744907, 19.664806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768269, 30.257915, 18.943537>,  <38.290482, 30.021029, 19.456942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768269, 30.257915, 18.943537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946995, 29.937963, 19.103811>,  <39.054230, 29.745993, 19.199976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946995, 29.937963, 19.103811>,  <38.768269, 30.257915, 18.943537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946995, 29.937963, 19.103811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465075, -0.174928, -0.867817,
		0.764240, 0.574103, 0.293843,
		0.446815, -0.799879, 0.400688,
		39.081039, 29.698000, 19.224018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352802, 30.289988, 18.499588>,  <38.768269, 30.257915, 18.943537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352802, 30.289988, 18.499588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362915, 29.928297, 18.670109>,  <39.368984, 29.711283, 18.772421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362915, 29.928297, 18.670109>,  <39.352802, 30.289988, 18.499588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362915, 29.928297, 18.670109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526233, -0.350535, -0.774728,
		0.849965, 0.243925, 0.466970,
		0.025286, -0.904227, 0.426304,
		39.370502, 29.657028, 18.798000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055790, 30.008770, 18.519997>,  <39.352802, 30.289988, 18.499588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055790, 30.008770, 18.519997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793423, 29.707199, 18.534794>,  <39.636002, 29.526257, 18.543673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793423, 29.707199, 18.534794>,  <40.055790, 30.008770, 18.519997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793423, 29.707199, 18.534794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466775, -0.443631, -0.765057,
		0.593208, -0.484546, 0.642899,
		-0.655915, -0.753927, 0.036992,
		39.596649, 29.481020, 18.545891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461823, 29.480854, 18.483236>,  <40.055790, 30.008770, 18.519997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461823, 29.480854, 18.483236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108444, 29.317701, 18.391008>,  <39.896420, 29.219810, 18.335672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108444, 29.317701, 18.391008>,  <40.461823, 29.480854, 18.483236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108444, 29.317701, 18.391008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397091, -0.390597, -0.830513,
		0.248693, -0.825267, 0.507037,
		-0.883442, -0.407883, -0.230568,
		39.843410, 29.195337, 18.321838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585140, 28.798298, 18.311134>,  <40.461823, 29.480854, 18.483236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585140, 28.798298, 18.311134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242466, 28.876413, 18.120155>,  <40.036861, 28.923283, 18.005568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242466, 28.876413, 18.120155>,  <40.585140, 28.798298, 18.311134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242466, 28.876413, 18.120155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336597, -0.489738, -0.804276,
		-0.390890, -0.849717, 0.353817,
		-0.856684, 0.195290, -0.477445,
		39.985462, 28.935001, 17.976921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494598, 28.228102, 17.897903>,  <40.585140, 28.798298, 18.311134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494598, 28.228102, 17.897903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224838, 28.469538, 17.727787>,  <40.062984, 28.614399, 17.625717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224838, 28.469538, 17.727787>,  <40.494598, 28.228102, 17.897903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224838, 28.469538, 17.727787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271138, -0.333304, -0.902991,
		-0.686785, -0.724286, 0.061123,
		-0.674396, 0.603588, -0.425290,
		40.022518, 28.650614, 17.600201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110722, 27.783249, 17.467487>,  <40.494598, 28.228102, 17.897903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110722, 27.783249, 17.467487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074276, 28.157406, 17.330818>,  <40.052410, 28.381901, 17.248817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074276, 28.157406, 17.330818>,  <40.110722, 27.783249, 17.467487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074276, 28.157406, 17.330818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462553, -0.264092, -0.846345,
		-0.881898, -0.235154, -0.408606,
		-0.091111, 0.935392, -0.341673,
		40.046944, 28.438023, 17.228315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050957, 27.651373, 16.812393>,  <40.110722, 27.783249, 17.467487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050957, 27.651373, 16.812393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173725, 28.029640, 16.855297>,  <40.247387, 28.256601, 16.881039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173725, 28.029640, 16.855297>,  <40.050957, 27.651373, 16.812393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173725, 28.029640, 16.855297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503935, -0.065875, -0.861226,
		-0.807370, 0.318384, -0.496775,
		0.306926, 0.945670, 0.107259,
		40.265804, 28.313341, 16.887474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996021, 27.930586, 16.143522>,  <40.050957, 27.651373, 16.812393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996021, 27.930586, 16.143522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266384, 28.121326, 16.368292>,  <40.428604, 28.235771, 16.503153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266384, 28.121326, 16.368292>,  <39.996021, 27.930586, 16.143522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266384, 28.121326, 16.368292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574286, 0.137071, -0.807098,
		-0.461891, 0.868230, -0.181202,
		0.675909, 0.476853, 0.561924,
		40.469158, 28.264381, 16.536869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081890, 28.685814, 15.943611>,  <39.996021, 27.930586, 16.143522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081890, 28.685814, 15.943611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410130, 28.519815, 16.100784>,  <40.607075, 28.420216, 16.195087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410130, 28.519815, 16.100784>,  <40.081890, 28.685814, 15.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410130, 28.519815, 16.100784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535681, 0.318932, -0.781875,
		0.199156, 0.852092, 0.484020,
		0.820599, -0.414996, 0.392932,
		40.656311, 28.395317, 16.218664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606632, 29.225410, 15.837989>,  <40.081890, 28.685814, 15.943611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606632, 29.225410, 15.837989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788132, 28.869125, 15.827122>,  <40.897034, 28.655354, 15.820601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788132, 28.869125, 15.827122>,  <40.606632, 29.225410, 15.837989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788132, 28.869125, 15.827122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551058, 0.304421, -0.776957,
		0.700317, 0.337575, 0.628967,
		0.453752, -0.890714, -0.027168,
		40.924255, 28.601912, 15.818972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347813, 29.316463, 15.727203>,  <40.606632, 29.225410, 15.837989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347813, 29.316463, 15.727203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254368, 28.965502, 15.559590>,  <41.198303, 28.754925, 15.459023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254368, 28.965502, 15.559590>,  <41.347813, 29.316463, 15.727203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254368, 28.965502, 15.559590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483637, 0.269012, -0.832903,
		0.843518, -0.397233, 0.361502,
		-0.233608, -0.877404, -0.419033,
		41.184284, 28.702280, 15.433881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529137, 30.061584, 15.487821>,  <41.347813, 29.316463, 15.727203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529137, 30.061584, 15.487821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630554, 30.001974, 15.105510>,  <41.691402, 29.966208, 14.876123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630554, 30.001974, 15.105510>,  <41.529137, 30.061584, 15.487821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630554, 30.001974, 15.105510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879304, 0.376302, -0.291928,
		0.403165, 0.914433, -0.035630,
		0.253541, -0.149024, -0.955777,
		41.706615, 29.957266, 14.818777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848537, 29.854595, 15.246974>,  <41.529137, 30.061584, 15.487821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848537, 29.854595, 15.246974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916386, 30.246742, 15.206762>,  <40.957096, 30.482031, 15.182635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916386, 30.246742, 15.206762>,  <40.848537, 29.854595, 15.246974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916386, 30.246742, 15.206762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228529, -0.060100, -0.971680,
		-0.958647, 0.187790, 0.213848,
		0.169620, 0.980369, -0.100530,
		40.967270, 30.540854, 15.176603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370079, 30.048271, 14.772626>,  <40.848537, 29.854595, 15.246974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370079, 30.048271, 14.772626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695362, 30.281006, 14.777607>,  <40.890533, 30.420647, 14.780596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695362, 30.281006, 14.777607>,  <40.370079, 30.048271, 14.772626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695362, 30.281006, 14.777607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017838, -0.003532, -0.999835,
		-0.581694, 0.813300, -0.013251,
		0.813212, 0.581834, 0.012453,
		40.939327, 30.455557, 14.781343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464970, 30.439096, 15.432434>,  <40.370079, 30.048271, 14.772626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464970, 30.439096, 15.432434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066238, 30.418100, 15.408500>,  <39.827000, 30.405502, 15.394139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066238, 30.418100, 15.408500>,  <40.464970, 30.439096, 15.432434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066238, 30.418100, 15.408500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077009, 0.826067, 0.558286,
		0.020124, 0.561122, -0.827488,
		-0.996827, -0.052489, -0.059835,
		39.767189, 30.402353, 15.390549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102295, 31.096987, 15.067434>,  <40.464970, 30.439096, 15.432434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102295, 31.096987, 15.067434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877834, 30.898218, 15.332213>,  <39.743156, 30.778957, 15.491081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877834, 30.898218, 15.332213>,  <40.102295, 31.096987, 15.067434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877834, 30.898218, 15.332213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118331, 0.839681, 0.530032,
		-0.819210, 0.219100, -0.529991,
		-0.561153, -0.496922, 0.661948,
		39.709488, 30.749142, 15.530798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565395, 31.554829, 15.271357>,  <40.102295, 31.096987, 15.067434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565395, 31.554829, 15.271357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558163, 31.277431, 15.559451>,  <39.553825, 31.110992, 15.732307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558163, 31.277431, 15.559451>,  <39.565395, 31.554829, 15.271357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558163, 31.277431, 15.559451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282525, 0.694539, 0.661661,
		-0.959090, -0.191523, -0.208485,
		-0.018078, -0.693494, 0.720235,
		39.552738, 31.069384, 15.775521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182533, 31.884949, 15.722436>,  <39.565395, 31.554829, 15.271357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182533, 31.884949, 15.722436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327339, 31.582098, 15.939951>,  <39.414223, 31.400389, 16.070459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327339, 31.582098, 15.939951>,  <39.182533, 31.884949, 15.722436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327339, 31.582098, 15.939951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164266, 0.522411, 0.836722,
		-0.917584, -0.392234, 0.064752,
		0.362018, -0.757125, 0.543787,
		39.435944, 31.354959, 16.103086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693069, 31.644081, 16.289795>,  <39.182533, 31.884949, 15.722436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693069, 31.644081, 16.289795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067490, 31.545116, 16.389866>,  <39.292141, 31.485737, 16.449909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067490, 31.545116, 16.389866>,  <38.693069, 31.644081, 16.289795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067490, 31.545116, 16.389866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172265, 0.297736, 0.938977,
		-0.306801, -0.922031, 0.236077,
		0.936055, -0.247411, 0.250179,
		39.348305, 31.470894, 16.464920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594006, 31.196260, 16.896263>,  <38.693069, 31.644081, 16.289795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594006, 31.196260, 16.896263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976093, 31.313448, 16.912851>,  <39.205345, 31.383760, 16.922804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976093, 31.313448, 16.912851>,  <38.594006, 31.196260, 16.896263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976093, 31.313448, 16.912851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041886, -0.004860, 0.999110,
		0.292909, -0.956110, 0.007629,
		0.955222, 0.292968, 0.041471,
		39.262661, 31.401339, 16.925293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927116, 30.918682, 17.503500>,  <38.594006, 31.196260, 16.896263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927116, 30.918682, 17.503500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200726, 31.197392, 17.417126>,  <39.364891, 31.364616, 17.365301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200726, 31.197392, 17.417126>,  <38.927116, 30.918682, 17.503500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200726, 31.197392, 17.417126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100846, 0.202853, 0.974002,
		0.722461, -0.688011, 0.068489,
		0.684018, 0.696772, -0.215936,
		39.405930, 31.406424, 17.352345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515358, 30.767887, 17.875393>,  <38.927116, 30.918682, 17.503500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515358, 30.767887, 17.875393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516190, 31.160444, 17.798595>,  <39.516689, 31.395979, 17.752518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516190, 31.160444, 17.798595>,  <39.515358, 30.767887, 17.875393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516190, 31.160444, 17.798595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097761, 0.190873, 0.976734,
		0.995208, -0.020801, -0.095545,
		0.002081, 0.981394, -0.191992,
		39.516815, 31.454863, 17.740997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063366, 31.139938, 18.240261>,  <39.515358, 30.767887, 17.875393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063366, 31.139938, 18.240261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792789, 31.426918, 18.173700>,  <39.630444, 31.599106, 18.133764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792789, 31.426918, 18.173700>,  <40.063366, 31.139938, 18.240261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792789, 31.426918, 18.173700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107642, 0.319820, 0.941344,
		0.728586, 0.618854, -0.293568,
		-0.676443, 0.717450, -0.166402,
		39.589855, 31.642153, 18.123779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315475, 31.752964, 18.579304>,  <40.063366, 31.139938, 18.240261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315475, 31.752964, 18.579304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934479, 31.856133, 18.514502>,  <39.705883, 31.918034, 18.475620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934479, 31.856133, 18.514502>,  <40.315475, 31.752964, 18.579304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934479, 31.856133, 18.514502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021270, 0.474266, 0.880124,
		0.303836, 0.841753, -0.446247,
		-0.952487, 0.257921, -0.162003,
		39.648731, 31.933510, 18.465900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410515, 32.228867, 19.053757>,  <40.315475, 31.752964, 18.579304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410515, 32.228867, 19.053757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020565, 32.239876, 18.965330>,  <39.786594, 32.246479, 18.912275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020565, 32.239876, 18.965330>,  <40.410515, 32.228867, 19.053757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020565, 32.239876, 18.965330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161069, 0.598461, 0.784793,
		0.153896, 0.800679, -0.578990,
		-0.974871, 0.027519, -0.221065,
		39.728104, 32.248131, 18.899010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228775, 32.920837, 18.931383>,  <40.410515, 32.228867, 19.053757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228775, 32.920837, 18.931383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904266, 32.716599, 19.045309>,  <39.709560, 32.594055, 19.113665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904266, 32.716599, 19.045309>,  <40.228775, 32.920837, 18.931383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904266, 32.716599, 19.045309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073172, 0.571983, 0.816995,
		-0.580069, 0.641966, -0.501397,
		-0.811274, -0.510602, 0.284816,
		39.660885, 32.563419, 19.130754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638958, 33.414303, 19.040501>,  <40.228775, 32.920837, 18.931383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638958, 33.414303, 19.040501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500462, 33.092995, 19.234354>,  <39.417366, 32.900208, 19.350666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500462, 33.092995, 19.234354>,  <39.638958, 33.414303, 19.040501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500462, 33.092995, 19.234354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318459, 0.586548, 0.744678,
		-0.882441, 0.103501, -0.458895,
		-0.346239, -0.803274, 0.484633,
		39.396591, 32.852013, 19.379744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986076, 33.535881, 19.110155>,  <39.638958, 33.414303, 19.040501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986076, 33.535881, 19.110155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097889, 33.282185, 19.398489>,  <39.164974, 33.129967, 19.571489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097889, 33.282185, 19.398489>,  <38.986076, 33.535881, 19.110155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097889, 33.282185, 19.398489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515626, 0.534150, 0.669935,
		-0.809934, -0.558946, -0.177722,
		0.279528, -0.634242, 0.720834,
		39.181747, 33.091911, 19.614738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428513, 33.458340, 19.547140>,  <38.986076, 33.535881, 19.110155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428513, 33.458340, 19.547140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694302, 33.292580, 19.795897>,  <38.853775, 33.193123, 19.945150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694302, 33.292580, 19.795897>,  <38.428513, 33.458340, 19.547140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694302, 33.292580, 19.795897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539608, 0.309666, 0.782899,
		-0.517010, -0.855794, -0.017847,
		0.664473, -0.414397, 0.621893,
		38.893642, 33.168262, 19.982464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064266, 33.125607, 20.125744>,  <38.428513, 33.458340, 19.547140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064266, 33.125607, 20.125744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429028, 33.189346, 20.277027>,  <38.647884, 33.227589, 20.367798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429028, 33.189346, 20.277027>,  <38.064266, 33.125607, 20.125744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429028, 33.189346, 20.277027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400909, 0.148756, 0.903960,
		0.087778, -0.975951, 0.199533,
		0.911903, 0.159343, 0.378210,
		38.702599, 33.237152, 20.390490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980278, 32.903797, 20.830908>,  <38.064266, 33.125607, 20.125744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980278, 32.903797, 20.830908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336025, 33.086613, 20.835629>,  <38.549473, 33.196301, 20.838461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336025, 33.086613, 20.835629>,  <37.980278, 32.903797, 20.830908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336025, 33.086613, 20.835629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206312, 0.378166, 0.902455,
		0.407995, -0.805050, 0.430622,
		0.889368, 0.457040, 0.011801,
		38.602837, 33.223724, 20.839170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283115, 32.862129, 21.591280>,  <37.980278, 32.903797, 20.830908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283115, 32.862129, 21.591280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425274, 33.178921, 21.392700>,  <38.510567, 33.368996, 21.273552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425274, 33.178921, 21.392700>,  <38.283115, 32.862129, 21.591280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425274, 33.178921, 21.392700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354168, 0.605616, 0.712597,
		0.865020, -0.077427, 0.495727,
		0.355394, 0.791981, -0.496448,
		38.531891, 33.416515, 21.243765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600277, 33.193916, 22.148472>,  <38.283115, 32.862129, 21.591280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600277, 33.193916, 22.148472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545383, 33.460995, 21.855803>,  <38.512447, 33.621243, 21.680201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545383, 33.460995, 21.855803>,  <38.600277, 33.193916, 22.148472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545383, 33.460995, 21.855803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443779, 0.618940, 0.648053,
		0.885567, 0.413634, 0.211373,
		-0.137230, 0.667697, -0.731675,
		38.504215, 33.661304, 21.636299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935070, 33.911842, 22.326517>,  <38.600277, 33.193916, 22.148472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935070, 33.911842, 22.326517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664356, 34.003109, 22.046545>,  <38.501926, 34.057869, 21.878563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664356, 34.003109, 22.046545>,  <38.935070, 33.911842, 22.326517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664356, 34.003109, 22.046545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327627, 0.758066, 0.563912,
		0.659258, 0.610964, -0.438295,
		-0.676787, 0.228166, -0.699929,
		38.461319, 34.071560, 21.836567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979645, 34.685162, 22.330193>,  <38.935070, 33.911842, 22.326517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979645, 34.685162, 22.330193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635017, 34.566952, 22.165092>,  <38.428242, 34.496025, 22.066032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635017, 34.566952, 22.165092>,  <38.979645, 34.685162, 22.330193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635017, 34.566952, 22.165092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466760, 0.780841, 0.415237,
		0.199579, 0.550410, -0.810689,
		-0.861570, -0.295525, -0.412749,
		38.376545, 34.478294, 22.041267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629124, 35.352318, 22.105145>,  <38.979645, 34.685162, 22.330193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629124, 35.352318, 22.105145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343861, 35.073818, 22.137772>,  <38.172703, 34.906719, 22.157349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343861, 35.073818, 22.137772>,  <38.629124, 35.352318, 22.105145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343861, 35.073818, 22.137772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572577, 0.645674, 0.505233,
		-0.404433, 0.313604, -0.859119,
		-0.713155, -0.696245, 0.081570,
		38.129913, 34.864944, 22.162243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000771, 35.706936, 21.953938>,  <38.629124, 35.352318, 22.105145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000771, 35.706936, 21.953938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901699, 35.390606, 22.177811>,  <37.842255, 35.200809, 22.312136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901699, 35.390606, 22.177811>,  <38.000771, 35.706936, 21.953938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901699, 35.390606, 22.177811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708697, 0.541784, 0.451905,
		-0.660607, -0.284718, -0.694647,
		-0.247683, -0.790826, 0.559685,
		37.827393, 35.153358, 22.345716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299778, 35.860081, 21.914253>,  <38.000771, 35.706936, 21.953938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299778, 35.860081, 21.914253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396004, 35.591408, 22.194530>,  <37.453739, 35.430206, 22.362698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396004, 35.591408, 22.194530>,  <37.299778, 35.860081, 21.914253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396004, 35.591408, 22.194530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835566, 0.224041, 0.501633,
		-0.493921, -0.706152, -0.507337,
		0.240565, -0.671681, 0.700695,
		37.468174, 35.389904, 22.404739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585945, 35.488491, 22.019897>,  <37.299778, 35.860081, 21.914253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585945, 35.488491, 22.019897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834415, 35.431313, 22.328108>,  <36.983498, 35.397007, 22.513035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834415, 35.431313, 22.328108>,  <36.585945, 35.488491, 22.019897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834415, 35.431313, 22.328108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687811, 0.371773, 0.623459,
		-0.375583, -0.917252, 0.132614,
		0.621171, -0.142947, 0.770527,
		37.020767, 35.388428, 22.559265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213352, 35.229237, 22.592161>,  <36.585945, 35.488491, 22.019897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213352, 35.229237, 22.592161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541386, 35.368019, 22.774189>,  <36.738205, 35.451290, 22.883406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541386, 35.368019, 22.774189>,  <36.213352, 35.229237, 22.592161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541386, 35.368019, 22.774189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564950, 0.364268, 0.740365,
		0.091109, -0.864250, 0.494744,
		0.820080, 0.346959, 0.455070,
		36.787411, 35.472107, 22.910709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018829, 35.206848, 23.379923>,  <36.213352, 35.229237, 22.592161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018829, 35.206848, 23.379923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340355, 35.442883, 23.349762>,  <36.533272, 35.584503, 23.331665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340355, 35.442883, 23.349762>,  <36.018829, 35.206848, 23.379923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340355, 35.442883, 23.349762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263924, 0.467338, 0.843765,
		0.533133, -0.658327, 0.531389,
		0.803812, 0.590085, -0.075405,
		36.581501, 35.619907, 23.327141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290565, 35.126591, 24.012144>,  <36.018829, 35.206848, 23.379923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290565, 35.126591, 24.012144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421471, 35.464867, 23.843519>,  <36.500011, 35.667831, 23.742344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421471, 35.464867, 23.843519>,  <36.290565, 35.126591, 24.012144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421471, 35.464867, 23.843519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250716, 0.507849, 0.824154,
		0.911067, -0.164020, 0.378226,
		0.327260, 0.845687, -0.421562,
		36.519650, 35.718575, 23.717051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803501, 35.403233, 24.438427>,  <36.290565, 35.126591, 24.012144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803501, 35.403233, 24.438427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690765, 35.726532, 24.231623>,  <36.623123, 35.920513, 24.107540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690765, 35.726532, 24.231623>,  <36.803501, 35.403233, 24.438427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690765, 35.726532, 24.231623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225939, 0.467794, 0.854471,
		0.932481, 0.357634, 0.050774,
		-0.281836, 0.808249, -0.517012,
		36.606216, 35.969006, 24.076519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233524, 35.810871, 24.701706>,  <36.803501, 35.403233, 24.438427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233524, 35.810871, 24.701706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932640, 36.014099, 24.533876>,  <36.752110, 36.136036, 24.433178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932640, 36.014099, 24.533876>,  <37.233524, 35.810871, 24.701706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932640, 36.014099, 24.533876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076484, 0.565132, 0.821448,
		0.654469, 0.649992, -0.386239,
		-0.752210, 0.508071, -0.419575,
		36.706978, 36.166519, 24.408005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490520, 36.552227, 24.617693>,  <37.233524, 35.810871, 24.701706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490520, 36.552227, 24.617693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093578, 36.509991, 24.643251>,  <36.855412, 36.484650, 24.658587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093578, 36.509991, 24.643251>,  <37.490520, 36.552227, 24.617693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093578, 36.509991, 24.643251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033761, 0.265739, 0.963454,
		-0.118713, 0.958245, -0.260143,
		-0.992355, -0.105592, 0.063898,
		36.795872, 36.478313, 24.662420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331955, 37.122719, 25.152700>,  <37.490520, 36.552227, 24.617693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331955, 37.122719, 25.152700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980026, 36.937668, 25.109072>,  <36.768871, 36.826637, 25.082895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980026, 36.937668, 25.109072>,  <37.331955, 37.122719, 25.152700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980026, 36.937668, 25.109072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198432, 0.148988, 0.968725,
		-0.431906, 0.873945, -0.222882,
		-0.879819, -0.462625, -0.109070,
		36.716080, 36.798882, 25.076351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752510, 37.672310, 25.367224>,  <37.331955, 37.122719, 25.152700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752510, 37.672310, 25.367224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578300, 37.314041, 25.403206>,  <36.473774, 37.099079, 25.424795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578300, 37.314041, 25.403206>,  <36.752510, 37.672310, 25.367224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578300, 37.314041, 25.403206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369557, 0.269025, 0.889412,
		-0.820821, 0.354117, -0.448168,
		-0.435524, -0.895671, 0.089955,
		36.447643, 37.045341, 25.430193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158779, 37.794968, 25.605860>,  <36.752510, 37.672310, 25.367224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158779, 37.794968, 25.605860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195271, 37.405766, 25.690659>,  <36.217163, 37.172245, 25.741539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195271, 37.405766, 25.690659>,  <36.158779, 37.794968, 25.605860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195271, 37.405766, 25.690659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265057, 0.181483, 0.947000,
		-0.959908, -0.142583, -0.241345,
		0.091226, -0.973003, 0.211999,
		36.222637, 37.113865, 25.754259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562572, 37.649277, 26.034988>,  <36.158779, 37.794968, 25.605860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562572, 37.649277, 26.034988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806168, 37.340088, 26.106161>,  <35.952324, 37.154575, 26.148865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806168, 37.340088, 26.106161>,  <35.562572, 37.649277, 26.034988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806168, 37.340088, 26.106161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196867, 0.070013, 0.977927,
		-0.768364, -0.630571, -0.109535,
		0.608983, -0.772968, 0.177933,
		35.988861, 37.108196, 26.159542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195702, 37.192993, 26.350990>,  <35.562572, 37.649277, 26.034988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195702, 37.192993, 26.350990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574368, 37.119007, 26.456530>,  <35.801567, 37.074615, 26.519854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574368, 37.119007, 26.456530>,  <35.195702, 37.192993, 26.350990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574368, 37.119007, 26.456530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258131, 0.054782, 0.964556,
		-0.192860, -0.981217, 0.004116,
		0.946664, -0.184962, 0.263848,
		35.858368, 37.063519, 26.535685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189854, 36.738579, 27.013100>,  <35.195702, 37.192993, 26.350990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189854, 36.738579, 27.013100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560341, 36.888672, 26.998610>,  <35.782635, 36.978729, 26.989916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560341, 36.888672, 26.998610>,  <35.189854, 36.738579, 27.013100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560341, 36.888672, 26.998610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038584, 0.189947, 0.981036,
		0.375003, -0.907258, 0.190411,
		0.926221, 0.375238, -0.036225,
		35.838207, 37.001244, 26.987741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487736, 36.416592, 27.533424>,  <35.189854, 36.738579, 27.013100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487736, 36.416592, 27.533424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741978, 36.720512, 27.478724>,  <35.894524, 36.902866, 27.445902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741978, 36.720512, 27.478724>,  <35.487736, 36.416592, 27.533424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741978, 36.720512, 27.478724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047316, 0.138466, 0.989236,
		0.770562, -0.635235, 0.052059,
		0.635606, 0.759805, -0.136754,
		35.932659, 36.948452, 27.437698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155270, 36.388474, 28.036068>,  <35.487736, 36.416592, 27.533424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155270, 36.388474, 28.036068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084068, 36.767193, 27.928816>,  <36.041348, 36.994423, 27.864466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084068, 36.767193, 27.928816>,  <36.155270, 36.388474, 28.036068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084068, 36.767193, 27.928816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020513, 0.275992, 0.960941,
		0.983816, 0.165549, -0.068548,
		-0.178001, 0.946796, -0.268129,
		36.030666, 37.051231, 27.848377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583996, 36.750229, 28.460314>,  <36.155270, 36.388474, 28.036068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583996, 36.750229, 28.460314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355560, 37.052341, 28.331686>,  <36.218498, 37.233608, 28.254509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355560, 37.052341, 28.331686>,  <36.583996, 36.750229, 28.460314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355560, 37.052341, 28.331686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128647, 0.304548, 0.943769,
		0.810743, 0.580348, -0.076760,
		-0.571091, 0.755279, -0.321571,
		36.184235, 37.278927, 28.235214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885609, 37.383373, 28.709669>,  <36.583996, 36.750229, 28.460314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885609, 37.383373, 28.709669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494320, 37.444454, 28.653433>,  <36.259548, 37.481102, 28.619692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494320, 37.444454, 28.653433>,  <36.885609, 37.383373, 28.709669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494320, 37.444454, 28.653433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078683, 0.353981, 0.931937,
		0.192071, 0.922703, -0.334257,
		-0.978222, 0.152698, -0.140590,
		36.200855, 37.490265, 28.611256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428116, 37.336617, 29.330612>,  <36.885609, 37.383373, 28.709669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428116, 37.336617, 29.330612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741650, 37.160332, 29.505600>,  <37.929768, 37.054562, 29.610594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741650, 37.160332, 29.505600>,  <37.428116, 37.336617, 29.330612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741650, 37.160332, 29.505600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526550, 0.098261, -0.844446,
		0.329172, 0.892254, 0.309078,
		0.783831, -0.440713, 0.437472,
		37.976799, 37.028118, 29.636841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008278, 37.814751, 29.318073>,  <37.428116, 37.336617, 29.330612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008278, 37.814751, 29.318073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145714, 37.439686, 29.338989>,  <38.228176, 37.214645, 29.351540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145714, 37.439686, 29.338989>,  <38.008278, 37.814751, 29.318073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145714, 37.439686, 29.338989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577183, 0.166916, -0.799374,
		0.740816, 0.304835, 0.598554,
		0.343585, -0.937665, 0.052292,
		38.248791, 37.158386, 29.354677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647945, 37.879856, 29.078074>,  <38.008278, 37.814751, 29.318073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647945, 37.879856, 29.078074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614326, 37.481461, 29.065756>,  <38.594154, 37.242424, 29.058365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614326, 37.481461, 29.065756>,  <38.647945, 37.879856, 29.078074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614326, 37.481461, 29.065756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654348, -0.031858, -0.755523,
		0.751508, -0.083651, 0.654399,
		-0.084048, -0.995986, -0.030795,
		38.589111, 37.182663, 29.056517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358753, 37.619156, 29.152731>,  <38.647945, 37.879856, 29.078074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358753, 37.619156, 29.152731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131516, 37.333279, 28.989525>,  <38.995171, 37.161751, 28.891602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131516, 37.333279, 28.989525>,  <39.358753, 37.619156, 29.152731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131516, 37.333279, 28.989525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691686, -0.146023, -0.707282,
		0.445912, -0.684023, 0.577300,
		-0.568097, -0.714695, -0.408016,
		38.961086, 37.118870, 28.867121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823284, 37.050022, 28.976028>,  <39.358753, 37.619156, 29.152731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823284, 37.050022, 28.976028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495468, 36.982746, 28.756916>,  <39.298779, 36.942379, 28.625448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495468, 36.982746, 28.756916>,  <39.823284, 37.050022, 28.976028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495468, 36.982746, 28.756916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570567, -0.327946, -0.752931,
		-0.053004, -0.929603, 0.364731,
		-0.819539, -0.168195, -0.547783,
		39.249607, 36.932289, 28.592581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864250, 36.312813, 28.649914>,  <39.823284, 37.050022, 28.976028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864250, 36.312813, 28.649914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595970, 36.524460, 28.441992>,  <39.435001, 36.651447, 28.317238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595970, 36.524460, 28.441992>,  <39.864250, 36.312813, 28.649914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595970, 36.524460, 28.441992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475571, -0.231036, -0.848796,
		-0.569208, -0.816490, -0.096678,
		-0.670697, 0.529119, -0.519806,
		39.394760, 36.683197, 28.286049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662712, 35.835873, 28.208252>,  <39.864250, 36.312813, 28.649914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662712, 35.835873, 28.208252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595039, 36.196854, 28.049784>,  <39.554436, 36.413445, 27.954702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595039, 36.196854, 28.049784>,  <39.662712, 35.835873, 28.208252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595039, 36.196854, 28.049784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429485, -0.294288, -0.853778,
		-0.887085, -0.314595, -0.337802,
		-0.169183, 0.902454, -0.396173,
		39.544285, 36.467590, 27.930931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388954, 35.778759, 27.586277>,  <39.662712, 35.835873, 28.208252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388954, 35.778759, 27.586277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532448, 36.151649, 27.567226>,  <39.618546, 36.375381, 27.555796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532448, 36.151649, 27.567226>,  <39.388954, 35.778759, 27.586277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532448, 36.151649, 27.567226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369035, -0.188507, -0.910098,
		-0.857392, 0.308908, -0.411648,
		0.358735, 0.932224, -0.047627,
		39.640068, 36.431316, 27.552938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118713, 35.929878, 26.984739>,  <39.388954, 35.778759, 27.586277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118713, 35.929878, 26.984739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414288, 36.188328, 27.061159>,  <39.591633, 36.343399, 27.107012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414288, 36.188328, 27.061159>,  <39.118713, 35.929878, 26.984739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414288, 36.188328, 27.061159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274021, -0.029143, -0.961282,
		-0.615541, 0.762675, -0.198587,
		0.738933, 0.646125, 0.191051,
		39.635967, 36.382164, 27.118475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082291, 36.293076, 26.415325>,  <39.118713, 35.929878, 26.984739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082291, 36.293076, 26.415325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442123, 36.333710, 26.585232>,  <39.658024, 36.358089, 26.687176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442123, 36.333710, 26.585232>,  <39.082291, 36.293076, 26.415325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442123, 36.333710, 26.585232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436693, -0.224134, -0.871242,
		0.006698, 0.969249, -0.245990,
		0.899585, 0.101587, 0.424766,
		39.711998, 36.364185, 26.712662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516117, 36.586540, 25.886421>,  <39.082291, 36.293076, 26.415325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516117, 36.586540, 25.886421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815079, 36.449978, 26.114397>,  <39.994457, 36.368042, 26.251183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815079, 36.449978, 26.114397>,  <39.516117, 36.586540, 25.886421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815079, 36.449978, 26.114397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468829, -0.336797, -0.816558,
		0.470728, 0.877504, -0.091664,
		0.747405, -0.341402, 0.569939,
		40.039299, 36.347557, 26.285379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153042, 36.873226, 25.608919>,  <39.516117, 36.586540, 25.886421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153042, 36.873226, 25.608919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246201, 36.539497, 25.808788>,  <40.302094, 36.339260, 25.928709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246201, 36.539497, 25.808788>,  <40.153042, 36.873226, 25.608919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246201, 36.539497, 25.808788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500735, -0.337580, -0.797059,
		0.833682, 0.435832, 0.339153,
		0.232892, -0.834320, 0.499671,
		40.316067, 36.289200, 25.958689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890327, 36.863735, 25.474476>,  <40.153042, 36.873226, 25.608919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890327, 36.863735, 25.474476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750221, 36.501842, 25.571455>,  <40.666157, 36.284706, 25.629642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750221, 36.501842, 25.571455>,  <40.890327, 36.863735, 25.474476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750221, 36.501842, 25.571455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513937, -0.402037, -0.757783,
		0.783061, -0.140821, 0.605793,
		-0.350263, -0.904730, 0.242446,
		40.645142, 36.230423, 25.644188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392105, 36.464252, 25.156418>,  <40.890327, 36.863735, 25.474476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392105, 36.464252, 25.156418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115891, 36.189457, 25.246931>,  <40.950161, 36.024578, 25.301239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115891, 36.189457, 25.246931>,  <41.392105, 36.464252, 25.156418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115891, 36.189457, 25.246931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304814, -0.560108, -0.770303,
		0.655935, -0.462947, 0.596179,
		-0.690534, -0.686993, 0.226282,
		40.908730, 35.983360, 25.314816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753468, 35.794117, 25.098270>,  <41.392105, 36.464252, 25.156418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753468, 35.794117, 25.098270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366833, 35.698040, 25.062439>,  <41.134853, 35.640392, 25.040939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366833, 35.698040, 25.062439>,  <41.753468, 35.794117, 25.098270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366833, 35.698040, 25.062439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232216, -0.672354, -0.702862,
		0.108595, -0.700176, 0.705663,
		-0.966583, -0.240194, -0.089578,
		41.076859, 35.625980, 25.035566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739666, 35.073441, 24.823606>,  <41.753468, 35.794117, 25.098270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739666, 35.073441, 24.823606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368610, 35.205555, 24.753866>,  <41.145977, 35.284824, 24.712023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368610, 35.205555, 24.753866>,  <41.739666, 35.073441, 24.823606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368610, 35.205555, 24.753866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018038, -0.426657, -0.904233,
		-0.373044, -0.841946, 0.389826,
		-0.927638, 0.330287, -0.174349,
		41.090321, 35.304642, 24.701561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261383, 34.507175, 24.944019>,  <41.739666, 35.073441, 24.823606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261383, 34.507175, 24.944019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101612, 34.778378, 24.697195>,  <41.005749, 34.941101, 24.549101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101612, 34.778378, 24.697195>,  <41.261383, 34.507175, 24.944019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101612, 34.778378, 24.697195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066476, -0.692733, -0.718124,
		-0.914351, -0.245819, 0.321768,
		-0.399428, 0.678007, -0.617061,
		40.981785, 34.981781, 24.512077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710388, 34.216961, 24.616901>,  <41.261383, 34.507175, 24.944019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710388, 34.216961, 24.616901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783901, 34.522568, 24.369516>,  <40.828011, 34.705933, 24.221087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783901, 34.522568, 24.369516>,  <40.710388, 34.216961, 24.616901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783901, 34.522568, 24.369516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094705, -0.612489, -0.784786,
		-0.978394, 0.202803, -0.040210,
		0.183786, 0.764021, -0.618461,
		40.839035, 34.751774, 24.183977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186337, 34.096233, 24.059416>,  <40.710388, 34.216961, 24.616901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186337, 34.096233, 24.059416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489803, 34.322098, 23.929438>,  <40.671883, 34.457615, 23.851450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489803, 34.322098, 23.929438>,  <40.186337, 34.096233, 24.059416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489803, 34.322098, 23.929438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046292, -0.544242, -0.837650,
		-0.649836, 0.620452, -0.439036,
		0.758663, 0.564659, -0.324947,
		40.717403, 34.491497, 23.831953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951637, 34.185944, 23.391607>,  <40.186337, 34.096233, 24.059416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951637, 34.185944, 23.391607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342060, 34.272579, 23.399586>,  <40.576313, 34.324558, 23.404373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342060, 34.272579, 23.399586>,  <39.951637, 34.185944, 23.391607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342060, 34.272579, 23.399586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133458, -0.523975, -0.841213,
		-0.171744, 0.823736, -0.540336,
		0.976060, 0.216585, 0.019944,
		40.634876, 34.337555, 23.405569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108852, 34.367989, 22.662767>,  <39.951637, 34.185944, 23.391607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108852, 34.367989, 22.662767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466171, 34.285744, 22.822639>,  <40.680561, 34.236397, 22.918564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466171, 34.285744, 22.822639>,  <40.108852, 34.367989, 22.662767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466171, 34.285744, 22.822639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219562, -0.576298, -0.787193,
		0.392190, 0.790952, -0.469662,
		0.893297, -0.205609, 0.399681,
		40.734161, 34.224060, 22.942543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570019, 34.445782, 22.170799>,  <40.108852, 34.367989, 22.662767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570019, 34.445782, 22.170799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753952, 34.199581, 22.426834>,  <40.864311, 34.051861, 22.580456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753952, 34.199581, 22.426834>,  <40.570019, 34.445782, 22.170799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753952, 34.199581, 22.426834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291488, -0.576253, -0.763523,
		0.838802, 0.537670, -0.085568,
		0.459832, -0.615503, 0.640087,
		40.891903, 34.014931, 22.618860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246296, 34.348835, 21.836237>,  <40.570019, 34.445782, 22.170799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246296, 34.348835, 21.836237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185654, 34.056255, 22.102167>,  <41.149269, 33.880707, 22.261726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185654, 34.056255, 22.102167>,  <41.246296, 34.348835, 21.836237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185654, 34.056255, 22.102167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331560, -0.671266, -0.662925,
		0.931173, 0.119924, 0.344290,
		-0.151609, -0.731451, 0.664827,
		41.140171, 33.836819, 22.301615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866341, 33.982471, 21.790949>,  <41.246296, 34.348835, 21.836237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866341, 33.982471, 21.790949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582603, 33.740376, 21.935457>,  <41.412361, 33.595116, 22.022161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582603, 33.740376, 21.935457>,  <41.866341, 33.982471, 21.790949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582603, 33.740376, 21.935457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252506, -0.696716, -0.671436,
		0.658084, -0.385055, 0.647038,
		-0.709342, -0.605243, 0.361269,
		41.369801, 33.558804, 22.043839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102245, 33.367012, 21.582420>,  <41.866341, 33.982471, 21.790949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102245, 33.367012, 21.582420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745911, 33.260624, 21.729755>,  <41.532112, 33.196793, 21.818157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745911, 33.260624, 21.729755>,  <42.102245, 33.367012, 21.582420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745911, 33.260624, 21.729755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082617, -0.892052, -0.444317,
		0.446752, -0.365382, 0.816645,
		-0.890835, -0.265968, 0.368339,
		41.478661, 33.180832, 21.840258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161602, 32.743580, 21.889017>,  <42.102245, 33.367012, 21.582420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161602, 32.743580, 21.889017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776112, 32.785397, 21.790791>,  <41.544819, 32.810486, 21.731855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776112, 32.785397, 21.790791>,  <42.161602, 32.743580, 21.889017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776112, 32.785397, 21.790791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002338, -0.916753, -0.399448,
		-0.266880, -0.385533, 0.883255,
		-0.963727, 0.104539, -0.245564,
		41.486992, 32.816757, 21.717121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730743, 32.066273, 22.038628>,  <42.161602, 32.743580, 21.889017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730743, 32.066273, 22.038628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495834, 32.260254, 21.779421>,  <41.354889, 32.376644, 21.623896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495834, 32.260254, 21.779421>,  <41.730743, 32.066273, 22.038628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495834, 32.260254, 21.779421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206948, -0.863984, -0.459025,
		-0.782484, -0.135467, 0.607756,
		-0.587274, 0.484954, -0.648019,
		41.319653, 32.405739, 21.585014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228039, 31.663181, 21.962439>,  <41.730743, 32.066273, 22.038628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228039, 31.663181, 21.962439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208817, 31.875967, 21.624277>,  <41.197281, 32.003639, 21.421381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208817, 31.875967, 21.624277>,  <41.228039, 31.663181, 21.962439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208817, 31.875967, 21.624277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237813, -0.828136, -0.507578,
		-0.970121, 0.176654, 0.166307,
		-0.048059, 0.531962, -0.845403,
		41.194397, 32.035557, 21.370657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864384, 31.267872, 21.467339>,  <41.228039, 31.663181, 21.962439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864384, 31.267872, 21.467339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025112, 31.542210, 21.224634>,  <41.121548, 31.706812, 21.079012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025112, 31.542210, 21.224634>,  <40.864384, 31.267872, 21.467339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025112, 31.542210, 21.224634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143229, -0.607381, -0.781392,
		-0.904448, 0.400884, -0.145825,
		0.401819, 0.685843, -0.606763,
		41.145657, 31.747963, 21.042604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424522, 31.326841, 20.901737>,  <40.864384, 31.267872, 21.467339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424522, 31.326841, 20.901737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798126, 31.441608, 20.816591>,  <41.022289, 31.510469, 20.765505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798126, 31.441608, 20.816591>,  <40.424522, 31.326841, 20.901737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798126, 31.441608, 20.816591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035410, -0.667240, -0.744001,
		-0.355499, 0.687363, -0.633366,
		0.934006, 0.286919, -0.212863,
		41.078327, 31.527683, 20.752731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403244, 31.403189, 20.143332>,  <40.424522, 31.326841, 20.901737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403244, 31.403189, 20.143332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779747, 31.369247, 20.274073>,  <41.005650, 31.348883, 20.352518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779747, 31.369247, 20.274073>,  <40.403244, 31.403189, 20.143332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779747, 31.369247, 20.274073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149032, -0.764171, -0.627560,
		0.303024, 0.639408, -0.706636,
		0.941258, -0.084854, 0.326854,
		41.062126, 31.343792, 20.372129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740253, 31.242151, 19.541540>,  <40.403244, 31.403189, 20.143332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740253, 31.242151, 19.541540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019707, 31.155951, 19.814442>,  <41.187378, 31.104231, 19.978182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019707, 31.155951, 19.814442>,  <40.740253, 31.242151, 19.541540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019707, 31.155951, 19.814442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477941, -0.569035, -0.669158,
		0.532429, 0.793573, -0.294552,
		0.698636, -0.215500, 0.682252,
		41.229298, 31.091301, 20.019117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389832, 31.362434, 19.258766>,  <40.740253, 31.242151, 19.541540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389832, 31.362434, 19.258766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464626, 31.094982, 19.546648>,  <41.509502, 30.934511, 19.719378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464626, 31.094982, 19.546648>,  <41.389832, 31.362434, 19.258766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464626, 31.094982, 19.546648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326917, -0.648513, -0.687427,
		0.926371, 0.363821, 0.097325,
		0.186984, -0.668629, 0.719703,
		41.520721, 30.894394, 19.762558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010475, 31.159983, 19.120501>,  <41.389832, 31.362434, 19.258766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010475, 31.159983, 19.120501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867970, 30.870329, 19.356707>,  <41.782467, 30.696537, 19.498430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867970, 30.870329, 19.356707>,  <42.010475, 31.159983, 19.120501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867970, 30.870329, 19.356707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498178, -0.681870, -0.535604,
		0.790503, 0.103365, 0.603673,
		-0.356264, -0.724133, 0.590515,
		41.761089, 30.653090, 19.533861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543404, 30.664688, 19.116676>,  <42.010475, 31.159983, 19.120501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543404, 30.664688, 19.116676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242153, 30.451096, 19.270388>,  <42.061401, 30.322941, 19.362614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242153, 30.451096, 19.270388>,  <42.543404, 30.664688, 19.116676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242153, 30.451096, 19.270388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392312, -0.833422, -0.389228,
		0.528104, -0.142381, 0.837158,
		-0.753125, -0.533980, 0.384276,
		42.016216, 30.290901, 19.385670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841690, 30.007864, 19.380260>,  <42.543404, 30.664688, 19.116676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841690, 30.007864, 19.380260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448997, 29.939470, 19.346853>,  <42.213383, 29.898434, 19.326809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448997, 29.939470, 19.346853>,  <42.841690, 30.007864, 19.380260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448997, 29.939470, 19.346853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188187, -0.937453, -0.292862,
		-0.028217, -0.303227, 0.952501,
		-0.981728, -0.170985, -0.083516,
		42.154480, 29.888174, 19.321798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778759, 29.329027, 19.556543>,  <42.841690, 30.007864, 19.380260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778759, 29.329027, 19.556543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451538, 29.409641, 19.341068>,  <42.255207, 29.458010, 19.211784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451538, 29.409641, 19.341068>,  <42.778759, 29.329027, 19.556543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451538, 29.409641, 19.341068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078337, -0.888830, -0.451491,
		-0.569791, -0.411540, 0.711318,
		-0.818048, 0.201533, -0.538686,
		42.206123, 29.470100, 19.179462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354645, 28.743402, 19.553352>,  <42.778759, 29.329027, 19.556543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354645, 28.743402, 19.553352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256424, 28.962128, 19.233177>,  <42.197491, 29.093363, 19.041073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256424, 28.962128, 19.233177>,  <42.354645, 28.743402, 19.553352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256424, 28.962128, 19.233177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183515, -0.784565, -0.592267,
		-0.951854, -0.292325, 0.092304,
		-0.245552, 0.546813, -0.800437,
		42.182758, 29.126171, 18.993046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365097, 29.266680, 20.190567>,  <42.354645, 28.743402, 19.553352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365097, 29.266680, 20.190567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731266, 29.166855, 20.064249>,  <42.950966, 29.106960, 19.988459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731266, 29.166855, 20.064249>,  <42.365097, 29.266680, 20.190567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731266, 29.166855, 20.064249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401836, 0.521438, 0.752749,
		-0.023191, -0.815979, 0.577617,
		0.915418, -0.249564, -0.315797,
		43.005890, 29.091986, 19.969509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755981, 29.197798, 20.732233>,  <42.365097, 29.266680, 20.190567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755981, 29.197798, 20.732233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058197, 29.240942, 20.473768>,  <43.239529, 29.266829, 20.318689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058197, 29.240942, 20.473768>,  <42.755981, 29.197798, 20.732233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058197, 29.240942, 20.473768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482544, 0.575475, 0.660287,
		0.443067, -0.810676, 0.382749,
		0.755541, 0.107858, -0.646161,
		43.284859, 29.273300, 20.279921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400883, 28.995096, 21.076666>,  <42.755981, 29.197798, 20.732233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400883, 28.995096, 21.076666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501167, 29.232698, 20.770906>,  <43.561337, 29.375259, 20.587452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501167, 29.232698, 20.770906>,  <43.400883, 28.995096, 21.076666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501167, 29.232698, 20.770906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576924, 0.542394, 0.610711,
		0.777369, -0.594112, -0.206711,
		0.250712, 0.594004, -0.764397,
		43.576382, 29.410900, 20.541588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083256, 29.100683, 21.158243>,  <43.400883, 28.995096, 21.076666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083256, 29.100683, 21.158243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966064, 29.411114, 20.934864>,  <43.895748, 29.597372, 20.800837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966064, 29.411114, 20.934864>,  <44.083256, 29.100683, 21.158243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966064, 29.411114, 20.934864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604280, 0.602936, 0.520878,
		0.740951, -0.184852, -0.645617,
		-0.292980, 0.776079, -0.558448,
		43.878170, 29.643938, 20.767330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674290, 29.530138, 21.174236>,  <44.083256, 29.100683, 21.158243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674290, 29.530138, 21.174236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398129, 29.780630, 21.029366>,  <44.232430, 29.930925, 20.942442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398129, 29.780630, 21.029366>,  <44.674290, 29.530138, 21.174236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398129, 29.780630, 21.029366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317150, 0.711983, 0.626495,
		0.650195, 0.317671, -0.690167,
		-0.690407, 0.626231, -0.362179,
		44.191006, 29.968500, 20.920712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012691, 30.170959, 20.914207>,  <44.674290, 29.530138, 21.174236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012691, 30.170959, 20.914207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634392, 30.283476, 20.979237>,  <44.407410, 30.350986, 21.018253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634392, 30.283476, 20.979237>,  <45.012691, 30.170959, 20.914207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634392, 30.283476, 20.979237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324742, 0.833661, 0.446712,
		-0.009873, 0.475273, -0.879783,
		-0.945751, 0.281292, 0.162572,
		44.350666, 30.367863, 21.028008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101585, 30.897104, 20.941435>,  <45.012691, 30.170959, 20.914207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101585, 30.897104, 20.941435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747932, 30.849751, 21.122227>,  <44.535740, 30.821339, 21.230701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747932, 30.849751, 21.122227>,  <45.101585, 30.897104, 20.941435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747932, 30.849751, 21.122227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167944, 0.822192, 0.543870,
		-0.436000, 0.556764, -0.707049,
		-0.884137, -0.118383, 0.451981,
		44.482693, 30.814236, 21.257820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655956, 31.496311, 20.894670>,  <45.101585, 30.897104, 20.941435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655956, 31.496311, 20.894670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529041, 31.326044, 21.233643>,  <44.452892, 31.223885, 21.437025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529041, 31.326044, 21.233643>,  <44.655956, 31.496311, 20.894670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529041, 31.326044, 21.233643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088665, 0.876372, 0.473403,
		-0.944176, 0.225342, -0.240320,
		-0.317287, -0.425667, 0.847429,
		44.433857, 31.198343, 21.487871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209110, 32.045341, 21.181580>,  <44.655956, 31.496311, 20.894670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209110, 32.045341, 21.181580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308018, 31.788404, 21.471752>,  <44.367363, 31.634241, 21.645855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308018, 31.788404, 21.471752>,  <44.209110, 32.045341, 21.181580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308018, 31.788404, 21.471752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196662, 0.766367, 0.611560,
		-0.948779, -0.008556, 0.315826,
		0.247271, -0.642346, 0.725430,
		44.382198, 31.595701, 21.689381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761044, 32.216957, 21.749212>,  <44.209110, 32.045341, 21.181580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761044, 32.216957, 21.749212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072338, 32.006001, 21.885574>,  <44.259113, 31.879427, 21.967392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072338, 32.006001, 21.885574>,  <43.761044, 32.216957, 21.749212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072338, 32.006001, 21.885574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121356, 0.658932, 0.742349,
		-0.616137, -0.536350, 0.576804,
		0.778234, -0.527387, 0.340903,
		44.305809, 31.847784, 21.987844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632034, 32.120369, 22.495068>,  <43.761044, 32.216957, 21.749212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632034, 32.120369, 22.495068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022846, 32.035198, 22.491526>,  <44.257332, 31.984095, 22.489401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022846, 32.035198, 22.491526>,  <43.632034, 32.120369, 22.495068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022846, 32.035198, 22.491526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110614, 0.471154, 0.875088,
		-0.182161, -0.855964, 0.483883,
		0.977027, -0.212931, -0.008856,
		44.315956, 31.971319, 22.488869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755180, 31.894957, 23.104855>,  <43.632034, 32.120369, 22.495068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755180, 31.894957, 23.104855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131523, 31.993624, 23.011951>,  <44.357330, 32.052826, 22.956209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131523, 31.993624, 23.011951>,  <43.755180, 31.894957, 23.104855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131523, 31.993624, 23.011951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140029, 0.341120, 0.929532,
		0.308516, -0.907078, 0.286404,
		0.940856, 0.246670, -0.232258,
		44.413780, 32.067623, 22.942274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202225, 31.732237, 23.748798>,  <43.755180, 31.894957, 23.104855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202225, 31.732237, 23.748798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411152, 31.988302, 23.523455>,  <44.536507, 32.141941, 23.388248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411152, 31.988302, 23.523455>,  <44.202225, 31.732237, 23.748798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411152, 31.988302, 23.523455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028181, 0.673235, 0.738892,
		0.852285, -0.370061, 0.369683,
		0.522318, 0.640164, -0.563359,
		44.567848, 32.180351, 23.354446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683426, 32.047813, 24.187439>,  <44.202225, 31.732237, 23.748798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683426, 32.047813, 24.187439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662861, 32.309505, 23.885620>,  <44.650520, 32.466522, 23.704529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662861, 32.309505, 23.885620>,  <44.683426, 32.047813, 24.187439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662861, 32.309505, 23.885620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247510, 0.723627, 0.644285,
		0.967520, 0.219883, 0.124723,
		-0.051414, 0.654229, -0.754547,
		44.647438, 32.505775, 23.659256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101349, 32.604103, 24.370176>,  <44.683426, 32.047813, 24.187439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101349, 32.604103, 24.370176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876175, 32.756031, 24.076553>,  <44.741070, 32.847187, 23.900379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876175, 32.756031, 24.076553>,  <45.101349, 32.604103, 24.370176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876175, 32.756031, 24.076553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296243, 0.736416, 0.608220,
		0.771586, 0.559848, -0.302036,
		-0.562935, 0.379818, -0.734059,
		44.707294, 32.869976, 23.856335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206104, 33.332661, 24.387781>,  <45.101349, 32.604103, 24.370176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206104, 33.332661, 24.387781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860123, 33.249046, 24.205280>,  <44.652534, 33.198879, 24.095779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860123, 33.249046, 24.205280>,  <45.206104, 33.332661, 24.387781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860123, 33.249046, 24.205280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477993, 0.620155, 0.622038,
		0.152919, 0.756117, -0.636320,
		-0.864950, -0.209035, -0.456252,
		44.600639, 33.186337, 24.068405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852676, 33.898876, 24.456808>,  <45.206104, 33.332661, 24.387781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852676, 33.898876, 24.456808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544132, 33.678818, 24.328840>,  <44.359005, 33.546783, 24.252060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544132, 33.678818, 24.328840>,  <44.852676, 33.898876, 24.456808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544132, 33.678818, 24.328840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632328, 0.605762, 0.482923,
		-0.071883, 0.574800, -0.815131,
		-0.771359, -0.550144, -0.319918,
		44.312725, 33.513775, 24.232864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368504, 34.358566, 24.251806>,  <44.852676, 33.898876, 24.456808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368504, 34.358566, 24.251806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149788, 34.024960, 24.281305>,  <44.018559, 33.824795, 24.299006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149788, 34.024960, 24.281305>,  <44.368504, 34.358566, 24.251806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149788, 34.024960, 24.281305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697204, 0.502314, 0.511456,
		-0.463608, 0.228240, -0.856139,
		-0.546786, -0.834019, 0.073747,
		43.985752, 33.774754, 24.303429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747375, 34.618973, 24.143877>,  <44.368504, 34.358566, 24.251806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747375, 34.618973, 24.143877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712612, 34.269608, 24.335539>,  <43.691753, 34.059986, 24.450537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712612, 34.269608, 24.335539>,  <43.747375, 34.618973, 24.143877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712612, 34.269608, 24.335539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722556, 0.386382, 0.573256,
		-0.685828, -0.296397, -0.664672,
		-0.086906, -0.873417, 0.479155,
		43.686539, 34.007584, 24.479286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089539, 34.425838, 24.137787>,  <43.747375, 34.618973, 24.143877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089539, 34.425838, 24.137787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231686, 34.235687, 24.459715>,  <43.316975, 34.121597, 24.652872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231686, 34.235687, 24.459715>,  <43.089539, 34.425838, 24.137787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231686, 34.235687, 24.459715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759365, 0.355251, 0.545125,
		-0.545052, -0.804870, -0.234739,
		0.355363, -0.475374, 0.804821,
		43.338295, 34.093075, 24.701160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503086, 34.213753, 24.575516>,  <43.089539, 34.425838, 24.137787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503086, 34.213753, 24.575516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789742, 34.196190, 24.853941>,  <42.961735, 34.185654, 25.020996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789742, 34.196190, 24.853941>,  <42.503086, 34.213753, 24.575516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789742, 34.196190, 24.853941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643669, 0.342662, 0.684305,
		-0.268558, -0.938432, 0.217304,
		0.716636, -0.043904, 0.696064,
		43.004734, 34.183018, 25.062759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202042, 33.866833, 25.116411>,  <42.503086, 34.213753, 24.575516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202042, 33.866833, 25.116411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522560, 34.046555, 25.274420>,  <42.714870, 34.154388, 25.369225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522560, 34.046555, 25.274420>,  <42.202042, 33.866833, 25.116411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522560, 34.046555, 25.274420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458625, 0.037341, 0.887845,
		0.384163, -0.892597, 0.235985,
		0.801300, 0.449306, 0.395023,
		42.762951, 34.181347, 25.392927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379883, 33.560284, 25.820215>,  <42.202042, 33.866833, 25.116411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379883, 33.560284, 25.820215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526867, 33.931709, 25.799238>,  <42.615055, 34.154564, 25.786652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526867, 33.931709, 25.799238>,  <42.379883, 33.560284, 25.820215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526867, 33.931709, 25.799238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461627, 0.231051, 0.856455,
		0.807388, -0.290500, 0.513550,
		0.367457, 0.928561, -0.052445,
		42.637104, 34.210278, 25.783504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692348, 33.783306, 26.526543>,  <42.379883, 33.560284, 25.820215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692348, 33.783306, 26.526543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623852, 34.133930, 26.346622>,  <42.582752, 34.344303, 26.238670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623852, 34.133930, 26.346622>,  <42.692348, 33.783306, 26.526543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623852, 34.133930, 26.346622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503603, 0.314517, 0.804651,
		0.846794, 0.364310, 0.387580,
		-0.171241, 0.876560, -0.449799,
		42.572479, 34.396896, 26.211683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685459, 34.224522, 27.117573>,  <42.692348, 33.783306, 26.526543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685459, 34.224522, 27.117573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562115, 34.485016, 26.840210>,  <42.488110, 34.641312, 26.673792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562115, 34.485016, 26.840210>,  <42.685459, 34.224522, 27.117573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562115, 34.485016, 26.840210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534204, 0.484588, 0.692677,
		0.787109, 0.584013, 0.198463,
		-0.308360, 0.651232, -0.693405,
		42.469608, 34.680386, 26.632189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908104, 34.895912, 27.338432>,  <42.685459, 34.224522, 27.117573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908104, 34.895912, 27.338432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578598, 34.930164, 27.114262>,  <42.380894, 34.950714, 26.979759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578598, 34.930164, 27.114262>,  <42.908104, 34.895912, 27.338432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578598, 34.930164, 27.114262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495396, 0.371945, 0.785009,
		0.275670, 0.924297, -0.263974,
		-0.823765, 0.085632, -0.560427,
		42.331467, 34.955853, 26.946133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737091, 35.569550, 27.350281>,  <42.908104, 34.895912, 27.338432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737091, 35.569550, 27.350281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402454, 35.381687, 27.237474>,  <42.201672, 35.268970, 27.169790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402454, 35.381687, 27.237474>,  <42.737091, 35.569550, 27.350281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402454, 35.381687, 27.237474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502576, 0.453120, 0.736274,
		-0.218010, 0.757697, -0.615116,
		-0.836594, -0.469657, -0.282015,
		42.151478, 35.240791, 27.152870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174660, 36.024403, 27.548750>,  <42.737091, 35.569550, 27.350281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174660, 36.024403, 27.548750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995106, 35.668240, 27.518612>,  <41.887375, 35.454540, 27.500530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995106, 35.668240, 27.518612>,  <42.174660, 36.024403, 27.548750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995106, 35.668240, 27.518612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706638, 0.302094, 0.639846,
		-0.546964, 0.340455, -0.764801,
		-0.448880, -0.890410, -0.075343,
		41.860443, 35.401115, 27.496010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733822, 36.229580, 27.978237>,  <42.174660, 36.024403, 27.548750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733822, 36.229580, 27.978237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616318, 35.852692, 27.913837>,  <41.545815, 35.626556, 27.875196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616318, 35.852692, 27.913837>,  <41.733822, 36.229580, 27.978237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616318, 35.852692, 27.913837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590363, 0.046368, 0.805805,
		-0.751783, 0.331762, -0.569875,
		-0.293760, -0.942223, -0.161001,
		41.528191, 35.570026, 27.865538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042736, 36.216198, 27.904963>,  <41.733822, 36.229580, 27.978237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042736, 36.216198, 27.904963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165291, 35.854321, 28.023386>,  <41.238823, 35.637192, 28.094440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165291, 35.854321, 28.023386>,  <41.042736, 36.216198, 27.904963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165291, 35.854321, 28.023386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641605, 0.033482, 0.766304,
		-0.703186, -0.424737, -0.570200,
		0.306386, -0.904698, 0.296057,
		41.257206, 35.582912, 28.112204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519115, 35.989265, 28.248693>,  <41.042736, 36.216198, 27.904963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519115, 35.989265, 28.248693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792595, 35.722149, 28.366411>,  <40.956684, 35.561878, 28.437042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792595, 35.722149, 28.366411>,  <40.519115, 35.989265, 28.248693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792595, 35.722149, 28.366411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428970, -0.041522, 0.902364,
		-0.590370, -0.743191, -0.314850,
		0.683702, -0.667789, 0.294293,
		40.997707, 35.521812, 28.454699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163200, 35.555569, 28.659380>,  <40.519115, 35.989265, 28.248693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163200, 35.555569, 28.659380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542324, 35.481583, 28.763258>,  <40.769798, 35.437191, 28.825584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542324, 35.481583, 28.763258>,  <40.163200, 35.555569, 28.659380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542324, 35.481583, 28.763258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302399, -0.263388, 0.916069,
		-0.101038, -0.946792, -0.305574,
		0.947811, -0.184963, 0.259697,
		40.826668, 35.426094, 28.841167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174385, 34.932495, 29.123375>,  <40.163200, 35.555569, 28.659380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174385, 34.932495, 29.123375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497551, 35.155052, 29.201038>,  <40.691452, 35.288586, 29.247637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497551, 35.155052, 29.201038>,  <40.174385, 34.932495, 29.123375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497551, 35.155052, 29.201038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198098, -0.053879, 0.978700,
		0.555003, -0.829171, 0.066691,
		0.807916, 0.556393, 0.194160,
		40.739925, 35.321968, 29.259287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635506, 34.595161, 29.567501>,  <40.174385, 34.932495, 29.123375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635506, 34.595161, 29.567501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742626, 34.975155, 29.631773>,  <40.806900, 35.203152, 29.670336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742626, 34.975155, 29.631773>,  <40.635506, 34.595161, 29.567501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742626, 34.975155, 29.631773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095897, -0.139661, 0.985545,
		0.958689, -0.279343, 0.053698,
		0.267805, 0.949980, 0.160680,
		40.822968, 35.260147, 29.679977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066910, 34.570026, 30.175003>,  <40.635506, 34.595161, 29.567501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066910, 34.570026, 30.175003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938366, 34.946465, 30.132931>,  <40.861240, 35.172329, 30.107687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938366, 34.946465, 30.132931>,  <41.066910, 34.570026, 30.175003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938366, 34.946465, 30.132931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025467, 0.119621, 0.992493,
		0.946616, 0.316264, -0.062408,
		-0.321355, 0.941099, -0.105181,
		40.841961, 35.228794, 30.101377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457092, 34.902573, 30.605106>,  <41.066910, 34.570026, 30.175003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457092, 34.902573, 30.605106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161251, 35.162167, 30.533775>,  <40.983746, 35.317924, 30.490976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161251, 35.162167, 30.533775>,  <41.457092, 34.902573, 30.605106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161251, 35.162167, 30.533775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011275, 0.276865, 0.960843,
		0.672947, 0.708633, -0.212088,
		-0.739604, 0.648988, -0.178326,
		40.939369, 35.356861, 30.480278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729446, 35.528675, 30.977106>,  <41.457092, 34.902573, 30.605106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729446, 35.528675, 30.977106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331879, 35.551914, 30.939693>,  <41.093338, 35.565857, 30.917246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331879, 35.551914, 30.939693>,  <41.729446, 35.528675, 30.977106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331879, 35.551914, 30.939693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077011, 0.240294, 0.967641,
		0.078693, 0.968960, -0.234359,
		-0.993920, 0.058098, -0.093530,
		41.033703, 35.569344, 30.911634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666908, 36.210495, 31.193489>,  <41.729446, 35.528675, 30.977106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666908, 36.210495, 31.193489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316624, 36.019840, 31.224356>,  <41.106453, 35.905449, 31.242876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316624, 36.019840, 31.224356>,  <41.666908, 36.210495, 31.193489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316624, 36.019840, 31.224356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124461, 0.377247, 0.917712,
		-0.466523, 0.794044, -0.389681,
		-0.875709, -0.476633, 0.077166,
		41.053909, 35.876850, 31.247505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101894, 36.788452, 31.340284>,  <41.666908, 36.210495, 31.193489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101894, 36.788452, 31.340284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960754, 36.436157, 31.466648>,  <40.876068, 36.224781, 31.542467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960754, 36.436157, 31.466648>,  <41.101894, 36.788452, 31.340284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960754, 36.436157, 31.466648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213002, 0.404369, 0.889447,
		-0.911112, 0.246554, -0.330282,
		-0.352853, -0.880737, 0.315909,
		40.854900, 36.171936, 31.561420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573879, 36.983921, 31.624632>,  <41.101894, 36.788452, 31.340284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573879, 36.983921, 31.624632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605137, 36.611645, 31.767580>,  <40.623890, 36.388279, 31.853350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605137, 36.611645, 31.767580>,  <40.573879, 36.983921, 31.624632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605137, 36.611645, 31.767580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264877, 0.326202, 0.907432,
		-0.961111, -0.165570, -0.221027,
		0.078144, -0.930687, 0.357372,
		40.628582, 36.332439, 31.874792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999985, 36.882591, 31.986910>,  <40.573879, 36.983921, 31.624632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999985, 36.882591, 31.986910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259663, 36.608028, 32.117992>,  <40.415470, 36.443291, 32.196644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259663, 36.608028, 32.117992>,  <39.999985, 36.882591, 31.986910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259663, 36.608028, 32.117992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338991, 0.124585, 0.932504,
		-0.680904, -0.716467, -0.151805,
		0.649195, -0.686407, 0.327707,
		40.454422, 36.402107, 32.216305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604378, 36.367493, 32.497753>,  <39.999985, 36.882591, 31.986910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604378, 36.367493, 32.497753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989017, 36.317062, 32.595272>,  <40.219799, 36.286804, 32.653786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989017, 36.317062, 32.595272>,  <39.604378, 36.367493, 32.497753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989017, 36.317062, 32.595272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216175, 0.199442, 0.955767,
		-0.169125, -0.971765, 0.164528,
		0.961595, -0.126077, 0.243801,
		40.277496, 36.279240, 32.668411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663174, 35.971062, 33.217720>,  <39.604378, 36.367493, 32.497753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663174, 35.971062, 33.217720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994579, 36.189762, 33.169331>,  <40.193420, 36.320980, 33.140297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994579, 36.189762, 33.169331>,  <39.663174, 35.971062, 33.217720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994579, 36.189762, 33.169331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097141, 0.353096, 0.930530,
		0.551482, -0.759203, 0.345656,
		0.828511, 0.546748, -0.120976,
		40.243134, 36.353786, 33.133038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965843, 36.131001, 33.857914>,  <39.663174, 35.971062, 33.217720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965843, 36.131001, 33.857914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204311, 36.376369, 33.650723>,  <40.347393, 36.523590, 33.526409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204311, 36.376369, 33.650723>,  <39.965843, 36.131001, 33.857914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204311, 36.376369, 33.650723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179760, 0.526797, 0.830765,
		0.782475, -0.588389, 0.203793,
		0.596171, 0.613419, -0.517974,
		40.383163, 36.560394, 33.495331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483925, 36.358452, 34.300735>,  <39.965843, 36.131001, 33.857914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483925, 36.358452, 34.300735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457020, 36.642544, 34.020435>,  <40.440876, 36.813000, 33.852257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457020, 36.642544, 34.020435>,  <40.483925, 36.358452, 34.300735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457020, 36.642544, 34.020435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211490, 0.696527, 0.685655,
		0.975063, -0.102081, -0.197058,
		-0.067264, 0.710232, -0.700747,
		40.436840, 36.855614, 33.810211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094456, 36.795811, 34.218102>,  <40.483925, 36.358452, 34.300735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094456, 36.795811, 34.218102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804207, 37.047977, 34.107792>,  <40.630058, 37.199276, 34.041607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804207, 37.047977, 34.107792>,  <41.094456, 36.795811, 34.218102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804207, 37.047977, 34.107792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354962, 0.686278, 0.634842,
		0.589474, 0.362764, -0.721750,
		-0.725619, 0.630417, -0.275775,
		40.586521, 37.237103, 34.025059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411709, 37.416958, 34.158913>,  <41.094456, 36.795811, 34.218102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411709, 37.416958, 34.158913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022820, 37.508984, 34.141678>,  <40.789486, 37.564198, 34.131336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022820, 37.508984, 34.141678>,  <41.411709, 37.416958, 34.158913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022820, 37.508984, 34.141678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189090, 0.880490, 0.434722,
		0.137956, 0.414497, -0.899533,
		-0.972221, 0.230065, -0.043091,
		40.731152, 37.578003, 34.128750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380379, 38.144268, 34.001259>,  <41.411709, 37.416958, 34.158913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380379, 38.144268, 34.001259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032684, 38.063366, 34.181713>,  <40.824066, 38.014824, 34.289986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032684, 38.063366, 34.181713>,  <41.380379, 38.144268, 34.001259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032684, 38.063366, 34.181713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135481, 0.780120, 0.610785,
		-0.475473, 0.592036, -0.650706,
		-0.869235, -0.202254, 0.451136,
		40.771915, 38.002689, 34.317055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230057, 38.815041, 34.269669>,  <41.380379, 38.144268, 34.001259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230057, 38.815041, 34.269669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928391, 38.620117, 34.445747>,  <40.747391, 38.503162, 34.551395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928391, 38.620117, 34.445747>,  <41.230057, 38.815041, 34.269669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928391, 38.620117, 34.445747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040570, 0.703616, 0.709421,
		-0.655434, 0.517160, -0.550411,
		-0.754162, -0.487309, 0.440193,
		40.702141, 38.473923, 34.577805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642185, 39.239445, 34.405598>,  <41.230057, 38.815041, 34.269669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642185, 39.239445, 34.405598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627663, 38.948093, 34.679283>,  <40.618950, 38.773281, 34.843494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627663, 38.948093, 34.679283>,  <40.642185, 39.239445, 34.405598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627663, 38.948093, 34.679283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208592, 0.675106, 0.707617,
		-0.977329, -0.117031, -0.176444,
		-0.036305, -0.728379, 0.684212,
		40.616772, 38.729580, 34.884548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047520, 39.353268, 34.734005>,  <40.642185, 39.239445, 34.405598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047520, 39.353268, 34.734005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259926, 39.147316, 35.003204>,  <40.387371, 39.023746, 35.164722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259926, 39.147316, 35.003204>,  <40.047520, 39.353268, 34.734005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259926, 39.147316, 35.003204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309705, 0.621346, 0.719730,
		-0.788737, -0.590618, 0.170484,
		0.531015, -0.514878, 0.672996,
		40.419231, 38.992851, 35.205105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656483, 39.186584, 35.376099>,  <40.047520, 39.353268, 34.734005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656483, 39.186584, 35.376099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038361, 39.172863, 35.494347>,  <40.267487, 39.164631, 35.565296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038361, 39.172863, 35.494347>,  <39.656483, 39.186584, 35.376099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038361, 39.172863, 35.494347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239079, 0.503129, 0.830483,
		-0.177218, -0.863531, 0.472132,
		0.954691, -0.034300, 0.295616,
		40.324768, 39.162575, 35.583031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606041, 39.126282, 36.145863>,  <39.656483, 39.186584, 35.376099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606041, 39.126282, 36.145863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992554, 39.209831, 36.085632>,  <40.224461, 39.259960, 36.049496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992554, 39.209831, 36.085632>,  <39.606041, 39.126282, 36.145863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992554, 39.209831, 36.085632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021088, 0.647005, 0.762194,
		0.256623, -0.733319, 0.629594,
		0.966281, 0.208873, -0.150572,
		40.282436, 39.272491, 36.040462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057541, 38.905457, 36.775921>,  <39.606041, 39.126282, 36.145863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057541, 38.905457, 36.775921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182968, 39.227699, 36.574856>,  <40.258224, 39.421043, 36.454216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182968, 39.227699, 36.574856>,  <40.057541, 38.905457, 36.775921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182968, 39.227699, 36.574856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035240, 0.538874, 0.841649,
		0.948910, -0.246203, 0.197365,
		0.313572, 0.805604, -0.502667,
		40.277039, 39.469379, 36.424057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668270, 39.174435, 37.136948>,  <40.057541, 38.905457, 36.775921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668270, 39.174435, 37.136948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536789, 39.488815, 36.927479>,  <40.457901, 39.677444, 36.801796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536789, 39.488815, 36.927479>,  <40.668270, 39.174435, 37.136948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536789, 39.488815, 36.927479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186207, 0.597534, 0.779923,
		0.925894, 0.158853, -0.342762,
		-0.328705, 0.785951, -0.523674,
		40.438179, 39.724602, 36.770378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265820, 39.698284, 36.978943>,  <40.668270, 39.174435, 37.136948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265820, 39.698284, 36.978943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920078, 39.898514, 36.998215>,  <40.712635, 40.018650, 37.009777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920078, 39.898514, 36.998215>,  <41.265820, 39.698284, 36.978943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920078, 39.898514, 36.998215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407052, 0.640155, 0.651544,
		0.295301, 0.582777, -0.757079,
		-0.864353, 0.500572, 0.048182,
		40.660774, 40.048687, 37.012669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376606, 40.396233, 37.228077>,  <41.265820, 39.698284, 36.978943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376606, 40.396233, 37.228077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979816, 40.414101, 37.275387>,  <40.741741, 40.424820, 37.303772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979816, 40.414101, 37.275387>,  <41.376606, 40.396233, 37.228077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979816, 40.414101, 37.275387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114459, 0.714638, 0.690066,
		-0.053702, 0.698066, -0.714016,
		-0.991975, 0.044668, 0.118277,
		40.682224, 40.427502, 37.310871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279881, 41.113914, 37.248020>,  <41.376606, 40.396233, 37.228077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279881, 41.113914, 37.248020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930992, 40.987843, 37.397629>,  <40.721657, 40.912201, 37.487392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930992, 40.987843, 37.397629>,  <41.279881, 41.113914, 37.248020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930992, 40.987843, 37.397629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115637, 0.875900, 0.468431,
		-0.475241, 0.365326, -0.800426,
		-0.872223, -0.315177, 0.374019,
		40.669327, 40.893288, 37.509834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836315, 41.694012, 37.153801>,  <41.279881, 41.113914, 37.248020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836315, 41.694012, 37.153801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670403, 41.457062, 37.430077>,  <40.570854, 41.314892, 37.595840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670403, 41.457062, 37.430077>,  <40.836315, 41.694012, 37.153801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670403, 41.457062, 37.430077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255141, 0.804328, 0.536618,
		-0.873416, 0.046359, -0.484762,
		-0.414785, -0.592374, 0.690686,
		40.545967, 41.279350, 37.637283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249084, 41.968792, 37.123138>,  <40.836315, 41.694012, 37.153801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249084, 41.968792, 37.123138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397469, 41.792068, 37.449867>,  <40.486500, 41.686035, 37.645905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397469, 41.792068, 37.449867>,  <40.249084, 41.968792, 37.123138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397469, 41.792068, 37.449867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024951, 0.884001, 0.466818,
		-0.928314, -0.152790, 0.338952,
		0.370959, -0.441811, 0.816818,
		40.508755, 41.659527, 37.694912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890556, 42.183102, 37.808563>,  <40.249084, 41.968792, 37.123138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890556, 42.183102, 37.808563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265701, 42.064507, 37.880695>,  <40.490788, 41.993351, 37.923977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265701, 42.064507, 37.880695>,  <39.890556, 42.183102, 37.808563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265701, 42.064507, 37.880695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151281, 0.816996, 0.556445,
		-0.312309, -0.494585, 0.811079,
		0.937858, -0.296484, 0.180334,
		40.547058, 41.975563, 37.934795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994934, 42.293205, 38.483315>,  <39.890556, 42.183102, 37.808563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994934, 42.293205, 38.483315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344887, 42.303360, 38.289845>,  <40.554859, 42.309452, 38.173763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344887, 42.303360, 38.289845>,  <39.994934, 42.293205, 38.483315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344887, 42.303360, 38.289845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293822, 0.766064, 0.571678,
		0.385037, -0.642264, 0.662755,
		0.874880, 0.025385, -0.483674,
		40.607349, 42.310974, 38.144741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593597, 42.404331, 38.891998>,  <39.994934, 42.293205, 38.483315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593597, 42.404331, 38.891998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790310, 42.522507, 38.564373>,  <40.908337, 42.593410, 38.367798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790310, 42.522507, 38.564373>,  <40.593597, 42.404331, 38.891998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790310, 42.522507, 38.564373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379407, 0.773970, 0.506972,
		0.783715, -0.560076, 0.268527,
		0.491774, 0.295440, -0.819069,
		40.937843, 42.611137, 38.318653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944519, 41.830215, 39.342976>,  <40.593597, 42.404331, 38.891998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944519, 41.830215, 39.342976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221413, 42.021568, 39.126842>,  <41.387547, 42.136383, 38.997162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221413, 42.021568, 39.126842>,  <40.944519, 41.830215, 39.342976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221413, 42.021568, 39.126842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611926, -0.785998, 0.088059,
		-0.382578, -0.391603, -0.836828,
		0.692229, 0.478387, -0.540337,
		41.429081, 42.165085, 38.964741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055115, 41.472630, 38.728783>,  <40.944519, 41.830215, 39.342976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055115, 41.472630, 38.728783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372673, 41.692360, 38.833061>,  <41.563210, 41.824200, 38.895630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372673, 41.692360, 38.833061>,  <41.055115, 41.472630, 38.728783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372673, 41.692360, 38.833061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589758, -0.800025, -0.110211,
		0.148024, 0.241245, -0.959109,
		0.793899, 0.549328, 0.260699,
		41.610844, 41.857159, 38.911270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756077, 40.713871, 38.655346>,  <41.055115, 41.472630, 38.728783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756077, 40.713871, 38.655346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625198, 41.001102, 38.409645>,  <40.546673, 41.173443, 38.262226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625198, 41.001102, 38.409645>,  <40.756077, 40.713871, 38.655346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625198, 41.001102, 38.409645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499856, -0.683164, -0.532382,
		-0.801928, 0.132845, 0.582464,
		-0.327194, 0.718080, -0.614252,
		40.527039, 41.216526, 38.225368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135555, 40.454678, 38.525223>,  <40.756077, 40.713871, 38.655346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135555, 40.454678, 38.525223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238209, 40.727142, 38.250950>,  <40.299801, 40.890621, 38.086388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238209, 40.727142, 38.250950>,  <40.135555, 40.454678, 38.525223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238209, 40.727142, 38.250950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256796, -0.635887, -0.727807,
		-0.931769, 0.362862, 0.011728,
		0.256636, 0.681160, -0.685681,
		40.315201, 40.931492, 38.045246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619801, 40.359222, 37.979336>,  <40.135555, 40.454678, 38.525223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619801, 40.359222, 37.979336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935234, 40.545204, 37.818359>,  <40.124493, 40.656792, 37.721775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935234, 40.545204, 37.818359>,  <39.619801, 40.359222, 37.979336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935234, 40.545204, 37.818359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055757, -0.597686, -0.799789,
		-0.612396, 0.653139, -0.445400,
		0.788583, 0.464953, -0.402437,
		40.171810, 40.684689, 37.697628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404896, 40.580101, 37.346851>,  <39.619801, 40.359222, 37.979336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404896, 40.580101, 37.346851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801804, 40.536926, 37.322338>,  <40.039948, 40.511021, 37.307632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801804, 40.536926, 37.322338>,  <39.404896, 40.580101, 37.346851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801804, 40.536926, 37.322338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101315, -0.419165, -0.902240,
		0.071695, 0.901472, -0.426859,
		0.992268, -0.107933, -0.061281,
		40.099483, 40.504547, 37.303955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509708, 40.448826, 36.663601>,  <39.404896, 40.580101, 37.346851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509708, 40.448826, 36.663601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881969, 40.371651, 36.787964>,  <40.105328, 40.325344, 36.862579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881969, 40.371651, 36.787964>,  <39.509708, 40.448826, 36.663601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881969, 40.371651, 36.787964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155372, -0.560904, -0.813170,
		0.331281, 0.805084, -0.492029,
		0.930652, -0.192940, 0.310904,
		40.161163, 40.313770, 36.881233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057186, 40.689533, 36.116310>,  <39.509708, 40.448826, 36.663601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057186, 40.689533, 36.116310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211063, 40.379864, 36.317371>,  <40.303391, 40.194061, 36.438007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211063, 40.379864, 36.317371>,  <40.057186, 40.689533, 36.116310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211063, 40.379864, 36.317371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055075, -0.524341, -0.849725,
		0.921402, 0.354564, -0.159071,
		0.384689, -0.774177, 0.502656,
		40.326469, 40.147610, 36.468170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735947, 40.509155, 35.750042>,  <40.057186, 40.689533, 36.116310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735947, 40.509155, 35.750042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567993, 40.209240, 35.954597>,  <40.467220, 40.029289, 36.077332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567993, 40.209240, 35.954597>,  <40.735947, 40.509155, 35.750042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567993, 40.209240, 35.954597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035028, -0.576430, -0.816395,
		0.906904, -0.324875, 0.268295,
		-0.419879, -0.749790, 0.511387,
		40.442028, 39.984303, 36.108013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189774, 40.040977, 35.939770>,  <40.735947, 40.509155, 35.750042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189774, 40.040977, 35.939770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981861, 39.767902, 36.145199>,  <40.857113, 39.604057, 36.268456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981861, 39.767902, 36.145199>,  <41.189774, 40.040977, 35.939770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981861, 39.767902, 36.145199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006775, -0.597853, -0.801577,
		0.854272, -0.420125, 0.306127,
		-0.519782, -0.682691, 0.513576,
		40.825928, 39.563095, 36.299271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549728, 39.506504, 35.886490>,  <41.189774, 40.040977, 35.939770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549728, 39.506504, 35.886490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160206, 39.425468, 35.927784>,  <40.926491, 39.376846, 35.952560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160206, 39.425468, 35.927784>,  <41.549728, 39.506504, 35.886490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160206, 39.425468, 35.927784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069994, -0.699060, -0.711629,
		0.216336, -0.685763, 0.694930,
		-0.973807, -0.202592, 0.103232,
		40.868065, 39.364693, 35.958755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519798, 38.865986, 36.051975>,  <41.549728, 39.506504, 35.886490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519798, 38.865986, 36.051975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159283, 38.955578, 35.903648>,  <40.942974, 39.009335, 35.814651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159283, 38.955578, 35.903648>,  <41.519798, 38.865986, 36.051975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159283, 38.955578, 35.903648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070816, -0.768278, -0.636188,
		-0.427382, -0.599651, 0.676582,
		-0.901294, 0.223982, -0.370813,
		40.888893, 39.022774, 35.792404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159668, 38.202999, 35.988842>,  <41.519798, 38.865986, 36.051975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159668, 38.202999, 35.988842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993790, 38.468296, 35.739639>,  <40.894260, 38.627476, 35.590118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993790, 38.468296, 35.739639>,  <41.159668, 38.202999, 35.988842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993790, 38.468296, 35.739639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104348, -0.714794, -0.691506,
		-0.903957, -0.221756, 0.365631,
		-0.414697, 0.663245, -0.623003,
		40.869381, 38.667271, 35.552738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396957, 38.062393, 35.847862>,  <41.159668, 38.202999, 35.988842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396957, 38.062393, 35.847862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572914, 38.225784, 35.527954>,  <40.678490, 38.323818, 35.336010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572914, 38.225784, 35.527954>,  <40.396957, 38.062393, 35.847862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572914, 38.225784, 35.527954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240246, -0.804578, -0.543080,
		-0.865317, 0.431041, -0.255795,
		0.439897, 0.408482, -0.799771,
		40.704884, 38.348328, 35.288021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079399, 37.706776, 35.330353>,  <40.396957, 38.062393, 35.847862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079399, 37.706776, 35.330353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314335, 37.915176, 35.082615>,  <40.455296, 38.040215, 34.933971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314335, 37.915176, 35.082615>,  <40.079399, 37.706776, 35.330353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314335, 37.915176, 35.082615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391025, -0.487338, -0.780769,
		-0.708612, 0.700758, -0.082510,
		0.587340, 0.520999, -0.619348,
		40.490536, 38.071476, 34.896812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571720, 37.853058, 34.780724>,  <40.079399, 37.706776, 35.330353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571720, 37.853058, 34.780724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944527, 37.881348, 34.638546>,  <40.168213, 37.898323, 34.553242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944527, 37.881348, 34.638546>,  <39.571720, 37.853058, 34.780724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944527, 37.881348, 34.638546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280288, -0.481055, -0.830678,
		-0.229739, 0.873833, -0.428528,
		0.932019, 0.070728, -0.355441,
		40.224133, 37.902565, 34.531914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465603, 37.865044, 34.078705>,  <39.571720, 37.853058, 34.780724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465603, 37.865044, 34.078705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860142, 37.800922, 34.093807>,  <40.096863, 37.762447, 34.102867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860142, 37.800922, 34.093807>,  <39.465603, 37.865044, 34.078705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860142, 37.800922, 34.093807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061191, -0.569554, -0.819673,
		0.152902, 0.806170, -0.571586,
		0.986345, -0.160305, 0.037756,
		40.156044, 37.752831, 34.105133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680626, 37.803661, 33.401615>,  <39.465603, 37.865044, 34.078705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680626, 37.803661, 33.401615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019760, 37.653923, 33.551834>,  <40.223240, 37.564079, 33.641968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019760, 37.653923, 33.551834>,  <39.680626, 37.803661, 33.401615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019760, 37.653923, 33.551834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006376, -0.715384, -0.698702,
		0.530222, 0.589990, -0.608914,
		0.847835, -0.374350, 0.375551,
		40.274109, 37.541618, 33.664497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167675, 37.697174, 32.899780>,  <39.680626, 37.803661, 33.401615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167675, 37.697174, 32.899780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271797, 37.438755, 33.186794>,  <40.334270, 37.283703, 33.359005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271797, 37.438755, 33.186794>,  <40.167675, 37.697174, 32.899780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271797, 37.438755, 33.186794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161244, -0.703635, -0.692025,
		0.951967, 0.295838, -0.078990,
		0.260307, -0.646049, 0.717539,
		40.349888, 37.244942, 33.402058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911537, 37.532139, 32.791542>,  <40.167675, 37.697174, 32.899780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911537, 37.532139, 32.791542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721657, 37.246075, 32.996754>,  <40.607727, 37.074436, 33.119881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721657, 37.246075, 32.996754>,  <40.911537, 37.532139, 32.791542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721657, 37.246075, 32.996754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188554, -0.651994, -0.734405,
		0.859713, -0.251889, 0.444349,
		-0.474701, -0.715162, 0.513033,
		40.579247, 37.031525, 33.150665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392899, 36.937500, 32.969624>,  <40.911537, 37.532139, 32.791542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392899, 36.937500, 32.969624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039627, 36.754860, 33.012562>,  <40.827663, 36.645275, 33.038322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039627, 36.754860, 33.012562>,  <41.392899, 36.937500, 32.969624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039627, 36.754860, 33.012562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209820, -0.589271, -0.780215,
		0.419498, -0.666543, 0.616232,
		-0.883175, -0.456596, 0.107344,
		40.774673, 36.617882, 33.044765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550659, 36.193970, 32.900066>,  <41.392899, 36.937500, 32.969624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550659, 36.193970, 32.900066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155701, 36.210335, 32.838921>,  <40.918724, 36.220154, 32.802231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155701, 36.210335, 32.838921>,  <41.550659, 36.193970, 32.900066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155701, 36.210335, 32.838921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105479, -0.549963, -0.828502,
		-0.117970, -0.834186, 0.538718,
		-0.987399, 0.040915, -0.152868,
		40.859482, 36.222610, 32.793060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349400, 35.520470, 32.657902>,  <41.550659, 36.193970, 32.900066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349400, 35.520470, 32.657902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053070, 35.762871, 32.542011>,  <40.875271, 35.908310, 32.472477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053070, 35.762871, 32.542011>,  <41.349400, 35.520470, 32.657902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053070, 35.762871, 32.542011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101053, -0.526977, -0.843851,
		-0.664054, -0.595868, 0.451635,
		-0.740825, 0.606001, -0.289727,
		40.830822, 35.944672, 32.455093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845428, 35.290051, 33.176430>,  <41.349400, 35.520470, 32.657902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845428, 35.290051, 33.176430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482243, 35.392403, 33.309170>,  <41.264332, 35.453812, 33.388813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482243, 35.392403, 33.309170>,  <41.845428, 35.290051, 33.176430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482243, 35.392403, 33.309170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410908, 0.388381, 0.824812,
		0.082167, 0.885261, -0.457779,
		-0.907967, 0.255878, 0.331848,
		41.209854, 35.469166, 33.408726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206009, 35.701942, 33.742847>,  <41.845428, 35.290051, 33.176430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206009, 35.701942, 33.742847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101131, 35.769127, 33.362732>,  <42.038204, 35.809437, 33.134663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101131, 35.769127, 33.362732>,  <42.206009, 35.701942, 33.742847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101131, 35.769127, 33.362732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113791, 0.983248, 0.142391,
		0.958283, -0.070800, -0.276912,
		-0.262192, 0.167961, -0.950287,
		42.022472, 35.819515, 33.077644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857113, 35.416908, 33.482918>,  <42.206009, 35.701942, 33.742847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857113, 35.416908, 33.482918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202946, 35.295784, 33.322521>,  <43.410446, 35.223110, 33.226284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202946, 35.295784, 33.322521>,  <42.857113, 35.416908, 33.482918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202946, 35.295784, 33.322521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311168, 0.949245, -0.045910,
		0.394544, -0.085083, 0.914930,
		0.864586, -0.302810, -0.400994,
		43.462322, 35.204941, 33.202225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332726, 35.797268, 33.832165>,  <42.857113, 35.416908, 33.482918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332726, 35.797268, 33.832165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492039, 35.752205, 33.468037>,  <43.587627, 35.725166, 33.249561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492039, 35.752205, 33.468037>,  <43.332726, 35.797268, 33.832165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492039, 35.752205, 33.468037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254358, 0.967074, -0.008392,
		0.881289, -0.228204, 0.413827,
		0.398286, -0.112656, -0.910317,
		43.611523, 35.718407, 33.194942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783955, 36.347454, 33.713154>,  <43.332726, 35.797268, 33.832165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783955, 36.347454, 33.713154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.676117, 36.246212, 33.341507>,  <43.611412, 36.185467, 33.118519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.676117, 36.246212, 33.341507>,  <43.783955, 36.347454, 33.713154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676117, 36.246212, 33.341507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245060, 0.915041, -0.320384,
		0.931269, -0.314063, -0.184666,
		-0.269598, -0.253110, -0.929114,
		43.595238, 36.170280, 33.062775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343750, 36.467644, 33.319256>,  <43.783955, 36.347454, 33.713154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343750, 36.467644, 33.319256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040798, 36.488934, 33.058937>,  <43.859028, 36.501709, 32.902744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040798, 36.488934, 33.058937>,  <44.343750, 36.467644, 33.319256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040798, 36.488934, 33.058937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393302, 0.832779, -0.389606,
		0.521232, -0.551041, -0.651667,
		-0.757384, 0.053227, -0.650797,
		43.813583, 36.504902, 32.863697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582371, 36.341881, 32.553322>,  <44.343750, 36.467644, 33.319256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582371, 36.341881, 32.553322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283024, 36.581036, 32.668194>,  <44.103416, 36.724529, 32.737118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283024, 36.581036, 32.668194>,  <44.582371, 36.341881, 32.553322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283024, 36.581036, 32.668194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575515, 0.800564, -0.166970,
		-0.329738, 0.040323, -0.943211,
		-0.748368, 0.597889, 0.287183,
		44.058514, 36.760403, 32.754349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484989, 36.903580, 32.037117>,  <44.582371, 36.341881, 32.553322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484989, 36.903580, 32.037117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400547, 37.000793, 32.415825>,  <44.349880, 37.059120, 32.643051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400547, 37.000793, 32.415825>,  <44.484989, 36.903580, 32.037117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400547, 37.000793, 32.415825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716937, 0.696878, -0.019026,
		-0.664406, 0.674757, -0.321353,
		-0.211106, 0.243031, 0.946768,
		44.337215, 37.073704, 32.699856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087631, 37.044422, 31.591568>,  <44.484989, 36.903580, 32.037117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087631, 37.044422, 31.591568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425091, 36.864689, 31.474028>,  <45.627567, 36.756847, 31.403503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425091, 36.864689, 31.474028>,  <45.087631, 37.044422, 31.591568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425091, 36.864689, 31.474028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116500, -0.381069, 0.917177,
		-0.524098, -0.808012, -0.269142,
		0.843652, -0.449336, -0.293851,
		45.678188, 36.729889, 31.385872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170681, 36.364357, 31.461323>,  <45.087631, 37.044422, 31.591568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170681, 36.364357, 31.461323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.524971, 36.488068, 31.599791>,  <45.737545, 36.562294, 31.682871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.524971, 36.488068, 31.599791>,  <45.170681, 36.364357, 31.461323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.524971, 36.488068, 31.599791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112421, -0.580612, 0.806382,
		0.450386, -0.753151, -0.479495,
		0.885728, 0.309278, 0.346169,
		45.790688, 36.580853, 31.703642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640186, 35.915844, 31.521778>,  <45.170681, 36.364357, 31.461323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640186, 35.915844, 31.521778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757458, 36.184586, 31.793856>,  <45.827820, 36.345829, 31.957102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757458, 36.184586, 31.793856>,  <45.640186, 35.915844, 31.521778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757458, 36.184586, 31.793856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195232, -0.738535, 0.645330,
		0.935913, -0.056399, -0.347687,
		0.293175, 0.671852, 0.680193,
		45.845409, 36.386143, 31.997913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358070, 35.781185, 31.611847>,  <45.640186, 35.915844, 31.521778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358070, 35.781185, 31.611847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217327, 35.951038, 31.945524>,  <46.132881, 36.052952, 32.145729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217327, 35.951038, 31.945524>,  <46.358070, 35.781185, 31.611847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217327, 35.951038, 31.945524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344336, -0.769975, 0.537188,
		0.870418, 0.476258, 0.124705,
		-0.351859, 0.424638, 0.834193,
		46.111771, 36.078430, 32.195782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838863, 36.030815, 32.047043>,  <46.358070, 35.781185, 31.611847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838863, 36.030815, 32.047043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525597, 35.913662, 32.266449>,  <46.337635, 35.843369, 32.398090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525597, 35.913662, 32.266449>,  <46.838863, 36.030815, 32.047043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525597, 35.913662, 32.266449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585930, -0.642915, 0.493301,
		0.208167, 0.707728, 0.675120,
		-0.783168, -0.292884, 0.548513,
		46.290646, 35.825798, 32.431004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968342, 35.983498, 32.715164>,  <46.838863, 36.030815, 32.047043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968342, 35.983498, 32.715164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676552, 35.710968, 32.690933>,  <46.501480, 35.547451, 32.676395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676552, 35.710968, 32.690933>,  <46.968342, 35.983498, 32.715164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676552, 35.710968, 32.690933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560768, -0.646399, 0.517404,
		-0.391676, 0.343462, 0.853594,
		-0.729471, -0.681324, -0.060576,
		46.457710, 35.506573, 32.672760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.878044, 35.846321, 33.415936>,  <46.968342, 35.983498, 32.715164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.878044, 35.846321, 33.415936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787548, 35.548004, 33.165302>,  <46.733250, 35.369015, 33.014923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787548, 35.548004, 33.165302>,  <46.878044, 35.846321, 33.415936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787548, 35.548004, 33.165302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455133, -0.649665, 0.608925,
		-0.861202, -0.147415, 0.486416,
		-0.226242, -0.745791, -0.626585,
		46.719677, 35.324268, 32.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929291, 35.241993, 33.852024>,  <46.878044, 35.846321, 33.415936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929291, 35.241993, 33.852024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941433, 35.073013, 33.489674>,  <46.948719, 34.971626, 33.272263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941433, 35.073013, 33.489674>,  <46.929291, 35.241993, 33.852024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941433, 35.073013, 33.489674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181990, -0.888811, 0.420590,
		-0.982832, -0.177626, 0.049904,
		0.030352, -0.422451, -0.905877,
		46.950539, 34.946278, 33.217911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.418434, 34.684673, 33.864815>,  <46.929291, 35.241993, 33.852024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.418434, 34.684673, 33.864815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751125, 34.633099, 33.648815>,  <46.950741, 34.602154, 33.519215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751125, 34.633099, 33.648815>,  <46.418434, 34.684673, 33.864815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751125, 34.633099, 33.648815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178535, -0.858876, 0.480059,
		-0.525687, -0.495689, -0.691336,
		0.831732, -0.128933, -0.539998,
		47.000645, 34.594418, 33.486816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335346, 34.374714, 34.529919>,  <46.418434, 34.684673, 33.864815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335346, 34.374714, 34.529919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720871, 34.296108, 34.457867>,  <46.952187, 34.248947, 34.414635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720871, 34.296108, 34.457867>,  <46.335346, 34.374714, 34.529919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720871, 34.296108, 34.457867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264426, 0.790380, 0.552610,
		0.033773, -0.580243, 0.813743,
		0.963814, -0.196511, -0.180125,
		47.010014, 34.237156, 34.403828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.813858, 34.037312, 35.007042>,  <46.335346, 34.374714, 34.529919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.813858, 34.037312, 35.007042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.035004, 34.289139, 34.788689>,  <47.167690, 34.440235, 34.657677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.035004, 34.289139, 34.788689>,  <46.813858, 34.037312, 35.007042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.035004, 34.289139, 34.788689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001042, 0.654583, 0.755990,
		0.833274, -0.418525, 0.361237,
		0.552860, 0.629570, -0.545882,
		47.200863, 34.478008, 34.624924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249355, 34.369171, 35.554474>,  <46.813858, 34.037312, 35.007042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249355, 34.369171, 35.554474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231094, 34.601433, 35.229324>,  <47.220139, 34.740791, 35.034237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231094, 34.601433, 35.229324>,  <47.249355, 34.369171, 35.554474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231094, 34.601433, 35.229324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069265, 0.809919, 0.582437,
		0.996553, 0.082893, 0.003244,
		-0.045652, 0.580654, -0.812869,
		47.217400, 34.775631, 34.985462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.869221, 34.747959, 35.337936>,  <47.249355, 34.369171, 35.554474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.869221, 34.747959, 35.337936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520462, 34.932930, 35.273502>,  <47.311207, 35.043915, 35.234844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520462, 34.932930, 35.273502>,  <47.869221, 34.747959, 35.337936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520462, 34.932930, 35.273502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210438, 0.650870, 0.729441,
		0.442158, 0.602103, -0.664807,
		-0.871901, 0.462429, -0.161082,
		47.258892, 35.071659, 35.225178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.477726, 29.730587, 25.946733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.149506, 29.849377, 25.751389>,  <39.952572, 29.920650, 25.634182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.149506, 29.849377, 25.751389>,  <40.477726, 29.730587, 25.946733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149506, 29.849377, 25.751389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226537, 0.615472, 0.754901,
		0.524760, 0.730068, -0.437752,
		-0.820554, 0.296975, -0.488362,
		39.903339, 29.938469, 25.604879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526211, 30.462212, 25.998882>,  <40.477726, 29.730587, 25.946733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526211, 30.462212, 25.998882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.153038, 30.335608, 25.930239>,  <39.929134, 30.259645, 25.889051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.153038, 30.335608, 25.930239>,  <40.526211, 30.462212, 25.998882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153038, 30.335608, 25.930239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342178, 0.631180, 0.696079,
		-0.112000, 0.708118, -0.697155,
		-0.932936, -0.316512, -0.171610,
		39.873158, 30.240654, 25.878756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134823, 31.059391, 26.141502>,  <40.526211, 30.462212, 25.998882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134823, 31.059391, 26.141502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865471, 30.764286, 26.160553>,  <39.703861, 30.587223, 26.171984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865471, 30.764286, 26.160553>,  <40.134823, 31.059391, 26.141502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865471, 30.764286, 26.160553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410779, 0.426940, 0.805595,
		-0.614670, 0.522907, -0.590550,
		-0.673380, -0.737760, 0.047628,
		39.663456, 30.542957, 26.174841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601246, 31.356560, 26.580221>,  <40.134823, 31.059391, 26.141502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601246, 31.356560, 26.580221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.491405, 30.971989, 26.586555>,  <39.425503, 30.741245, 26.590355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.491405, 30.971989, 26.586555>,  <39.601246, 31.356560, 26.580221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491405, 30.971989, 26.586555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552560, 0.171255, 0.815689,
		-0.786938, 0.215239, -0.578274,
		-0.274601, -0.961428, 0.015835,
		39.409027, 30.683559, 26.591307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837624, 31.383600, 26.740486>,  <39.601246, 31.356560, 26.580221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837624, 31.383600, 26.740486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964890, 31.016987, 26.837429>,  <39.041248, 30.797018, 26.895596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964890, 31.016987, 26.837429>,  <38.837624, 31.383600, 26.740486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964890, 31.016987, 26.837429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486601, 0.061521, 0.871456,
		-0.813629, -0.395198, -0.426413,
		0.318164, -0.916534, 0.242359,
		39.060337, 30.742027, 26.910137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275208, 30.942730, 26.930428>,  <38.837624, 31.383600, 26.740486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275208, 30.942730, 26.930428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600643, 30.781384, 27.097937>,  <38.795906, 30.684576, 27.198442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600643, 30.781384, 27.097937>,  <38.275208, 30.942730, 26.930428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600643, 30.781384, 27.097937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312783, 0.303522, 0.900023,
		-0.490145, -0.863233, 0.120776,
		0.813587, -0.403365, 0.418774,
		38.844719, 30.660374, 27.223568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040119, 30.670149, 27.557035>,  <38.275208, 30.942730, 26.930428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040119, 30.670149, 27.557035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431625, 30.703178, 27.632080>,  <38.666531, 30.722996, 27.677107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431625, 30.703178, 27.632080>,  <38.040119, 30.670149, 27.557035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431625, 30.703178, 27.632080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204449, 0.327659, 0.922410,
		0.014693, -0.941181, 0.337583,
		0.978767, 0.082571, 0.187610,
		38.725254, 30.727949, 27.688362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011570, 30.488714, 28.189936>,  <38.040119, 30.670149, 27.557035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011570, 30.488714, 28.189936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.355343, 30.687353, 28.141314>,  <38.561607, 30.806536, 28.112141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.355343, 30.687353, 28.141314>,  <38.011570, 30.488714, 28.189936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355343, 30.687353, 28.141314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098169, 0.393622, 0.914016,
		0.501743, -0.773598, 0.387041,
		0.859428, 0.496596, -0.121554,
		38.613171, 30.836332, 28.104847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402279, 30.323380, 28.796757>,  <38.011570, 30.488714, 28.189936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402279, 30.323380, 28.796757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526768, 30.669445, 28.639465>,  <38.601463, 30.877085, 28.545090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526768, 30.669445, 28.639465>,  <38.402279, 30.323380, 28.796757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526768, 30.669445, 28.639465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105419, 0.442656, 0.890473,
		0.944471, -0.235685, 0.228971,
		0.311226, 0.865164, -0.393230,
		38.620136, 30.928993, 28.521496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898064, 30.619959, 29.258602>,  <38.402279, 30.323380, 28.796757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898064, 30.619959, 29.258602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787209, 30.942081, 29.048964>,  <38.720695, 31.135355, 28.923180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787209, 30.942081, 29.048964>,  <38.898064, 30.619959, 29.258602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787209, 30.942081, 29.048964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188544, 0.489279, 0.851503,
		0.942150, 0.334799, 0.016238,
		-0.277138, 0.805305, -0.524099,
		38.704067, 31.183672, 28.891733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152912, 31.106291, 29.703844>,  <38.898064, 30.619959, 29.258602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152912, 31.106291, 29.703844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.879562, 31.292681, 29.479034>,  <38.715553, 31.404514, 29.344149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.879562, 31.292681, 29.479034>,  <39.152912, 31.106291, 29.703844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879562, 31.292681, 29.479034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062934, 0.729357, 0.681232,
		0.727351, 0.500907, -0.469098,
		-0.683374, 0.465973, -0.562023,
		38.674549, 31.432472, 29.310427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395649, 31.776012, 29.816378>,  <39.152912, 31.106291, 29.703844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395649, 31.776012, 29.816378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015171, 31.776516, 29.692944>,  <38.786884, 31.776819, 29.618883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015171, 31.776516, 29.692944>,  <39.395649, 31.776012, 29.816378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015171, 31.776516, 29.692944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228583, 0.668910, 0.707325,
		0.207308, 0.743342, -0.635976,
		-0.951196, 0.001261, -0.308586,
		38.729813, 31.776894, 29.600368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272915, 32.486458, 29.704697>,  <39.395649, 31.776012, 29.816378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272915, 32.486458, 29.704697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926567, 32.289631, 29.740780>,  <38.718758, 32.171535, 29.762430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926567, 32.289631, 29.740780>,  <39.272915, 32.486458, 29.704697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926567, 32.289631, 29.740780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223302, 0.541520, 0.810489,
		-0.447666, 0.681634, -0.578766,
		-0.865870, -0.492068, 0.090209,
		38.666805, 32.142010, 29.767843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893970, 33.033176, 29.932264>,  <39.272915, 32.486458, 29.704697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893970, 33.033176, 29.932264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.696175, 32.708839, 30.057495>,  <38.577499, 32.514236, 30.132633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.696175, 32.708839, 30.057495>,  <38.893970, 33.033176, 29.932264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696175, 32.708839, 30.057495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318516, 0.504180, 0.802714,
		-0.808722, 0.297212, -0.507577,
		-0.494486, -0.810844, 0.313075,
		38.547829, 32.465588, 30.151417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239231, 33.255409, 30.244120>,  <38.893970, 33.033176, 29.932264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239231, 33.255409, 30.244120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288757, 32.892841, 30.405653>,  <38.318474, 32.675301, 30.502573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288757, 32.892841, 30.405653>,  <38.239231, 33.255409, 30.244120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288757, 32.892841, 30.405653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244257, 0.366603, 0.897742,
		-0.961774, -0.209790, -0.176009,
		0.123812, -0.906416, 0.403831,
		38.325901, 32.620918, 30.526802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683388, 33.211575, 30.655602>,  <38.239231, 33.255409, 30.244120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683388, 33.211575, 30.655602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.928272, 32.928524, 30.796719>,  <38.075203, 32.758694, 30.881390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.928272, 32.928524, 30.796719>,  <37.683388, 33.211575, 30.655602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928272, 32.928524, 30.796719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066827, 0.398279, 0.914827,
		-0.787867, -0.583642, 0.196541,
		0.612209, -0.707627, 0.352794,
		38.111935, 32.716236, 30.902557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394218, 32.927277, 31.347338>,  <37.683388, 33.211575, 30.655602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394218, 32.927277, 31.347338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777851, 32.815216, 31.363722>,  <38.008030, 32.747978, 31.373552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777851, 32.815216, 31.363722>,  <37.394218, 32.927277, 31.347338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777851, 32.815216, 31.363722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049576, 0.308601, 0.949899,
		-0.278754, -0.909000, 0.309862,
		0.959082, -0.280150, 0.040959,
		38.065575, 32.731171, 31.376009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444065, 32.678978, 32.032303>,  <37.394218, 32.927277, 31.347338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444065, 32.678978, 32.032303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823086, 32.750690, 31.926470>,  <38.050499, 32.793716, 31.862968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823086, 32.750690, 31.926470>,  <37.444065, 32.678978, 32.032303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823086, 32.750690, 31.926470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211397, 0.269335, 0.939559,
		0.239702, -0.946213, 0.217310,
		0.947552, 0.179275, -0.264587,
		38.107349, 32.804474, 31.847094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854591, 32.265812, 32.486034>,  <37.444065, 32.678978, 32.032303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854591, 32.265812, 32.486034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117260, 32.538239, 32.356464>,  <38.274860, 32.701694, 32.278721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117260, 32.538239, 32.356464>,  <37.854591, 32.265812, 32.486034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117260, 32.538239, 32.356464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229358, 0.228824, 0.946063,
		0.718458, -0.695545, -0.005947,
		0.656668, 0.681071, -0.323929,
		38.314259, 32.742561, 32.259285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534573, 32.182331, 32.811287>,  <37.854591, 32.265812, 32.486034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534573, 32.182331, 32.811287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588638, 32.548214, 32.658951>,  <38.621078, 32.767742, 32.567547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588638, 32.548214, 32.658951>,  <38.534573, 32.182331, 32.811287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588638, 32.548214, 32.658951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412669, 0.297477, 0.860936,
		0.900797, -0.273528, -0.337264,
		0.135162, 0.914707, -0.380843,
		38.629189, 32.822628, 32.544697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246357, 32.341679, 32.980621>,  <38.534573, 32.182331, 32.811287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246357, 32.341679, 32.980621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023476, 32.670074, 32.930824>,  <38.889748, 32.867111, 32.900944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023476, 32.670074, 32.930824>,  <39.246357, 32.341679, 32.980621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023476, 32.670074, 32.930824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291771, 0.333940, 0.896300,
		0.777425, 0.463101, -0.425614,
		-0.557207, 0.820988, -0.124494,
		38.856312, 32.916370, 32.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721424, 32.871090, 33.172123>,  <39.246357, 32.341679, 32.980621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721424, 32.871090, 33.172123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362961, 33.048340, 33.181458>,  <39.147884, 33.154690, 33.187057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362961, 33.048340, 33.181458>,  <39.721424, 32.871090, 33.172123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362961, 33.048340, 33.181458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229096, 0.416988, 0.879566,
		0.380024, 0.793576, -0.475204,
		-0.896156, 0.443124, 0.023340,
		39.094112, 33.181278, 33.188461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229713, 33.083897, 32.755852>,  <39.721424, 32.871090, 33.172123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229713, 33.083897, 32.755852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.574524, 33.278049, 32.697445>,  <40.781410, 33.394539, 32.662399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.574524, 33.278049, 32.697445>,  <40.229713, 33.083897, 32.755852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574524, 33.278049, 32.697445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044034, -0.358701, -0.932413,
		-0.504951, 0.797333, -0.330582,
		0.862024, 0.485380, -0.146017,
		40.833130, 33.423664, 32.653641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153343, 33.594444, 32.254498>,  <40.229713, 33.083897, 32.755852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153343, 33.594444, 32.254498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.540340, 33.493305, 32.256336>,  <40.772537, 33.432621, 32.257439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.540340, 33.493305, 32.256336>,  <40.153343, 33.594444, 32.254498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540340, 33.493305, 32.256336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052488, -0.218537, -0.974416,
		0.247386, 0.942501, -0.224706,
		0.967494, -0.252852, 0.004593,
		40.830589, 33.417450, 32.257713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417633, 34.084087, 31.736383>,  <40.153343, 33.594444, 32.254498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417633, 34.084087, 31.736383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689014, 33.798428, 31.805307>,  <40.851845, 33.627029, 31.846661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689014, 33.798428, 31.805307>,  <40.417633, 34.084087, 31.736383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689014, 33.798428, 31.805307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192801, -0.053238, -0.979793,
		0.708894, 0.697964, 0.101570,
		0.678452, -0.714152, 0.172308,
		40.892551, 33.584183, 31.857000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037457, 34.292667, 31.296825>,  <40.417633, 34.084087, 31.736383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037457, 34.292667, 31.296825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.041199, 33.897797, 31.360565>,  <41.043442, 33.660873, 31.398809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.041199, 33.897797, 31.360565>,  <41.037457, 34.292667, 31.296825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041199, 33.897797, 31.360565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107014, -0.157454, -0.981711,
		0.994214, 0.026233, 0.104169,
		0.009351, -0.987178, 0.159350,
		41.044003, 33.601643, 31.408371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610558, 34.063148, 30.908848>,  <41.037457, 34.292667, 31.296825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610558, 34.063148, 30.908848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.389206, 33.737728, 30.980301>,  <41.256393, 33.542477, 31.023172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.389206, 33.737728, 30.980301>,  <41.610558, 34.063148, 30.908848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389206, 33.737728, 30.980301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145028, -0.305296, -0.941149,
		0.820206, -0.494907, 0.286932,
		-0.553380, -0.813549, 0.178630,
		41.223190, 33.493664, 31.033890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930702, 33.561363, 30.440914>,  <41.610558, 34.063148, 30.908848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930702, 33.561363, 30.440914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586002, 33.377010, 30.525751>,  <41.379185, 33.266399, 30.576653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586002, 33.377010, 30.525751>,  <41.930702, 33.561363, 30.440914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586002, 33.377010, 30.525751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001444, -0.415814, -0.909449,
		0.507338, -0.784020, 0.357660,
		-0.861746, -0.460881, 0.212091,
		41.327480, 33.238747, 30.589378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029713, 32.816673, 30.164162>,  <41.930702, 33.561363, 30.440914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029713, 32.816673, 30.164162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637634, 32.888134, 30.198343>,  <41.402390, 32.931011, 30.218853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637634, 32.888134, 30.198343>,  <42.029713, 32.816673, 30.164162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637634, 32.888134, 30.198343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131137, -0.262178, -0.956068,
		-0.148402, -0.948338, 0.280413,
		-0.980194, 0.178655, 0.085455,
		41.343575, 32.941730, 30.223980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664486, 32.225758, 30.034601>,  <42.029713, 32.816673, 30.164162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664486, 32.225758, 30.034601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.401928, 32.518951, 29.963173>,  <41.244392, 32.694866, 29.920317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.401928, 32.518951, 29.963173>,  <41.664486, 32.225758, 30.034601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401928, 32.518951, 29.963173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059102, -0.285930, -0.956426,
		-0.752101, -0.617237, 0.231003,
		-0.656392, 0.732982, -0.178569,
		41.205009, 32.738846, 29.909603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055157, 31.936825, 29.810980>,  <41.664486, 32.225758, 30.034601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055157, 31.936825, 29.810980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.059700, 32.314548, 29.679432>,  <41.062428, 32.541183, 29.600504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.059700, 32.314548, 29.679432>,  <41.055157, 31.936825, 29.810980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059700, 32.314548, 29.679432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179111, -0.321651, -0.929763,
		-0.983763, 0.069464, 0.165483,
		0.011357, 0.944307, -0.328870,
		41.063107, 32.597839, 29.580770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572174, 32.051064, 29.350943>,  <41.055157, 31.936825, 29.810980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572174, 32.051064, 29.350943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818352, 32.347694, 29.244141>,  <40.966061, 32.525673, 29.180059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818352, 32.347694, 29.244141>,  <40.572174, 32.051064, 29.350943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818352, 32.347694, 29.244141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050283, -0.301128, -0.952257,
		-0.786572, 0.599490, -0.148040,
		0.615448, 0.741575, -0.267003,
		41.002987, 32.570168, 29.164040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465416, 32.027573, 28.623352>,  <40.572174, 32.051064, 29.350943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465416, 32.027573, 28.623352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.768120, 32.286350, 28.660837>,  <40.949741, 32.441616, 28.683329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.768120, 32.286350, 28.660837>,  <40.465416, 32.027573, 28.623352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768120, 32.286350, 28.660837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278412, -0.189272, -0.941628,
		-0.591441, 0.738676, -0.323350,
		0.756759, 0.646942, 0.093713,
		40.995148, 32.480434, 28.688951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387737, 32.476452, 28.008715>,  <40.465416, 32.027573, 28.623352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387737, 32.476452, 28.008715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.770611, 32.505611, 28.120773>,  <41.000336, 32.523106, 28.188009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.770611, 32.505611, 28.120773>,  <40.387737, 32.476452, 28.008715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770611, 32.505611, 28.120773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289163, -0.285709, -0.913649,
		0.013439, 0.955540, -0.294555,
		0.957186, 0.072896, 0.280146,
		41.057766, 32.527481, 28.204817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686657, 32.707939, 27.456959>,  <40.387737, 32.476452, 28.008715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686657, 32.707939, 27.456959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.011871, 32.589230, 27.657314>,  <41.207001, 32.518002, 27.777527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.011871, 32.589230, 27.657314>,  <40.686657, 32.707939, 27.456959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011871, 32.589230, 27.657314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478705, -0.148899, -0.865257,
		0.331370, 0.943267, 0.021008,
		0.813041, -0.296777, 0.500888,
		41.255783, 32.500198, 27.807581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406105, 32.928123, 27.100378>,  <40.686657, 32.707939, 27.456959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406105, 32.928123, 27.100378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.443939, 32.603119, 27.330467>,  <41.466640, 32.408115, 27.468521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.443939, 32.603119, 27.330467>,  <41.406105, 32.928123, 27.100378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443939, 32.603119, 27.330467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379831, -0.504649, -0.775279,
		0.920207, 0.291820, 0.260883,
		0.094587, -0.812509, 0.575224,
		41.472317, 32.359367, 27.503035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053604, 32.740082, 26.925692>,  <41.406105, 32.928123, 27.100378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053604, 32.740082, 26.925692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.896679, 32.411564, 27.091373>,  <41.802525, 32.214455, 27.190783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.896679, 32.411564, 27.091373>,  <42.053604, 32.740082, 26.925692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896679, 32.411564, 27.091373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388442, -0.556106, -0.734751,
		0.833790, -0.127355, 0.537192,
		-0.392310, -0.821296, 0.414205,
		41.778984, 32.165176, 27.215635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642864, 32.187317, 26.864136>,  <42.053604, 32.740082, 26.925692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642864, 32.187317, 26.864136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.301834, 31.991276, 26.936699>,  <42.097214, 31.873652, 26.980238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.301834, 31.991276, 26.936699>,  <42.642864, 32.187317, 26.864136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301834, 31.991276, 26.936699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273695, -0.714464, -0.643920,
		0.445197, -0.499341, 0.743275,
		-0.852579, -0.490102, 0.181410,
		42.046059, 31.844246, 26.991121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724030, 31.424776, 27.021299>,  <42.642864, 32.187317, 26.864136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724030, 31.424776, 27.021299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.351425, 31.463259, 26.880997>,  <42.127861, 31.486347, 26.796816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.351425, 31.463259, 26.880997>,  <42.724030, 31.424776, 27.021299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351425, 31.463259, 26.880997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132539, -0.808283, -0.573682,
		-0.338703, -0.580881, 0.740174,
		-0.931512, 0.096206, -0.350757,
		42.071972, 31.492121, 26.775770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569283, 30.774286, 26.765293>,  <42.724030, 31.424776, 27.021299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569283, 30.774286, 26.765293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.262356, 30.990942, 26.627972>,  <42.078201, 31.120935, 26.545580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.262356, 30.990942, 26.627972>,  <42.569283, 30.774286, 26.765293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262356, 30.990942, 26.627972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138803, -0.662936, -0.735696,
		-0.626062, -0.516864, 0.583864,
		-0.767320, 0.541634, -0.343298,
		42.032162, 31.153433, 26.524981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.893978, 30.258591, 26.751749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.862862, 30.564514, 26.495930>,  <41.844193, 30.748068, 26.342438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.862862, 30.564514, 26.495930>,  <41.893978, 30.258591, 26.751749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862862, 30.564514, 26.495930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125747, -0.628840, -0.767299,
		-0.989008, -0.140107, -0.047256,
		-0.077788, 0.764807, -0.639546,
		41.839527, 30.793957, 26.304066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463802, 29.893608, 26.238205>,  <41.893978, 30.258591, 26.751749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463802, 29.893608, 26.238205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.644131, 30.222961, 26.100336>,  <41.752327, 30.420574, 26.017614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.644131, 30.222961, 26.100336>,  <41.463802, 29.893608, 26.238205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644131, 30.222961, 26.100336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218322, -0.476125, -0.851845,
		-0.865502, 0.308781, -0.394411,
		0.450823, 0.823383, -0.344673,
		41.779377, 30.469976, 25.996935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139488, 30.165482, 25.610918>,  <41.463802, 29.893608, 26.238205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139488, 30.165482, 25.610918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.513039, 30.306633, 25.587770>,  <41.737167, 30.391325, 25.573881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.513039, 30.306633, 25.587770>,  <41.139488, 30.165482, 25.610918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513039, 30.306633, 25.587770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149836, -0.533082, -0.832690,
		-0.324689, 0.768959, -0.550707,
		0.933877, 0.352881, -0.057868,
		41.793201, 30.412497, 25.570410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230267, 30.603941, 24.966227>,  <41.139488, 30.165482, 25.610918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230267, 30.603941, 24.966227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.600517, 30.502131, 25.078253>,  <41.822666, 30.441044, 25.145468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.600517, 30.502131, 25.078253>,  <41.230267, 30.603941, 24.966227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600517, 30.502131, 25.078253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207858, -0.276498, -0.938266,
		0.316249, 0.926696, -0.203028,
		0.925625, -0.254525, 0.280064,
		41.878204, 30.425774, 25.162271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663723, 30.689960, 24.375786>,  <41.230267, 30.603941, 24.966227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663723, 30.689960, 24.375786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894020, 30.463100, 24.611366>,  <42.032196, 30.326984, 24.752714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894020, 30.463100, 24.611366>,  <41.663723, 30.689960, 24.375786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894020, 30.463100, 24.611366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401831, -0.431053, -0.807914,
		0.712079, 0.701807, -0.020275,
		0.575739, -0.567152, 0.588951,
		42.066742, 30.292955, 24.788052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243122, 30.714209, 24.105026>,  <41.663723, 30.689960, 24.375786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243122, 30.714209, 24.105026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.263412, 30.391354, 24.340298>,  <42.275585, 30.197641, 24.481461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.263412, 30.391354, 24.340298>,  <42.243122, 30.714209, 24.105026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263412, 30.391354, 24.340298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441731, -0.510067, -0.738042,
		0.895713, 0.297255, 0.330663,
		0.050726, -0.807137, 0.588181,
		42.278629, 30.149212, 24.516752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817627, 30.383427, 23.907124>,  <42.243122, 30.714209, 24.105026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817627, 30.383427, 23.907124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.650810, 30.079893, 24.107225>,  <42.550720, 29.897774, 24.227287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.650810, 30.079893, 24.107225>,  <42.817627, 30.383427, 23.907124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650810, 30.079893, 24.107225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283042, -0.631462, -0.721902,
		0.863694, -0.159467, 0.478124,
		-0.417037, -0.758832, 0.500254,
		42.525700, 29.852243, 24.257301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365662, 29.770788, 23.922016>,  <42.817627, 30.383427, 23.907124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365662, 29.770788, 23.922016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.005089, 29.612593, 23.992456>,  <42.788746, 29.517675, 24.034721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.005089, 29.612593, 23.992456>,  <43.365662, 29.770788, 23.922016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005089, 29.612593, 23.992456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156002, -0.676186, -0.720025,
		0.403839, -0.621580, 0.671232,
		-0.901431, -0.395488, 0.176102,
		42.734661, 29.493946, 24.045286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539738, 28.970062, 23.868139>,  <43.365662, 29.770788, 23.922016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539738, 28.970062, 23.868139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.141529, 28.999111, 23.843903>,  <42.902603, 29.016541, 23.829361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.141529, 28.999111, 23.843903>,  <43.539738, 28.970062, 23.868139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141529, 28.999111, 23.843903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013086, -0.740247, -0.672207,
		-0.093669, -0.668401, 0.737879,
		-0.995517, 0.072621, -0.060592,
		42.842873, 29.020897, 23.825726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346710, 28.343317, 23.707951>,  <43.539738, 28.970062, 23.868139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346710, 28.343317, 23.707951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.012684, 28.549723, 23.631645>,  <42.812267, 28.673567, 23.585863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.012684, 28.549723, 23.631645>,  <43.346710, 28.343317, 23.707951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012684, 28.549723, 23.631645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277030, -0.693993, -0.664551,
		-0.475304, -0.502100, 0.722483,
		-0.835069, 0.516013, -0.190761,
		42.762165, 28.704527, 23.574417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772522, 27.892347, 23.747219>,  <43.346710, 28.343317, 23.707951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772522, 27.892347, 23.747219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.692833, 28.200035, 23.504364>,  <42.645020, 28.384647, 23.358652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.692833, 28.200035, 23.504364>,  <42.772522, 27.892347, 23.747219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692833, 28.200035, 23.504364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036453, -0.624944, -0.779818,
		-0.979277, -0.133222, 0.152541,
		-0.199218, 0.769218, -0.607137,
		42.633068, 28.430801, 23.322224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353542, 27.598158, 23.182508>,  <42.772522, 27.892347, 23.747219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353542, 27.598158, 23.182508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.461884, 27.950666, 23.027592>,  <42.526890, 28.162172, 22.934641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.461884, 27.950666, 23.027592>,  <42.353542, 27.598158, 23.182508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461884, 27.950666, 23.027592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012353, -0.399117, -0.916817,
		-0.962541, 0.253108, -0.097216,
		0.270854, 0.881273, -0.387293,
		42.543140, 28.215048, 22.911404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974274, 27.690237, 22.552950>,  <42.353542, 27.598158, 23.182508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974274, 27.690237, 22.552950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.283756, 27.940557, 22.513470>,  <42.469448, 28.090750, 22.489782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.283756, 27.940557, 22.513470>,  <41.974274, 27.690237, 22.552950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283756, 27.940557, 22.513470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055344, -0.221961, -0.973484,
		-0.631116, 0.747733, -0.206368,
		0.773711, 0.625803, -0.098701,
		42.515869, 28.128298, 22.483860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812504, 28.123299, 22.042658>,  <41.974274, 27.690237, 22.552950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812504, 28.123299, 22.042658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.209362, 28.089777, 22.079803>,  <42.447475, 28.069664, 22.102091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.209362, 28.089777, 22.079803>,  <41.812504, 28.123299, 22.042658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209362, 28.089777, 22.079803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044670, -0.456069, -0.888823,
		0.116838, 0.885990, -0.448743,
		0.992146, -0.083803, 0.092864,
		42.507008, 28.064636, 22.107662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043335, 28.056171, 21.360603>,  <41.812504, 28.123299, 22.042658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043335, 28.056171, 21.360603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.375729, 27.964371, 21.563303>,  <42.575165, 27.909290, 21.684923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.375729, 27.964371, 21.563303>,  <42.043335, 28.056171, 21.360603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375729, 27.964371, 21.563303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345663, -0.500718, -0.793598,
		0.435870, 0.834632, -0.336760,
		0.830984, -0.229500, 0.506749,
		42.625023, 27.895521, 21.715328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659424, 28.104729, 20.936045>,  <42.043335, 28.056171, 21.360603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659424, 28.104729, 20.936045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.805763, 27.845533, 21.203259>,  <42.893566, 27.690016, 21.363586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.805763, 27.845533, 21.203259>,  <42.659424, 28.104729, 20.936045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805763, 27.845533, 21.203259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394135, -0.542376, -0.741947,
		0.843099, 0.534732, 0.056969,
		0.365844, -0.647989, 0.668034,
		42.915516, 27.651136, 21.403669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387253, 27.951050, 20.790131>,  <42.659424, 28.104729, 20.936045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387253, 27.951050, 20.790131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.249840, 27.642103, 21.003834>,  <43.167393, 27.456736, 21.132055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.249840, 27.642103, 21.003834>,  <43.387253, 27.951050, 20.790131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249840, 27.642103, 21.003834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318372, -0.630973, -0.707469,
		0.883528, -0.072950, 0.462662,
		-0.343537, -0.772367, 0.534257,
		43.146778, 27.410393, 21.164110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957134, 27.459753, 20.880112>,  <43.387253, 27.951050, 20.790131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957134, 27.459753, 20.880112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.617779, 27.256786, 20.940458>,  <43.414165, 27.135006, 20.976665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.617779, 27.256786, 20.940458>,  <43.957134, 27.459753, 20.880112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617779, 27.256786, 20.940458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230857, -0.611100, -0.757141,
		0.476381, -0.607523, 0.635592,
		-0.848391, -0.507418, 0.150865,
		43.363262, 27.104561, 20.985718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123840, 26.787119, 20.668314>,  <43.957134, 27.459753, 20.880112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123840, 26.787119, 20.668314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.724133, 26.800283, 20.660587>,  <43.484306, 26.808182, 20.655952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.724133, 26.800283, 20.660587>,  <44.123840, 26.787119, 20.668314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724133, 26.800283, 20.660587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002925, -0.570701, -0.821152,
		-0.038050, -0.820498, 0.570382,
		-0.999271, 0.032914, -0.019315,
		43.424351, 26.810158, 20.654793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971069, 26.109114, 20.510908>,  <44.123840, 26.787119, 20.668314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971069, 26.109114, 20.510908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.631203, 26.304790, 20.432161>,  <43.427284, 26.422197, 20.384912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.631203, 26.304790, 20.432161>,  <43.971069, 26.109114, 20.510908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631203, 26.304790, 20.432161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139895, -0.569072, -0.810300,
		-0.508422, -0.660946, 0.551958,
		-0.849669, 0.489190, -0.196866,
		43.376305, 26.451548, 20.373100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495094, 25.650558, 20.255135>,  <43.971069, 26.109114, 20.510908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495094, 25.650558, 20.255135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.344624, 25.988537, 20.103052>,  <43.254341, 26.191324, 20.011803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.344624, 25.988537, 20.103052>,  <43.495094, 25.650558, 20.255135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344624, 25.988537, 20.103052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087664, -0.440963, -0.893234,
		-0.922390, -0.302688, 0.239953,
		-0.376181, 0.844945, -0.380205,
		43.231770, 26.242020, 19.988991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934242, 25.470535, 19.846968>,  <43.495094, 25.650558, 20.255135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934242, 25.470535, 19.846968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.023830, 25.832798, 19.702957>,  <43.077583, 26.050156, 19.616550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.023830, 25.832798, 19.702957>,  <42.934242, 25.470535, 19.846968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023830, 25.832798, 19.702957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067587, -0.354089, -0.932766,
		-0.972249, 0.233247, -0.018095,
		0.223972, 0.905658, -0.360027,
		43.091022, 26.104496, 19.594950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454445, 25.654259, 19.400219>,  <42.934242, 25.470535, 19.846968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454445, 25.654259, 19.400219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809547, 25.818186, 19.316376>,  <43.022610, 25.916542, 19.266069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809547, 25.818186, 19.316376>,  <42.454445, 25.654259, 19.400219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809547, 25.818186, 19.316376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006431, -0.466358, -0.884573,
		-0.460268, 0.783938, -0.416648,
		0.887757, 0.409820, -0.209608,
		43.075874, 25.941132, 19.253492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549786, 25.740507, 18.647326>,  <42.454445, 25.654259, 19.400219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549786, 25.740507, 18.647326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.927986, 25.757591, 18.776442>,  <43.154907, 25.767841, 18.853912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.927986, 25.757591, 18.776442>,  <42.549786, 25.740507, 18.647326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927986, 25.757591, 18.776442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320351, -0.299406, -0.898739,
		0.058259, 0.953169, -0.296773,
		0.945506, 0.042712, 0.322792,
		43.211639, 25.770405, 18.873280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997940, 26.274408, 18.875797>,  <42.549786, 25.740507, 18.647326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997940, 26.274408, 18.875797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681141, 26.436314, 18.692974>,  <41.491062, 26.533457, 18.583281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681141, 26.436314, 18.692974>,  <41.997940, 26.274408, 18.875797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681141, 26.436314, 18.692974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049480, 0.703617, 0.708855,
		0.608512, 0.584029, -0.537237,
		-0.792001, 0.404764, -0.457057,
		41.443542, 26.557743, 18.555857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167412, 27.030876, 18.852608>,  <41.997940, 26.274408, 18.875797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167412, 27.030876, 18.852608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.775242, 26.960327, 18.817614>,  <41.539940, 26.917997, 18.796618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.775242, 26.960327, 18.817614>,  <42.167412, 27.030876, 18.852608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775242, 26.960327, 18.817614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190415, 0.736521, 0.649060,
		-0.050042, 0.653015, -0.755690,
		-0.980427, -0.176375, -0.087487,
		41.481113, 26.907415, 18.791368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789673, 27.716112, 18.755877>,  <42.167412, 27.030876, 18.852608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789673, 27.716112, 18.755877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.469387, 27.494268, 18.846441>,  <41.277214, 27.361162, 18.900780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.469387, 27.494268, 18.846441>,  <41.789673, 27.716112, 18.755877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469387, 27.494268, 18.846441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281040, 0.681568, 0.675633,
		-0.529027, 0.477360, -0.701610,
		-0.800716, -0.554610, 0.226411,
		41.229172, 27.327885, 18.914364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162262, 28.121927, 18.867788>,  <41.789673, 27.716112, 18.755877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162262, 28.121927, 18.867788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061661, 27.794470, 19.074308>,  <41.001301, 27.597996, 19.198221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061661, 27.794470, 19.074308>,  <41.162262, 28.121927, 18.867788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061661, 27.794470, 19.074308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357286, 0.574300, 0.736564,
		-0.899496, 0.000781, -0.436929,
		-0.251504, -0.818644, 0.516301,
		40.986210, 27.548876, 19.229198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479538, 28.159660, 19.065474>,  <41.162262, 28.121927, 18.867788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479538, 28.159660, 19.065474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648148, 27.910954, 19.329510>,  <40.749313, 27.761730, 19.487932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648148, 27.910954, 19.329510>,  <40.479538, 28.159660, 19.065474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648148, 27.910954, 19.329510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561639, 0.392494, 0.728361,
		-0.711952, -0.677758, -0.183760,
		0.421528, -0.621765, 0.660092,
		40.774605, 27.724424, 19.527538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929157, 27.836170, 19.466732>,  <40.479538, 28.159660, 19.065474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929157, 27.836170, 19.466732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.270500, 27.818317, 19.674500>,  <40.475304, 27.807606, 19.799160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.270500, 27.818317, 19.674500>,  <39.929157, 27.836170, 19.466732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270500, 27.818317, 19.674500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455222, 0.421797, 0.784130,
		-0.254086, -0.905591, 0.339625,
		0.853354, -0.044632, 0.519418,
		40.526508, 27.804928, 19.830324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676041, 27.776321, 20.071161>,  <39.929157, 27.836170, 19.466732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676041, 27.776321, 20.071161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047150, 27.884090, 20.174427>,  <40.269814, 27.948751, 20.236387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047150, 27.884090, 20.174427>,  <39.676041, 27.776321, 20.071161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047150, 27.884090, 20.174427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324600, 0.241490, 0.914504,
		0.184039, -0.932254, 0.311501,
		0.927774, 0.269417, 0.258166,
		40.325481, 27.964916, 20.251877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813332, 27.552015, 20.780966>,  <39.676041, 27.776321, 20.071161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813332, 27.552015, 20.780966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.090733, 27.837929, 20.744881>,  <40.257172, 28.009478, 20.723230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.090733, 27.837929, 20.744881>,  <39.813332, 27.552015, 20.780966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090733, 27.837929, 20.744881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072787, 0.194087, 0.978280,
		0.716768, -0.671873, 0.186627,
		0.693502, 0.714784, -0.090212,
		40.298782, 28.052364, 20.717817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991417, 27.709934, 21.445488>,  <39.813332, 27.552015, 20.780966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991417, 27.709934, 21.445488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157272, 28.006584, 21.234558>,  <40.256786, 28.184574, 21.108000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157272, 28.006584, 21.234558>,  <39.991417, 27.709934, 21.445488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157272, 28.006584, 21.234558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138396, 0.521351, 0.842045,
		0.899401, -0.422123, 0.113534,
		0.414637, 0.741623, -0.527324,
		40.281662, 28.229071, 21.076361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537174, 27.828371, 21.815676>,  <39.991417, 27.709934, 21.445488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537174, 27.828371, 21.815676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521572, 28.168465, 21.605692>,  <40.512211, 28.372520, 21.479702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521572, 28.168465, 21.605692>,  <40.537174, 27.828371, 21.815676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521572, 28.168465, 21.605692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252531, 0.516691, 0.818082,
		0.966803, -0.100660, -0.234862,
		-0.039003, 0.850234, -0.524958,
		40.509872, 28.423534, 21.448204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101089, 28.161392, 21.934212>,  <40.537174, 27.828371, 21.815676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101089, 28.161392, 21.934212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822952, 28.436415, 21.850536>,  <40.656071, 28.601429, 21.800331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.822952, 28.436415, 21.850536>,  <41.101089, 28.161392, 21.934212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822952, 28.436415, 21.850536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120536, 0.398527, 0.909202,
		0.708495, 0.606995, -0.359989,
		-0.695346, 0.687557, -0.209189,
		40.614349, 28.642681, 21.787779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360088, 28.887136, 22.232498>,  <41.101089, 28.161392, 21.934212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360088, 28.887136, 22.232498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.964344, 28.929701, 22.192833>,  <40.726898, 28.955240, 22.169035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.964344, 28.929701, 22.192833>,  <41.360088, 28.887136, 22.232498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964344, 28.929701, 22.192833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047893, 0.405398, 0.912885,
		0.137342, 0.907925, -0.395991,
		-0.989365, 0.106412, -0.099161,
		40.667534, 28.961624, 22.163084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231209, 29.498720, 22.408972>,  <41.360088, 28.887136, 22.232498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231209, 29.498720, 22.408972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.877583, 29.320452, 22.465277>,  <40.665409, 29.213491, 22.499060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.877583, 29.320452, 22.465277>,  <41.231209, 29.498720, 22.408972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877583, 29.320452, 22.465277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011661, 0.322116, 0.946628,
		-0.467225, 0.835236, -0.289967,
		-0.884061, -0.445670, 0.140761,
		40.612366, 29.186750, 22.507505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765514, 30.071104, 22.700184>,  <41.231209, 29.498720, 22.408972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765514, 30.071104, 22.700184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.590630, 29.721439, 22.784742>,  <40.485699, 29.511641, 22.835478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.590630, 29.721439, 22.784742>,  <40.765514, 30.071104, 22.700184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590630, 29.721439, 22.784742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003544, 0.233376, 0.972380,
		-0.899353, 0.425882, -0.098936,
		-0.437209, -0.874162, 0.211397,
		40.459469, 29.459190, 22.848162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192795, 30.264914, 23.140335>,  <40.765514, 30.071104, 22.700184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192795, 30.264914, 23.140335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220982, 29.870199, 23.198696>,  <40.237892, 29.633371, 23.233713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220982, 29.870199, 23.198696>,  <40.192795, 30.264914, 23.140335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220982, 29.870199, 23.198696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246305, 0.124523, 0.961160,
		-0.966627, -0.103664, -0.234276,
		0.070465, -0.986787, 0.145900,
		40.242123, 29.574163, 23.242466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487698, 29.998089, 23.293373>,  <40.192795, 30.264914, 23.140335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487698, 29.998089, 23.293373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.782459, 29.767521, 23.434633>,  <39.959316, 29.629181, 23.519390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.782459, 29.767521, 23.434633>,  <39.487698, 29.998089, 23.293373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782459, 29.767521, 23.434633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336529, 0.140270, 0.931167,
		-0.586278, -0.805026, -0.090616,
		0.736903, -0.576417, 0.353152,
		40.003529, 29.594595, 23.540579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146431, 29.540081, 23.681664>,  <39.487698, 29.998089, 23.293373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146431, 29.540081, 23.681664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521641, 29.580635, 23.814222>,  <39.746769, 29.604967, 23.893757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521641, 29.580635, 23.814222>,  <39.146431, 29.540081, 23.681664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521641, 29.580635, 23.814222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345884, 0.214262, 0.913486,
		0.021610, -0.971500, 0.236051,
		0.938028, 0.101387, 0.331397,
		39.803051, 29.611052, 23.913641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126369, 29.075991, 24.252180>,  <39.146431, 29.540081, 23.681664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126369, 29.075991, 24.252180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441605, 29.318729, 24.293476>,  <39.630745, 29.464373, 24.318254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441605, 29.318729, 24.293476>,  <39.126369, 29.075991, 24.252180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441605, 29.318729, 24.293476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256448, 0.171202, 0.951275,
		0.559604, -0.776161, 0.290546,
		0.788085, 0.606848, 0.103239,
		39.678032, 29.500784, 24.324448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410412, 28.861807, 24.943272>,  <39.126369, 29.075991, 24.252180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410412, 28.861807, 24.943272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589993, 29.208282, 24.855495>,  <39.697742, 29.416168, 24.802830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589993, 29.208282, 24.855495>,  <39.410412, 28.861807, 24.943272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589993, 29.208282, 24.855495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165644, 0.322003, 0.932135,
		0.878066, -0.382139, 0.288044,
		0.448956, 0.866189, -0.219441,
		39.724678, 29.468140, 24.789663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812405, 28.932474, 25.511868>,  <39.410412, 28.861807, 24.943272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812405, 28.932474, 25.511868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783821, 29.289835, 25.334454>,  <39.766670, 29.504251, 25.228004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783821, 29.289835, 25.334454>,  <39.812405, 28.932474, 25.511868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783821, 29.289835, 25.334454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121390, 0.433578, 0.892902,
		0.990029, 0.117651, 0.077466,
		-0.071463, 0.893403, -0.443537,
		39.762383, 29.557856, 25.201393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.256989, 32.624012, 28.678083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889252, 32.578068, 28.527552>,  <41.668610, 32.550503, 28.437233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889252, 32.578068, 28.527552>,  <42.256989, 32.624012, 28.678083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889252, 32.578068, 28.527552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370663, 0.573700, 0.730395,
		0.132009, 0.810972, -0.569998,
		-0.919338, -0.114858, -0.376331,
		41.613449, 32.543610, 28.414652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919075, 33.336555, 28.571960>,  <42.256989, 32.624012, 28.678083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919075, 33.336555, 28.571960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.625294, 33.069473, 28.620522>,  <41.449024, 32.909222, 28.649658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.625294, 33.069473, 28.620522>,  <41.919075, 33.336555, 28.571960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625294, 33.069473, 28.620522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292070, 0.472461, 0.831550,
		-0.612591, 0.575279, -0.542020,
		-0.734457, -0.667708, 0.121404,
		41.404957, 32.869160, 28.656942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517799, 33.757179, 28.896322>,  <41.919075, 33.336555, 28.571960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517799, 33.757179, 28.896322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.375015, 33.393730, 28.983028>,  <41.289345, 33.175663, 29.035053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.375015, 33.393730, 28.983028>,  <41.517799, 33.757179, 28.896322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375015, 33.393730, 28.983028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357895, 0.347378, 0.866741,
		-0.862838, 0.231814, -0.449191,
		-0.356961, -0.908620, 0.216766,
		41.267925, 33.121143, 29.048058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908878, 33.831852, 29.202492>,  <41.517799, 33.757179, 28.896322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908878, 33.831852, 29.202492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.968086, 33.450535, 29.307806>,  <41.003613, 33.221745, 29.370995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.968086, 33.450535, 29.307806>,  <40.908878, 33.831852, 29.202492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968086, 33.450535, 29.307806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381662, 0.190533, 0.904451,
		-0.912373, -0.234364, -0.335633,
		0.148022, -0.953295, 0.263285,
		41.012493, 33.164547, 29.386791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373882, 33.755581, 29.718204>,  <40.908878, 33.831852, 29.202492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373882, 33.755581, 29.718204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.622097, 33.444283, 29.756708>,  <40.771027, 33.257504, 29.779810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.622097, 33.444283, 29.756708>,  <40.373882, 33.755581, 29.718204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622097, 33.444283, 29.756708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152267, 0.000833, 0.988339,
		-0.769250, -0.627960, -0.117984,
		0.620539, -0.778245, 0.096258,
		40.808258, 33.210808, 29.785585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122864, 33.342754, 30.341259>,  <40.373882, 33.755581, 29.718204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122864, 33.342754, 30.341259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493065, 33.195110, 30.307308>,  <40.715187, 33.106525, 30.286938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493065, 33.195110, 30.307308>,  <40.122864, 33.342754, 30.341259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493065, 33.195110, 30.307308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060304, -0.077630, 0.995157,
		-0.373908, -0.926139, -0.049588,
		0.925503, -0.369107, -0.084876,
		40.770718, 33.084377, 30.281845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111362, 32.825584, 30.761961>,  <40.122864, 33.342754, 30.341259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111362, 32.825584, 30.761961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486076, 32.959904, 30.722630>,  <40.710907, 33.040493, 30.699030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486076, 32.959904, 30.722630>,  <40.111362, 32.825584, 30.761961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486076, 32.959904, 30.722630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109183, -0.013548, 0.993929,
		0.332424, -0.941838, -0.049355,
		0.936789, 0.335794, -0.098329,
		40.767113, 33.060642, 30.693130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571064, 32.447357, 31.329731>,  <40.111362, 32.825584, 30.761961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571064, 32.447357, 31.329731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.787354, 32.762447, 31.211676>,  <40.917126, 32.951500, 31.140842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.787354, 32.762447, 31.211676>,  <40.571064, 32.447357, 31.329731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787354, 32.762447, 31.211676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175824, 0.237266, 0.955401,
		0.822620, -0.568500, -0.010205,
		0.540724, 0.787726, -0.295136,
		40.949570, 32.998764, 31.123135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133434, 32.358215, 31.703180>,  <40.571064, 32.447357, 31.329731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133434, 32.358215, 31.703180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126514, 32.744366, 31.599058>,  <41.122364, 32.976055, 31.536585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.126514, 32.744366, 31.599058>,  <41.133434, 32.358215, 31.703180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126514, 32.744366, 31.599058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152168, 0.259853, 0.953583,
		0.988203, -0.023115, -0.151394,
		-0.017298, 0.965371, -0.260305,
		41.121326, 33.033978, 31.520967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716965, 32.619423, 31.949579>,  <41.133434, 32.358215, 31.703180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716965, 32.619423, 31.949579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.497223, 32.949394, 31.896364>,  <41.365379, 33.147377, 31.864435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.497223, 32.949394, 31.896364>,  <41.716965, 32.619423, 31.949579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497223, 32.949394, 31.896364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230010, 0.302354, 0.925028,
		0.803308, 0.477569, -0.355842,
		-0.549355, 0.824930, -0.133038,
		41.332417, 33.196873, 31.856453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048058, 33.161945, 32.401413>,  <41.716965, 32.619423, 31.949579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048058, 33.161945, 32.401413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.662861, 33.251190, 32.340919>,  <41.431744, 33.304737, 32.304623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.662861, 33.251190, 32.340919>,  <42.048058, 33.161945, 32.401413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662861, 33.251190, 32.340919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024124, 0.630172, 0.776080,
		0.268457, 0.743709, -0.612232,
		-0.962989, 0.223114, -0.151233,
		41.373962, 33.318123, 32.295551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955280, 33.948643, 32.452671>,  <42.048058, 33.161945, 32.401413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955280, 33.948643, 32.452671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.603859, 33.769871, 32.520081>,  <41.393005, 33.662609, 32.560528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.603859, 33.769871, 32.520081>,  <41.955280, 33.948643, 32.452671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603859, 33.769871, 32.520081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208211, 0.675880, 0.706990,
		-0.429880, 0.586037, -0.686851,
		-0.878550, -0.446931, 0.168528,
		41.340294, 33.635792, 32.570641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367878, 34.514076, 32.370308>,  <41.955280, 33.948643, 32.452671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367878, 34.514076, 32.370308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.340050, 34.188652, 32.601227>,  <41.323353, 33.993397, 32.739780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.340050, 34.188652, 32.601227>,  <41.367878, 34.514076, 32.370308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340050, 34.188652, 32.601227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078366, 0.581372, 0.809855,
		-0.994494, 0.011101, -0.104202,
		-0.069571, -0.813562, 0.577301,
		41.319180, 33.944584, 32.774418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915634, 34.663876, 32.960556>,  <41.367878, 34.514076, 32.370308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915634, 34.663876, 32.960556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132881, 34.343807, 33.062344>,  <41.263229, 34.151768, 33.123417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132881, 34.343807, 33.062344>,  <40.915634, 34.663876, 32.960556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132881, 34.343807, 33.062344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080405, 0.252111, 0.964352,
		-0.835801, -0.544213, 0.072587,
		0.543112, -0.800170, 0.254472,
		41.295815, 34.103756, 33.138683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776234, 35.150520, 32.424442>,  <40.915634, 34.663876, 32.960556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776234, 35.150520, 32.424442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.734390, 35.502853, 32.239754>,  <40.709286, 35.714252, 32.128941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.734390, 35.502853, 32.239754>,  <40.776234, 35.150520, 32.424442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734390, 35.502853, 32.239754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060462, -0.457774, -0.887010,
		-0.992674, -0.120702, -0.005372,
		-0.104605, 0.880837, -0.461718,
		40.703011, 35.767105, 32.101238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277859, 35.046638, 31.928080>,  <40.776234, 35.150520, 32.424442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277859, 35.046638, 31.928080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.448849, 35.390743, 31.816935>,  <40.551441, 35.597206, 31.750248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.448849, 35.390743, 31.816935>,  <40.277859, 35.046638, 31.928080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448849, 35.390743, 31.816935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187024, -0.216559, -0.958188,
		-0.884470, 0.461568, 0.068317,
		0.427474, 0.860266, -0.277864,
		40.577091, 35.648823, 31.733576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896759, 35.275761, 31.372433>,  <40.277859, 35.046638, 31.928080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896759, 35.275761, 31.372433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.245377, 35.466816, 31.328133>,  <40.454548, 35.581451, 31.301554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.245377, 35.466816, 31.328133>,  <39.896759, 35.275761, 31.372433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245377, 35.466816, 31.328133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043435, -0.149772, -0.987766,
		-0.488386, 0.865694, -0.109787,
		0.871546, 0.477643, -0.110748,
		40.506840, 35.610107, 31.294909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780373, 35.723934, 30.804029>,  <39.896759, 35.275761, 31.372433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780373, 35.723934, 30.804029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.177807, 35.686817, 30.829889>,  <40.416267, 35.664547, 30.845406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.177807, 35.686817, 30.829889>,  <39.780373, 35.723934, 30.804029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177807, 35.686817, 30.829889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076659, 0.132339, -0.988236,
		0.083144, 0.986852, 0.138603,
		0.993585, -0.092791, 0.064648,
		40.475883, 35.658981, 30.849283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974613, 36.170853, 30.299976>,  <39.780373, 35.723934, 30.804029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974613, 36.170853, 30.299976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.277378, 35.915783, 30.357201>,  <40.459038, 35.762741, 30.391535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.277378, 35.915783, 30.357201>,  <39.974613, 36.170853, 30.299976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277378, 35.915783, 30.357201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292986, 0.135433, -0.946476,
		0.584165, 0.758310, 0.289339,
		0.756909, -0.637670, 0.143059,
		40.504452, 35.724483, 30.400118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604362, 36.514175, 29.956005>,  <39.974613, 36.170853, 30.299976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604362, 36.514175, 29.956005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.680634, 36.124916, 30.007568>,  <40.726398, 35.891361, 30.038506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.680634, 36.124916, 30.007568>,  <40.604362, 36.514175, 29.956005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680634, 36.124916, 30.007568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327131, -0.060817, -0.943020,
		0.925541, 0.221986, 0.306751,
		0.190681, -0.973151, 0.128907,
		40.737839, 35.832970, 30.046240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290714, 36.449234, 29.787695>,  <40.604362, 36.514175, 29.956005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290714, 36.449234, 29.787695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157368, 36.073048, 29.761196>,  <41.077362, 35.847336, 29.745296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157368, 36.073048, 29.761196>,  <41.290714, 36.449234, 29.787695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157368, 36.073048, 29.761196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407720, -0.080452, -0.909556,
		0.850078, -0.330223, 0.410267,
		-0.333364, -0.940468, -0.066248,
		41.057358, 35.790909, 29.741322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800606, 36.057468, 29.578171>,  <41.290714, 36.449234, 29.787695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800606, 36.057468, 29.578171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491219, 35.823261, 29.481079>,  <41.305588, 35.682739, 29.422825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491219, 35.823261, 29.481079>,  <41.800606, 36.057468, 29.578171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491219, 35.823261, 29.481079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364791, -0.098049, -0.925913,
		0.518337, -0.804710, 0.289429,
		-0.773469, -0.585516, -0.242728,
		41.259178, 35.647606, 29.408260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981777, 35.441456, 29.407269>,  <41.800606, 36.057468, 29.578171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981777, 35.441456, 29.407269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635288, 35.432243, 29.207621>,  <41.427395, 35.426716, 29.087831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635288, 35.432243, 29.207621>,  <41.981777, 35.441456, 29.407269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635288, 35.432243, 29.207621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488591, -0.248080, -0.836501,
		-0.104552, -0.968465, 0.226149,
		-0.866226, -0.023036, -0.499121,
		41.375420, 35.425335, 29.057884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005539, 34.845661, 28.955030>,  <41.981777, 35.441456, 29.407269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005539, 34.845661, 28.955030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701038, 35.047836, 28.792538>,  <41.518337, 35.169140, 28.695042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701038, 35.047836, 28.792538>,  <42.005539, 34.845661, 28.955030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701038, 35.047836, 28.792538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301920, -0.278149, -0.911854,
		-0.573877, -0.816803, 0.059140,
		-0.761255, 0.505437, -0.406233,
		41.472660, 35.199467, 28.670668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865257, 34.428692, 28.435320>,  <42.005539, 34.845661, 28.955030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865257, 34.428692, 28.435320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.708546, 34.787720, 28.354446>,  <41.614517, 35.003136, 28.305922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.708546, 34.787720, 28.354446>,  <41.865257, 34.428692, 28.435320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708546, 34.787720, 28.354446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303717, -0.081267, -0.949290,
		-0.868484, -0.433321, -0.240768,
		-0.391781, 0.897568, -0.202186,
		41.591011, 35.056992, 28.293791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362301, 34.288231, 27.858728>,  <41.865257, 34.428692, 28.435320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362301, 34.288231, 27.858728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.408661, 34.685291, 27.844812>,  <41.436478, 34.923527, 27.836462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.408661, 34.685291, 27.844812>,  <41.362301, 34.288231, 27.858728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408661, 34.685291, 27.844812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127701, -0.049626, -0.990570,
		-0.985018, 0.110361, -0.132514,
		0.115897, 0.992652, -0.034790,
		41.443428, 34.983086, 27.834375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956047, 34.544846, 27.384640>,  <41.362301, 34.288231, 27.858728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956047, 34.544846, 27.384640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264042, 34.798080, 27.416443>,  <41.448837, 34.950020, 27.435524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264042, 34.798080, 27.416443>,  <40.956047, 34.544846, 27.384640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264042, 34.798080, 27.416443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159484, -0.070307, -0.984694,
		-0.617807, 0.770881, -0.155102,
		0.769987, 0.633087, 0.079507,
		41.495037, 34.988007, 27.440294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067024, 34.695480, 26.741083>,  <40.956047, 34.544846, 27.384640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067024, 34.695480, 26.741083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.400158, 34.889439, 26.847860>,  <41.600040, 35.005814, 26.911926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.400158, 34.889439, 26.847860>,  <41.067024, 34.695480, 26.741083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400158, 34.889439, 26.847860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251525, 0.098063, -0.962870,
		-0.493070, 0.869056, -0.040293,
		0.832837, 0.484897, 0.266942,
		41.650009, 35.034908, 26.927942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734276, 35.305992, 26.686924>,  <41.067024, 34.695480, 26.741083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734276, 35.305992, 26.686924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.594505, 35.604057, 26.459719>,  <40.510643, 35.782894, 26.323397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.594505, 35.604057, 26.459719>,  <40.734276, 35.305992, 26.686924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594505, 35.604057, 26.459719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421020, 0.416706, 0.805666,
		0.837045, 0.520664, 0.168120,
		-0.349425, 0.745161, -0.568012,
		40.489677, 35.827606, 26.289314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798042, 35.783867, 27.116247>,  <40.734276, 35.305992, 26.686924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798042, 35.783867, 27.116247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.563610, 35.964855, 26.847389>,  <40.422951, 36.073448, 26.686075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.563610, 35.964855, 26.847389>,  <40.798042, 35.783867, 27.116247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563610, 35.964855, 26.847389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430775, 0.528591, 0.731454,
		0.686249, 0.718236, -0.114886,
		-0.586085, 0.452470, -0.672143,
		40.387783, 36.100597, 26.645746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885483, 36.543324, 27.219587>,  <40.798042, 35.783867, 27.116247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885483, 36.543324, 27.219587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.526634, 36.461815, 27.062796>,  <40.311325, 36.412910, 26.968719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.526634, 36.461815, 27.062796>,  <40.885483, 36.543324, 27.219587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526634, 36.461815, 27.062796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441719, 0.428954, 0.787961,
		0.007576, 0.880042, -0.474835,
		-0.897121, -0.203774, -0.391981,
		40.257500, 36.400684, 26.945202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592590, 37.254757, 27.393600>,  <40.885483, 36.543324, 27.219587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592590, 37.254757, 27.393600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.314259, 36.987965, 27.287046>,  <40.147259, 36.827888, 27.223114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.314259, 36.987965, 27.287046>,  <40.592590, 37.254757, 27.393600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314259, 36.987965, 27.287046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639390, 0.406355, 0.652729,
		-0.327108, 0.624514, -0.709213,
		-0.695830, -0.666977, -0.266386,
		40.105511, 36.787872, 27.207130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995392, 37.626534, 27.398050>,  <40.592590, 37.254757, 27.393600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995392, 37.626534, 27.398050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885262, 37.246899, 27.459288>,  <39.819183, 37.019119, 27.496029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885262, 37.246899, 27.459288>,  <39.995392, 37.626534, 27.398050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885262, 37.246899, 27.459288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687796, 0.305726, 0.658383,
		-0.671665, 0.075971, -0.736950,
		-0.275323, -0.949084, 0.153092,
		39.802666, 36.962173, 27.505215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276020, 37.677040, 27.559393>,  <39.995392, 37.626534, 27.398050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276020, 37.677040, 27.559393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369770, 37.304111, 27.669558>,  <39.426022, 37.080357, 27.735657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369770, 37.304111, 27.669558>,  <39.276020, 37.677040, 27.559393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369770, 37.304111, 27.669558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673033, 0.048815, 0.738000,
		-0.701495, -0.358330, -0.616040,
		0.234375, -0.932318, 0.275411,
		39.440083, 37.024418, 27.752182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593380, 37.330521, 27.578812>,  <39.276020, 37.677040, 27.559393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593380, 37.330521, 27.578812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.853642, 37.124882, 27.802366>,  <39.009800, 37.001499, 27.936499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.853642, 37.124882, 27.802366>,  <38.593380, 37.330521, 27.578812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853642, 37.124882, 27.802366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726020, -0.205414, 0.656278,
		-0.222583, -0.832775, -0.506895,
		0.650655, -0.514092, 0.558890,
		39.048836, 36.970654, 27.970032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184170, 36.730755, 27.846790>,  <38.593380, 37.330521, 27.578812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184170, 36.730755, 27.846790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504650, 36.775223, 28.081980>,  <38.696938, 36.801903, 28.223093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504650, 36.775223, 28.081980>,  <38.184170, 36.730755, 27.846790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504650, 36.775223, 28.081980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570540, -0.154359, 0.806633,
		0.180436, -0.981740, -0.060243,
		0.801203, 0.111175, 0.587974,
		38.745010, 36.808575, 28.258371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252899, 36.194077, 28.286421>,  <38.184170, 36.730755, 27.846790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252899, 36.194077, 28.286421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.447170, 36.485355, 28.479851>,  <38.563732, 36.660122, 28.595909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.447170, 36.485355, 28.479851>,  <38.252899, 36.194077, 28.286421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447170, 36.485355, 28.479851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511648, -0.211723, 0.832700,
		0.708754, -0.651844, 0.269752,
		0.485678, 0.728198, 0.483574,
		38.592873, 36.703815, 28.624924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531399, 35.933678, 28.901567>,  <38.252899, 36.194077, 28.286421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531399, 35.933678, 28.901567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.520706, 36.325481, 28.981422>,  <38.514290, 36.560562, 29.029335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.520706, 36.325481, 28.981422>,  <38.531399, 35.933678, 28.901567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520706, 36.325481, 28.981422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469400, -0.188619, 0.862604,
		0.882581, -0.070653, 0.464822,
		-0.026728, 0.979506, 0.199636,
		38.512688, 36.619331, 29.041313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844791, 36.075672, 29.629299>,  <38.531399, 35.933678, 28.901567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844791, 36.075672, 29.629299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.604256, 36.378078, 29.525892>,  <38.459934, 36.559525, 29.463848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.604256, 36.378078, 29.525892>,  <38.844791, 36.075672, 29.629299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604256, 36.378078, 29.525892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424977, -0.028652, 0.904750,
		0.676600, 0.653923, 0.338520,
		-0.601337, 0.756018, -0.258516,
		38.423855, 36.604885, 29.448338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810726, 36.300537, 30.272707>,  <38.844791, 36.075672, 29.629299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810726, 36.300537, 30.272707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.543709, 36.497299, 30.049129>,  <38.383499, 36.615356, 29.914984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.543709, 36.497299, 30.049129>,  <38.810726, 36.300537, 30.272707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543709, 36.497299, 30.049129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558964, 0.164844, 0.812641,
		0.491881, 0.854901, 0.164917,
		-0.667542, 0.491905, -0.558942,
		38.343445, 36.644871, 29.881447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.927383, 33.920200, 23.442410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566837, 34.005894, 23.291868>,  <41.350510, 34.057312, 23.201544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566837, 34.005894, 23.291868>,  <41.927383, 33.920200, 23.442410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566837, 34.005894, 23.291868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107521, 0.731137, 0.673704,
		0.419498, 0.647720, -0.635987,
		-0.901366, 0.214236, -0.376354,
		41.296429, 34.070164, 23.178963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912880, 34.673267, 23.328964>,  <41.927383, 33.920200, 23.442410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912880, 34.673267, 23.328964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533001, 34.560066, 23.382603>,  <41.305073, 34.492146, 23.414785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533001, 34.560066, 23.382603>,  <41.912880, 34.673267, 23.328964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533001, 34.560066, 23.382603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129074, 0.743862, 0.655751,
		-0.285330, 0.605457, -0.742972,
		-0.949698, -0.283004, 0.134097,
		41.248093, 34.475166, 23.422832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601887, 35.422485, 23.424562>,  <41.912880, 34.673267, 23.328964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601887, 35.422485, 23.424562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334656, 35.146191, 23.535236>,  <41.174316, 34.980415, 23.601641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334656, 35.146191, 23.535236>,  <41.601887, 35.422485, 23.424562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334656, 35.146191, 23.535236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318889, 0.601746, 0.732265,
		-0.672295, 0.400980, -0.622282,
		-0.668079, -0.690736, 0.276683,
		41.134232, 34.938969, 23.618240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963799, 35.790634, 23.509520>,  <41.601887, 35.422485, 23.424562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963799, 35.790634, 23.509520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932968, 35.444477, 23.707571>,  <40.914471, 35.236782, 23.826403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932968, 35.444477, 23.707571>,  <40.963799, 35.790634, 23.509520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932968, 35.444477, 23.707571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402458, 0.481355, 0.778669,
		-0.912188, -0.139252, -0.385386,
		-0.077076, -0.865393, 0.495130,
		40.909847, 35.184860, 23.856110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291508, 35.816113, 23.829472>,  <40.963799, 35.790634, 23.509520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291508, 35.816113, 23.829472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523529, 35.561661, 24.032991>,  <40.662743, 35.408989, 24.155104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523529, 35.561661, 24.032991>,  <40.291508, 35.816113, 23.829472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523529, 35.561661, 24.032991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336722, 0.381502, 0.860857,
		-0.741727, -0.670664, 0.007090,
		0.580051, -0.636133, 0.508798,
		40.697544, 35.370819, 24.185631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875179, 35.579430, 24.355984>,  <40.291508, 35.816113, 23.829472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875179, 35.579430, 24.355984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250553, 35.513950, 24.477669>,  <40.475777, 35.474663, 24.550680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250553, 35.513950, 24.477669>,  <39.875179, 35.579430, 24.355984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250553, 35.513950, 24.477669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236193, 0.338594, 0.910806,
		-0.252106, -0.926583, 0.279082,
		0.938432, -0.163703, 0.304214,
		40.532082, 35.464840, 24.568933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821583, 35.280853, 24.943958>,  <39.875179, 35.579430, 24.355984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821583, 35.280853, 24.943958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203285, 35.398872, 24.963339>,  <40.432304, 35.469685, 24.974968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203285, 35.398872, 24.963339>,  <39.821583, 35.280853, 24.943958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203285, 35.398872, 24.963339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128795, 0.259374, 0.957151,
		0.269858, -0.919598, 0.285510,
		0.954248, 0.295067, 0.048446,
		40.489559, 35.487389, 24.977875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024170, 35.110779, 25.645262>,  <39.821583, 35.280853, 24.943958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024170, 35.110779, 25.645262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301193, 35.376186, 25.532057>,  <40.467407, 35.535431, 25.464134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301193, 35.376186, 25.532057>,  <40.024170, 35.110779, 25.645262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301193, 35.376186, 25.532057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032230, 0.363476, 0.931046,
		0.720638, -0.653928, 0.230344,
		0.692562, 0.663523, -0.283011,
		40.508961, 35.575245, 25.447153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569630, 34.989315, 26.058813>,  <40.024170, 35.110779, 25.645262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569630, 34.989315, 26.058813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537746, 35.371807, 25.946196>,  <40.518616, 35.601303, 25.878626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537746, 35.371807, 25.946196>,  <40.569630, 34.989315, 26.058813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537746, 35.371807, 25.946196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144496, 0.268374, 0.952416,
		0.986290, 0.116597, 0.116780,
		-0.079708, 0.956233, -0.281542,
		40.513832, 35.658676, 25.861732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291901, 35.145039, 26.186584>,  <40.569630, 34.989315, 26.058813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291901, 35.145039, 26.186584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622768, 35.107861, 26.408270>,  <41.821289, 35.085552, 26.541281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622768, 35.107861, 26.408270>,  <41.291901, 35.145039, 26.186584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622768, 35.107861, 26.408270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492949, -0.353487, -0.795015,
		0.269801, 0.930811, -0.246576,
		0.827169, -0.092946, 0.554213,
		41.870918, 35.079975, 26.574533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861099, 35.456261, 25.832825>,  <41.291901, 35.145039, 26.186584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861099, 35.456261, 25.832825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070019, 35.218990, 26.077887>,  <42.195370, 35.076626, 26.224924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070019, 35.218990, 26.077887>,  <41.861099, 35.456261, 25.832825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070019, 35.218990, 26.077887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575384, -0.285119, -0.766577,
		0.629397, 0.752891, 0.192390,
		0.522296, -0.593180, 0.612654,
		42.226707, 35.041035, 26.261683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546680, 35.524776, 25.629772>,  <41.861099, 35.456261, 25.832825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546680, 35.524776, 25.629772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583988, 35.177097, 25.824005>,  <42.606373, 34.968491, 25.940546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583988, 35.177097, 25.824005>,  <42.546680, 35.524776, 25.629772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583988, 35.177097, 25.824005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646332, -0.318117, -0.693583,
		0.757334, 0.378541, 0.532120,
		0.093273, -0.869200, 0.485584,
		42.611969, 34.916336, 25.969681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263939, 35.312267, 25.809214>,  <42.546680, 35.524776, 25.629772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263939, 35.312267, 25.809214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050404, 34.974506, 25.791307>,  <42.922283, 34.771851, 25.780563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050404, 34.974506, 25.791307>,  <43.263939, 35.312267, 25.809214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050404, 34.974506, 25.791307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708410, -0.417699, -0.568932,
		0.461708, -0.335430, 0.821165,
		-0.533837, -0.844402, -0.044767,
		42.890251, 34.721188, 25.777878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775162, 34.786259, 25.954363>,  <43.263939, 35.312267, 25.809214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775162, 34.786259, 25.954363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473949, 34.594788, 25.773783>,  <43.293221, 34.479904, 25.665434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473949, 34.594788, 25.773783>,  <43.775162, 34.786259, 25.954363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473949, 34.594788, 25.773783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650751, -0.440370, -0.618545,
		0.097278, -0.759567, 0.643113,
		-0.753034, -0.478677, -0.451450,
		43.248039, 34.451183, 25.638348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013416, 34.076710, 25.844807>,  <43.775162, 34.786259, 25.954363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013416, 34.076710, 25.844807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699890, 34.114937, 25.599371>,  <43.511772, 34.137875, 25.452108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699890, 34.114937, 25.599371>,  <44.013416, 34.076710, 25.844807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699890, 34.114937, 25.599371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447365, -0.598386, -0.664679,
		-0.430688, -0.795487, 0.426272,
		-0.783819, 0.095570, -0.613591,
		43.464745, 34.143608, 25.415293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748226, 33.340767, 25.693966>,  <44.013416, 34.076710, 25.844807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748226, 33.340767, 25.693966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640930, 33.589043, 25.399269>,  <43.576553, 33.738010, 25.222450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640930, 33.589043, 25.399269>,  <43.748226, 33.340767, 25.693966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640930, 33.589043, 25.399269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461003, -0.588814, -0.663909,
		-0.845887, -0.517726, -0.128198,
		-0.268238, 0.620691, -0.736743,
		43.560459, 33.775249, 25.178246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621540, 32.873337, 25.201159>,  <43.748226, 33.340767, 25.693966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621540, 32.873337, 25.201159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621525, 33.199703, 24.969893>,  <43.621513, 33.395523, 24.831133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621525, 33.199703, 24.969893>,  <43.621540, 32.873337, 25.201159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621525, 33.199703, 24.969893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355874, -0.540304, -0.762512,
		-0.934534, -0.205787, -0.290342,
		-0.000042, 0.815918, -0.578167,
		43.621513, 33.444477, 24.796442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178799, 32.795391, 24.589617>,  <43.621540, 32.873337, 25.201159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178799, 32.795391, 24.589617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449226, 33.077076, 24.502886>,  <43.611485, 33.246086, 24.450848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449226, 33.077076, 24.502886>,  <43.178799, 32.795391, 24.589617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449226, 33.077076, 24.502886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137996, -0.410072, -0.901553,
		-0.723800, 0.579592, -0.374416,
		0.676070, 0.704212, -0.216829,
		43.652046, 33.288338, 24.437838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300461, 32.772274, 23.929707>,  <43.178799, 32.795391, 24.589617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300461, 32.772274, 23.929707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617653, 33.001728, 24.011806>,  <43.807968, 33.139400, 24.061066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617653, 33.001728, 24.011806>,  <43.300461, 32.772274, 23.929707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617653, 33.001728, 24.011806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462944, -0.348319, -0.815081,
		-0.396070, 0.741358, -0.541771,
		0.792976, 0.573639, 0.205249,
		43.855545, 33.173820, 24.073381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501732, 33.059399, 23.408009>,  <43.300461, 32.772274, 23.929707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501732, 33.059399, 23.408009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848663, 33.107399, 23.601229>,  <44.056824, 33.136200, 23.717161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848663, 33.107399, 23.601229>,  <43.501732, 33.059399, 23.408009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848663, 33.107399, 23.601229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493474, -0.334042, -0.803056,
		0.064989, 0.934888, -0.348944,
		0.867329, 0.120005, 0.483052,
		44.108864, 33.143402, 23.746143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984261, 33.350658, 22.926504>,  <43.501732, 33.059399, 23.408009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984261, 33.350658, 22.926504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197803, 33.176689, 23.216562>,  <44.325932, 33.072308, 23.390598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197803, 33.176689, 23.216562>,  <43.984261, 33.350658, 22.926504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197803, 33.176689, 23.216562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559761, -0.460992, -0.688589,
		0.633768, 0.773519, -0.002654,
		0.533860, -0.434920, 0.725147,
		44.357960, 33.046215, 23.434107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576508, 33.269096, 22.616365>,  <43.984261, 33.350658, 22.926504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576508, 33.269096, 22.616365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592625, 33.029419, 22.936201>,  <44.602295, 32.885612, 23.128101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592625, 33.029419, 22.936201>,  <44.576508, 33.269096, 22.616365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592625, 33.029419, 22.936201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588474, -0.632494, -0.503636,
		0.807511, 0.490832, 0.327123,
		0.040297, -0.599195, 0.799588,
		44.604713, 32.849659, 23.176077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275925, 32.934444, 22.602911>,  <44.576508, 33.269096, 22.616365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275925, 32.934444, 22.602911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045387, 32.698853, 22.829512>,  <44.907066, 32.557495, 22.965473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045387, 32.698853, 22.829512>,  <45.275925, 32.934444, 22.602911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045387, 32.698853, 22.829512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326041, -0.801384, -0.501479,
		0.749349, -0.104322, 0.653906,
		-0.576345, -0.588983, 0.566503,
		44.872482, 32.522156, 22.999462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.877373, 30.154280, 22.697794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002312, 30.500736, 22.541721>,  <38.077274, 30.708611, 22.448078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002312, 30.500736, 22.541721>,  <37.877373, 30.154280, 22.697794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002312, 30.500736, 22.541721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021130, 0.416961, 0.908679,
		0.949734, -0.275576, 0.148537,
		0.312345, 0.866141, -0.390179,
		38.096016, 30.760578, 22.424667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469391, 30.442997, 23.154842>,  <37.877373, 30.154280, 22.697794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469391, 30.442997, 23.154842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.324337, 30.771967, 22.979519>,  <38.237305, 30.969349, 22.874325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.324337, 30.771967, 22.979519>,  <38.469391, 30.442997, 23.154842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324337, 30.771967, 22.979519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036396, 0.457465, 0.888482,
		0.931221, 0.338145, -0.135959,
		-0.362632, 0.822426, -0.438308,
		38.215546, 31.018694, 22.848026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820267, 30.916622, 23.404236>,  <38.469391, 30.442997, 23.154842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820267, 30.916622, 23.404236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520374, 31.130775, 23.248667>,  <38.340439, 31.259268, 23.155325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520374, 31.130775, 23.248667>,  <38.820267, 30.916622, 23.404236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520374, 31.130775, 23.248667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029754, 0.559861, 0.828052,
		0.661068, 0.632392, -0.403818,
		-0.749736, 0.535384, -0.388923,
		38.295452, 31.291391, 23.131990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863396, 31.618135, 23.736326>,  <38.820267, 30.916622, 23.404236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863396, 31.618135, 23.736326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488594, 31.593826, 23.598730>,  <38.263714, 31.579241, 23.516172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488594, 31.593826, 23.598730>,  <38.863396, 31.618135, 23.736326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488594, 31.593826, 23.598730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337199, 0.414486, 0.845280,
		0.091208, 0.908024, -0.408869,
		-0.937005, -0.060773, -0.343989,
		38.207493, 31.575594, 23.495533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623871, 32.156513, 24.006142>,  <38.863396, 31.618135, 23.736326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623871, 32.156513, 24.006142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300957, 31.935585, 23.922970>,  <38.107208, 31.803028, 23.873068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300957, 31.935585, 23.922970>,  <38.623871, 32.156513, 24.006142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300957, 31.935585, 23.922970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449104, 0.346363, 0.823613,
		-0.382879, 0.758271, -0.527663,
		-0.807285, -0.552320, -0.207928,
		38.058773, 31.769890, 23.860592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997738, 32.558842, 24.140491>,  <38.623871, 32.156513, 24.006142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997738, 32.558842, 24.140491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876415, 32.178379, 24.163485>,  <37.803623, 31.950102, 24.177280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876415, 32.178379, 24.163485>,  <37.997738, 32.558842, 24.140491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876415, 32.178379, 24.163485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339513, 0.164235, 0.926152,
		-0.890357, 0.261392, -0.372744,
		-0.303307, -0.951158, 0.057481,
		37.785423, 31.893032, 24.180729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311935, 32.593376, 24.531315>,  <37.997738, 32.558842, 24.140491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311935, 32.593376, 24.531315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433296, 32.213554, 24.563070>,  <37.506111, 31.985662, 24.582125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433296, 32.213554, 24.563070>,  <37.311935, 32.593376, 24.531315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433296, 32.213554, 24.563070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406887, -0.053766, 0.911895,
		-0.861621, -0.308973, -0.402672,
		0.303401, -0.949550, 0.079391,
		37.524315, 31.928690, 24.586887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770050, 32.230366, 24.935909>,  <37.311935, 32.593376, 24.531315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770050, 32.230366, 24.935909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095680, 32.000347, 24.968410>,  <37.291058, 31.862335, 24.987911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095680, 32.000347, 24.968410>,  <36.770050, 32.230366, 24.935909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095680, 32.000347, 24.968410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237177, -0.201479, 0.950344,
		-0.530125, -0.792921, -0.300407,
		0.814073, -0.575051, 0.081253,
		37.339901, 31.827831, 24.992786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524536, 31.626434, 25.208956>,  <36.770050, 32.230366, 24.935909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524536, 31.626434, 25.208956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.916519, 31.659653, 25.281393>,  <37.151707, 31.679583, 25.324856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.916519, 31.659653, 25.281393>,  <36.524536, 31.626434, 25.208956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916519, 31.659653, 25.281393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167590, -0.147882, 0.974702,
		0.107725, -0.985512, -0.131000,
		0.979954, 0.083046, 0.181092,
		37.210506, 31.684566, 25.335720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765594, 31.231985, 25.720606>,  <36.524536, 31.626434, 25.208956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765594, 31.231985, 25.720606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.086548, 31.464193, 25.776009>,  <37.279118, 31.603518, 25.809250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.086548, 31.464193, 25.776009>,  <36.765594, 31.231985, 25.720606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086548, 31.464193, 25.776009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183688, 0.019401, 0.982793,
		0.567843, -0.814015, 0.122202,
		0.802379, 0.580519, 0.138508,
		37.327263, 31.638350, 25.817562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043907, 31.015192, 26.359583>,  <36.765594, 31.231985, 25.720606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043907, 31.015192, 26.359583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174435, 31.384747, 26.279631>,  <37.252750, 31.606480, 26.231659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174435, 31.384747, 26.279631>,  <37.043907, 31.015192, 26.359583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174435, 31.384747, 26.279631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228323, 0.282232, 0.931780,
		0.917271, -0.258419, 0.303041,
		0.326317, 0.923886, -0.199880,
		37.272331, 31.661913, 26.219667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463951, 31.118708, 26.943108>,  <37.043907, 31.015192, 26.359583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463951, 31.118708, 26.943108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400543, 31.482044, 26.788300>,  <37.362499, 31.700047, 26.695415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400543, 31.482044, 26.788300>,  <37.463951, 31.118708, 26.943108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400543, 31.482044, 26.788300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199411, 0.354443, 0.913567,
		0.967009, 0.221998, 0.124945,
		-0.158524, 0.908343, -0.387019,
		37.352985, 31.754547, 26.672194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849846, 31.699461, 27.313999>,  <37.463951, 31.118708, 26.943108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849846, 31.699461, 27.313999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560146, 31.926867, 27.157921>,  <37.386326, 32.063309, 27.064274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560146, 31.926867, 27.157921>,  <37.849846, 31.699461, 27.313999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560146, 31.926867, 27.157921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071915, 0.500516, 0.862735,
		0.685776, 0.652898, -0.321615,
		-0.724251, 0.568514, -0.390195,
		37.342873, 32.097420, 27.040863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005077, 32.408752, 27.596498>,  <37.849846, 31.699461, 27.313999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005077, 32.408752, 27.596498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622944, 32.374249, 27.483435>,  <37.393665, 32.353546, 27.415596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622944, 32.374249, 27.483435>,  <38.005077, 32.408752, 27.596498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622944, 32.374249, 27.483435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295422, 0.253126, 0.921224,
		-0.007914, 0.963580, -0.267302,
		-0.955334, -0.086258, -0.282660,
		37.336342, 32.348370, 27.398638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495571, 32.206932, 28.123840>,  <38.005077, 32.408752, 27.596498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495571, 32.206932, 28.123840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.555077, 31.894842, 28.366861>,  <38.590778, 31.707588, 28.512674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.555077, 31.894842, 28.366861>,  <38.495571, 32.206932, 28.123840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555077, 31.894842, 28.366861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272204, -0.558345, -0.783681,
		0.950670, 0.281962, 0.129317,
		0.148765, -0.780223, 0.607553,
		38.599705, 31.660776, 28.549128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159107, 32.055676, 27.973063>,  <38.495571, 32.206932, 28.123840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159107, 32.055676, 27.973063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.994923, 31.729818, 28.136955>,  <38.896412, 31.534304, 28.235291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.994923, 31.729818, 28.136955>,  <39.159107, 32.055676, 27.973063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994923, 31.729818, 28.136955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437836, -0.570212, -0.695096,
		0.799889, -0.105912, 0.590728,
		-0.410459, -0.814642, 0.409734,
		38.871784, 31.485426, 28.259876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674660, 31.638855, 28.100842>,  <39.159107, 32.055676, 27.973063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674660, 31.638855, 28.100842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352646, 31.401697, 28.092928>,  <39.159435, 31.259403, 28.088179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352646, 31.401697, 28.092928>,  <39.674660, 31.638855, 28.100842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352646, 31.401697, 28.092928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415884, -0.540281, -0.731531,
		0.423029, -0.597139, 0.681521,
		-0.805038, -0.592893, -0.019786,
		39.111134, 31.223829, 28.086992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965889, 30.995991, 27.903973>,  <39.674660, 31.638855, 28.100842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965889, 30.995991, 27.903973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579922, 30.920895, 27.830557>,  <39.348343, 30.875837, 27.786507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579922, 30.920895, 27.830557>,  <39.965889, 30.995991, 27.903973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579922, 30.920895, 27.830557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258400, -0.555241, -0.790530,
		0.046503, -0.810223, 0.584274,
		-0.964918, -0.187739, -0.183541,
		39.290447, 30.864573, 27.775494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001751, 30.271551, 27.577576>,  <39.965889, 30.995991, 27.903973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001751, 30.271551, 27.577576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632252, 30.390478, 27.481001>,  <39.410553, 30.461834, 27.423056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632252, 30.390478, 27.481001>,  <40.001751, 30.271551, 27.577576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632252, 30.390478, 27.481001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129929, -0.349736, -0.927795,
		-0.360310, -0.888412, 0.284432,
		-0.923740, 0.297337, -0.241444,
		39.355129, 30.479673, 27.408569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621044, 29.640560, 27.408043>,  <40.001751, 30.271551, 27.577576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621044, 29.640560, 27.408043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.465839, 29.965912, 27.234671>,  <39.372715, 30.161123, 27.130648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.465839, 29.965912, 27.234671>,  <39.621044, 29.640560, 27.408043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465839, 29.965912, 27.234671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088679, -0.435143, -0.895983,
		-0.917377, -0.386091, 0.096713,
		-0.388016, 0.813378, -0.433428,
		39.349434, 30.209925, 27.104643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321262, 29.393446, 26.846725>,  <39.621044, 29.640560, 27.408043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321262, 29.393446, 26.846725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.359913, 29.772379, 26.724592>,  <39.383102, 29.999739, 26.651312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.359913, 29.772379, 26.724592>,  <39.321262, 29.393446, 26.846725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359913, 29.772379, 26.724592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156063, -0.317395, -0.935363,
		-0.983010, 0.042726, -0.178511,
		0.096623, 0.947330, -0.305335,
		39.388901, 30.056578, 26.632992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932255, 29.468178, 26.141649>,  <39.321262, 29.393446, 26.846725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932255, 29.468178, 26.141649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161091, 29.796249, 26.143473>,  <39.298393, 29.993092, 26.144567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161091, 29.796249, 26.143473>,  <38.932255, 29.468178, 26.141649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161091, 29.796249, 26.143473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182474, -0.121854, -0.975631,
		-0.799636, 0.558980, -0.219372,
		0.572089, 0.820179, 0.004561,
		39.332718, 30.042303, 26.144840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644279, 30.012724, 25.665426>,  <38.932255, 29.468178, 26.141649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644279, 30.012724, 25.665426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039021, 30.063629, 25.705259>,  <39.275867, 30.094173, 25.729160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039021, 30.063629, 25.705259>,  <38.644279, 30.012724, 25.665426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039021, 30.063629, 25.705259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105562, -0.041101, -0.993563,
		-0.122352, 0.991017, -0.053995,
		0.986857, 0.127265, 0.099585,
		39.335079, 30.101809, 25.735134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844971, 30.390480, 25.062336>,  <38.644279, 30.012724, 25.665426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844971, 30.390480, 25.062336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182285, 30.251284, 25.226171>,  <39.384674, 30.167765, 25.324472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182285, 30.251284, 25.226171>,  <38.844971, 30.390480, 25.062336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182285, 30.251284, 25.226171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364724, -0.189221, -0.911686,
		0.394762, 0.918203, -0.032647,
		0.843291, -0.347992, 0.409588,
		39.435272, 30.146887, 25.349049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404064, 30.650791, 24.617416>,  <38.844971, 30.390480, 25.062336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404064, 30.650791, 24.617416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538692, 30.326662, 24.809288>,  <39.619469, 30.132183, 24.924412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538692, 30.326662, 24.809288>,  <39.404064, 30.650791, 24.617416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538692, 30.326662, 24.809288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511955, -0.270073, -0.815452,
		0.790330, 0.520033, 0.323951,
		0.336572, -0.810325, 0.479680,
		39.639664, 30.083565, 24.953192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186100, 30.651945, 24.543938>,  <39.404064, 30.650791, 24.617416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186100, 30.651945, 24.543938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086838, 30.273935, 24.629116>,  <40.027283, 30.047129, 24.680223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086838, 30.273935, 24.629116>,  <40.186100, 30.651945, 24.543938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086838, 30.273935, 24.629116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528465, -0.316293, -0.787835,
		0.811878, -0.082968, 0.577902,
		-0.248152, -0.945027, 0.212945,
		40.012394, 29.990427, 24.692999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820881, 30.235397, 24.436508>,  <40.186100, 30.651945, 24.543938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820881, 30.235397, 24.436508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.485149, 30.019865, 24.407703>,  <40.283710, 29.890547, 24.390421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.485149, 30.019865, 24.407703>,  <40.820881, 30.235397, 24.436508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485149, 30.019865, 24.407703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331731, -0.402721, -0.853095,
		0.430671, -0.739918, 0.516763,
		-0.839332, -0.538829, -0.072013,
		40.233349, 29.858217, 24.386099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020863, 29.583382, 24.354996>,  <40.820881, 30.235397, 24.436508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020863, 29.583382, 24.354996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.640465, 29.580036, 24.231361>,  <40.412224, 29.578028, 24.157181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.640465, 29.580036, 24.231361>,  <41.020863, 29.583382, 24.354996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640465, 29.580036, 24.231361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290122, -0.369820, -0.882645,
		-0.106921, -0.929066, 0.354125,
		-0.950998, -0.008366, -0.309084,
		40.355164, 29.577526, 24.138636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545567, 29.090416, 24.360783>,  <41.020863, 29.583382, 24.354996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545567, 29.090416, 24.360783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.923481, 29.175062, 24.260702>,  <42.150230, 29.225849, 24.200653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.923481, 29.175062, 24.260702>,  <41.545567, 29.090416, 24.360783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923481, 29.175062, 24.260702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094882, 0.554160, 0.826985,
		0.313654, -0.805063, 0.503483,
		0.944785, 0.211616, -0.250201,
		42.206917, 29.238546, 24.185642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928715, 28.825918, 24.827503>,  <41.545567, 29.090416, 24.360783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928715, 28.825918, 24.827503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.118977, 29.138287, 24.665556>,  <42.233131, 29.325708, 24.568388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.118977, 29.138287, 24.665556>,  <41.928715, 28.825918, 24.827503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118977, 29.138287, 24.665556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089405, 0.414964, 0.905434,
		0.875079, -0.466867, 0.127559,
		0.475650, 0.780922, -0.404867,
		42.261673, 29.372562, 24.544096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418198, 29.120846, 25.285271>,  <41.928715, 28.825918, 24.827503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418198, 29.120846, 25.285271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.373146, 29.433214, 25.039515>,  <42.346115, 29.620636, 24.892061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.373146, 29.433214, 25.039515>,  <42.418198, 29.120846, 25.285271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373146, 29.433214, 25.039515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014204, 0.619526, 0.784848,
		0.993536, 0.079666, -0.080866,
		-0.112625, 0.780923, -0.614389,
		42.339359, 29.667492, 24.855198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888313, 29.650829, 25.574001>,  <42.418198, 29.120846, 25.285271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888313, 29.650829, 25.574001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.637806, 29.841572, 25.327295>,  <42.487503, 29.956018, 25.179272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.637806, 29.841572, 25.327295>,  <42.888313, 29.650829, 25.574001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637806, 29.841572, 25.327295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006643, 0.794355, 0.607418,
		0.779583, 0.376306, -0.500644,
		-0.626264, 0.476858, -0.616765,
		42.449928, 29.984629, 25.142265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136063, 30.343815, 25.546452>,  <42.888313, 29.650829, 25.574001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136063, 30.343815, 25.546452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.751675, 30.334898, 25.436144>,  <42.521042, 30.329548, 25.369959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.751675, 30.334898, 25.436144>,  <43.136063, 30.343815, 25.546452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751675, 30.334898, 25.436144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193444, 0.766749, 0.612107,
		0.197798, 0.641559, -0.741133,
		-0.960966, -0.022294, -0.275767,
		42.463387, 30.328209, 25.353415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951244, 31.023048, 25.428099>,  <43.136063, 30.343815, 25.546452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951244, 31.023048, 25.428099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.596355, 30.842478, 25.466141>,  <42.383423, 30.734135, 25.488966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.596355, 30.842478, 25.466141>,  <42.951244, 31.023048, 25.428099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596355, 30.842478, 25.466141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331888, 0.767754, 0.548091,
		-0.320440, 0.454716, -0.830994,
		-0.887225, -0.451427, 0.095104,
		42.330189, 30.707050, 25.494673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444447, 31.550907, 25.440680>,  <42.951244, 31.023048, 25.428099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444447, 31.550907, 25.440680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.229240, 31.246637, 25.585960>,  <42.100117, 31.064075, 25.673130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.229240, 31.246637, 25.585960>,  <42.444447, 31.550907, 25.440680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229240, 31.246637, 25.585960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362907, 0.597926, 0.714690,
		-0.760816, 0.252703, -0.597746,
		-0.538013, -0.760674, 0.363204,
		42.067837, 31.018435, 25.694921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656212, 31.755917, 25.484396>,  <42.444447, 31.550907, 25.440680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656212, 31.755917, 25.484396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.708565, 31.453966, 25.741467>,  <41.739975, 31.272797, 25.895708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.708565, 31.453966, 25.741467>,  <41.656212, 31.755917, 25.484396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708565, 31.453966, 25.741467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277402, 0.594473, 0.754752,
		-0.951797, -0.277063, -0.131598,
		0.130882, -0.754876, 0.642675,
		41.747829, 31.227503, 25.934269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069206, 31.780949, 25.969435>,  <41.656212, 31.755917, 25.484396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069206, 31.780949, 25.969435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372864, 31.578730, 26.133448>,  <41.555058, 31.457397, 26.231855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372864, 31.578730, 26.133448>,  <41.069206, 31.780949, 25.969435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372864, 31.578730, 26.133448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226138, 0.385855, 0.894415,
		-0.610381, -0.771711, 0.178596,
		0.759142, -0.505547, 0.410032,
		41.600605, 31.427065, 26.256456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843723, 31.456648, 26.597872>,  <41.069206, 31.780949, 25.969435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843723, 31.456648, 26.597872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.239536, 31.471577, 26.653643>,  <41.477024, 31.480534, 26.687105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.239536, 31.471577, 26.653643>,  <40.843723, 31.456648, 26.597872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239536, 31.471577, 26.653643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144258, 0.287473, 0.946863,
		-0.004743, -0.957061, 0.289847,
		0.989529, 0.037322, 0.139427,
		41.536396, 31.482773, 26.695471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974506, 31.183443, 27.212128>,  <40.843723, 31.456648, 26.597872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974506, 31.183443, 27.212128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.302959, 31.401718, 27.145233>,  <41.500031, 31.532682, 27.105097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.302959, 31.401718, 27.145233>,  <40.974506, 31.183443, 27.212128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302959, 31.401718, 27.145233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080427, 0.400730, 0.912659,
		0.565042, -0.735964, 0.372940,
		0.821133, 0.545685, -0.167238,
		41.549297, 31.565424, 27.095062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370842, 31.108631, 27.764671>,  <40.974506, 31.183443, 27.212128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370842, 31.108631, 27.764671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.481117, 31.451361, 27.590385>,  <41.547283, 31.656998, 27.485813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.481117, 31.451361, 27.590385>,  <41.370842, 31.108631, 27.764671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481117, 31.451361, 27.590385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000762, 0.453476, 0.891268,
		0.961246, -0.245383, 0.125672,
		0.275691, 0.856823, -0.435715,
		41.563824, 31.708408, 27.459671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797947, 31.327547, 28.196358>,  <41.370842, 31.108631, 27.764671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797947, 31.327547, 28.196358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.679836, 31.648985, 27.989653>,  <41.608971, 31.841848, 27.865629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.679836, 31.648985, 27.989653>,  <41.797947, 31.327547, 28.196358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679836, 31.648985, 27.989653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077874, 0.518837, 0.851319,
		0.952233, 0.291618, -0.090621,
		-0.295277, 0.803597, -0.516763,
		41.591251, 31.890064, 27.834623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227859, 31.857939, 28.441833>,  <41.797947, 31.327547, 28.196358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227859, 31.857939, 28.441833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.919415, 32.038708, 28.262436>,  <41.734348, 32.147167, 28.154797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.919415, 32.038708, 28.262436>,  <42.227859, 31.857939, 28.441833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919415, 32.038708, 28.262436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171478, 0.530974, 0.829857,
		0.613170, 0.716822, -0.331947,
		-0.771115, 0.451922, -0.448496,
		41.688080, 32.174286, 28.127888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.581234, 32.305534, 22.455500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.225231, 32.208382, 22.609852>,  <45.011631, 32.150089, 22.702463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.225231, 32.208382, 22.609852>,  <45.581234, 32.305534, 22.455500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225231, 32.208382, 22.609852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074677, -0.757240, -0.648854,
		0.449794, -0.606299, 0.655810,
		-0.890005, -0.242877, 0.385879,
		44.958229, 32.135517, 22.725615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574703, 31.591022, 22.390108>,  <45.581234, 32.305534, 22.455500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574703, 31.591022, 22.390108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.195587, 31.712965, 22.427547>,  <44.968117, 31.786131, 22.450012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.195587, 31.712965, 22.427547>,  <45.574703, 31.591022, 22.390108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195587, 31.712965, 22.427547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290395, -0.703763, -0.648374,
		-0.131787, -0.641703, 0.755546,
		-0.947789, 0.304854, 0.093600,
		44.911251, 31.804420, 22.455627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255207, 30.986530, 22.373066>,  <45.574703, 31.591022, 22.390108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255207, 30.986530, 22.373066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.991779, 31.269527, 22.270508>,  <44.833721, 31.439325, 22.208973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.991779, 31.269527, 22.270508>,  <45.255207, 30.986530, 22.373066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991779, 31.269527, 22.270508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365061, -0.598306, -0.713275,
		-0.658042, -0.376139, 0.652304,
		-0.658568, 0.707495, -0.256397,
		44.794209, 31.481775, 22.193588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633907, 30.680630, 22.541254>,  <45.255207, 30.986530, 22.373066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633907, 30.680630, 22.541254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.570068, 30.964231, 22.266491>,  <44.531765, 31.134392, 22.101633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.570068, 30.964231, 22.266491>,  <44.633907, 30.680630, 22.541254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570068, 30.964231, 22.266491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517455, -0.652658, -0.553423,
		-0.840695, 0.267117, 0.471042,
		-0.159600, 0.709003, -0.686908,
		44.522190, 31.176933, 22.060419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964962, 30.429955, 22.397619>,  <44.633907, 30.680630, 22.541254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964962, 30.429955, 22.397619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.093250, 30.694014, 22.125929>,  <44.170223, 30.852449, 21.962915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.093250, 30.694014, 22.125929>,  <43.964962, 30.429955, 22.397619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093250, 30.694014, 22.125929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445955, -0.527407, -0.723164,
		-0.835623, 0.534835, 0.125247,
		0.320717, 0.660147, -0.679225,
		44.189465, 30.892057, 21.922161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434978, 30.705360, 22.021967>,  <43.964962, 30.429955, 22.397619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434978, 30.705360, 22.021967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.759220, 30.728922, 21.788919>,  <43.953766, 30.743059, 21.649092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.759220, 30.728922, 21.788919>,  <43.434978, 30.705360, 22.021967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759220, 30.728922, 21.788919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396690, -0.676629, -0.620331,
		-0.430757, 0.733965, -0.525114,
		0.810608, 0.058904, -0.582619,
		44.002403, 30.746593, 21.614134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122913, 30.771883, 21.331766>,  <43.434978, 30.705360, 22.021967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122913, 30.771883, 21.331766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.490650, 30.662308, 21.218788>,  <43.711292, 30.596563, 21.151001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.490650, 30.662308, 21.218788>,  <43.122913, 30.771883, 21.331766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490650, 30.662308, 21.218788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387508, -0.505916, -0.770640,
		0.068214, 0.817929, -0.571261,
		0.919339, -0.273936, -0.282443,
		43.766453, 30.580128, 21.134054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136833, 30.728815, 20.702539>,  <43.122913, 30.771883, 21.331766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136833, 30.728815, 20.702539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.462284, 30.508011, 20.775522>,  <43.657555, 30.375528, 20.819311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.462284, 30.508011, 20.775522>,  <43.136833, 30.728815, 20.702539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462284, 30.508011, 20.775522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208754, -0.570287, -0.794477,
		0.542613, 0.608322, -0.579237,
		0.813629, -0.552012, 0.182455,
		43.706371, 30.342407, 20.830259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381378, 30.616526, 20.040804>,  <43.136833, 30.728815, 20.702539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381378, 30.616526, 20.040804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.549202, 30.326132, 20.258764>,  <43.649895, 30.151896, 20.389542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.549202, 30.326132, 20.258764>,  <43.381378, 30.616526, 20.040804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549202, 30.326132, 20.258764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196614, -0.658723, -0.726242,
		0.886180, 0.197565, -0.419111,
		0.419558, -0.725984, 0.544903,
		43.675068, 30.108337, 20.422235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818592, 30.203959, 19.551216>,  <43.381378, 30.616526, 20.040804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818592, 30.203959, 19.551216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.771698, 29.957716, 19.862930>,  <43.743561, 29.809971, 20.049959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.771698, 29.957716, 19.862930>,  <43.818592, 30.203959, 19.551216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771698, 29.957716, 19.862930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277498, -0.733134, -0.620894,
		0.953546, -0.289043, -0.084878,
		-0.117238, -0.615604, 0.779286,
		43.736526, 29.773035, 20.096716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141605, 29.571701, 19.374456>,  <43.818592, 30.203959, 19.551216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141605, 29.571701, 19.374456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.884262, 29.480772, 19.666870>,  <43.729855, 29.426214, 19.842319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.884262, 29.480772, 19.666870>,  <44.141605, 29.571701, 19.374456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884262, 29.480772, 19.666870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417886, -0.695813, -0.584137,
		0.641451, -0.681300, 0.352664,
		-0.643360, -0.227322, 0.731035,
		43.691254, 29.412575, 19.886181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133522, 28.880829, 19.335567>,  <44.141605, 29.571701, 19.374456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133522, 28.880829, 19.335567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.803429, 28.922310, 19.557644>,  <43.605373, 28.947199, 19.690889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.803429, 28.922310, 19.557644>,  <44.133522, 28.880829, 19.335567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803429, 28.922310, 19.557644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347046, -0.868636, -0.353596,
		0.445590, -0.484475, 0.752816,
		-0.825232, 0.103703, 0.555191,
		43.555859, 28.953421, 19.724201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390430, 28.162842, 19.329853>,  <44.133522, 28.880829, 19.335567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390430, 28.162842, 19.329853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.040031, 28.333319, 19.239525>,  <43.829792, 28.435606, 19.185328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.040031, 28.333319, 19.239525>,  <44.390430, 28.162842, 19.329853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040031, 28.333319, 19.239525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186135, -0.730641, -0.656900,
		-0.444960, -0.533407, 0.719366,
		-0.875993, 0.426193, -0.225820,
		43.777233, 28.461176, 19.171778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843571, 27.675167, 19.383898>,  <44.390430, 28.162842, 19.329853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843571, 27.675167, 19.383898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.762100, 27.964758, 19.120270>,  <43.713219, 28.138512, 18.962093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.762100, 27.964758, 19.120270>,  <43.843571, 27.675167, 19.383898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762100, 27.964758, 19.120270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219216, -0.689813, -0.690001,
		-0.954180, 0.003940, 0.299208,
		-0.203679, 0.723976, -0.659070,
		43.700996, 28.181952, 18.922548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305534, 27.284945, 19.106596>,  <43.843571, 27.675167, 19.383898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305534, 27.284945, 19.106596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.209995, 26.924776, 19.252028>,  <43.152672, 26.708675, 19.339287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.209995, 26.924776, 19.252028>,  <43.305534, 27.284945, 19.106596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209995, 26.924776, 19.252028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184328, 0.409650, 0.893426,
		-0.953402, 0.146375, -0.263816,
		-0.238847, -0.900423, 0.363580,
		43.138340, 26.654650, 19.361101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813282, 27.412279, 19.598701>,  <43.305534, 27.284945, 19.106596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813282, 27.412279, 19.598701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.949413, 27.056135, 19.719656>,  <43.031090, 26.842449, 19.792229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.949413, 27.056135, 19.719656>,  <42.813282, 27.412279, 19.598701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949413, 27.056135, 19.719656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115573, 0.279536, 0.953154,
		-0.933179, -0.359329, -0.007768,
		0.340324, -0.890361, 0.302386,
		43.051510, 26.789026, 19.810371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306835, 27.129913, 20.097675>,  <42.813282, 27.412279, 19.598701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306835, 27.129913, 20.097675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647907, 26.933821, 20.169901>,  <42.852551, 26.816166, 20.213236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.647907, 26.933821, 20.169901>,  <42.306835, 27.129913, 20.097675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647907, 26.933821, 20.169901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171529, 0.063755, 0.983114,
		-0.493464, -0.869258, -0.029725,
		0.852685, -0.490230, 0.180564,
		42.903713, 26.786751, 20.224070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125172, 26.676502, 20.563190>,  <42.306835, 27.129913, 20.097675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125172, 26.676502, 20.563190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518913, 26.731110, 20.607744>,  <42.755157, 26.763874, 20.634478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518913, 26.731110, 20.607744>,  <42.125172, 26.676502, 20.563190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518913, 26.731110, 20.607744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130560, 0.140656, 0.981412,
		0.118313, -0.980601, 0.156280,
		0.984356, 0.136518, 0.111386,
		42.814220, 26.772064, 20.641161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350853, 26.315973, 21.193544>,  <42.125172, 26.676502, 20.563190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350853, 26.315973, 21.193544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.648888, 26.573484, 21.123816>,  <42.827709, 26.727991, 21.081978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.648888, 26.573484, 21.123816>,  <42.350853, 26.315973, 21.193544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648888, 26.573484, 21.123816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021290, 0.284194, 0.958531,
		0.666624, -0.710481, 0.225456,
		0.745091, 0.643779, -0.174324,
		42.872414, 26.766619, 21.071518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649078, 26.506758, 21.926031>,  <42.350853, 26.315973, 21.193544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649078, 26.506758, 21.926031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.829971, 26.777941, 21.694220>,  <42.938507, 26.940651, 21.555132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.829971, 26.777941, 21.694220>,  <42.649078, 26.506758, 21.926031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829971, 26.777941, 21.694220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156854, 0.579187, 0.799962,
		0.877997, -0.452673, 0.155589,
		0.452236, 0.677959, -0.579528,
		42.965641, 26.981329, 21.520361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102627, 26.865322, 22.389727>,  <42.649078, 26.506758, 21.926031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102627, 26.865322, 22.389727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.083508, 27.115307, 22.078051>,  <43.072037, 27.265297, 21.891045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.083508, 27.115307, 22.078051>,  <43.102627, 26.865322, 22.389727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083508, 27.115307, 22.078051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035322, 0.780652, 0.623967,
		0.998232, 0.002304, -0.059391,
		-0.047802, 0.624962, -0.779191,
		43.069168, 27.302795, 21.844294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685490, 27.401028, 22.299969>,  <43.102627, 26.865322, 22.389727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685490, 27.401028, 22.299969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.357254, 27.561941, 22.137589>,  <43.160313, 27.658489, 22.040159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.357254, 27.561941, 22.137589>,  <43.685490, 27.401028, 22.299969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357254, 27.561941, 22.137589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060274, 0.645430, 0.761437,
		0.568327, 0.649298, -0.505388,
		-0.820592, 0.402283, -0.405952,
		43.111076, 27.682627, 22.015802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692219, 28.084631, 22.551966>,  <43.685490, 27.401028, 22.299969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692219, 28.084631, 22.551966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.334564, 28.100620, 22.373564>,  <43.119972, 28.110214, 22.266523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.334564, 28.100620, 22.373564>,  <43.692219, 28.084631, 22.551966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334564, 28.100620, 22.373564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252416, 0.777696, 0.575738,
		0.369871, 0.627368, -0.685277,
		-0.894137, 0.039974, -0.446005,
		43.066322, 28.112612, 22.239761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622223, 28.779737, 22.362297>,  <43.692219, 28.084631, 22.551966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622223, 28.779737, 22.362297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.271523, 28.595081, 22.416262>,  <43.061104, 28.484287, 22.448641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.271523, 28.595081, 22.416262>,  <43.622223, 28.779737, 22.362297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271523, 28.595081, 22.416262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246809, 0.672615, 0.697620,
		-0.412793, 0.578340, -0.703651,
		-0.876748, -0.461641, 0.134911,
		43.008499, 28.456589, 22.456736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085346, 29.296839, 22.422323>,  <43.622223, 28.779737, 22.362297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085346, 29.296839, 22.422323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.903946, 28.973181, 22.571785>,  <42.795105, 28.778986, 22.661463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.903946, 28.973181, 22.571785>,  <43.085346, 29.296839, 22.422323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903946, 28.973181, 22.571785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414899, 0.562715, 0.714990,
		-0.788793, 0.169221, -0.590906,
		-0.453503, -0.809146, 0.373656,
		42.767895, 28.730436, 22.683882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296997, 29.453318, 22.640541>,  <43.085346, 29.296839, 22.422323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296997, 29.453318, 22.640541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.408180, 29.130604, 22.849094>,  <42.474888, 28.936975, 22.974226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.408180, 29.130604, 22.849094>,  <42.296997, 29.453318, 22.640541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408180, 29.130604, 22.849094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401649, 0.395440, 0.826018,
		-0.872594, -0.439008, -0.214130,
		0.277954, -0.806783, 0.521386,
		42.491566, 28.888569, 23.005510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741241, 29.217657, 23.077005>,  <42.296997, 29.453318, 22.640541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741241, 29.217657, 23.077005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062702, 29.052540, 23.248470>,  <42.255577, 28.953468, 23.351349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062702, 29.052540, 23.248470>,  <41.741241, 29.217657, 23.077005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062702, 29.052540, 23.248470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222572, 0.459550, 0.859811,
		-0.551918, -0.786393, 0.277440,
		0.803647, -0.412795, 0.428663,
		42.303795, 28.928701, 23.377069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556767, 28.986277, 23.640997>,  <41.741241, 29.217657, 23.077005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556767, 28.986277, 23.640997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.950279, 29.050200, 23.673594>,  <42.186386, 29.088554, 23.693151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.950279, 29.050200, 23.673594>,  <41.556767, 28.986277, 23.640997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950279, 29.050200, 23.673594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153506, 0.514910, 0.843388,
		0.092819, -0.842217, 0.531089,
		0.983778, 0.159808, 0.081491,
		42.245415, 29.098143, 23.698040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899910, 28.774338, 23.981688>,  <41.556767, 28.986277, 23.640997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899910, 28.774338, 23.981688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.602135, 29.007124, 23.850769>,  <40.423470, 29.146795, 23.772219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.602135, 29.007124, 23.850769>,  <40.899910, 28.774338, 23.981688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602135, 29.007124, 23.850769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031986, -0.458545, -0.888095,
		-0.666922, -0.671603, 0.322744,
		-0.744440, 0.581967, -0.327295,
		40.378803, 29.181713, 23.752581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456444, 28.349827, 23.585810>,  <40.899910, 28.774338, 23.981688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456444, 28.349827, 23.585810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.380962, 28.723560, 23.464869>,  <40.335674, 28.947800, 23.392303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.380962, 28.723560, 23.464869>,  <40.456444, 28.349827, 23.585810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380962, 28.723560, 23.464869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089917, -0.290152, -0.952747,
		-0.977910, -0.206970, -0.029261,
		-0.188700, 0.934332, -0.302352,
		40.324352, 29.003860, 23.374163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858475, 28.356329, 23.054148>,  <40.456444, 28.349827, 23.585810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858475, 28.356329, 23.054148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.067955, 28.693247, 23.003115>,  <40.193642, 28.895397, 22.972494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.067955, 28.693247, 23.003115>,  <39.858475, 28.356329, 23.054148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067955, 28.693247, 23.003115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025878, -0.133965, -0.990648,
		-0.851511, 0.522101, -0.048360,
		0.523697, 0.842297, -0.127583,
		40.225063, 28.945936, 22.964840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448326, 28.673691, 22.575371>,  <39.858475, 28.356329, 23.054148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448326, 28.673691, 22.575371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.811195, 28.841919, 22.570473>,  <40.028919, 28.942856, 22.567533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.811195, 28.841919, 22.570473>,  <39.448326, 28.673691, 22.575371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811195, 28.841919, 22.570473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021763, -0.075969, -0.996873,
		-0.420185, 0.904074, -0.078070,
		0.907178, 0.420570, -0.012246,
		40.083347, 28.968090, 22.566799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395943, 29.189436, 21.982494>,  <39.448326, 28.673691, 22.575371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395943, 29.189436, 21.982494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779091, 29.090347, 22.040630>,  <40.008980, 29.030893, 22.075512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779091, 29.090347, 22.040630>,  <39.395943, 29.189436, 21.982494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779091, 29.090347, 22.040630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098384, -0.192417, -0.976369,
		0.269835, 0.949531, -0.159938,
		0.957867, -0.247723, 0.145339,
		40.066452, 29.016031, 22.084232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740139, 29.496086, 21.402166>,  <39.395943, 29.189436, 21.982494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740139, 29.496086, 21.402166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.000023, 29.229086, 21.547668>,  <40.155952, 29.068886, 21.634970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.000023, 29.229086, 21.547668>,  <39.740139, 29.496086, 21.402166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000023, 29.229086, 21.547668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311716, -0.202495, -0.928347,
		0.693329, 0.716548, 0.076507,
		0.649714, -0.667498, 0.363755,
		40.194939, 29.028837, 21.656796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133644, 29.513369, 20.894964>,  <39.740139, 29.496086, 21.402166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133644, 29.513369, 20.894964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.235596, 29.159065, 21.050123>,  <40.296768, 28.946484, 21.143219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.235596, 29.159065, 21.050123>,  <40.133644, 29.513369, 20.894964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235596, 29.159065, 21.050123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202152, -0.343471, -0.917149,
		0.945605, 0.312180, 0.091514,
		0.254883, -0.885760, 0.387895,
		40.312061, 28.893337, 21.166492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850166, 30.070343, 20.425898>,  <40.133644, 29.513369, 20.894964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850166, 30.070343, 20.425898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.496449, 29.980299, 20.262260>,  <39.284218, 29.926273, 20.164078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.496449, 29.980299, 20.262260>,  <39.850166, 30.070343, 20.425898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496449, 29.980299, 20.262260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463807, 0.524726, 0.713824,
		0.053971, 0.820967, -0.568418,
		-0.884291, -0.225110, -0.409091,
		39.231163, 29.912766, 20.139534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459812, 30.664921, 20.446941>,  <39.850166, 30.070343, 20.425898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459812, 30.664921, 20.446941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197678, 30.363110, 20.432945>,  <39.040398, 30.182022, 20.424547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197678, 30.363110, 20.432945>,  <39.459812, 30.664921, 20.446941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197678, 30.363110, 20.432945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589618, 0.482051, 0.648057,
		-0.472112, 0.445323, -0.760788,
		-0.655333, -0.754529, -0.034988,
		39.001080, 30.136751, 20.422449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812351, 31.033634, 20.435345>,  <39.459812, 30.664921, 20.446941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812351, 31.033634, 20.435345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.766418, 30.668287, 20.591587>,  <38.738861, 30.449080, 20.685333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.766418, 30.668287, 20.591587>,  <38.812351, 31.033634, 20.435345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766418, 30.668287, 20.591587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549044, 0.386045, 0.741296,
		-0.827868, -0.129339, -0.545808,
		-0.114828, -0.913368, 0.390607,
		38.731972, 30.394278, 20.708769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210926, 31.143925, 20.658638>,  <38.812351, 31.033634, 20.435345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210926, 31.143925, 20.658638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.326252, 30.798565, 20.824245>,  <38.395447, 30.591349, 20.923611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.326252, 30.798565, 20.824245>,  <38.210926, 31.143925, 20.658638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326252, 30.798565, 20.824245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496726, 0.234789, 0.835546,
		-0.818618, -0.446558, -0.361179,
		0.288319, -0.863400, 0.414020,
		38.412746, 30.539545, 20.948452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587231, 30.757425, 20.868027>,  <38.210926, 31.143925, 20.658638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587231, 30.757425, 20.868027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906925, 30.659430, 21.087555>,  <38.098740, 30.600632, 21.219273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906925, 30.659430, 21.087555>,  <37.587231, 30.757425, 20.868027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906925, 30.659430, 21.087555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474640, 0.302904, 0.826417,
		-0.368704, -0.920994, 0.125809,
		0.799233, -0.244989, 0.548823,
		38.146694, 30.585934, 21.252201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244564, 30.528311, 21.468464>,  <37.587231, 30.757425, 20.868027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244564, 30.528311, 21.468464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633808, 30.604940, 21.519632>,  <37.867355, 30.650917, 21.550333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633808, 30.604940, 21.519632>,  <37.244564, 30.528311, 21.468464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633808, 30.604940, 21.519632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199101, 0.420173, 0.885332,
		0.115857, -0.886992, 0.447015,
		0.973107, 0.191573, 0.127921,
		37.925739, 30.662413, 21.558008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383076, 30.270376, 22.152786>,  <37.244564, 30.528311, 21.468464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383076, 30.270376, 22.152786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667553, 30.536732, 22.062637>,  <37.838242, 30.696545, 22.008549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667553, 30.536732, 22.062637>,  <37.383076, 30.270376, 22.152786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667553, 30.536732, 22.062637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001755, 0.322268, 0.946647,
		0.702993, -0.672855, 0.230364,
		0.711195, 0.665890, -0.225371,
		37.880913, 30.736498, 21.995026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.838943, 29.784929, 17.942778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.945637, 29.574902, 18.266050>,  <42.009655, 29.448885, 18.460014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.945637, 29.574902, 18.266050>,  <41.838943, 29.784929, 17.942778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945637, 29.574902, 18.266050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338108, 0.734285, 0.588650,
		-0.902516, -0.430267, 0.018330,
		0.266736, -0.525068, 0.808180,
		42.025658, 29.417381, 18.508505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212730, 29.788141, 18.394823>,  <41.838943, 29.784929, 17.942778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212730, 29.788141, 18.394823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.511837, 29.692219, 18.642481>,  <41.691299, 29.634665, 18.791075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.511837, 29.692219, 18.642481>,  <41.212730, 29.788141, 18.394823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511837, 29.692219, 18.642481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335568, 0.668143, 0.664063,
		-0.572923, -0.704328, 0.419143,
		0.747766, -0.239806, 0.619144,
		41.736168, 29.620277, 18.828224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941322, 29.699064, 18.996836>,  <41.212730, 29.788141, 18.394823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941322, 29.699064, 18.996836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.320812, 29.739141, 19.116751>,  <41.548508, 29.763187, 19.188700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.320812, 29.739141, 19.116751>,  <40.941322, 29.699064, 18.996836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320812, 29.739141, 19.116751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285969, 0.676134, 0.679017,
		-0.134665, -0.729934, 0.670121,
		0.948729, 0.100194, 0.299790,
		41.605431, 29.769199, 19.206688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969349, 29.651896, 19.677200>,  <40.941322, 29.699064, 18.996836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969349, 29.651896, 19.677200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.315338, 29.844227, 19.619749>,  <41.522930, 29.959625, 19.585278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.315338, 29.844227, 19.619749>,  <40.969349, 29.651896, 19.677200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315338, 29.844227, 19.619749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242646, 0.651274, 0.719003,
		0.439259, -0.587065, 0.680004,
		0.864971, 0.480828, -0.143629,
		41.574829, 29.988476, 19.576660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242821, 29.731152, 20.354834>,  <40.969349, 29.651896, 19.677200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242821, 29.731152, 20.354834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.401817, 30.012180, 20.118734>,  <41.497215, 30.180798, 19.977074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.401817, 30.012180, 20.118734>,  <41.242821, 29.731152, 20.354834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401817, 30.012180, 20.118734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196586, 0.693517, 0.693100,
		0.896299, -0.159468, 0.413784,
		0.397494, 0.702569, -0.590250,
		41.521065, 30.222952, 19.941660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683331, 30.146866, 20.807682>,  <41.242821, 29.731152, 20.354834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683331, 30.146866, 20.807682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638138, 30.382799, 20.487848>,  <41.611023, 30.524359, 20.295948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638138, 30.382799, 20.487848>,  <41.683331, 30.146866, 20.807682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638138, 30.382799, 20.487848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210851, 0.772173, 0.599408,
		0.970967, 0.236313, 0.037128,
		-0.112978, 0.589834, -0.799582,
		41.604244, 30.559750, 20.247974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081543, 30.675940, 20.911287>,  <41.683331, 30.146866, 20.807682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081543, 30.675940, 20.911287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.826977, 30.814962, 20.635847>,  <41.674236, 30.898376, 20.470583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.826977, 30.814962, 20.635847>,  <42.081543, 30.675940, 20.911287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826977, 30.814962, 20.635847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069144, 0.863432, 0.499704,
		0.768238, 0.365634, -0.525474,
		-0.636420, 0.347558, -0.688602,
		41.636051, 30.919230, 20.429266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316113, 31.300306, 20.689474>,  <42.081543, 30.675940, 20.911287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316113, 31.300306, 20.689474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.925861, 31.317263, 20.603359>,  <41.691711, 31.327436, 20.551691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.925861, 31.317263, 20.603359>,  <42.316113, 31.300306, 20.689474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925861, 31.317263, 20.603359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045617, 0.920539, 0.387979,
		0.214627, 0.388345, -0.896172,
		-0.975630, 0.042391, -0.215288,
		41.633171, 31.329979, 20.538773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213837, 31.955359, 20.317188>,  <42.316113, 31.300306, 20.689474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213837, 31.955359, 20.317188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.855885, 31.838659, 20.452288>,  <41.641113, 31.768639, 20.533348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.855885, 31.838659, 20.452288>,  <42.213837, 31.955359, 20.317188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855885, 31.838659, 20.452288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183296, 0.930239, 0.317895,
		-0.406934, 0.222569, -0.885928,
		-0.894878, -0.291750, 0.337750,
		41.587421, 31.751135, 20.553612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730286, 32.463017, 20.160822>,  <42.213837, 31.955359, 20.317188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730286, 32.463017, 20.160822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.527744, 32.243542, 20.426920>,  <41.406219, 32.111858, 20.586578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.527744, 32.243542, 20.426920>,  <41.730286, 32.463017, 20.160822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527744, 32.243542, 20.426920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309337, 0.835686, 0.453805,
		-0.804931, 0.024002, -0.592883,
		-0.506356, -0.548682, 0.665245,
		41.375839, 32.078938, 20.626493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141533, 32.800236, 20.293913>,  <41.730286, 32.463017, 20.160822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141533, 32.800236, 20.293913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.158260, 32.569004, 20.619875>,  <41.168297, 32.430264, 20.815453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.158260, 32.569004, 20.619875>,  <41.141533, 32.800236, 20.293913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158260, 32.569004, 20.619875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357243, 0.753051, 0.552532,
		-0.933075, -0.314225, -0.175025,
		0.041816, -0.578081, 0.814907,
		41.170807, 32.395580, 20.864347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594368, 33.058052, 20.760441>,  <41.141533, 32.800236, 20.293913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594368, 33.058052, 20.760441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.836159, 32.854733, 21.005795>,  <40.981232, 32.732738, 21.153006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.836159, 32.854733, 21.005795>,  <40.594368, 33.058052, 20.760441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836159, 32.854733, 21.005795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142787, 0.688376, 0.711161,
		-0.783721, -0.517464, 0.343529,
		0.604478, -0.508301, 0.613382,
		41.017502, 32.702244, 21.189810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892296, 32.643860, 20.740238>,  <40.594368, 33.058052, 20.760441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892296, 32.643860, 20.740238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575863, 32.798985, 20.551010>,  <39.386005, 32.892059, 20.437473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575863, 32.798985, 20.551010>,  <39.892296, 32.643860, 20.740238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575863, 32.798985, 20.551010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227383, -0.531513, -0.815960,
		-0.567888, -0.753054, 0.332283,
		-0.791075, 0.387819, -0.473072,
		39.338539, 32.915329, 20.409090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427650, 32.106003, 20.527018>,  <39.892296, 32.643860, 20.740238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427650, 32.106003, 20.527018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.320316, 32.382805, 20.258953>,  <39.255917, 32.548885, 20.098114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.320316, 32.382805, 20.258953>,  <39.427650, 32.106003, 20.527018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320316, 32.382805, 20.258953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112425, -0.668427, -0.735232,
		-0.956742, -0.272634, 0.101565,
		-0.268338, 0.692009, -0.670163,
		39.239815, 32.590408, 20.057903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898170, 31.794441, 19.991325>,  <39.427650, 32.106003, 20.527018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898170, 31.794441, 19.991325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.054279, 32.111996, 19.804808>,  <39.147945, 32.302528, 19.692896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.054279, 32.111996, 19.804808>,  <38.898170, 31.794441, 19.991325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054279, 32.111996, 19.804808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072515, -0.478381, -0.875153,
		-0.917839, 0.375362, -0.129130,
		0.390272, 0.793886, -0.466297,
		39.171360, 32.350163, 19.664919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516102, 31.988503, 19.360723>,  <38.898170, 31.794441, 19.991325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516102, 31.988503, 19.360723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882565, 32.135883, 19.297606>,  <39.102444, 32.224312, 19.259735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882565, 32.135883, 19.297606>,  <38.516102, 31.988503, 19.360723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882565, 32.135883, 19.297606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028047, -0.333788, -0.942231,
		-0.399839, 0.867656, -0.295468,
		0.916156, 0.368454, -0.157797,
		39.157410, 32.246418, 19.250267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444584, 32.348526, 18.777935>,  <38.516102, 31.988503, 19.360723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444584, 32.348526, 18.777935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.839684, 32.288063, 18.793419>,  <39.076744, 32.251785, 18.802710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.839684, 32.288063, 18.793419>,  <38.444584, 32.348526, 18.777935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839684, 32.288063, 18.793419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007465, -0.202038, -0.979349,
		0.155855, 0.967643, -0.198435,
		0.987752, -0.151155, 0.038712,
		39.136009, 32.242718, 18.805033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529396, 32.366066, 18.183876>,  <38.444584, 32.348526, 18.777935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529396, 32.366066, 18.183876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.904282, 32.264492, 18.279491>,  <39.129215, 32.203548, 18.336861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.904282, 32.264492, 18.279491>,  <38.529396, 32.366066, 18.183876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904282, 32.264492, 18.279491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155095, -0.310426, -0.937860,
		0.312361, 0.916052, -0.251552,
		0.937217, -0.253936, 0.239040,
		39.185448, 32.188313, 18.351204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917965, 32.660305, 17.712816>,  <38.529396, 32.366066, 18.183876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917965, 32.660305, 17.712816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.145718, 32.368595, 17.864586>,  <39.282368, 32.193569, 17.955648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.145718, 32.368595, 17.864586>,  <38.917965, 32.660305, 17.712816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145718, 32.368595, 17.864586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118548, -0.383882, -0.915741,
		0.813481, 0.566385, -0.132121,
		0.569381, -0.729275, 0.379425,
		39.316532, 32.149811, 17.978413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539032, 32.702396, 17.391602>,  <38.917965, 32.660305, 17.712816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539032, 32.702396, 17.391602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.520523, 32.313835, 17.484756>,  <39.509418, 32.080700, 17.540649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.520523, 32.313835, 17.484756>,  <39.539032, 32.702396, 17.391602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520523, 32.313835, 17.484756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212589, -0.237375, -0.947871,
		0.976046, 0.005648, 0.217493,
		-0.046274, -0.971402, 0.232889,
		39.506641, 32.022415, 17.554623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133072, 32.388527, 17.013617>,  <39.539032, 32.702396, 17.391602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133072, 32.388527, 17.013617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888985, 32.092693, 17.127213>,  <39.742531, 31.915194, 17.195370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888985, 32.092693, 17.127213>,  <40.133072, 32.388527, 17.013617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888985, 32.092693, 17.127213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193067, -0.486491, -0.852086,
		0.768345, -0.465132, 0.439656,
		-0.610221, -0.739580, 0.283992,
		39.705917, 31.870819, 17.212410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538223, 31.756659, 16.893002>,  <40.133072, 32.388527, 17.013617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538223, 31.756659, 16.893002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.147274, 31.672056, 16.892790>,  <39.912704, 31.621294, 16.892664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.147274, 31.672056, 16.892790>,  <40.538223, 31.756659, 16.893002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147274, 31.672056, 16.892790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131132, -0.604002, -0.786121,
		0.165953, -0.768405, 0.618073,
		-0.977376, -0.211508, -0.000527,
		39.854061, 31.608604, 16.892632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537663, 31.047348, 16.649340>,  <40.538223, 31.756659, 16.893002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537663, 31.047348, 16.649340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152561, 31.153076, 16.626562>,  <39.921501, 31.216513, 16.612896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152561, 31.153076, 16.626562>,  <40.537663, 31.047348, 16.649340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152561, 31.153076, 16.626562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164859, -0.740775, -0.651210,
		-0.214308, -0.617567, 0.756758,
		-0.962753, 0.264318, -0.056943,
		39.863735, 31.232372, 16.609480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070885, 30.436899, 16.785053>,  <40.537663, 31.047348, 16.649340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070885, 30.436899, 16.785053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.877281, 30.719707, 16.578808>,  <39.761120, 30.889393, 16.455061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.877281, 30.719707, 16.578808>,  <40.070885, 30.436899, 16.785053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877281, 30.719707, 16.578808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209394, -0.665689, -0.716248,
		-0.849641, -0.238703, 0.470245,
		-0.484008, 0.707021, -0.515615,
		39.732079, 30.931814, 16.424124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335640, 30.175238, 16.666601>,  <40.070885, 30.436899, 16.785053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335640, 30.175238, 16.666601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.444351, 30.441092, 16.388206>,  <39.509579, 30.600603, 16.221169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.444351, 30.441092, 16.388206>,  <39.335640, 30.175238, 16.666601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444351, 30.441092, 16.388206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115136, -0.695559, -0.709183,
		-0.955449, 0.272871, -0.112512,
		0.271774, 0.664634, -0.695988,
		39.525883, 30.640482, 16.179409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836620, 29.675886, 16.898064>,  <39.335640, 30.175238, 16.666601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836620, 29.675886, 16.898064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873295, 29.284796, 16.973581>,  <39.895302, 29.050140, 17.018892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873295, 29.284796, 16.973581>,  <39.836620, 29.675886, 16.898064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873295, 29.284796, 16.973581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390602, 0.139083, 0.909992,
		-0.915982, -0.157180, -0.369150,
		0.091690, -0.977727, 0.188793,
		39.900803, 28.991478, 17.030220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176464, 29.478693, 17.106255>,  <39.836620, 29.675886, 16.898064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176464, 29.478693, 17.106255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.453430, 29.230520, 17.253565>,  <39.619610, 29.081615, 17.341951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.453430, 29.230520, 17.253565>,  <39.176464, 29.478693, 17.106255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453430, 29.230520, 17.253565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419340, 0.069303, 0.905180,
		-0.587126, -0.781191, -0.212186,
		0.692413, -0.620433, 0.368275,
		39.661156, 29.044390, 17.364048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751186, 29.030701, 17.573328>,  <39.176464, 29.478693, 17.106255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751186, 29.030701, 17.573328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.134781, 29.003761, 17.683466>,  <39.364937, 28.987597, 17.749548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.134781, 29.003761, 17.683466>,  <38.751186, 29.030701, 17.573328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134781, 29.003761, 17.683466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279499, -0.062847, 0.958087,
		-0.047196, -0.995750, -0.079086,
		0.958985, -0.067322, 0.275345,
		39.422478, 28.983557, 17.766069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741348, 28.570042, 18.064754>,  <38.751186, 29.030701, 17.573328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741348, 28.570042, 18.064754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082218, 28.767054, 18.135427>,  <39.286739, 28.885262, 18.177832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082218, 28.767054, 18.135427>,  <38.741348, 28.570042, 18.064754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082218, 28.767054, 18.135427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285626, 0.154928, 0.945735,
		0.438431, -0.856393, 0.272706,
		0.852171, 0.492532, 0.176683,
		39.337868, 28.914812, 18.188433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923088, 28.355789, 18.681906>,  <38.741348, 28.570042, 18.064754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923088, 28.355789, 18.681906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.136276, 28.692850, 18.651220>,  <39.264191, 28.895086, 18.632809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.136276, 28.692850, 18.651220>,  <38.923088, 28.355789, 18.681906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136276, 28.692850, 18.651220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201978, 0.214740, 0.955558,
		0.821674, -0.493789, 0.284647,
		0.532969, 0.842650, -0.076712,
		39.296165, 28.945644, 18.628206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256695, 28.460947, 19.286009>,  <38.923088, 28.355789, 18.681906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256695, 28.460947, 19.286009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278736, 28.826933, 19.126104>,  <39.291962, 29.046524, 19.030163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278736, 28.826933, 19.126104>,  <39.256695, 28.460947, 19.286009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278736, 28.826933, 19.126104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117818, 0.403528, 0.907350,
		0.991506, -0.002895, 0.130033,
		0.055098, 0.914963, -0.399760,
		39.295265, 29.101421, 19.006176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741638, 28.735630, 19.840256>,  <39.256695, 28.460947, 19.286009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741638, 28.735630, 19.840256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539768, 29.012075, 19.633308>,  <39.418648, 29.177942, 19.509140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539768, 29.012075, 19.633308>,  <39.741638, 28.735630, 19.840256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539768, 29.012075, 19.633308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243564, 0.460958, 0.853343,
		0.828240, 0.556672, -0.064303,
		-0.504673, 0.691111, -0.517369,
		39.388367, 29.219408, 19.478098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976036, 29.302227, 20.225742>,  <39.741638, 28.735630, 19.840256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976036, 29.302227, 20.225742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643326, 29.422581, 20.039146>,  <39.443699, 29.494793, 19.927189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643326, 29.422581, 20.039146>,  <39.976036, 29.302227, 20.225742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643326, 29.422581, 20.039146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258396, 0.533897, 0.805100,
		0.491299, 0.790204, -0.366337,
		-0.831779, 0.300885, -0.466488,
		39.393791, 29.512846, 19.899200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668297, 29.288946, 20.437412>,  <39.976036, 29.302227, 20.225742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668297, 29.288946, 20.437412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564426, 28.962936, 20.644604>,  <40.502106, 28.767330, 20.768919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564426, 28.962936, 20.644604>,  <40.668297, 29.288946, 20.437412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564426, 28.962936, 20.644604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245296, -0.574456, -0.780916,
		0.934023, -0.075726, 0.349094,
		-0.259675, -0.815025, 0.517980,
		40.486523, 28.718430, 20.799997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254810, 28.841562, 20.487644>,  <40.668297, 29.288946, 20.437412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254810, 28.841562, 20.487644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.954048, 28.587517, 20.558382>,  <40.773590, 28.435089, 20.600824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.954048, 28.587517, 20.558382>,  <41.254810, 28.841562, 20.487644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954048, 28.587517, 20.558382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327204, -0.592372, -0.736229,
		0.572349, -0.495706, 0.653217,
		-0.751901, -0.635114, 0.176847,
		40.728477, 28.396982, 20.611437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595070, 28.192894, 20.588909>,  <41.254810, 28.841562, 20.487644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595070, 28.192894, 20.588909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.215118, 28.133060, 20.479109>,  <40.987148, 28.097160, 20.413229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.215118, 28.133060, 20.479109>,  <41.595070, 28.192894, 20.588909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215118, 28.133060, 20.479109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294428, -0.723185, -0.624752,
		-0.105063, -0.674261, 0.730982,
		-0.949881, -0.149583, -0.274502,
		40.930153, 28.088186, 20.396759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486473, 27.506809, 20.676363>,  <41.595070, 28.192894, 20.588909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486473, 27.506809, 20.676363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.199039, 27.620035, 20.422272>,  <41.026581, 27.687971, 20.269817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.199039, 27.620035, 20.422272>,  <41.486473, 27.506809, 20.676363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199039, 27.620035, 20.422272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268655, -0.729519, -0.628989,
		-0.641455, -0.622637, 0.448173,
		-0.718582, 0.283064, -0.635227,
		40.983463, 27.704954, 20.231703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296677, 26.932337, 20.367907>,  <41.486473, 27.506809, 20.676363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296677, 26.932337, 20.367907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.102192, 27.165298, 20.107323>,  <40.985500, 27.305077, 19.950974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.102192, 27.165298, 20.107323>,  <41.296677, 26.932337, 20.367907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102192, 27.165298, 20.107323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017770, -0.738769, -0.673725,
		-0.873658, -0.339153, 0.348852,
		-0.486216, 0.582405, -0.651458,
		40.956326, 27.340019, 19.911884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796402, 26.509073, 20.005936>,  <41.296677, 26.932337, 20.367907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796402, 26.509073, 20.005936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820648, 26.818514, 19.753628>,  <40.835197, 27.004177, 19.602243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820648, 26.818514, 19.753628>,  <40.796402, 26.509073, 20.005936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820648, 26.818514, 19.753628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016748, -0.632630, -0.774273,
		-0.998021, 0.036368, -0.051303,
		0.060615, 0.773600, -0.630769,
		40.838833, 27.050594, 19.564398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371651, 26.381758, 19.356331>,  <40.796402, 26.509073, 20.005936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371651, 26.381758, 19.356331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.614033, 26.679802, 19.244881>,  <40.759460, 26.858627, 19.178011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.614033, 26.679802, 19.244881>,  <40.371651, 26.381758, 19.356331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614033, 26.679802, 19.244881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125816, -0.435610, -0.891299,
		-0.785487, 0.505031, -0.357707,
		0.605955, 0.745109, -0.278625,
		40.795818, 26.903334, 19.161293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225590, 26.718052, 18.637579>,  <40.371651, 26.381758, 19.356331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225590, 26.718052, 18.637579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613194, 26.798470, 18.694983>,  <40.845757, 26.846720, 18.729424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613194, 26.798470, 18.694983>,  <40.225590, 26.718052, 18.637579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613194, 26.798470, 18.694983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208571, -0.354709, -0.911416,
		-0.132332, 0.913106, -0.385650,
		0.969013, 0.201045, 0.143508,
		40.903896, 26.858784, 18.738035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366272, 27.062937, 18.008795>,  <40.225590, 26.718052, 18.637579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366272, 27.062937, 18.008795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.706596, 26.914545, 18.157658>,  <40.910789, 26.825510, 18.246975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.706596, 26.914545, 18.157658>,  <40.366272, 27.062937, 18.008795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706596, 26.914545, 18.157658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242789, -0.350579, -0.904515,
		0.466026, 0.859924, -0.208206,
		0.850807, -0.370978, 0.372159,
		40.961838, 26.803251, 18.269306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.830414, 33.591217, 33.321533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.208477, 33.467548, 33.279415>,  <38.435314, 33.393345, 33.254143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.208477, 33.467548, 33.279415>,  <37.830414, 33.591217, 33.321533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208477, 33.467548, 33.279415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130297, -0.061304, -0.989578,
		0.299498, 0.949027, -0.098227,
		0.945158, -0.309175, -0.105295,
		38.492023, 33.374794, 33.247826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181343, 34.059013, 32.772678>,  <37.830414, 33.591217, 33.321533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181343, 34.059013, 32.772678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383152, 33.715164, 32.804947>,  <38.504238, 33.508854, 32.824306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383152, 33.715164, 32.804947>,  <38.181343, 34.059013, 32.772678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383152, 33.715164, 32.804947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186086, -0.199501, -0.962066,
		0.843108, 0.470371, -0.260616,
		0.504521, -0.859622, 0.080671,
		38.534508, 33.457279, 32.829147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694157, 34.063442, 32.177353>,  <38.181343, 34.059013, 32.772678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694157, 34.063442, 32.177353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.659748, 33.685280, 32.303089>,  <38.639103, 33.458382, 32.378529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.659748, 33.685280, 32.303089>,  <38.694157, 34.063442, 32.177353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659748, 33.685280, 32.303089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297394, -0.276755, -0.913763,
		0.950871, -0.172088, -0.257351,
		-0.086025, -0.945406, 0.314336,
		38.633942, 33.401657, 32.397388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075375, 33.644302, 31.744802>,  <38.694157, 34.063442, 32.177353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075375, 33.644302, 31.744802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863319, 33.356819, 31.924761>,  <38.736088, 33.184330, 32.032734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863319, 33.356819, 31.924761>,  <39.075375, 33.644302, 31.744802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863319, 33.356819, 31.924761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135724, -0.451823, -0.881723,
		0.836978, -0.528496, 0.141982,
		-0.530138, -0.718713, 0.449895,
		38.704277, 33.141205, 32.059731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337894, 33.060577, 31.458702>,  <39.075375, 33.644302, 31.744802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337894, 33.060577, 31.458702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.960724, 32.979382, 31.564299>,  <38.734421, 32.930664, 31.627657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.960724, 32.979382, 31.564299>,  <39.337894, 33.060577, 31.458702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960724, 32.979382, 31.564299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134530, -0.492975, -0.859580,
		0.304631, -0.846032, 0.437528,
		-0.942922, -0.202994, 0.263992,
		38.677849, 32.918484, 31.643496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272144, 32.363022, 31.346355>,  <39.337894, 33.060577, 31.458702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272144, 32.363022, 31.346355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.899967, 32.509403, 31.353865>,  <38.676662, 32.597233, 31.358370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.899967, 32.509403, 31.353865>,  <39.272144, 32.363022, 31.346355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899967, 32.509403, 31.353865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227414, -0.536520, -0.812668,
		-0.287326, -0.760411, 0.582425,
		-0.930444, 0.365952, 0.018772,
		38.620834, 32.619190, 31.359497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948864, 31.813776, 31.255203>,  <39.272144, 32.363022, 31.346355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948864, 31.813776, 31.255203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.681950, 32.090279, 31.144285>,  <38.521801, 32.256180, 31.077734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.681950, 32.090279, 31.144285>,  <38.948864, 31.813776, 31.255203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681950, 32.090279, 31.144285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202781, -0.526859, -0.825409,
		-0.716664, -0.494555, 0.491740,
		-0.667288, 0.691256, -0.277295,
		38.481762, 32.297657, 31.061096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504539, 31.374157, 30.896315>,  <38.948864, 31.813776, 31.255203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504539, 31.374157, 30.896315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451443, 31.753183, 30.780041>,  <38.419586, 31.980600, 30.710278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451443, 31.753183, 30.780041>,  <38.504539, 31.374157, 30.896315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451443, 31.753183, 30.780041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033350, -0.297383, -0.954176,
		-0.990590, -0.116963, 0.071076,
		-0.132740, 0.947567, -0.290683,
		38.411621, 32.037453, 30.692835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799980, 31.458706, 30.501282>,  <38.504539, 31.374157, 30.896315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799980, 31.458706, 30.501282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042088, 31.751846, 30.376968>,  <38.187351, 31.927731, 30.302380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042088, 31.751846, 30.376968>,  <37.799980, 31.458706, 30.501282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042088, 31.751846, 30.376968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065779, -0.343037, -0.937016,
		-0.793302, 0.587586, -0.159422,
		0.605265, 0.732850, -0.310783,
		38.223667, 31.971701, 30.283733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460491, 31.722754, 29.884718>,  <37.799980, 31.458706, 30.501282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460491, 31.722754, 29.884718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848663, 31.816853, 29.863077>,  <38.081566, 31.873312, 29.850094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848663, 31.816853, 29.863077>,  <37.460491, 31.722754, 29.884718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848663, 31.816853, 29.863077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014879, -0.281991, -0.959302,
		-0.240931, 0.930129, -0.277152,
		0.970428, 0.235249, -0.054101,
		38.139793, 31.887428, 29.846848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485432, 31.961382, 29.184830>,  <37.460491, 31.722754, 29.884718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485432, 31.961382, 29.184830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861206, 31.899784, 29.307301>,  <38.086670, 31.862825, 29.380783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861206, 31.899784, 29.307301>,  <37.485432, 31.961382, 29.184830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861206, 31.899784, 29.307301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217354, -0.423020, -0.879665,
		0.264984, 0.892939, -0.363929,
		0.939436, -0.153996, 0.306178,
		38.143036, 31.853586, 29.399155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901234, 32.208214, 28.649446>,  <37.485432, 31.961382, 29.184830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901234, 32.208214, 28.649446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145195, 31.942369, 28.822102>,  <38.291573, 31.782864, 28.925694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145195, 31.942369, 28.822102>,  <37.901234, 32.208214, 28.649446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145195, 31.942369, 28.822102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318784, -0.292901, -0.901435,
		0.725527, 0.687391, 0.033224,
		0.609907, -0.664607, 0.431637,
		38.328167, 31.742987, 28.951593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635281, 32.684391, 28.117165>,  <37.901234, 32.208214, 28.649446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635281, 32.684391, 28.117165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305237, 32.534008, 27.948473>,  <37.107212, 32.443779, 27.847258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305237, 32.534008, 27.948473>,  <37.635281, 32.684391, 28.117165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305237, 32.534008, 27.948473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564739, 0.527309, 0.634835,
		-0.016287, 0.761974, -0.647403,
		-0.825109, -0.375953, -0.421728,
		37.057705, 32.421223, 27.821955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188629, 33.184364, 28.069803>,  <37.635281, 32.684391, 28.117165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188629, 33.184364, 28.069803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937042, 32.877079, 28.022074>,  <36.786091, 32.692707, 27.993435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937042, 32.877079, 28.022074>,  <37.188629, 33.184364, 28.069803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937042, 32.877079, 28.022074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700224, 0.493113, 0.516262,
		-0.337759, 0.408269, -0.848077,
		-0.628972, -0.768216, -0.119326,
		36.748352, 32.646614, 27.986277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615593, 33.526535, 28.008242>,  <37.188629, 33.184364, 28.069803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615593, 33.526535, 28.008242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525681, 33.145546, 28.090481>,  <36.471733, 32.916954, 28.139824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525681, 33.145546, 28.090481>,  <36.615593, 33.526535, 28.008242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525681, 33.145546, 28.090481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838058, 0.296619, 0.457904,
		-0.497125, -0.069374, -0.864901,
		-0.224779, -0.952473, 0.205596,
		36.458248, 32.859802, 28.152159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963699, 33.527435, 27.756798>,  <36.615593, 33.526535, 28.008242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963699, 33.527435, 27.756798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000751, 33.227226, 28.018526>,  <36.022984, 33.047100, 28.175562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000751, 33.227226, 28.018526>,  <35.963699, 33.527435, 27.756798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000751, 33.227226, 28.018526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798321, 0.336750, 0.499283,
		-0.595066, -0.568607, -0.567964,
		0.092634, -0.750523, 0.654319,
		36.028542, 33.002068, 28.214823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221966, 33.151615, 27.825703>,  <35.963699, 33.527435, 27.756798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221966, 33.151615, 27.825703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437595, 33.064667, 28.151192>,  <35.566975, 33.012497, 28.346485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437595, 33.064667, 28.151192>,  <35.221966, 33.151615, 27.825703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437595, 33.064667, 28.151192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712704, 0.397109, 0.578236,
		-0.448830, -0.891657, 0.059148,
		0.539077, -0.217375, 0.813723,
		35.599319, 32.999454, 28.395309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740295, 32.840786, 28.330706>,  <35.221966, 33.151615, 27.825703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740295, 32.840786, 28.330706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055252, 32.978565, 28.535202>,  <35.244228, 33.061234, 28.657900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055252, 32.978565, 28.535202>,  <34.740295, 32.840786, 28.330706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055252, 32.978565, 28.535202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610374, 0.551768, 0.568327,
		-0.086328, -0.759545, 0.644700,
		0.787395, 0.344445, 0.511240,
		35.291470, 33.081898, 28.688574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470177, 32.901989, 29.071577>,  <34.740295, 32.840786, 28.330706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470177, 32.901989, 29.071577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796577, 33.132561, 29.054264>,  <34.992416, 33.270905, 29.043877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796577, 33.132561, 29.054264>,  <34.470177, 32.901989, 29.071577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796577, 33.132561, 29.054264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435190, 0.661892, 0.610335,
		0.380459, -0.479200, 0.790960,
		0.816003, 0.576426, -0.043280,
		35.041378, 33.305489, 29.041281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480927, 33.242405, 29.709303>,  <34.470177, 32.901989, 29.071577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480927, 33.242405, 29.709303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718388, 33.461262, 29.473265>,  <34.860863, 33.592575, 29.331642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718388, 33.461262, 29.473265>,  <34.480927, 33.242405, 29.709303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718388, 33.461262, 29.473265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253956, 0.823197, 0.507792,
		0.763598, -0.151595, 0.627644,
		0.593654, 0.547143, -0.590093,
		34.896484, 33.625404, 29.296236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930328, 33.625370, 30.150883>,  <34.480927, 33.242405, 29.709303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930328, 33.625370, 30.150883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904308, 33.794411, 29.789291>,  <34.888695, 33.895836, 29.572336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904308, 33.794411, 29.789291>,  <34.930328, 33.625370, 30.150883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904308, 33.794411, 29.789291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382168, 0.826279, 0.413776,
		0.921800, 0.372388, 0.107754,
		-0.065050, 0.422600, -0.903979,
		34.884792, 33.921192, 29.518097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887001, 34.254406, 30.375727>,  <34.930328, 33.625370, 30.150883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887001, 34.254406, 30.375727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815212, 34.308456, 29.985950>,  <34.772141, 34.340889, 29.752085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815212, 34.308456, 29.985950>,  <34.887001, 34.254406, 30.375727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815212, 34.308456, 29.985950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337367, 0.922001, 0.189994,
		0.924107, 0.362842, -0.119885,
		-0.179472, 0.135129, -0.974438,
		34.761372, 34.348995, 29.693619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389019, 34.659206, 30.007734>,  <34.887001, 34.254406, 30.375727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389019, 34.659206, 30.007734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057190, 34.725464, 29.794430>,  <34.858093, 34.765217, 29.666447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057190, 34.725464, 29.794430>,  <35.389019, 34.659206, 30.007734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057190, 34.725464, 29.794430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098836, 0.983467, 0.151734,
		0.549577, 0.073170, -0.832232,
		-0.829576, 0.165644, -0.533260,
		34.808315, 34.775158, 29.634451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562962, 35.175529, 29.549496>,  <35.389019, 34.659206, 30.007734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562962, 35.175529, 29.549496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164745, 35.171406, 29.587008>,  <34.925816, 35.168930, 29.609514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164745, 35.171406, 29.587008>,  <35.562962, 35.175529, 29.549496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164745, 35.171406, 29.587008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013927, 0.967066, 0.254144,
		-0.093311, 0.254317, -0.962609,
		-0.995540, -0.010308, 0.093780,
		34.866085, 35.168312, 29.615141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292381, 35.679554, 29.109314>,  <35.562962, 35.175529, 29.549496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292381, 35.679554, 29.109314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020493, 35.624165, 29.397425>,  <34.857357, 35.590931, 29.570292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020493, 35.624165, 29.397425>,  <35.292381, 35.679554, 29.109314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020493, 35.624165, 29.397425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093217, 0.990363, 0.102427,
		-0.727520, 0.002480, -0.686082,
		-0.679724, -0.138472, 0.720278,
		34.816574, 35.582623, 29.613508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041531, 36.325474, 29.073587>,  <35.292381, 35.679554, 29.109314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041531, 36.325474, 29.073587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883278, 36.185093, 29.413071>,  <34.788326, 36.100864, 29.616760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883278, 36.185093, 29.413071>,  <35.041531, 36.325474, 29.073587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883278, 36.185093, 29.413071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041634, 0.916306, 0.398308,
		-0.917463, 0.192920, -0.347913,
		-0.395636, -0.350948, 0.848709,
		34.764587, 36.079807, 29.667683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627563, 36.919567, 29.307859>,  <35.041531, 36.325474, 29.073587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627563, 36.919567, 29.307859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713547, 36.677654, 29.614592>,  <34.765137, 36.532505, 29.798632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713547, 36.677654, 29.614592>,  <34.627563, 36.919567, 29.307859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713547, 36.677654, 29.614592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099016, 0.794638, 0.598954,
		-0.971590, -0.052823, 0.230699,
		0.214961, -0.604781, 0.766833,
		34.778034, 36.496220, 29.844641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178997, 37.235481, 28.853405>,  <34.627563, 36.919567, 29.307859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178997, 37.235481, 28.853405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474316, 37.505268, 28.853674>,  <35.651508, 37.667141, 28.853836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474316, 37.505268, 28.853674>,  <35.178997, 37.235481, 28.853405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474316, 37.505268, 28.853674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233385, -0.254537, -0.938479,
		-0.632805, 0.693037, -0.345336,
		0.738301, 0.674471, 0.000673,
		35.695805, 37.707611, 28.853876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985817, 37.708637, 28.342819>,  <35.178997, 37.235481, 28.853405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985817, 37.708637, 28.342819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381851, 37.696148, 28.397598>,  <35.619473, 37.688656, 28.430466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381851, 37.696148, 28.397598>,  <34.985817, 37.708637, 28.342819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381851, 37.696148, 28.397598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128855, -0.186243, -0.974018,
		0.055914, 0.982008, -0.180374,
		0.990086, -0.031219, 0.136950,
		35.678879, 37.686783, 28.438683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346092, 38.105091, 27.760946>,  <34.985817, 37.708637, 28.342819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346092, 38.105091, 27.760946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630745, 37.868355, 27.912369>,  <35.801537, 37.726315, 28.003222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630745, 37.868355, 27.912369>,  <35.346092, 38.105091, 27.760946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630745, 37.868355, 27.912369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286100, -0.247996, -0.925551,
		0.641660, 0.766956, -0.007156,
		0.711632, -0.591842, 0.378555,
		35.844234, 37.690804, 28.025936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975929, 38.255920, 27.496006>,  <35.346092, 38.105091, 27.760946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975929, 38.255920, 27.496006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.963875, 37.870731, 27.603170>,  <35.956642, 37.639618, 27.667469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.963875, 37.870731, 27.603170>,  <35.975929, 38.255920, 27.496006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963875, 37.870731, 27.603170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461373, -0.251170, -0.850911,
		0.886695, 0.097966, 0.451858,
		-0.030132, -0.962973, 0.267910,
		35.954834, 37.581841, 27.683544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600571, 38.039528, 27.206150>,  <35.975929, 38.255920, 27.496006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600571, 38.039528, 27.206150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378571, 37.712502, 27.267546>,  <36.245369, 37.516285, 27.304384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378571, 37.712502, 27.267546>,  <36.600571, 38.039528, 27.206150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378571, 37.712502, 27.267546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318861, -0.379513, -0.868503,
		0.768309, -0.433081, 0.471320,
		-0.555004, -0.817564, 0.153490,
		36.212070, 37.467232, 27.313593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082752, 37.483128, 26.914547>,  <36.600571, 38.039528, 27.206150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082752, 37.483128, 26.914547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706120, 37.350021, 26.935284>,  <36.480141, 37.270157, 26.947725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706120, 37.350021, 26.935284>,  <37.082752, 37.483128, 26.914547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706120, 37.350021, 26.935284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101924, -0.428279, -0.897880,
		0.320987, -0.840145, 0.437177,
		-0.941583, -0.332766, 0.051841,
		36.423645, 37.250191, 26.950836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052223, 36.749016, 26.934141>,  <37.082752, 37.483128, 26.914547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052223, 36.749016, 26.934141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692818, 36.856556, 26.795351>,  <36.477173, 36.921082, 26.712078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692818, 36.856556, 26.795351>,  <37.052223, 36.749016, 26.934141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692818, 36.856556, 26.795351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163030, -0.529527, -0.832480,
		-0.407544, -0.804562, 0.431958,
		-0.898515, 0.268850, -0.346973,
		36.423264, 36.937210, 26.691259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893909, 36.206429, 26.465399>,  <37.052223, 36.749016, 26.934141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893909, 36.206429, 26.465399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613304, 36.471310, 26.360054>,  <36.444942, 36.630238, 26.296846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613304, 36.471310, 26.360054>,  <36.893909, 36.206429, 26.465399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613304, 36.471310, 26.360054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135664, -0.238702, -0.961570,
		-0.699623, -0.710284, 0.077615,
		-0.701514, 0.662207, -0.263362,
		36.402851, 36.669971, 26.281046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465897, 35.867592, 25.992224>,  <36.893909, 36.206429, 26.465399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465897, 35.867592, 25.992224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381340, 36.255238, 25.941416>,  <36.330608, 36.487823, 25.910931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381340, 36.255238, 25.941416>,  <36.465897, 35.867592, 25.992224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381340, 36.255238, 25.941416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075076, -0.145671, -0.986480,
		-0.974514, -0.198995, 0.103551,
		-0.211389, 0.969113, -0.127018,
		36.317924, 36.545971, 25.903311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048698, 35.844559, 25.492323>,  <36.465897, 35.867592, 25.992224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048698, 35.844559, 25.492323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151890, 36.230801, 25.479355>,  <36.213806, 36.462547, 25.471573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151890, 36.230801, 25.479355>,  <36.048698, 35.844559, 25.492323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151890, 36.230801, 25.479355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170704, -0.078586, -0.982183,
		-0.950950, 0.247850, -0.185107,
		0.257981, 0.965606, -0.032422,
		36.229282, 36.520481, 25.469627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591946, 36.110737, 25.036213>,  <36.048698, 35.844559, 25.492323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591946, 36.110737, 25.036213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927723, 36.327549, 25.051876>,  <36.129189, 36.457638, 25.061274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927723, 36.327549, 25.051876>,  <35.591946, 36.110737, 25.036213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927723, 36.327549, 25.051876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061333, -0.022897, -0.997855,
		-0.539970, 0.840047, -0.052465,
		0.839447, 0.542029, 0.039159,
		36.179558, 36.490158, 25.063623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520775, 36.478260, 24.504740>,  <35.591946, 36.110737, 25.036213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520775, 36.478260, 24.504740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911835, 36.507660, 24.583538>,  <36.146469, 36.525299, 24.630817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911835, 36.507660, 24.583538>,  <35.520775, 36.478260, 24.504740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911835, 36.507660, 24.583538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196826, 0.009601, -0.980391,
		-0.073948, 0.997249, -0.005080,
		0.977646, 0.073497, 0.196994,
		36.205128, 36.529709, 24.642637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687038, 36.726562, 23.882708>,  <35.520775, 36.478260, 24.504740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687038, 36.726562, 23.882708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007416, 36.550510, 24.045078>,  <36.199642, 36.444881, 24.142500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007416, 36.550510, 24.045078>,  <35.687038, 36.726562, 23.882708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007416, 36.550510, 24.045078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355058, -0.196751, -0.913905,
		0.482100, 0.876115, -0.001317,
		0.800945, -0.440126, 0.405925,
		36.247700, 36.418472, 24.166857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220406, 37.015530, 23.419107>,  <35.687038, 36.726562, 23.882708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220406, 37.015530, 23.419107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317097, 36.687996, 23.627371>,  <36.375111, 36.491478, 23.752329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317097, 36.687996, 23.627371>,  <36.220406, 37.015530, 23.419107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317097, 36.687996, 23.627371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460500, -0.375493, -0.804329,
		0.854112, 0.434191, 0.286305,
		0.241726, -0.818831, 0.520658,
		36.389614, 36.442348, 23.783567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829250, 36.862537, 23.172041>,  <36.220406, 37.015530, 23.419107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829250, 36.862537, 23.172041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722099, 36.511971, 23.332106>,  <36.657810, 36.301628, 23.428144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722099, 36.511971, 23.332106>,  <36.829250, 36.862537, 23.172041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722099, 36.511971, 23.332106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616912, -0.475060, -0.627484,
		0.740041, 0.078776, 0.667933,
		-0.267878, -0.876420, 0.400162,
		36.641735, 36.249046, 23.452154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494980, 36.553795, 23.300148>,  <36.829250, 36.862537, 23.172041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494980, 36.553795, 23.300148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202782, 36.281292, 23.281155>,  <37.027462, 36.117790, 23.269758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202782, 36.281292, 23.281155>,  <37.494980, 36.553795, 23.300148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202782, 36.281292, 23.281155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598550, -0.605232, -0.524816,
		0.328800, -0.411797, 0.849890,
		-0.730499, -0.681261, -0.047481,
		36.983631, 36.076912, 23.266911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853039, 35.929398, 23.379768>,  <37.494980, 36.553795, 23.300148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853039, 35.929398, 23.379768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498737, 35.818027, 23.231216>,  <37.286156, 35.751205, 23.142084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498737, 35.818027, 23.231216>,  <37.853039, 35.929398, 23.379768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498737, 35.818027, 23.231216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440973, -0.754496, -0.486086,
		-0.144868, -0.594321, 0.791073,
		-0.885752, -0.278423, -0.371382,
		37.233013, 35.734501, 23.119802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747448, 35.196194, 23.682606>,  <37.853039, 35.929398, 23.379768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747448, 35.196194, 23.682606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569244, 35.255009, 23.329357>,  <37.462322, 35.290298, 23.117409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569244, 35.255009, 23.329357>,  <37.747448, 35.196194, 23.682606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569244, 35.255009, 23.329357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398450, -0.850776, -0.342662,
		-0.801723, -0.504538, 0.320439,
		-0.445508, 0.147042, -0.883120,
		37.435593, 35.299122, 23.064421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575340, 34.566315, 23.475340>,  <37.747448, 35.196194, 23.682606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575340, 34.566315, 23.475340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527458, 34.782154, 23.141991>,  <37.498730, 34.911655, 22.941980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527458, 34.782154, 23.141991>,  <37.575340, 34.566315, 23.475340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527458, 34.782154, 23.141991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342400, -0.765471, -0.544809,
		-0.931898, -0.350561, -0.093129,
		-0.119701, 0.539594, -0.833373,
		37.491547, 34.944031, 22.891979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494686, 34.084148, 22.935766>,  <37.575340, 34.566315, 23.475340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494686, 34.084148, 22.935766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559467, 34.422066, 22.731766>,  <37.598335, 34.624817, 22.609365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559467, 34.422066, 22.731766>,  <37.494686, 34.084148, 22.935766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559467, 34.422066, 22.731766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311051, -0.534177, -0.786067,
		-0.936493, -0.031333, -0.349282,
		0.161948, 0.844792, -0.510000,
		37.608051, 34.675503, 22.578766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101475, 34.079910, 22.220253>,  <37.494686, 34.084148, 22.935766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101475, 34.079910, 22.220253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416008, 34.325344, 22.191418>,  <37.604729, 34.472607, 22.174116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416008, 34.325344, 22.191418>,  <37.101475, 34.079910, 22.220253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416008, 34.325344, 22.191418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341053, -0.528410, -0.777474,
		-0.515139, 0.586765, -0.624771,
		0.786330, 0.613587, -0.072087,
		37.651905, 34.509418, 22.169792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207447, 34.220634, 21.447481>,  <37.101475, 34.079910, 22.220253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207447, 34.220634, 21.447481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.553474, 34.286270, 21.637106>,  <37.761089, 34.325653, 21.750881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.553474, 34.286270, 21.637106>,  <37.207447, 34.220634, 21.447481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553474, 34.286270, 21.637106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484721, -0.516868, -0.705615,
		0.129242, 0.840192, -0.526663,
		0.865067, 0.164090, 0.474060,
		37.812996, 34.335499, 21.779324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659569, 34.499458, 20.915459>,  <37.207447, 34.220634, 21.447481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659569, 34.499458, 20.915459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890728, 34.341290, 21.201025>,  <38.029423, 34.246387, 21.372364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890728, 34.341290, 21.201025>,  <37.659569, 34.499458, 20.915459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890728, 34.341290, 21.201025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531604, -0.481342, -0.696927,
		0.619221, 0.782271, -0.067955,
		0.577895, -0.395427, 0.713915,
		38.064098, 34.222660, 21.415199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334415, 34.441532, 20.601227>,  <37.659569, 34.499458, 20.915459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334415, 34.441532, 20.601227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360424, 34.203415, 20.921577>,  <38.376030, 34.060547, 21.113789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360424, 34.203415, 20.921577>,  <38.334415, 34.441532, 20.601227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360424, 34.203415, 20.921577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581133, -0.629845, -0.515344,
		0.811207, 0.498926, 0.304987,
		0.065024, -0.595289, 0.800877,
		38.379932, 34.024830, 21.161840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080410, 34.476368, 20.833094>,  <38.334415, 34.441532, 20.601227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080410, 34.476368, 20.833094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.900223, 34.134819, 20.937380>,  <38.792110, 33.929890, 20.999952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.900223, 34.134819, 20.937380>,  <39.080410, 34.476368, 20.833094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900223, 34.134819, 20.937380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635726, -0.511815, -0.577839,
		0.626841, -0.094554, 0.773389,
		-0.450469, -0.853876, 0.260716,
		38.765083, 33.878654, 21.015594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629787, 33.995720, 20.956669>,  <39.080410, 34.476368, 20.833094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629787, 33.995720, 20.956669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.308479, 33.767067, 20.889757>,  <39.115692, 33.629875, 20.849611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.308479, 33.767067, 20.889757>,  <39.629787, 33.995720, 20.956669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308479, 33.767067, 20.889757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547717, -0.598614, -0.584524,
		0.234001, -0.561154, 0.793946,
		-0.803275, -0.571636, -0.167277,
		39.067497, 33.595577, 20.839575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881954, 33.396526, 20.953896>,  <39.629787, 33.995720, 20.956669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881954, 33.396526, 20.953896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533646, 33.323116, 20.771431>,  <39.324661, 33.279072, 20.661953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533646, 33.323116, 20.771431>,  <39.881954, 33.396526, 20.953896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533646, 33.323116, 20.771431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487578, -0.442109, -0.752866,
		-0.063503, -0.877985, 0.474457,
		-0.870767, -0.183525, -0.456161,
		39.272415, 33.268059, 20.634583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228424, 32.897099, 21.365963>,  <39.881954, 33.396526, 20.953896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228424, 32.897099, 21.365963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614285, 32.880482, 21.470062>,  <40.845798, 32.870510, 21.532522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614285, 32.880482, 21.470062>,  <40.228424, 32.897099, 21.365963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614285, 32.880482, 21.470062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206951, 0.492002, 0.845639,
		-0.163171, -0.869602, 0.466012,
		0.964648, -0.041542, 0.260246,
		40.903679, 32.868019, 21.548136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223637, 32.943573, 22.044998>,  <40.228424, 32.897099, 21.365963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223637, 32.943573, 22.044998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.609856, 33.026466, 21.982035>,  <40.841587, 33.076202, 21.944256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.609856, 33.026466, 21.982035>,  <40.223637, 32.943573, 22.044998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609856, 33.026466, 21.982035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002082, 0.611003, 0.791625,
		0.260228, -0.764022, 0.590383,
		0.965545, 0.207232, -0.157410,
		40.899521, 33.088634, 21.934813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490501, 32.809204, 22.647652>,  <40.223637, 32.943573, 22.044998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490501, 32.809204, 22.647652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.753380, 33.053215, 22.470581>,  <40.911106, 33.199619, 22.364340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.753380, 33.053215, 22.470581>,  <40.490501, 32.809204, 22.647652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753380, 33.053215, 22.470581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014625, 0.576891, 0.816690,
		0.753576, -0.543201, 0.370210,
		0.657198, 0.610023, -0.442676,
		40.950539, 33.236221, 22.337778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138092, 32.825272, 23.118906>,  <40.490501, 32.809204, 22.647652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138092, 32.825272, 23.118906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.122974, 33.141594, 22.874546>,  <41.113903, 33.331387, 22.727930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.122974, 33.141594, 22.874546>,  <41.138092, 32.825272, 23.118906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122974, 33.141594, 22.874546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043022, 0.612057, 0.789643,
		0.998359, 0.003561, -0.057154,
		-0.037794, 0.790806, -0.610899,
		41.111637, 33.378838, 22.691277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612755, 33.263191, 23.366632>,  <41.138092, 32.825272, 23.118906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612755, 33.263191, 23.366632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.384521, 33.506992, 23.146471>,  <41.247581, 33.653271, 23.014374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.384521, 33.506992, 23.146471>,  <41.612755, 33.263191, 23.366632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384521, 33.506992, 23.146471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002944, 0.671726, 0.740794,
		0.821235, 0.421064, -0.385070,
		-0.570583, 0.609499, -0.550405,
		41.213348, 33.689842, 22.981350>
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
