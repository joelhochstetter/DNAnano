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
	<24.445877, 34.953548, 35.286942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294155, 34.900620, 34.920635>,  <24.203123, 34.868862, 34.700851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294155, 34.900620, 34.920635>,  <24.445877, 34.953548, 35.286942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294155, 34.900620, 34.920635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479879, 0.874340, 0.072430,
		0.791104, 0.466927, -0.395137,
		-0.379304, -0.132319, -0.915762,
		24.180365, 34.860924, 34.645908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011768, 34.511723, 35.568604>,  <24.445877, 34.953548, 35.286942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011768, 34.511723, 35.568604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324146, 34.700386, 35.732391>,  <25.511574, 34.813583, 35.830666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324146, 34.700386, 35.732391>,  <25.011768, 34.511723, 35.568604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324146, 34.700386, 35.732391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623956, -0.618870, -0.477157,
		0.028354, 0.628124, -0.777596,
		0.780945, 0.471656, 0.409469,
		25.558430, 34.841885, 35.855232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442694, 34.543755, 34.989201>,  <25.011768, 34.511723, 35.568604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442694, 34.543755, 34.989201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689901, 34.597969, 35.298958>,  <25.838226, 34.630497, 35.484814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689901, 34.597969, 35.298958>,  <25.442694, 34.543755, 34.989201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689901, 34.597969, 35.298958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723329, -0.483908, -0.492573,
		0.307976, 0.864560, -0.397098,
		0.618017, 0.135532, 0.774394,
		25.875307, 34.638630, 35.531277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058405, 34.856293, 34.737995>,  <25.442694, 34.543755, 34.989201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058405, 34.856293, 34.737995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102945, 34.627300, 35.062923>,  <26.129669, 34.489906, 35.257881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102945, 34.627300, 35.062923>,  <26.058405, 34.856293, 34.737995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102945, 34.627300, 35.062923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594237, -0.616818, -0.516158,
		0.796545, 0.540185, 0.271507,
		0.111351, -0.572482, 0.812321,
		26.136351, 34.455555, 35.306622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426798, 35.386147, 34.458668>,  <26.058405, 34.856293, 34.737995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426798, 35.386147, 34.458668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271431, 35.704712, 34.644077>,  <26.178211, 35.895851, 34.755322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271431, 35.704712, 34.644077>,  <26.426798, 35.386147, 34.458668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271431, 35.704712, 34.644077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234734, -0.400909, 0.885535,
		0.891084, 0.452762, -0.031226,
		-0.388418, 0.796416, 0.463523,
		26.154905, 35.943638, 34.783134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850122, 35.787308, 34.931633>,  <26.426798, 35.386147, 34.458668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850122, 35.787308, 34.931633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493118, 35.860416, 35.096565>,  <26.278915, 35.904282, 35.195526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493118, 35.860416, 35.096565>,  <26.850122, 35.787308, 34.931633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493118, 35.860416, 35.096565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284297, -0.481743, 0.828914,
		0.350140, 0.857040, 0.378000,
		-0.892512, 0.182772, 0.412332,
		26.225365, 35.915249, 35.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479614, 35.388039, 34.716625>,  <26.850122, 35.787308, 34.931633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479614, 35.388039, 34.716625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853935, 35.526451, 34.743568>,  <28.078527, 35.609497, 34.759735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853935, 35.526451, 34.743568>,  <27.479614, 35.388039, 34.716625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853935, 35.526451, 34.743568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202487, 0.684015, -0.700801,
		-0.288571, 0.642173, 0.710169,
		0.935802, 0.346031, 0.067356,
		28.134676, 35.630260, 34.763775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736315, 36.115414, 34.963394>,  <27.479614, 35.388039, 34.716625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736315, 36.115414, 34.963394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922939, 35.932392, 34.660618>,  <28.034914, 35.822578, 34.478951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922939, 35.932392, 34.660618>,  <27.736315, 36.115414, 34.963394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922939, 35.932392, 34.660618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410544, 0.645995, -0.643541,
		0.783436, 0.611010, 0.113550,
		0.466563, -0.457556, -0.756942,
		28.062908, 35.795124, 34.433537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221418, 36.484287, 34.570240>,  <27.736315, 36.115414, 34.963394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221418, 36.484287, 34.570240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019152, 36.201973, 34.371780>,  <27.897791, 36.032585, 34.252705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019152, 36.201973, 34.371780>,  <28.221418, 36.484287, 34.570240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019152, 36.201973, 34.371780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257274, 0.672288, -0.694146,
		0.823475, -0.223362, -0.521535,
		-0.505668, -0.705789, -0.496147,
		27.867451, 35.990234, 34.222935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585878, 36.269527, 33.863903>,  <28.221418, 36.484287, 34.570240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585878, 36.269527, 33.863903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187489, 36.302593, 33.877773>,  <27.948454, 36.322433, 33.886097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187489, 36.302593, 33.877773>,  <28.585878, 36.269527, 33.863903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187489, 36.302593, 33.877773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018709, 0.569959, -0.821460,
		-0.087671, -0.817504, -0.569211,
		-0.995974, 0.082668, 0.034674,
		27.888697, 36.327393, 33.888176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322012, 36.088989, 33.140087>,  <28.585878, 36.269527, 33.863903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322012, 36.088989, 33.140087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072933, 36.306965, 33.364693>,  <27.923487, 36.437748, 33.499454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072933, 36.306965, 33.364693>,  <28.322012, 36.088989, 33.140087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072933, 36.306965, 33.364693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036019, 0.696894, -0.716269,
		-0.781636, -0.466242, -0.414324,
		-0.622694, 0.544937, 0.561511,
		27.886126, 36.470448, 33.533146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757654, 36.446121, 32.692081>,  <28.322012, 36.088989, 33.140087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757654, 36.446121, 32.692081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853907, 36.652988, 33.020626>,  <27.911659, 36.777111, 33.217751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853907, 36.652988, 33.020626>,  <27.757654, 36.446121, 32.692081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853907, 36.652988, 33.020626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106977, 0.826937, -0.552025,
		-0.964703, 0.220701, 0.143662,
		0.240632, 0.517171, 0.821359,
		27.926096, 36.808140, 33.267033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310255, 37.028786, 32.734863>,  <27.757654, 36.446121, 32.692081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310255, 37.028786, 32.734863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644215, 37.133961, 32.928280>,  <27.844589, 37.197067, 33.044331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644215, 37.133961, 32.928280>,  <27.310255, 37.028786, 32.734863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644215, 37.133961, 32.928280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100676, 0.790739, -0.603818,
		-0.541121, 0.552806, 0.633714,
		0.834897, 0.262939, 0.483540,
		27.894684, 37.212841, 33.073341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257595, 37.746994, 32.823753>,  <27.310255, 37.028786, 32.734863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257595, 37.746994, 32.823753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643887, 37.643349, 32.817787>,  <27.875662, 37.581161, 32.814209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643887, 37.643349, 32.817787>,  <27.257595, 37.746994, 32.823753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643887, 37.643349, 32.817787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133394, 0.544810, -0.827882,
		0.222644, 0.797521, 0.560704,
		0.965731, -0.259118, -0.014914,
		27.933605, 37.565613, 32.813313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673212, 38.270699, 32.895771>,  <27.257595, 37.746994, 32.823753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673212, 38.270699, 32.895771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835209, 37.982868, 32.670139>,  <27.932407, 37.810169, 32.534760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835209, 37.982868, 32.670139>,  <27.673212, 38.270699, 32.895771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835209, 37.982868, 32.670139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076857, 0.641551, -0.763221,
		0.911084, 0.265745, 0.315128,
		0.404993, -0.719578, -0.564082,
		27.956707, 37.766994, 32.500916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222574, 38.539288, 32.541771>,  <27.673212, 38.270699, 32.895771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222574, 38.539288, 32.541771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119406, 38.223522, 32.318951>,  <28.057505, 38.034065, 32.185257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119406, 38.223522, 32.318951>,  <28.222574, 38.539288, 32.541771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119406, 38.223522, 32.318951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001618, 0.576205, -0.817303,
		0.966165, -0.211701, -0.147339,
		-0.257921, -0.789411, -0.557052,
		28.042030, 37.986698, 32.151836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609434, 38.440357, 31.888548>,  <28.222574, 38.539288, 32.541771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609434, 38.440357, 31.888548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254681, 38.274090, 31.807896>,  <28.041828, 38.174328, 31.759504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254681, 38.274090, 31.807896>,  <28.609434, 38.440357, 31.888548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254681, 38.274090, 31.807896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118039, 0.625835, -0.770971,
		0.446655, -0.659963, -0.604109,
		-0.886885, -0.415667, -0.201631,
		27.988615, 38.149391, 31.747406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885975, 38.664288, 31.194843>,  <28.609434, 38.440357, 31.888548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885975, 38.664288, 31.194843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813324, 39.036266, 31.066965>,  <28.769733, 39.259453, 30.990238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813324, 39.036266, 31.066965>,  <28.885975, 38.664288, 31.194843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813324, 39.036266, 31.066965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859877, 0.307922, 0.407180,
		0.477098, -0.200945, -0.855569,
		-0.181627, 0.929949, -0.319697,
		28.758837, 39.315250, 30.971056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452951, 38.903172, 30.656092>,  <28.885975, 38.664288, 31.194843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452951, 38.903172, 30.656092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286709, 39.220158, 30.834652>,  <29.186964, 39.410351, 30.941788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286709, 39.220158, 30.834652>,  <29.452951, 38.903172, 30.656092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286709, 39.220158, 30.834652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907780, 0.330847, 0.257830,
		0.056631, 0.512388, -0.856885,
		-0.415607, 0.792464, 0.446399,
		29.162027, 39.457897, 30.968573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543079, 39.467747, 30.293777>,  <29.452951, 38.903172, 30.656092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543079, 39.467747, 30.293777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541576, 39.565853, 30.681557>,  <29.540674, 39.624718, 30.914225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541576, 39.565853, 30.681557>,  <29.543079, 39.467747, 30.293777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541576, 39.565853, 30.681557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964500, 0.256880, -0.061251,
		-0.264054, 0.934804, -0.237524,
		-0.003757, 0.245265, 0.969449,
		29.540449, 39.639431, 30.972391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903955, 40.216057, 30.426830>,  <29.543079, 39.467747, 30.293777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903955, 40.216057, 30.426830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902229, 39.947273, 30.723061>,  <29.901194, 39.786003, 30.900799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902229, 39.947273, 30.723061>,  <29.903955, 40.216057, 30.426830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902229, 39.947273, 30.723061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999919, 0.005992, 0.011263,
		-0.012006, 0.740563, 0.671880,
		-0.004315, -0.671961, 0.740574,
		29.900934, 39.745686, 30.945232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269878, 40.574703, 31.104687>,  <29.903955, 40.216057, 30.426830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269878, 40.574703, 31.104687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266150, 40.176758, 31.064367>,  <30.263912, 39.937992, 31.040176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266150, 40.176758, 31.064367>,  <30.269878, 40.574703, 31.104687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266150, 40.176758, 31.064367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981036, 0.010419, -0.193545,
		0.193601, -0.100691, 0.975900,
		-0.009320, -0.994863, -0.100799,
		30.263353, 39.878300, 31.034128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816467, 40.150486, 31.548040>,  <30.269878, 40.574703, 31.104687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816467, 40.150486, 31.548040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711452, 39.994114, 31.195168>,  <30.648443, 39.900291, 30.983444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711452, 39.994114, 31.195168>,  <30.816467, 40.150486, 31.548040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711452, 39.994114, 31.195168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964586, -0.082212, -0.250631,
		0.025453, -0.916741, 0.398671,
		-0.262539, -0.390932, -0.882182,
		30.632690, 39.876835, 30.930513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142851, 39.424229, 31.462494>,  <30.816467, 40.150486, 31.548040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142851, 39.424229, 31.462494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067024, 39.642490, 31.135979>,  <31.021528, 39.773449, 30.940069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067024, 39.642490, 31.135979>,  <31.142851, 39.424229, 31.462494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067024, 39.642490, 31.135979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964731, 0.258153, -0.051475,
		0.182639, -0.797255, -0.575350,
		-0.189567, 0.545657, -0.816286,
		31.010155, 39.806187, 30.891092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633852, 39.138813, 30.896074>,  <31.142851, 39.424229, 31.462494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633852, 39.138813, 30.896074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516592, 39.516006, 30.833036>,  <31.446236, 39.742325, 30.795214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516592, 39.516006, 30.833036>,  <31.633852, 39.138813, 30.896074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516592, 39.516006, 30.833036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939538, 0.314660, 0.135122,
		0.177007, -0.108455, -0.978216,
		-0.293150, 0.942988, -0.157594,
		31.428646, 39.798904, 30.785759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954760, 39.304974, 30.234976>,  <31.633852, 39.138813, 30.896074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954760, 39.304974, 30.234976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901720, 39.586338, 30.514297>,  <31.869896, 39.755157, 30.681890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901720, 39.586338, 30.514297>,  <31.954760, 39.304974, 30.234976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901720, 39.586338, 30.514297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973089, 0.226340, -0.043219,
		-0.188455, 0.673780, -0.714496,
		-0.132600, 0.703413, 0.698303,
		31.861940, 39.797363, 30.723789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484753, 39.778355, 30.109276>,  <31.954760, 39.304974, 30.234976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484753, 39.778355, 30.109276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356030, 39.890526, 30.471006>,  <32.278797, 39.957829, 30.688044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356030, 39.890526, 30.471006>,  <32.484753, 39.778355, 30.109276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356030, 39.890526, 30.471006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922122, 0.309501, 0.232162,
		-0.214785, 0.908609, -0.358187,
		-0.321804, 0.280427, 0.904325,
		32.259487, 39.974655, 30.742304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937405, 40.407486, 30.200581>,  <32.484753, 39.778355, 30.109276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937405, 40.407486, 30.200581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795044, 40.286163, 30.554153>,  <32.709629, 40.213371, 30.766298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795044, 40.286163, 30.554153>,  <32.937405, 40.407486, 30.200581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795044, 40.286163, 30.554153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909918, 0.103154, 0.401757,
		-0.213038, 0.947293, 0.239272,
		-0.355900, -0.303308, 0.883934,
		32.688274, 40.195171, 30.819334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057766, 40.895138, 30.813242>,  <32.937405, 40.407486, 30.200581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057766, 40.895138, 30.813242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066513, 40.498569, 30.864796>,  <33.071762, 40.260628, 30.895729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066513, 40.498569, 30.864796>,  <33.057766, 40.895138, 30.813242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066513, 40.498569, 30.864796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943668, 0.063039, 0.324834,
		-0.330172, 0.114524, 0.936948,
		0.021863, -0.991418, 0.128886,
		33.073071, 40.201145, 30.903461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347534, 40.717754, 31.495537>,  <33.057766, 40.895138, 30.813242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347534, 40.717754, 31.495537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391891, 40.406898, 31.247744>,  <33.418507, 40.220387, 31.099068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391891, 40.406898, 31.247744>,  <33.347534, 40.717754, 31.495537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391891, 40.406898, 31.247744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917838, -0.158972, 0.363731,
		-0.381149, -0.608923, 0.695657,
		0.110895, -0.777136, -0.619485,
		33.425159, 40.173759, 31.061897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560421, 40.105976, 31.751339>,  <33.347534, 40.717754, 31.495537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560421, 40.105976, 31.751339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719894, 40.155174, 31.387817>,  <33.815578, 40.184692, 31.169704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719894, 40.155174, 31.387817>,  <33.560421, 40.105976, 31.751339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719894, 40.155174, 31.387817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914511, -0.127547, 0.383929,
		-0.068691, -0.984176, -0.163335,
		0.398687, 0.122999, -0.908801,
		33.839500, 40.192074, 31.115177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100552, 39.571121, 31.631266>,  <33.560421, 40.105976, 31.751339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100552, 39.571121, 31.631266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176613, 39.870903, 31.377604>,  <34.222248, 40.050774, 31.225407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176613, 39.870903, 31.377604>,  <34.100552, 39.571121, 31.631266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176613, 39.870903, 31.377604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918275, 0.092725, 0.384932,
		0.347292, -0.655527, -0.670576,
		0.190154, 0.749457, -0.634157,
		34.233658, 40.095741, 31.187357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809483, 39.448757, 31.238617>,  <34.100552, 39.571121, 31.631266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809483, 39.448757, 31.238617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704926, 39.830288, 31.297787>,  <34.642193, 40.059208, 31.333288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704926, 39.830288, 31.297787>,  <34.809483, 39.448757, 31.238617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704926, 39.830288, 31.297787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950515, 0.227704, 0.211359,
		0.167918, 0.195852, -0.966150,
		-0.261392, 0.953831, 0.147925,
		34.626507, 40.116436, 31.342165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166321, 39.820225, 30.784569>,  <34.809483, 39.448757, 31.238617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166321, 39.820225, 30.784569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051952, 40.026787, 31.107449>,  <34.983330, 40.150726, 31.301176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051952, 40.026787, 31.107449>,  <35.166321, 39.820225, 30.784569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051952, 40.026787, 31.107449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955290, 0.219794, 0.197767,
		-0.075289, 0.827655, -0.556165,
		-0.285925, 0.516409, 0.807198,
		34.966175, 40.181709, 31.349607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436207, 40.459339, 30.674706>,  <35.166321, 39.820225, 30.784569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436207, 40.459339, 30.674706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371189, 40.473713, 31.069124>,  <35.332176, 40.482338, 31.305775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371189, 40.473713, 31.069124>,  <35.436207, 40.459339, 30.674706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371189, 40.473713, 31.069124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865926, 0.484276, 0.125097,
		-0.473023, 0.874177, -0.109837,
		-0.162548, 0.035937, 0.986046,
		35.322426, 40.484493, 31.364939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274975, 41.120083, 31.006113>,  <35.436207, 40.459339, 30.674706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274975, 41.120083, 31.006113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472595, 40.884239, 31.261698>,  <35.591167, 40.742733, 31.415049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472595, 40.884239, 31.261698>,  <35.274975, 41.120083, 31.006113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472595, 40.884239, 31.261698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729681, 0.680784, 0.064015,
		-0.472740, 0.434613, 0.766569,
		0.494046, -0.589614, 0.638963,
		35.620808, 40.707355, 31.453386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487167, 41.547882, 31.664618>,  <35.274975, 41.120083, 31.006113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487167, 41.547882, 31.664618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728809, 41.231178, 31.628450>,  <35.873795, 41.041157, 31.606750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728809, 41.231178, 31.628450>,  <35.487167, 41.547882, 31.664618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728809, 41.231178, 31.628450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796904, 0.600363, 0.067146,
		0.001121, -0.112619, 0.993638,
		0.604105, -0.791759, -0.090420,
		35.910042, 40.993652, 31.601324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981319, 41.713211, 32.152756>,  <35.487167, 41.547882, 31.664618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981319, 41.713211, 32.152756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143909, 41.448460, 31.900822>,  <36.241463, 41.289608, 31.749660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143909, 41.448460, 31.900822>,  <35.981319, 41.713211, 32.152756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143909, 41.448460, 31.900822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835367, 0.548431, -0.037217,
		0.370056, -0.511018, 0.775835,
		0.406473, -0.661879, -0.629838,
		36.265850, 41.249897, 31.711870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315800, 41.573029, 32.796730>,  <35.981319, 41.713211, 32.152756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315800, 41.573029, 32.796730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655701, 41.783352, 32.811924>,  <36.859642, 41.909546, 32.821041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655701, 41.783352, 32.811924>,  <36.315800, 41.573029, 32.796730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655701, 41.783352, 32.811924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400340, 0.596749, 0.695427,
		0.342994, -0.606149, 0.717592,
		0.849755, 0.525808, 0.037985,
		36.910625, 41.941093, 32.823318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280441, 41.513451, 33.509399>,  <36.315800, 41.573029, 32.796730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280441, 41.513451, 33.509399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600903, 41.404278, 33.722439>,  <36.793179, 41.338776, 33.850262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600903, 41.404278, 33.722439>,  <36.280441, 41.513451, 33.509399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600903, 41.404278, 33.722439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187133, 0.731071, 0.656137,
		-0.568446, -0.625334, 0.534627,
		0.801156, -0.272932, 0.532595,
		36.841248, 41.322399, 33.882217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198399, 41.252014, 34.340851>,  <36.280441, 41.513451, 33.509399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198399, 41.252014, 34.340851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538422, 41.443699, 34.253441>,  <36.742435, 41.558708, 34.200996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538422, 41.443699, 34.253441>,  <36.198399, 41.252014, 34.340851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538422, 41.443699, 34.253441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224737, 0.705262, 0.672383,
		0.476327, -0.522458, 0.707213,
		0.850062, 0.479211, -0.218520,
		36.793442, 41.587463, 34.187885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742535, 41.252529, 34.843033>,  <36.198399, 41.252014, 34.340851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742535, 41.252529, 34.843033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804016, 41.580925, 34.623085>,  <36.840904, 41.777962, 34.491116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804016, 41.580925, 34.623085>,  <36.742535, 41.252529, 34.843033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804016, 41.580925, 34.623085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084198, 0.565337, 0.820551,
		0.984523, -0.079826, 0.156022,
		0.153707, 0.820988, -0.549866,
		36.850128, 41.827221, 34.458126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068504, 41.666088, 35.301041>,  <36.742535, 41.252529, 34.843033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068504, 41.666088, 35.301041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954964, 41.888203, 34.988354>,  <36.886841, 42.021473, 34.800743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954964, 41.888203, 34.988354>,  <37.068504, 41.666088, 35.301041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954964, 41.888203, 34.988354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203708, 0.761717, 0.615054,
		0.936980, 0.333826, -0.103098,
		-0.283853, 0.555291, -0.781716,
		36.869808, 42.054790, 34.753838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326931, 42.424809, 35.384392>,  <37.068504, 41.666088, 35.301041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326931, 42.424809, 35.384392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026592, 42.444469, 35.120934>,  <36.846390, 42.456264, 34.962860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026592, 42.444469, 35.120934>,  <37.326931, 42.424809, 35.384392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026592, 42.444469, 35.120934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238786, 0.909572, 0.340088,
		0.615803, 0.412629, -0.671211,
		-0.750845, 0.049151, -0.658647,
		36.801338, 42.459213, 34.923340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237381, 43.131302, 35.350731>,  <37.326931, 42.424809, 35.384392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237381, 43.131302, 35.350731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907032, 42.936558, 35.236950>,  <36.708824, 42.819714, 35.168682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907032, 42.936558, 35.236950>,  <37.237381, 43.131302, 35.350731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907032, 42.936558, 35.236950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563187, 0.687506, 0.458428,
		-0.027629, 0.538799, -0.841981,
		-0.825868, -0.486859, -0.284449,
		36.659271, 42.790501, 35.151615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633175, 43.729584, 35.462589>,  <37.237381, 43.131302, 35.350731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633175, 43.729584, 35.462589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608257, 44.108860, 35.587200>,  <36.593307, 44.336426, 35.661968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608257, 44.108860, 35.587200>,  <36.633175, 43.729584, 35.462589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608257, 44.108860, 35.587200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067993, -0.315440, 0.946507,
		0.995739, 0.037782, 0.084121,
		-0.062297, 0.948193, 0.311527,
		36.589569, 44.393318, 35.680656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105785, 43.841202, 36.060349>,  <36.633175, 43.729584, 35.462589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105785, 43.841202, 36.060349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800175, 44.098969, 36.047756>,  <36.616810, 44.253632, 36.040199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800175, 44.098969, 36.047756>,  <37.105785, 43.841202, 36.060349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800175, 44.098969, 36.047756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370450, -0.398210, 0.839164,
		0.528240, 0.652802, 0.542967,
		-0.764022, 0.644422, -0.031480,
		36.570969, 44.292294, 36.038311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992348, 43.488266, 36.769287>,  <37.105785, 43.841202, 36.060349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992348, 43.488266, 36.769287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883228, 43.870640, 36.812664>,  <36.817757, 44.100063, 36.838692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883228, 43.870640, 36.812664>,  <36.992348, 43.488266, 36.769287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883228, 43.870640, 36.812664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403125, -0.011237, -0.915076,
		-0.873538, -0.293350, 0.388429,
		-0.272803, 0.955939, 0.108441,
		36.801388, 44.157421, 36.845196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241257, 43.673023, 36.746769>,  <36.992348, 43.488266, 36.769287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241257, 43.673023, 36.746769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481346, 43.958279, 36.601902>,  <36.625401, 44.129433, 36.514980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481346, 43.958279, 36.601902>,  <36.241257, 43.673023, 36.746769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481346, 43.958279, 36.601902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408383, -0.116093, -0.905398,
		-0.687721, 0.691342, 0.221553,
		0.600219, 0.713140, -0.362172,
		36.661411, 44.172222, 36.493252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958748, 43.646992, 35.993877>,  <36.241257, 43.673023, 36.746769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958748, 43.646992, 35.993877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029449, 43.353123, 35.731880>,  <36.071873, 43.176800, 35.574684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029449, 43.353123, 35.731880>,  <35.958748, 43.646992, 35.993877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029449, 43.353123, 35.731880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184830, -0.628854, 0.755235,
		-0.966744, -0.254555, 0.024634,
		0.176758, -0.734673, -0.654991,
		36.082478, 43.132721, 35.535381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741173, 43.050453, 36.388546>,  <35.958748, 43.646992, 35.993877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741173, 43.050453, 36.388546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960861, 42.893299, 36.093521>,  <36.092674, 42.799007, 35.916508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960861, 42.893299, 36.093521>,  <35.741173, 43.050453, 36.388546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960861, 42.893299, 36.093521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352383, -0.691405, 0.630702,
		-0.757747, -0.606299, -0.241289,
		0.549223, -0.392886, -0.737560,
		36.125629, 42.775433, 35.872253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754963, 42.215546, 36.476376>,  <35.741173, 43.050453, 36.388546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754963, 42.215546, 36.476376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082558, 42.386688, 36.323429>,  <36.279114, 42.489376, 36.231663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082558, 42.386688, 36.323429>,  <35.754963, 42.215546, 36.476376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082558, 42.386688, 36.323429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567642, -0.506608, 0.648946,
		0.083951, -0.748521, -0.657776,
		0.818984, 0.427861, -0.382362,
		36.328255, 42.515045, 36.208721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166550, 41.656727, 36.496128>,  <35.754963, 42.215546, 36.476376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166550, 41.656727, 36.496128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368813, 42.000793, 36.469524>,  <36.490170, 42.207233, 36.453564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368813, 42.000793, 36.469524>,  <36.166550, 41.656727, 36.496128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368813, 42.000793, 36.469524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686108, -0.354202, 0.635450,
		0.523037, -0.366950, -0.769272,
		0.505656, 0.860168, -0.066506,
		36.520508, 42.258842, 36.449574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870560, 41.860161, 36.398159>,  <36.166550, 41.656727, 36.496128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870560, 41.860161, 36.398159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081860, 41.637180, 36.654346>,  <37.208641, 41.503391, 36.808060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081860, 41.637180, 36.654346>,  <36.870560, 41.860161, 36.398159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081860, 41.637180, 36.654346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069357, -0.780105, -0.621792,
		0.846251, 0.284041, -0.450754,
		0.528250, -0.557456, 0.640465,
		37.240334, 41.469944, 36.846485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407810, 41.459564, 36.032974>,  <36.870560, 41.860161, 36.398159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407810, 41.459564, 36.032974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338455, 41.263737, 36.374798>,  <37.296841, 41.146240, 36.579891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338455, 41.263737, 36.374798>,  <37.407810, 41.459564, 36.032974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338455, 41.263737, 36.374798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083223, -0.871877, -0.482602,
		0.981331, -0.012558, 0.191914,
		-0.173386, -0.489564, 0.854555,
		37.286438, 41.116867, 36.631165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666756, 40.910114, 35.920650>,  <37.407810, 41.459564, 36.032974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666756, 40.910114, 35.920650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458641, 40.782398, 36.237476>,  <37.333771, 40.705769, 36.427570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458641, 40.782398, 36.237476>,  <37.666756, 40.910114, 35.920650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458641, 40.782398, 36.237476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005681, -0.928752, -0.370658,
		0.853974, -0.188348, 0.485029,
		-0.520285, -0.319287, 0.792060,
		37.302555, 40.686611, 36.475094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022503, 40.368938, 36.143982>,  <37.666756, 40.910114, 35.920650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022503, 40.368938, 36.143982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667480, 40.284290, 36.307667>,  <37.454468, 40.233501, 36.405876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667480, 40.284290, 36.307667>,  <38.022503, 40.368938, 36.143982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667480, 40.284290, 36.307667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093486, -0.952509, -0.289806,
		0.451107, -0.218964, 0.865192,
		-0.887560, -0.211617, 0.409213,
		37.401211, 40.220806, 36.430431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112495, 39.708099, 36.347809>,  <38.022503, 40.368938, 36.143982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112495, 39.708099, 36.347809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715023, 39.747906, 36.327076>,  <37.476540, 39.771790, 36.314636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715023, 39.747906, 36.327076>,  <38.112495, 39.708099, 36.347809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715023, 39.747906, 36.327076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067542, -0.899360, -0.431960,
		-0.089602, -0.425732, 0.900402,
		-0.993685, 0.099520, -0.051830,
		37.416916, 39.777763, 36.311527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812847, 39.135216, 36.678131>,  <38.112495, 39.708099, 36.347809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812847, 39.135216, 36.678131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533630, 39.302216, 36.445435>,  <37.366100, 39.402416, 36.305817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533630, 39.302216, 36.445435>,  <37.812847, 39.135216, 36.678131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533630, 39.302216, 36.445435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119677, -0.869028, -0.480071,
		-0.705982, -0.265489, 0.656585,
		-0.698045, 0.417500, -0.581745,
		37.324219, 39.427467, 36.270912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145855, 38.763634, 36.636055>,  <37.812847, 39.135216, 36.678131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145855, 38.763634, 36.636055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108936, 38.964085, 36.291882>,  <37.086784, 39.084354, 36.085377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108936, 38.964085, 36.291882>,  <37.145855, 38.763634, 36.636055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108936, 38.964085, 36.291882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280530, -0.842209, -0.460420,
		-0.955398, 0.198884, 0.218313,
		-0.092295, 0.501128, -0.860437,
		37.081249, 39.114422, 36.033749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602684, 38.406162, 36.473236>,  <37.145855, 38.763634, 36.636055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602684, 38.406162, 36.473236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724731, 38.594070, 36.141884>,  <36.797958, 38.706818, 35.943073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724731, 38.594070, 36.141884>,  <36.602684, 38.406162, 36.473236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724731, 38.594070, 36.141884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291865, -0.781873, -0.550899,
		-0.906487, 0.409864, -0.101451,
		0.305116, 0.469773, -0.828382,
		36.816265, 38.735001, 35.893368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117973, 38.706303, 35.943398>,  <36.602684, 38.406162, 36.473236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117973, 38.706303, 35.943398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452713, 38.565136, 35.776005>,  <36.653557, 38.480434, 35.675571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452713, 38.565136, 35.776005>,  <36.117973, 38.706303, 35.943398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452713, 38.565136, 35.776005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531107, -0.708691, -0.464416,
		-0.132669, 0.610904, -0.780509,
		0.836854, -0.352920, -0.418477,
		36.703770, 38.459259, 35.650463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043304, 38.764816, 35.213051>,  <36.117973, 38.706303, 35.943398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043304, 38.764816, 35.213051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307293, 38.488670, 35.331600>,  <36.465687, 38.322983, 35.402729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307293, 38.488670, 35.331600>,  <36.043304, 38.764816, 35.213051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307293, 38.488670, 35.331600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444616, -0.676884, -0.586638,
		0.605604, 0.255392, -0.753670,
		0.659971, -0.690364, 0.296372,
		36.505283, 38.281563, 35.420513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350712, 38.216064, 34.584412>,  <36.043304, 38.764816, 35.213051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350712, 38.216064, 34.584412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318405, 38.053040, 34.948250>,  <36.299019, 37.955227, 35.166553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318405, 38.053040, 34.948250>,  <36.350712, 38.216064, 34.584412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318405, 38.053040, 34.948250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539557, -0.749432, -0.383706,
		0.838066, -0.521773, -0.159370,
		-0.080770, -0.407560, 0.909599,
		36.294174, 37.930771, 35.221130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656788, 37.555550, 34.679668>,  <36.350712, 38.216064, 34.584412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656788, 37.555550, 34.679668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332989, 37.624390, 34.904202>,  <36.138710, 37.665695, 35.038921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332989, 37.624390, 34.904202>,  <36.656788, 37.555550, 34.679668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332989, 37.624390, 34.904202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473265, -0.757087, -0.450377,
		0.347467, -0.630239, 0.694310,
		-0.809498, 0.172101, 0.561333,
		36.090137, 37.676022, 35.072601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423344, 37.000416, 35.122303>,  <36.656788, 37.555550, 34.679668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423344, 37.000416, 35.122303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104450, 37.211708, 35.005413>,  <35.913116, 37.338482, 34.935280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104450, 37.211708, 35.005413>,  <36.423344, 37.000416, 35.122303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104450, 37.211708, 35.005413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415197, -0.831195, -0.369766,
		-0.438216, -0.173459, 0.881974,
		-0.797231, 0.528231, -0.292224,
		35.865280, 37.370178, 34.917747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909573, 36.691032, 35.480278>,  <36.423344, 37.000416, 35.122303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909573, 36.691032, 35.480278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742283, 36.876808, 35.168026>,  <35.641907, 36.988274, 34.980675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742283, 36.876808, 35.168026>,  <35.909573, 36.691032, 35.480278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742283, 36.876808, 35.168026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488574, -0.839515, -0.237717,
		-0.765755, 0.281976, 0.578021,
		-0.418227, 0.464439, -0.780629,
		35.616814, 37.016140, 34.933838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230339, 36.427250, 35.423004>,  <35.909573, 36.691032, 35.480278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230339, 36.427250, 35.423004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313080, 36.554829, 35.053036>,  <35.362724, 36.631374, 34.831055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313080, 36.554829, 35.053036>,  <35.230339, 36.427250, 35.423004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313080, 36.554829, 35.053036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292887, -0.881829, -0.369586,
		-0.933504, 0.347348, -0.088990,
		0.206849, 0.318946, -0.924925,
		35.375134, 36.650513, 34.775558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671860, 36.210735, 34.947922>,  <35.230339, 36.427250, 35.423004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671860, 36.210735, 34.947922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987442, 36.276657, 34.711151>,  <35.176792, 36.316212, 34.569088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987442, 36.276657, 34.711151>,  <34.671860, 36.210735, 34.947922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987442, 36.276657, 34.711151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254935, -0.788727, -0.559391,
		-0.559063, 0.592240, -0.580259,
		0.788959, 0.164807, -0.591931,
		35.224129, 36.326099, 34.533573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371204, 36.366951, 34.265537>,  <34.671860, 36.210735, 34.947922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371204, 36.366951, 34.265537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744110, 36.233776, 34.208916>,  <34.967854, 36.153870, 34.174942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744110, 36.233776, 34.208916>,  <34.371204, 36.366951, 34.265537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744110, 36.233776, 34.208916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333137, -0.637428, -0.694770,
		0.141085, 0.694865, -0.705165,
		0.932263, -0.332938, -0.141553,
		35.023788, 36.133896, 34.166451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329010, 36.243153, 33.605145>,  <34.371204, 36.366951, 34.265537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329010, 36.243153, 33.605145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675930, 36.060333, 33.684032>,  <34.884083, 35.950642, 33.731365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675930, 36.060333, 33.684032>,  <34.329010, 36.243153, 33.605145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675930, 36.060333, 33.684032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227230, -0.716010, -0.660072,
		0.442895, 0.527668, -0.724852,
		0.867301, -0.457051, 0.197216,
		34.936119, 35.923218, 33.743198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654430, 36.107948, 32.949146>,  <34.329010, 36.243153, 33.605145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654430, 36.107948, 32.949146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796165, 35.845802, 33.215965>,  <34.881207, 35.688515, 33.376057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796165, 35.845802, 33.215965>,  <34.654430, 36.107948, 32.949146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796165, 35.845802, 33.215965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231305, -0.752586, -0.616533,
		0.906060, 0.064169, -0.418256,
		0.354336, -0.655361, 0.667045,
		34.902466, 35.649193, 33.416080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229580, 35.792149, 32.729160>,  <34.654430, 36.107948, 32.949146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229580, 35.792149, 32.729160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081585, 35.523800, 32.986237>,  <34.992786, 35.362793, 33.140480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081585, 35.523800, 32.986237>,  <35.229580, 35.792149, 32.729160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081585, 35.523800, 32.986237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163791, -0.633838, -0.755924,
		0.914485, -0.384948, 0.124630,
		-0.369987, -0.670868, 0.642686,
		34.970589, 35.322540, 33.179043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301281, 35.198673, 32.368259>,  <35.229580, 35.792149, 32.729160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301281, 35.198673, 32.368259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112175, 35.057240, 32.691116>,  <34.998711, 34.972378, 32.884830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112175, 35.057240, 32.691116>,  <35.301281, 35.198673, 32.368259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112175, 35.057240, 32.691116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286315, -0.804630, -0.520187,
		0.833379, -0.477020, 0.279161,
		-0.472761, -0.353585, 0.807140,
		34.970348, 34.951164, 32.933258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627254, 34.546078, 32.516022>,  <35.301281, 35.198673, 32.368259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627254, 34.546078, 32.516022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251896, 34.557884, 32.653744>,  <35.026680, 34.564968, 32.736378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251896, 34.557884, 32.653744>,  <35.627254, 34.546078, 32.516022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251896, 34.557884, 32.653744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223864, -0.810939, -0.540614,
		0.263255, -0.584386, 0.767587,
		-0.938393, 0.029516, 0.344306,
		34.970379, 34.566738, 32.757034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485756, 33.833138, 32.705631>,  <35.627254, 34.546078, 32.516022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485756, 33.833138, 32.705631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140728, 34.028667, 32.653427>,  <34.933712, 34.145985, 32.622105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140728, 34.028667, 32.653427>,  <35.485756, 33.833138, 32.705631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140728, 34.028667, 32.653427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356820, -0.770621, -0.528036,
		-0.358692, -0.408897, 0.839133,
		-0.862566, 0.488821, -0.130513,
		34.881958, 34.175312, 32.614273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042706, 33.329887, 32.852119>,  <35.485756, 33.833138, 32.705631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042706, 33.329887, 32.852119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816956, 33.599331, 32.661236>,  <34.681503, 33.760998, 32.546707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816956, 33.599331, 32.661236>,  <35.042706, 33.329887, 32.852119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816956, 33.599331, 32.661236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420990, -0.732105, -0.535527,
		-0.710099, -0.101345, 0.696771,
		-0.564382, 0.673610, -0.477202,
		34.647640, 33.801414, 32.518074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385860, 32.953640, 32.840168>,  <35.042706, 33.329887, 32.852119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385860, 32.953640, 32.840168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362667, 33.245174, 32.567280>,  <34.348751, 33.420097, 32.403545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362667, 33.245174, 32.567280>,  <34.385860, 32.953640, 32.840168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362667, 33.245174, 32.567280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579286, -0.581125, -0.571596,
		-0.813060, 0.362058, 0.455904,
		-0.057986, 0.728840, -0.682224,
		34.345272, 33.463825, 32.362614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646946, 32.987000, 32.624271>,  <34.385860, 32.953640, 32.840168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646946, 32.987000, 32.624271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846573, 33.177727, 32.334835>,  <33.966351, 33.292164, 32.161175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846573, 33.177727, 32.334835>,  <33.646946, 32.987000, 32.624271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846573, 33.177727, 32.334835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597852, -0.415003, -0.685818,
		-0.627297, 0.774869, 0.077948,
		0.499070, 0.476813, -0.723587,
		33.996292, 33.320770, 32.117760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121059, 33.154282, 32.214977>,  <33.646946, 32.987000, 32.624271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121059, 33.154282, 32.214977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457458, 33.146606, 31.998699>,  <33.659298, 33.142002, 31.868933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457458, 33.146606, 31.998699>,  <33.121059, 33.154282, 32.214977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457458, 33.146606, 31.998699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474651, -0.505807, -0.720323,
		-0.259663, 0.862433, -0.434493,
		0.841000, -0.019192, -0.540694,
		33.709759, 33.140850, 31.836491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892605, 33.451221, 31.542162>,  <33.121059, 33.154282, 32.214977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892605, 33.451221, 31.542162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228199, 33.244003, 31.475548>,  <33.429554, 33.119671, 31.435579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228199, 33.244003, 31.475548>,  <32.892605, 33.451221, 31.542162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228199, 33.244003, 31.475548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447836, -0.483497, -0.752113,
		0.309109, 0.705592, -0.637646,
		0.838984, -0.518045, -0.166536,
		33.479893, 33.088589, 31.425587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085411, 33.691002, 30.912073>,  <32.892605, 33.451221, 31.542162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085411, 33.691002, 30.912073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250458, 33.333717, 30.983540>,  <33.349483, 33.119347, 31.026419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250458, 33.333717, 30.983540>,  <33.085411, 33.691002, 30.912073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250458, 33.333717, 30.983540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325454, -0.327752, -0.886937,
		0.850782, 0.307815, -0.425935,
		0.412613, -0.893212, 0.178666,
		33.374241, 33.065754, 31.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477135, 33.541653, 30.269278>,  <33.085411, 33.691002, 30.912073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477135, 33.541653, 30.269278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438492, 33.200710, 30.474865>,  <33.415306, 32.996147, 30.598217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438492, 33.200710, 30.474865>,  <33.477135, 33.541653, 30.269278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438492, 33.200710, 30.474865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122183, -0.502322, -0.856005,
		0.987794, -0.145496, -0.055614,
		-0.096609, -0.852352, 0.513968,
		33.409508, 32.945004, 30.629055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893726, 33.085354, 29.947025>,  <33.477135, 33.541653, 30.269278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893726, 33.085354, 29.947025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580864, 32.927883, 30.140209>,  <33.393147, 32.833401, 30.256119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580864, 32.927883, 30.140209>,  <33.893726, 33.085354, 29.947025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580864, 32.927883, 30.140209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285753, -0.462155, -0.839499,
		0.553694, -0.794626, 0.248983,
		-0.782157, -0.393678, 0.482959,
		33.346218, 32.809780, 30.285097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840801, 32.451065, 29.615679>,  <33.893726, 33.085354, 29.947025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840801, 32.451065, 29.615679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514893, 32.473831, 29.846472>,  <33.319347, 32.487492, 29.984947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514893, 32.473831, 29.846472>,  <33.840801, 32.451065, 29.615679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514893, 32.473831, 29.846472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527454, -0.485919, -0.696903,
		0.240702, -0.872149, 0.425933,
		-0.814773, 0.056914, 0.576981,
		33.270462, 32.490906, 30.019566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667355, 31.707039, 29.701721>,  <33.840801, 32.451065, 29.615679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667355, 31.707039, 29.701721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360344, 31.957428, 29.756945>,  <33.176136, 32.107662, 29.790079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360344, 31.957428, 29.756945>,  <33.667355, 31.707039, 29.701721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360344, 31.957428, 29.756945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557444, -0.545459, -0.625884,
		-0.316480, -0.557344, 0.767599,
		-0.767526, 0.625973, 0.138061,
		33.130085, 32.145222, 29.798363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095470, 31.273151, 29.723532>,  <33.667355, 31.707039, 29.701721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095470, 31.273151, 29.723532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913994, 31.625288, 29.668159>,  <32.805107, 31.836569, 29.634935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913994, 31.625288, 29.668159>,  <33.095470, 31.273151, 29.723532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913994, 31.625288, 29.668159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668084, -0.438800, -0.600931,
		-0.589768, -0.180153, 0.787222,
		-0.453693, 0.880340, -0.138433,
		32.777885, 31.889391, 29.626629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464714, 31.098431, 29.872458>,  <33.095470, 31.273151, 29.723532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464714, 31.098431, 29.872458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424782, 31.432764, 29.656525>,  <32.400822, 31.633364, 29.526966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424782, 31.432764, 29.656525>,  <32.464714, 31.098431, 29.872458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424782, 31.432764, 29.656525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761918, -0.413147, -0.498789,
		-0.639934, 0.361513, 0.678080,
		-0.099828, 0.835834, -0.539830,
		32.394833, 31.683514, 29.494576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699924, 31.216784, 29.752733>,  <32.464714, 31.098431, 29.872458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699924, 31.216784, 29.752733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893347, 31.411507, 29.461750>,  <32.009399, 31.528339, 29.287161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893347, 31.411507, 29.461750>,  <31.699924, 31.216784, 29.752733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893347, 31.411507, 29.461750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742933, -0.211198, -0.635174,
		-0.462843, 0.847594, 0.259538,
		0.483556, 0.486806, -0.727457,
		32.038414, 31.557549, 29.243513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241972, 31.638142, 29.450218>,  <31.699924, 31.216784, 29.752733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241972, 31.638142, 29.450218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526815, 31.560265, 29.180405>,  <31.697721, 31.513538, 29.018517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526815, 31.560265, 29.180405>,  <31.241972, 31.638142, 29.450218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526815, 31.560265, 29.180405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698761, -0.103421, -0.707839,
		0.068050, 0.975397, -0.209691,
		0.712111, -0.194692, -0.674532,
		31.740448, 31.501858, 28.978045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896910, 31.778545, 28.874535>,  <31.241972, 31.638142, 29.450218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896910, 31.778545, 28.874535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220253, 31.605448, 28.714891>,  <31.414259, 31.501589, 28.619104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220253, 31.605448, 28.714891>,  <30.896910, 31.778545, 28.874535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220253, 31.605448, 28.714891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515489, -0.192920, -0.834897,
		0.284298, 0.880634, -0.379022,
		0.808360, -0.432742, -0.399110,
		31.462761, 31.475626, 28.595158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964109, 31.904865, 28.187313>,  <30.896910, 31.778545, 28.874535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964109, 31.904865, 28.187313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172619, 31.564098, 28.207336>,  <31.297726, 31.359638, 28.219351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172619, 31.564098, 28.207336>,  <30.964109, 31.904865, 28.187313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172619, 31.564098, 28.207336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534923, -0.371889, -0.758654,
		0.664928, 0.368689, -0.649568,
		0.521275, -0.851919, 0.050059,
		31.329000, 31.308523, 28.222355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093807, 31.725504, 27.451916>,  <30.964109, 31.904865, 28.187313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093807, 31.725504, 27.451916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149345, 31.382685, 27.650387>,  <31.182669, 31.176992, 27.769468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149345, 31.382685, 27.650387>,  <31.093807, 31.725504, 27.451916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149345, 31.382685, 27.650387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375251, -0.509198, -0.774535,
		0.916465, -0.078651, -0.392307,
		0.138844, -0.857048, 0.496176,
		31.190998, 31.125570, 27.799240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554676, 31.323109, 27.044632>,  <31.093807, 31.725504, 27.451916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554676, 31.323109, 27.044632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345226, 31.082907, 27.286364>,  <31.219557, 30.938786, 27.431402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345226, 31.082907, 27.286364>,  <31.554676, 31.323109, 27.044632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345226, 31.082907, 27.286364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324185, -0.515541, -0.793172,
		0.787859, -0.611238, 0.075275,
		-0.523624, -0.600504, 0.604328,
		31.188139, 30.902756, 27.467663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676533, 30.640694, 26.755692>,  <31.554676, 31.323109, 27.044632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676533, 30.640694, 26.755692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345947, 30.658709, 26.980165>,  <31.147596, 30.669518, 27.114849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345947, 30.658709, 26.980165>,  <31.676533, 30.640694, 26.755692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345947, 30.658709, 26.980165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490680, -0.546336, -0.678786,
		0.276023, -0.836354, 0.473627,
		-0.826465, 0.045038, 0.561184,
		31.098007, 30.672220, 27.148521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415291, 29.923260, 26.721294>,  <31.676533, 30.640694, 26.755692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415291, 29.923260, 26.721294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115997, 30.155106, 26.850409>,  <30.936420, 30.294212, 26.927877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115997, 30.155106, 26.850409>,  <31.415291, 29.923260, 26.721294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115997, 30.155106, 26.850409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636903, -0.491348, -0.594080,
		-0.185736, -0.650096, 0.736802,
		-0.748236, 0.579613, 0.322787,
		30.891527, 30.328989, 26.947245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844532, 29.484655, 26.951565>,  <31.415291, 29.923260, 26.721294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844532, 29.484655, 26.951565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670778, 29.841978, 26.905405>,  <30.566526, 30.056372, 26.877710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670778, 29.841978, 26.905405>,  <30.844532, 29.484655, 26.951565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670778, 29.841978, 26.905405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731148, -0.424520, -0.534046,
		-0.526055, -0.147608, 0.837543,
		-0.434383, 0.893306, -0.115398,
		30.540462, 30.109970, 26.870787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109793, 29.408077, 27.148870>,  <30.844532, 29.484655, 26.951565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109793, 29.408077, 27.148870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087349, 29.742493, 26.930553>,  <30.073883, 29.943142, 26.799562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087349, 29.742493, 26.930553>,  <30.109793, 29.408077, 27.148870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087349, 29.742493, 26.930553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617818, -0.458499, -0.638812,
		-0.784317, 0.301358, 0.542245,
		-0.056108, 0.836040, -0.545792,
		30.070517, 29.993305, 26.766815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467974, 29.511400, 26.982576>,  <30.109793, 29.408077, 27.148870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467974, 29.511400, 26.982576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627625, 29.740707, 26.696342>,  <29.723415, 29.878292, 26.524603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627625, 29.740707, 26.696342>,  <29.467974, 29.511400, 26.982576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627625, 29.740707, 26.696342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593140, -0.433714, -0.678289,
		-0.699201, 0.695166, 0.166921,
		0.399128, 0.573268, -0.715584,
		29.747362, 29.912687, 26.481667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981647, 29.695547, 26.607847>,  <29.467974, 29.511400, 26.982576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981647, 29.695547, 26.607847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265400, 29.814043, 26.352028>,  <29.435652, 29.885141, 26.198536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265400, 29.814043, 26.352028>,  <28.981647, 29.695547, 26.607847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265400, 29.814043, 26.352028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523025, -0.386995, -0.759395,
		-0.472466, 0.873199, -0.119585,
		0.709381, 0.296242, -0.639546,
		29.478214, 29.902916, 26.160164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616812, 30.106979, 26.045315>,  <28.981647, 29.695547, 26.607847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616812, 30.106979, 26.045315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955950, 29.945980, 25.907240>,  <29.159433, 29.849380, 25.824394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955950, 29.945980, 25.907240>,  <28.616812, 30.106979, 26.045315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955950, 29.945980, 25.907240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513285, -0.459671, -0.724735,
		0.133033, 0.791642, -0.596326,
		0.847845, -0.402499, -0.345187,
		29.210302, 29.825230, 25.803684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675177, 30.345535, 25.360472>,  <28.616812, 30.106979, 26.045315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675177, 30.345535, 25.360472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921284, 30.030214, 25.362301>,  <29.068949, 29.841021, 25.363400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921284, 30.030214, 25.362301>,  <28.675177, 30.345535, 25.360472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921284, 30.030214, 25.362301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316632, -0.252437, -0.914341,
		0.721933, 0.561118, -0.404919,
		0.615270, -0.788303, 0.004574,
		29.105865, 29.793724, 25.363672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169670, 30.409456, 24.719942>,  <28.675177, 30.345535, 25.360472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169670, 30.409456, 24.719942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114305, 30.028545, 24.828764>,  <29.081087, 29.799999, 24.894056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114305, 30.028545, 24.828764>,  <29.169670, 30.409456, 24.719942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114305, 30.028545, 24.828764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219451, -0.238380, -0.946053,
		0.965755, -0.190648, -0.175983,
		-0.138413, -0.952275, 0.272054,
		29.072783, 29.742863, 24.910379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463406, 30.027447, 24.208324>,  <29.169670, 30.409456, 24.719942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463406, 30.027447, 24.208324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235104, 29.750141, 24.384335>,  <29.098122, 29.583757, 24.489941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235104, 29.750141, 24.384335>,  <29.463406, 30.027447, 24.208324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235104, 29.750141, 24.384335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311107, -0.313357, -0.897229,
		0.759902, -0.648994, -0.036829,
		-0.570755, -0.693264, 0.440027,
		29.063877, 29.542162, 24.516342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569950, 29.443733, 23.806908>,  <29.463406, 30.027447, 24.208324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569950, 29.443733, 23.806908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240297, 29.332329, 24.004185>,  <29.042505, 29.265486, 24.122551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240297, 29.332329, 24.004185>,  <29.569950, 29.443733, 23.806908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240297, 29.332329, 24.004185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368642, -0.397320, -0.840381,
		0.430010, -0.874396, 0.224773,
		-0.824132, -0.278512, 0.493191,
		28.993057, 29.248775, 24.152142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450335, 28.790318, 23.552769>,  <29.569950, 29.443733, 23.806908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450335, 28.790318, 23.552769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108715, 28.880840, 23.740122>,  <28.903744, 28.935154, 23.852533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108715, 28.880840, 23.740122>,  <29.450335, 28.790318, 23.552769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108715, 28.880840, 23.740122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505945, -0.570644, -0.646827,
		0.120901, -0.789400, 0.601857,
		-0.854051, 0.226305, 0.468384,
		28.852499, 28.948732, 23.880636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963938, 28.112295, 23.487457>,  <29.450335, 28.790318, 23.552769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963938, 28.112295, 23.487457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719503, 28.421894, 23.553787>,  <28.572842, 28.607655, 23.593586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719503, 28.421894, 23.553787>,  <28.963938, 28.112295, 23.487457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719503, 28.421894, 23.553787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685994, -0.413308, -0.598823,
		-0.394947, -0.479694, 0.783524,
		-0.611089, 0.773996, 0.165833,
		28.536177, 28.654095, 23.603535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319811, 27.826336, 23.654535>,  <28.963938, 28.112295, 23.487457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319811, 27.826336, 23.654535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253990, 28.194389, 23.512392>,  <28.214497, 28.415220, 23.427107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253990, 28.194389, 23.512392>,  <28.319811, 27.826336, 23.654535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253990, 28.194389, 23.512392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708353, -0.360947, -0.606592,
		-0.686410, 0.151902, 0.711173,
		-0.164554, 0.920132, -0.355358,
		28.204624, 28.470428, 23.405785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636787, 27.928776, 23.631413>,  <28.319811, 27.826336, 23.654535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636787, 27.928776, 23.631413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768944, 28.202017, 23.370886>,  <27.848238, 28.365961, 23.214569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768944, 28.202017, 23.370886>,  <27.636787, 27.928776, 23.631413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768944, 28.202017, 23.370886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654840, -0.331067, -0.679397,
		-0.679726, 0.650975, 0.337941,
		0.330389, 0.683101, -0.651319,
		27.868061, 28.406946, 23.175489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041901, 28.268394, 23.389874>,  <27.636787, 27.928776, 23.631413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041901, 28.268394, 23.389874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337225, 28.280312, 23.120354>,  <27.514420, 28.287462, 22.958641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337225, 28.280312, 23.120354>,  <27.041901, 28.268394, 23.389874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337225, 28.280312, 23.120354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640754, -0.280886, -0.714519,
		-0.210547, 0.959279, -0.188293,
		0.738312, 0.029790, -0.673801,
		27.558718, 28.289249, 22.918213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855173, 28.696836, 22.725250>,  <27.041901, 28.268394, 23.389874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855173, 28.696836, 22.725250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111668, 28.401123, 22.643007>,  <27.265564, 28.223694, 22.593660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111668, 28.401123, 22.643007>,  <26.855173, 28.696836, 22.725250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111668, 28.401123, 22.643007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696914, -0.448945, -0.559248,
		0.321137, 0.501901, -0.803098,
		0.641234, -0.739286, -0.205609,
		27.304037, 28.179337, 22.581326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897684, 28.538828, 22.029987>,  <26.855173, 28.696836, 22.725250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897684, 28.538828, 22.029987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992342, 28.184788, 22.190289>,  <27.049137, 27.972364, 22.286469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992342, 28.184788, 22.190289>,  <26.897684, 28.538828, 22.029987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992342, 28.184788, 22.190289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721797, -0.436257, -0.537298,
		0.650392, -0.162113, -0.742099,
		0.236643, -0.885098, 0.400751,
		27.063335, 27.919258, 22.310514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323402, 27.979284, 21.753057>,  <26.897684, 28.538828, 22.029987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323402, 27.979284, 21.753057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319880, 28.378334, 21.780375>,  <27.317766, 28.617764, 21.796764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319880, 28.378334, 21.780375>,  <27.323402, 27.979284, 21.753057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319880, 28.378334, 21.780375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823258, 0.046001, -0.565800,
		-0.567599, 0.051241, -0.821709,
		-0.008808, 0.997626, 0.068295,
		27.317238, 28.677622, 21.800863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552052, 28.215324, 21.133848>,  <27.323402, 27.979284, 21.753057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552052, 28.215324, 21.133848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598698, 28.500044, 21.410902>,  <27.626684, 28.670876, 21.577135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598698, 28.500044, 21.410902>,  <27.552052, 28.215324, 21.133848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598698, 28.500044, 21.410902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873668, 0.258152, -0.412386,
		-0.472341, 0.653223, -0.591772,
		0.116613, 0.711799, 0.692636,
		27.633682, 28.713583, 21.618692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728813, 28.797136, 20.774118>,  <27.552052, 28.215324, 21.133848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728813, 28.797136, 20.774118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843222, 28.846630, 21.154200>,  <27.911867, 28.876328, 21.382248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843222, 28.846630, 21.154200>,  <27.728813, 28.797136, 20.774118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843222, 28.846630, 21.154200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872623, 0.376046, -0.311638,
		-0.395880, 0.918302, -0.000419,
		0.286021, 0.123737, 0.950201,
		27.929028, 28.883751, 21.439260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196365, 29.332857, 20.698198>,  <27.728813, 28.797136, 20.774118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196365, 29.332857, 20.698198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294006, 29.191864, 21.059566>,  <28.352591, 29.107269, 21.276388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294006, 29.191864, 21.059566>,  <28.196365, 29.332857, 20.698198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294006, 29.191864, 21.059566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881452, 0.469040, -0.055166,
		-0.404296, 0.809789, 0.425190,
		0.244104, -0.352481, 0.903421,
		28.367237, 29.086119, 21.330593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666996, 29.771671, 21.013336>,  <28.196365, 29.332857, 20.698198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666996, 29.771671, 21.013336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722544, 29.423147, 21.201607>,  <28.755873, 29.214033, 21.314569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722544, 29.423147, 21.201607>,  <28.666996, 29.771671, 21.013336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722544, 29.423147, 21.201607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955174, 0.243326, 0.168628,
		-0.261455, 0.426159, 0.866043,
		0.138869, -0.871310, 0.470674,
		28.764204, 29.161755, 21.342810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884251, 29.850567, 20.396658>,  <28.666996, 29.771671, 21.013336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884251, 29.850567, 20.396658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687477, 30.192640, 20.331350>,  <28.569412, 30.397884, 20.292166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687477, 30.192640, 20.331350>,  <28.884251, 29.850567, 20.396658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687477, 30.192640, 20.331350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271308, 0.328771, 0.904600,
		0.827280, 0.400708, -0.393753,
		-0.491935, 0.855186, -0.163271,
		28.539896, 30.449196, 20.282370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311916, 30.543552, 20.417694>,  <28.884251, 29.850567, 20.396658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311916, 30.543552, 20.417694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931664, 30.542454, 20.541821>,  <28.703512, 30.541794, 20.616297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931664, 30.542454, 20.541821>,  <29.311916, 30.543552, 20.417694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931664, 30.542454, 20.541821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299349, 0.255505, 0.919297,
		-0.081814, 0.966804, -0.242068,
		-0.950630, -0.002749, 0.310315,
		28.646475, 30.541630, 20.634914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068817, 31.162859, 20.641920>,  <29.311916, 30.543552, 20.417694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068817, 31.162859, 20.641920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859755, 30.881685, 20.834883>,  <28.734318, 30.712980, 20.950661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859755, 30.881685, 20.834883>,  <29.068817, 31.162859, 20.641920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859755, 30.881685, 20.834883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345607, 0.342567, 0.873615,
		-0.779350, 0.623323, 0.063894,
		-0.522657, -0.702934, 0.482404,
		28.702957, 30.670805, 20.979605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640900, 31.552351, 21.084522>,  <29.068817, 31.162859, 20.641920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640900, 31.552351, 21.084522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706066, 31.188526, 21.237442>,  <28.745167, 30.970230, 21.329193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706066, 31.188526, 21.237442>,  <28.640900, 31.552351, 21.084522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706066, 31.188526, 21.237442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009739, 0.388937, 0.921213,
		-0.986592, -0.146357, 0.072222,
		0.162916, -0.909564, 0.382297,
		28.754940, 30.915657, 21.352131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210268, 31.563721, 21.634813>,  <28.640900, 31.552351, 21.084522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210268, 31.563721, 21.634813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471905, 31.274258, 21.722889>,  <28.628887, 31.100580, 21.775734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471905, 31.274258, 21.722889>,  <28.210268, 31.563721, 21.634813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471905, 31.274258, 21.722889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059412, 0.339346, 0.938784,
		-0.754080, -0.600967, 0.264956,
		0.654090, -0.723659, 0.220189,
		28.668133, 31.057159, 21.788946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150127, 31.328495, 22.409201>,  <28.210268, 31.563721, 21.634813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150127, 31.328495, 22.409201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509937, 31.185774, 22.308369>,  <28.725824, 31.100142, 22.247869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509937, 31.185774, 22.308369>,  <28.150127, 31.328495, 22.409201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509937, 31.185774, 22.308369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400468, 0.442874, 0.802177,
		-0.174579, -0.822529, 0.541265,
		0.899526, -0.356802, -0.252080,
		28.779795, 31.078733, 22.232744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352858, 31.114927, 22.962622>,  <28.150127, 31.328495, 22.409201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352858, 31.114927, 22.962622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675812, 31.174662, 22.734297>,  <28.869585, 31.210503, 22.597301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675812, 31.174662, 22.734297>,  <28.352858, 31.114927, 22.962622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675812, 31.174662, 22.734297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422265, 0.529442, 0.735788,
		0.412089, -0.835099, 0.364406,
		0.807388, 0.149334, -0.570811,
		28.918028, 31.219461, 22.563053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883955, 31.198694, 23.569107>,  <28.352858, 31.114927, 22.962622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883955, 31.198694, 23.569107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038404, 31.329735, 23.224180>,  <29.131073, 31.408360, 23.017225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038404, 31.329735, 23.224180>,  <28.883955, 31.198694, 23.569107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038404, 31.329735, 23.224180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587247, 0.633610, 0.503666,
		0.711373, -0.700868, 0.052268,
		0.386121, 0.327600, -0.862316,
		29.154242, 31.428015, 22.965485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546879, 31.343500, 23.851021>,  <28.883955, 31.198694, 23.569107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546879, 31.343500, 23.851021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530872, 31.462278, 23.469398>,  <29.521269, 31.533545, 23.240425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530872, 31.462278, 23.469398>,  <29.546879, 31.343500, 23.851021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530872, 31.462278, 23.469398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794858, 0.588044, 0.149685,
		0.605475, -0.752348, -0.259561,
		-0.040018, 0.296945, -0.954056,
		29.518867, 31.551361, 23.183182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287653, 31.350454, 23.534031>,  <29.546879, 31.343500, 23.851021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287653, 31.350454, 23.534031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063114, 31.632740, 23.361122>,  <29.928391, 31.802111, 23.257378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063114, 31.632740, 23.361122>,  <30.287653, 31.350454, 23.534031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063114, 31.632740, 23.361122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573407, 0.708299, 0.411725,
		0.596738, -0.016748, -0.802262,
		-0.561346, 0.705714, -0.432272,
		29.894711, 31.844454, 23.231440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769236, 31.925503, 23.364779>,  <30.287653, 31.350454, 23.534031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769236, 31.925503, 23.364779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402636, 32.085461, 23.360552>,  <30.182676, 32.181435, 23.358015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402636, 32.085461, 23.360552>,  <30.769236, 31.925503, 23.364779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402636, 32.085461, 23.360552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312173, 0.731477, 0.606209,
		0.250149, 0.552292, -0.795236,
		-0.916501, 0.399894, -0.010568,
		30.127686, 32.205429, 23.357382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827198, 32.629166, 23.190912>,  <30.769236, 31.925503, 23.364779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827198, 32.629166, 23.190912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467251, 32.608997, 23.364208>,  <30.251284, 32.596897, 23.468185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467251, 32.608997, 23.364208>,  <30.827198, 32.629166, 23.190912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467251, 32.608997, 23.364208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233008, 0.784102, 0.575231,
		-0.368711, 0.618580, -0.693838,
		-0.899866, -0.050424, 0.433242,
		30.197290, 32.593868, 23.494181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640133, 33.340691, 23.250908>,  <30.827198, 32.629166, 23.190912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640133, 33.340691, 23.250908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417276, 33.127655, 23.505762>,  <30.283564, 32.999832, 23.658674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417276, 33.127655, 23.505762>,  <30.640133, 33.340691, 23.250908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417276, 33.127655, 23.505762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225951, 0.641072, 0.733466,
		-0.799088, 0.552604, -0.236826,
		-0.557139, -0.532593, 0.637135,
		30.250135, 32.967876, 23.696903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381502, 33.908848, 23.716557>,  <30.640133, 33.340691, 23.250908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381502, 33.908848, 23.716557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310293, 33.562046, 23.902725>,  <30.267569, 33.353966, 24.014425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310293, 33.562046, 23.902725>,  <30.381502, 33.908848, 23.716557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310293, 33.562046, 23.902725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224959, 0.424591, 0.876992,
		-0.957967, 0.260825, 0.119453,
		-0.178023, -0.867002, 0.465419,
		30.256886, 33.301945, 24.042351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823900, 34.012936, 24.317968>,  <30.381502, 33.908848, 23.716557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823900, 34.012936, 24.317968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074627, 33.707077, 24.377861>,  <30.225063, 33.523563, 24.413795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074627, 33.707077, 24.377861>,  <29.823900, 34.012936, 24.317968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074627, 33.707077, 24.377861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409585, 0.486833, 0.771514,
		-0.662827, -0.422271, 0.618343,
		0.626817, -0.764644, 0.149731,
		30.262672, 33.477684, 24.422781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838036, 34.035744, 24.967478>,  <29.823900, 34.012936, 24.317968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838036, 34.035744, 24.967478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139948, 33.783710, 24.894487>,  <30.321095, 33.632488, 24.850693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139948, 33.783710, 24.894487>,  <29.838036, 34.035744, 24.967478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139948, 33.783710, 24.894487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487609, 0.352827, 0.798593,
		-0.438799, -0.691739, 0.573543,
		0.754780, -0.630087, -0.182478,
		30.366383, 33.594685, 24.839745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914024, 33.610157, 25.590734>,  <29.838036, 34.035744, 24.967478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914024, 33.610157, 25.590734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265068, 33.600212, 25.399242>,  <30.475695, 33.594246, 25.284348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265068, 33.600212, 25.399242>,  <29.914024, 33.610157, 25.590734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265068, 33.600212, 25.399242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459148, 0.330627, 0.824542,
		0.137783, -0.943434, 0.301576,
		0.877610, -0.024860, -0.478731,
		30.528351, 33.592754, 25.255623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442476, 33.266987, 26.092010>,  <29.914024, 33.610157, 25.590734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442476, 33.266987, 26.092010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673452, 33.452709, 25.823387>,  <30.812038, 33.564140, 25.662214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673452, 33.452709, 25.823387>,  <30.442476, 33.266987, 26.092010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673452, 33.452709, 25.823387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711732, 0.116724, 0.692685,
		0.400002, -0.877952, -0.263058,
		0.577439, 0.464302, -0.671556,
		30.846684, 33.591999, 25.621920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140366, 33.193436, 26.308249>,  <30.442476, 33.266987, 26.092010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140366, 33.193436, 26.308249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194923, 33.483734, 26.038525>,  <31.227657, 33.657913, 25.876690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194923, 33.483734, 26.038525>,  <31.140366, 33.193436, 26.308249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194923, 33.483734, 26.038525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666628, 0.436267, 0.604383,
		0.732806, -0.531947, -0.424296,
		0.136393, 0.725743, -0.674310,
		31.235842, 33.701458, 25.836231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864815, 33.189541, 26.172001>,  <31.140366, 33.193436, 26.308249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864815, 33.189541, 26.172001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714088, 33.551785, 26.094147>,  <31.623653, 33.769131, 26.047434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714088, 33.551785, 26.094147>,  <31.864815, 33.189541, 26.172001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714088, 33.551785, 26.094147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776576, 0.423396, 0.466547,
		0.504917, 0.024652, -0.862816,
		-0.376814, 0.905609, -0.194635,
		31.601044, 33.823467, 26.035757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400932, 33.587612, 26.112467>,  <31.864815, 33.189541, 26.172001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400932, 33.587612, 26.112467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103115, 33.850124, 26.161375>,  <31.924423, 34.007629, 26.190720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103115, 33.850124, 26.161375>,  <32.400932, 33.587612, 26.112467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103115, 33.850124, 26.161375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600799, 0.578898, 0.551287,
		0.291015, 0.483919, -0.825307,
		-0.744547, 0.656277, 0.122270,
		31.879751, 34.047009, 26.198055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633270, 34.261204, 25.835524>,  <32.400932, 33.587612, 26.112467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633270, 34.261204, 25.835524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324265, 34.340073, 26.076969>,  <32.138863, 34.387394, 26.221836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324265, 34.340073, 26.076969>,  <32.633270, 34.261204, 25.835524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324265, 34.340073, 26.076969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576551, 0.616142, 0.536617,
		-0.266107, 0.762557, -0.589655,
		-0.772513, 0.197168, 0.603613,
		32.092510, 34.399223, 26.258053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634354, 34.980179, 25.992445>,  <32.633270, 34.261204, 25.835524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634354, 34.980179, 25.992445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424564, 34.803658, 26.283699>,  <32.298691, 34.697746, 26.458452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424564, 34.803658, 26.283699>,  <32.634354, 34.980179, 25.992445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424564, 34.803658, 26.283699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516050, 0.515450, 0.684108,
		-0.677218, 0.734548, -0.042602,
		-0.524470, -0.441305, 0.728136,
		32.267223, 34.671265, 26.502140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469620, 35.517868, 26.358742>,  <32.634354, 34.980179, 25.992445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469620, 35.517868, 26.358742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424580, 35.215534, 26.616747>,  <32.397556, 35.034134, 26.771549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424580, 35.215534, 26.616747>,  <32.469620, 35.517868, 26.358742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424580, 35.215534, 26.616747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371766, 0.569947, 0.732769,
		-0.921472, 0.322304, 0.216815,
		-0.112602, -0.755831, 0.645012,
		32.390800, 34.988785, 26.810251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988678, 35.771271, 26.830481>,  <32.469620, 35.517868, 26.358742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988678, 35.771271, 26.830481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231331, 35.485992, 26.970966>,  <32.376923, 35.314827, 27.055258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231331, 35.485992, 26.970966>,  <31.988678, 35.771271, 26.830481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231331, 35.485992, 26.970966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233035, 0.581911, 0.779150,
		-0.760061, -0.390812, 0.519204,
		0.606632, -0.713194, 0.351215,
		32.413319, 35.272034, 27.076330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830854, 35.807648, 27.466175>,  <31.988678, 35.771271, 26.830481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830854, 35.807648, 27.466175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171463, 35.597935, 27.468872>,  <32.375828, 35.472107, 27.470490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171463, 35.597935, 27.468872>,  <31.830854, 35.807648, 27.466175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171463, 35.597935, 27.468872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254074, 0.423837, 0.869373,
		-0.458650, -0.738576, 0.494111,
		0.851520, -0.524279, 0.006740,
		32.426918, 35.440651, 27.470894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001564, 35.631668, 28.153631>,  <31.830854, 35.807648, 27.466175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001564, 35.631668, 28.153631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341728, 35.597958, 27.945904>,  <32.545826, 35.577732, 27.821266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341728, 35.597958, 27.945904>,  <32.001564, 35.631668, 28.153631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341728, 35.597958, 27.945904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497614, 0.449330, 0.741946,
		0.170815, -0.889381, 0.424055,
		0.850413, -0.084280, -0.519321,
		32.596851, 35.572674, 27.790108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530254, 35.476006, 28.611607>,  <32.001564, 35.631668, 28.153631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530254, 35.476006, 28.611607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767002, 35.592060, 28.310806>,  <32.909050, 35.661694, 28.130325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767002, 35.592060, 28.310806>,  <32.530254, 35.476006, 28.611607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767002, 35.592060, 28.310806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631373, 0.413079, 0.656303,
		0.501053, -0.863243, 0.061307,
		0.591873, 0.290135, -0.752003,
		32.944565, 35.679100, 28.085205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220352, 35.204124, 28.733475>,  <32.530254, 35.476006, 28.611607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220352, 35.204124, 28.733475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243778, 35.514378, 28.482088>,  <33.257835, 35.700527, 28.331257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243778, 35.514378, 28.482088>,  <33.220352, 35.204124, 28.733475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243778, 35.514378, 28.482088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490858, 0.525813, 0.694679,
		0.869269, -0.349172, -0.349929,
		0.058565, 0.775628, -0.628467,
		33.261349, 35.747066, 28.293549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771183, 35.454006, 28.993382>,  <33.220352, 35.204124, 28.733475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771183, 35.454006, 28.993382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653557, 35.749676, 28.751009>,  <33.582981, 35.927078, 28.605585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653557, 35.749676, 28.751009>,  <33.771183, 35.454006, 28.993382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653557, 35.749676, 28.751009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499000, 0.659435, 0.562267,
		0.815184, -0.137018, -0.562762,
		-0.294064, 0.739169, -0.605933,
		33.565338, 35.971428, 28.569229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380562, 35.760246, 28.810511>,  <33.771183, 35.454006, 28.993382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380562, 35.760246, 28.810511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093296, 36.031731, 28.749065>,  <33.920937, 36.194622, 28.712198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093296, 36.031731, 28.749065>,  <34.380562, 35.760246, 28.810511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093296, 36.031731, 28.749065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516264, 0.667669, 0.536368,
		0.466600, 0.305895, -0.829887,
		-0.718162, 0.678710, -0.153611,
		33.877846, 36.235344, 28.702982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690891, 36.437294, 28.662180>,  <34.380562, 35.760246, 28.810511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690891, 36.437294, 28.662180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331810, 36.511200, 28.822178>,  <34.116364, 36.555546, 28.918177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331810, 36.511200, 28.822178>,  <34.690891, 36.437294, 28.662180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331810, 36.511200, 28.822178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393482, 0.744673, 0.539105,
		-0.198255, 0.641345, -0.741196,
		-0.897701, 0.184767, 0.399994,
		34.062500, 36.566631, 28.942177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724861, 37.120728, 28.749260>,  <34.690891, 36.437294, 28.662180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724861, 37.120728, 28.749260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430462, 36.971039, 28.974920>,  <34.253822, 36.881226, 29.110317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430462, 36.971039, 28.974920>,  <34.724861, 37.120728, 28.749260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430462, 36.971039, 28.974920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344993, 0.509680, 0.788167,
		-0.582487, 0.774716, -0.246018,
		-0.735995, -0.374222, 0.564153,
		34.209663, 36.858772, 29.144167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380989, 37.631298, 28.977356>,  <34.724861, 37.120728, 28.749260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380989, 37.631298, 28.977356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312912, 37.344299, 29.247536>,  <34.272064, 37.172100, 29.409643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312912, 37.344299, 29.247536>,  <34.380989, 37.631298, 28.977356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312912, 37.344299, 29.247536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454723, 0.550920, 0.699795,
		-0.874220, 0.426242, 0.232501,
		-0.170193, -0.717499, 0.675448,
		34.261852, 37.129051, 29.450171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152992, 37.993652, 29.569441>,  <34.380989, 37.631298, 28.977356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152992, 37.993652, 29.569441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288628, 37.634727, 29.682470>,  <34.370010, 37.419373, 29.750288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288628, 37.634727, 29.682470>,  <34.152992, 37.993652, 29.569441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288628, 37.634727, 29.682470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444696, 0.417577, 0.792385,
		-0.829015, -0.143028, 0.540627,
		0.339087, -0.897314, 0.282574,
		34.390354, 37.365532, 29.767242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157288, 37.974323, 30.240362>,  <34.152992, 37.993652, 29.569441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157288, 37.974323, 30.240362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412788, 37.674252, 30.171986>,  <34.566090, 37.494209, 30.130960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412788, 37.674252, 30.171986>,  <34.157288, 37.974323, 30.240362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412788, 37.674252, 30.171986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470276, 0.204819, 0.858423,
		-0.608961, -0.628710, 0.483621,
		0.638754, -0.750182, -0.170941,
		34.604416, 37.449196, 30.120703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286991, 37.646366, 30.822983>,  <34.157288, 37.974323, 30.240362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286991, 37.646366, 30.822983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607323, 37.538464, 30.609104>,  <34.799522, 37.473724, 30.480776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607323, 37.538464, 30.609104>,  <34.286991, 37.646366, 30.822983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607323, 37.538464, 30.609104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559850, 0.020127, 0.828350,
		-0.212687, -0.962719, 0.167139,
		0.800832, -0.269752, -0.534697,
		34.847572, 37.457539, 30.448694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609818, 37.191750, 31.254009>,  <34.286991, 37.646366, 30.822983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609818, 37.191750, 31.254009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904896, 37.243221, 30.988907>,  <35.081944, 37.274105, 30.829845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904896, 37.243221, 30.988907>,  <34.609818, 37.191750, 31.254009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904896, 37.243221, 30.988907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673326, -0.068467, 0.736169,
		0.049355, -0.989319, -0.137154,
		0.737697, 0.128683, -0.662755,
		35.126205, 37.281826, 30.790081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142166, 36.671688, 31.414515>,  <34.609818, 37.191750, 31.254009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142166, 36.671688, 31.414515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307659, 36.975468, 31.213688>,  <35.406956, 37.157734, 31.093191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307659, 36.975468, 31.213688>,  <35.142166, 36.671688, 31.414515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307659, 36.975468, 31.213688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692788, 0.095161, 0.714835,
		0.590655, -0.643574, -0.486764,
		0.413729, 0.759445, -0.502068,
		35.431778, 37.203300, 31.063068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875069, 36.641003, 31.588623>,  <35.142166, 36.671688, 31.414515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875069, 36.641003, 31.588623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797256, 37.008312, 31.450682>,  <35.750568, 37.228699, 31.367918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797256, 37.008312, 31.450682>,  <35.875069, 36.641003, 31.588623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797256, 37.008312, 31.450682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739936, 0.368172, 0.562977,
		0.643934, -0.145651, -0.751089,
		-0.194532, 0.918278, -0.344851,
		35.738895, 37.283794, 31.347227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482826, 36.890945, 31.257713>,  <35.875069, 36.641003, 31.588623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482826, 36.890945, 31.257713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262360, 37.213448, 31.343657>,  <36.130081, 37.406948, 31.395224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262360, 37.213448, 31.343657>,  <36.482826, 36.890945, 31.257713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262360, 37.213448, 31.343657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707792, 0.315403, 0.632100,
		0.441869, 0.500467, -0.744503,
		-0.551164, 0.806259, 0.214859,
		36.097012, 37.455326, 31.408113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907204, 37.429295, 31.419548>,  <36.482826, 36.890945, 31.257713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907204, 37.429295, 31.419548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577457, 37.555676, 31.607418>,  <36.379608, 37.631504, 31.720140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577457, 37.555676, 31.607418>,  <36.907204, 37.429295, 31.419548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577457, 37.555676, 31.607418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544562, 0.216171, 0.810384,
		0.154511, 0.923821, -0.350259,
		-0.824365, 0.315951, 0.469677,
		36.330147, 37.650459, 31.748322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675198, 37.450928, 31.475834>,  <36.907204, 37.429295, 31.419548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675198, 37.450928, 31.475834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008297, 37.303398, 31.310667>,  <38.208157, 37.214882, 31.211567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008297, 37.303398, 31.310667>,  <37.675198, 37.450928, 31.475834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008297, 37.303398, 31.310667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534543, -0.341356, -0.773137,
		0.144197, 0.864551, -0.481414,
		0.832750, -0.368820, -0.412917,
		38.258121, 37.192753, 31.186792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628227, 37.678669, 30.782692>,  <37.675198, 37.450928, 31.475834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628227, 37.678669, 30.782692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852448, 37.347740, 30.797260>,  <37.986980, 37.149181, 30.806002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852448, 37.347740, 30.797260>,  <37.628227, 37.678669, 30.782692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852448, 37.347740, 30.797260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328121, -0.262267, -0.907498,
		0.760345, 0.496745, -0.418474,
		0.560547, -0.827322, 0.036421,
		38.020611, 37.099545, 30.808186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585823, 37.513252, 30.181635>,  <37.628227, 37.678669, 30.782692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585823, 37.513252, 30.181635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696514, 37.166073, 30.346600>,  <37.762928, 36.957764, 30.445578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696514, 37.166073, 30.346600>,  <37.585823, 37.513252, 30.181635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696514, 37.166073, 30.346600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362869, -0.491782, -0.791503,
		0.889801, 0.069382, -0.451043,
		0.276730, -0.867950, 0.412412,
		37.779533, 36.905689, 30.470324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009590, 37.152451, 29.724365>,  <37.585823, 37.513252, 30.181635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009590, 37.152451, 29.724365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845917, 36.875290, 29.961838>,  <37.747711, 36.708996, 30.104322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845917, 36.875290, 29.961838>,  <38.009590, 37.152451, 29.724365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845917, 36.875290, 29.961838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163883, -0.584256, -0.794850,
		0.897612, -0.422538, 0.125516,
		-0.409188, -0.692897, 0.593682,
		37.723160, 36.667419, 30.139942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348454, 36.561607, 29.553213>,  <38.009590, 37.152451, 29.724365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348454, 36.561607, 29.553213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017185, 36.436050, 29.738947>,  <37.818424, 36.360718, 29.850388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017185, 36.436050, 29.738947>,  <38.348454, 36.561607, 29.553213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017185, 36.436050, 29.738947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264843, -0.510976, -0.817778,
		0.493956, -0.800236, 0.340044,
		-0.828170, -0.313888, 0.464336,
		37.768734, 36.341885, 29.878248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284306, 35.894817, 29.350000>,  <38.348454, 36.561607, 29.553213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284306, 35.894817, 29.350000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916790, 36.012409, 29.455376>,  <37.696281, 36.082966, 29.518600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916790, 36.012409, 29.455376>,  <38.284306, 35.894817, 29.350000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916790, 36.012409, 29.455376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374486, -0.438065, -0.817227,
		-0.124846, -0.849514, 0.512581,
		-0.918789, 0.293982, 0.263441,
		37.641151, 36.100605, 29.534409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812195, 35.369190, 29.120201>,  <38.284306, 35.894817, 29.350000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812195, 35.369190, 29.120201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597095, 35.700348, 29.183979>,  <37.468037, 35.899044, 29.222246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597095, 35.700348, 29.183979>,  <37.812195, 35.369190, 29.120201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597095, 35.700348, 29.183979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616115, -0.256778, -0.744626,
		-0.575529, -0.498655, 0.648159,
		-0.537744, 0.827894, 0.159445,
		37.435772, 35.948715, 29.231813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050758, 35.135071, 29.036352>,  <37.812195, 35.369190, 29.120201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050758, 35.135071, 29.036352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020969, 35.532314, 29.000153>,  <37.003098, 35.770660, 28.978432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020969, 35.532314, 29.000153>,  <37.050758, 35.135071, 29.036352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020969, 35.532314, 29.000153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620132, -0.117190, -0.775695,
		-0.780955, -0.001644, 0.624586,
		-0.074470, 0.993108, -0.090500,
		36.998627, 35.830246, 28.973003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329018, 35.263599, 29.075525>,  <37.050758, 35.135071, 29.036352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329018, 35.263599, 29.075525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493870, 35.577145, 28.889750>,  <36.592781, 35.765270, 28.778284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493870, 35.577145, 28.889750>,  <36.329018, 35.263599, 29.075525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493870, 35.577145, 28.889750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665705, -0.088971, -0.740892,
		-0.622079, 0.614528, 0.485153,
		0.412134, 0.783862, -0.464442,
		36.617512, 35.812302, 28.750418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732948, 35.541241, 28.701296>,  <36.329018, 35.263599, 29.075525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732948, 35.541241, 28.701296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051537, 35.703362, 28.521801>,  <36.242691, 35.800632, 28.414104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051537, 35.703362, 28.521801>,  <35.732948, 35.541241, 28.701296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051537, 35.703362, 28.521801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366281, -0.267080, -0.891351,
		-0.481112, 0.874300, -0.064268,
		0.796473, 0.405299, -0.448735,
		36.290478, 35.824951, 28.387180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447659, 36.036343, 28.190962>,  <35.732948, 35.541241, 28.701296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447659, 36.036343, 28.190962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803860, 35.873661, 28.109388>,  <36.017582, 35.776051, 28.060444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803860, 35.873661, 28.109388>,  <35.447659, 36.036343, 28.190962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803860, 35.873661, 28.109388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321193, -0.244514, -0.914903,
		0.322230, 0.880230, -0.348372,
		0.890507, -0.406704, -0.203934,
		36.071011, 35.751652, 28.048208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600925, 36.368752, 27.633652>,  <35.447659, 36.036343, 28.190962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600925, 36.368752, 27.633652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812649, 36.029400, 27.637278>,  <35.939682, 35.825787, 27.639454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812649, 36.029400, 27.637278>,  <35.600925, 36.368752, 27.633652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812649, 36.029400, 27.637278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342358, -0.223351, -0.912637,
		0.776290, 0.479960, -0.408672,
		0.529306, -0.848383, 0.009067,
		35.971439, 35.774883, 27.639997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830551, 36.364353, 26.952572>,  <35.600925, 36.368752, 27.633652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830551, 36.364353, 26.952572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890404, 35.986923, 27.070745>,  <35.926315, 35.760468, 27.141649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890404, 35.986923, 27.070745>,  <35.830551, 36.364353, 26.952572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890404, 35.986923, 27.070745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208900, -0.322225, -0.923327,
		0.966422, 0.076444, -0.245327,
		0.149633, -0.943572, 0.295436,
		35.935295, 35.703854, 27.159376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232754, 35.965031, 26.383820>,  <35.830551, 36.364353, 26.952572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232754, 35.965031, 26.383820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015507, 35.711948, 26.604622>,  <35.885159, 35.560101, 26.737103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015507, 35.711948, 26.604622>,  <36.232754, 35.965031, 26.383820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015507, 35.711948, 26.604622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243718, -0.510324, -0.824724,
		0.803506, -0.582458, 0.122966,
		-0.543120, -0.632702, 0.552004,
		35.852570, 35.522137, 26.770224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299690, 35.409386, 25.969343>,  <36.232754, 35.965031, 26.383820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299690, 35.409386, 25.969343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989845, 35.329189, 26.209269>,  <35.803936, 35.281071, 26.353224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989845, 35.329189, 26.209269>,  <36.299690, 35.409386, 25.969343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989845, 35.329189, 26.209269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456991, -0.478182, -0.750001,
		0.437186, -0.855071, 0.278785,
		-0.774615, -0.200488, 0.599814,
		35.757462, 35.269043, 26.389214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168114, 34.650543, 26.097364>,  <36.299690, 35.409386, 25.969343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168114, 34.650543, 26.097364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810825, 34.827217, 26.131018>,  <35.596455, 34.933220, 26.151211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810825, 34.827217, 26.131018>,  <36.168114, 34.650543, 26.097364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810825, 34.827217, 26.131018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383731, -0.651328, -0.654617,
		-0.234331, -0.617001, 0.751264,
		-0.893219, 0.441680, 0.084136,
		35.542858, 34.959721, 26.156258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599751, 34.017460, 25.937351>,  <36.168114, 34.650543, 26.097364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599751, 34.017460, 25.937351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352951, 34.330750, 25.968002>,  <35.204872, 34.518723, 25.986393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352951, 34.330750, 25.968002>,  <35.599751, 34.017460, 25.937351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352951, 34.330750, 25.968002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755899, -0.562736, -0.334582,
		-0.218931, -0.264361, 0.939246,
		-0.616997, 0.783226, 0.076629,
		35.167850, 34.565716, 25.990992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005100, 33.844498, 26.280657>,  <35.599751, 34.017460, 25.937351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005100, 33.844498, 26.280657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902405, 34.152832, 26.047451>,  <34.840790, 34.337830, 25.907528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902405, 34.152832, 26.047451>,  <35.005100, 33.844498, 26.280657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902405, 34.152832, 26.047451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775245, -0.524467, -0.352036,
		-0.577133, 0.361598, 0.732232,
		-0.256736, 0.770831, -0.583015,
		34.825382, 34.384083, 25.872547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330910, 33.928757, 26.311275>,  <35.005100, 33.844498, 26.280657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330910, 33.928757, 26.311275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396519, 34.134087, 25.974325>,  <34.435883, 34.257282, 25.772156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396519, 34.134087, 25.974325>,  <34.330910, 33.928757, 26.311275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396519, 34.134087, 25.974325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772913, -0.463730, -0.433082,
		-0.612945, 0.722119, 0.320691,
		0.164022, 0.513321, -0.842376,
		34.445724, 34.288082, 25.721613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633980, 34.147549, 25.956285>,  <34.330910, 33.928757, 26.311275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633980, 34.147549, 25.956285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889668, 34.190037, 25.651623>,  <34.043079, 34.215530, 25.468826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889668, 34.190037, 25.651623>,  <33.633980, 34.147549, 25.956285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889668, 34.190037, 25.651623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676954, -0.392198, -0.622827,
		-0.364875, 0.913728, -0.178796,
		0.639218, 0.106217, -0.761655,
		34.081432, 34.221901, 25.423126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310467, 34.606075, 25.391012>,  <33.633980, 34.147549, 25.956285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310467, 34.606075, 25.391012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582230, 34.356075, 25.237247>,  <33.745289, 34.206074, 25.144989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582230, 34.356075, 25.237247>,  <33.310467, 34.606075, 25.391012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582230, 34.356075, 25.237247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730315, -0.525304, -0.436688,
		0.071000, 0.577431, -0.813347,
		0.679411, -0.625004, -0.384410,
		33.786053, 34.168575, 25.121925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184917, 34.442097, 24.687626>,  <33.310467, 34.606075, 25.391012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184917, 34.442097, 24.687626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394722, 34.129158, 24.821983>,  <33.520603, 33.941395, 24.902597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394722, 34.129158, 24.821983>,  <33.184917, 34.442097, 24.687626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394722, 34.129158, 24.821983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599194, -0.619471, -0.507170,
		0.604858, 0.064751, -0.793696,
		0.524512, -0.782344, 0.335894,
		33.552074, 33.894455, 24.922752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310005, 33.972973, 24.136133>,  <33.184917, 34.442097, 24.687626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310005, 33.972973, 24.136133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397202, 33.734730, 24.445385>,  <33.449520, 33.591782, 24.630936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397202, 33.734730, 24.445385>,  <33.310005, 33.972973, 24.136133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397202, 33.734730, 24.445385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479017, -0.755494, -0.446958,
		0.850307, -0.272907, -0.450001,
		0.217995, -0.595609, 0.773129,
		33.462601, 33.556046, 24.677324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549351, 33.377148, 23.823307>,  <33.310005, 33.972973, 24.136133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549351, 33.377148, 23.823307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453938, 33.263622, 24.194801>,  <33.396690, 33.195507, 24.417698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453938, 33.263622, 24.194801>,  <33.549351, 33.377148, 23.823307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453938, 33.263622, 24.194801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438326, -0.821923, -0.363749,
		0.866587, -0.493855, 0.071651,
		-0.238531, -0.283814, 0.928737,
		33.382378, 33.178478, 24.473423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716801, 32.670799, 23.854801>,  <33.549351, 33.377148, 23.823307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716801, 32.670799, 23.854801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462761, 32.716133, 24.160427>,  <33.310337, 32.743332, 24.343803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462761, 32.716133, 24.160427>,  <33.716801, 32.670799, 23.854801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462761, 32.716133, 24.160427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544339, -0.767484, -0.338620,
		0.548032, -0.630970, 0.549125,
		-0.635103, 0.113336, 0.764067,
		33.272228, 32.750134, 24.389647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597481, 31.997478, 23.968781>,  <33.716801, 32.670799, 23.854801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597481, 31.997478, 23.968781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289955, 32.192257, 24.134583>,  <33.105442, 32.309124, 24.234064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289955, 32.192257, 24.134583>,  <33.597481, 31.997478, 23.968781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289955, 32.192257, 24.134583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631427, -0.680586, -0.371622,
		0.101147, -0.547437, 0.830711,
		-0.768810, 0.486945, 0.414506,
		33.059311, 32.338341, 24.258934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212090, 31.463549, 24.234510>,  <33.597481, 31.997478, 23.968781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212090, 31.463549, 24.234510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976654, 31.785728, 24.206745>,  <32.835392, 31.979036, 24.190086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976654, 31.785728, 24.206745>,  <33.212090, 31.463549, 24.234510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976654, 31.785728, 24.206745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752144, -0.577062, -0.318244,
		-0.296383, -0.135108, 0.945464,
		-0.588588, 0.805447, -0.069411,
		32.800079, 32.027363, 24.185923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744968, 31.327776, 24.819847>,  <33.212090, 31.463549, 24.234510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744968, 31.327776, 24.819847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615353, 31.545856, 24.510588>,  <32.537582, 31.676704, 24.325033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615353, 31.545856, 24.510588>,  <32.744968, 31.327776, 24.819847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615353, 31.545856, 24.510588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660963, -0.715167, -0.227296,
		-0.676851, 0.437368, 0.592100,
		-0.324038, 0.545202, -0.773145,
		32.518143, 31.709417, 24.278645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045368, 31.041571, 24.789724>,  <32.744968, 31.327776, 24.819847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045368, 31.041571, 24.789724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090599, 31.254320, 24.454029>,  <32.117737, 31.381969, 24.252611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090599, 31.254320, 24.454029>,  <32.045368, 31.041571, 24.789724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090599, 31.254320, 24.454029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642500, -0.605151, -0.470090,
		-0.757896, 0.592369, 0.273299,
		0.113080, 0.531874, -0.839239,
		32.124523, 31.413883, 24.202257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373579, 31.110056, 24.462580>,  <32.045368, 31.041571, 24.789724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373579, 31.110056, 24.462580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648634, 31.179445, 24.180571>,  <31.813667, 31.221079, 24.011364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648634, 31.179445, 24.180571>,  <31.373579, 31.110056, 24.462580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648634, 31.179445, 24.180571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529359, -0.544807, -0.650357,
		-0.496923, 0.820422, -0.282799,
		0.687638, 0.173475, -0.705025,
		31.854925, 31.231487, 23.969063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954115, 31.188280, 23.830111>,  <31.373579, 31.110056, 24.462580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954115, 31.188280, 23.830111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325937, 31.093760, 23.716909>,  <31.549030, 31.037048, 23.648989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325937, 31.093760, 23.716909>,  <30.954115, 31.188280, 23.830111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325937, 31.093760, 23.716909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364774, -0.700941, -0.612879,
		-0.053544, 0.672936, -0.737760,
		0.929555, -0.236300, -0.283001,
		31.604803, 31.022869, 23.632010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921728, 31.145866, 23.137318>,  <30.954115, 31.188280, 23.830111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921728, 31.145866, 23.137318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235725, 30.920536, 23.240429>,  <31.424124, 30.785337, 23.302296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235725, 30.920536, 23.240429>,  <30.921728, 31.145866, 23.137318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235725, 30.920536, 23.240429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323467, -0.727584, -0.604973,
		0.528351, 0.391517, -0.753366,
		0.784993, -0.563327, 0.257777,
		31.471224, 30.751537, 23.317762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249012, 30.869541, 22.464249>,  <30.921728, 31.145866, 23.137318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249012, 30.869541, 22.464249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404238, 30.610785, 22.726831>,  <31.497374, 30.455530, 22.884380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404238, 30.610785, 22.726831>,  <31.249012, 30.869541, 22.464249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404238, 30.610785, 22.726831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141740, -0.745693, -0.651039,
		0.910668, 0.159599, -0.381067,
		0.388064, -0.646893, 0.656457,
		31.520657, 30.416718, 22.923769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755396, 30.436724, 22.069607>,  <31.249012, 30.869541, 22.464249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755396, 30.436724, 22.069607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695162, 30.235239, 22.409864>,  <31.659021, 30.114347, 22.614019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695162, 30.235239, 22.409864>,  <31.755396, 30.436724, 22.069607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695162, 30.235239, 22.409864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217798, -0.822412, -0.525550,
		0.964307, -0.264408, 0.014134,
		-0.150583, -0.503714, 0.850645,
		31.649986, 30.084126, 22.665058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043606, 29.663330, 21.937868>,  <31.755396, 30.436724, 22.069607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043606, 29.663330, 21.937868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804739, 29.625851, 22.256519>,  <31.661419, 29.603363, 22.447710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804739, 29.625851, 22.256519>,  <32.043606, 29.663330, 21.937868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804739, 29.625851, 22.256519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388138, -0.835384, -0.389209,
		0.701958, -0.541623, 0.462493,
		-0.597164, -0.093697, 0.796628,
		31.625589, 29.597742, 22.495508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057968, 28.972822, 22.271307>,  <32.043606, 29.663330, 21.937868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057968, 28.972822, 22.271307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701977, 29.090334, 22.410810>,  <31.488382, 29.160841, 22.494513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701977, 29.090334, 22.410810>,  <32.057968, 28.972822, 22.271307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701977, 29.090334, 22.410810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449003, -0.698058, -0.557774,
		0.079592, -0.653001, 0.753163,
		-0.889979, 0.293778, 0.348759,
		31.434982, 29.178467, 22.515438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745012, 28.380537, 22.396114>,  <32.057968, 28.972822, 22.271307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745012, 28.380537, 22.396114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473333, 28.664614, 22.322016>,  <31.310326, 28.835060, 22.277555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473333, 28.664614, 22.322016>,  <31.745012, 28.380537, 22.396114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473333, 28.664614, 22.322016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540531, -0.654751, -0.528325,
		-0.496503, -0.258706, 0.828587,
		-0.679199, 0.710191, -0.185248,
		31.269573, 28.877672, 22.266441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110369, 28.240335, 22.646889>,  <31.745012, 28.380537, 22.396114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110369, 28.240335, 22.646889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065355, 28.458113, 22.314404>,  <31.038347, 28.588779, 22.114912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065355, 28.458113, 22.314404>,  <31.110369, 28.240335, 22.646889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065355, 28.458113, 22.314404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530755, -0.740129, -0.412925,
		-0.840021, 0.394703, 0.372256,
		-0.112535, 0.544443, -0.831215,
		31.031595, 28.621445, 22.065039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453194, 27.763840, 22.147928>,  <31.110369, 28.240335, 22.646889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453194, 27.763840, 22.147928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794245, 27.636635, 21.982088>,  <31.998877, 27.560312, 21.882584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794245, 27.636635, 21.982088>,  <31.453194, 27.763840, 22.147928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794245, 27.636635, 21.982088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516587, 0.393827, 0.760288,
		-0.078501, -0.862420, 0.500069,
		0.852629, -0.318012, -0.414599,
		32.050034, 27.541231, 21.857708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812653, 27.330156, 22.668011>,  <31.453194, 27.763840, 22.147928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812653, 27.330156, 22.668011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092506, 27.418880, 22.396332>,  <32.260418, 27.472115, 22.233324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092506, 27.418880, 22.396332>,  <31.812653, 27.330156, 22.668011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092506, 27.418880, 22.396332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623975, 0.273425, 0.732048,
		0.348086, -0.935969, 0.052893,
		0.699636, 0.221812, -0.679197,
		32.302399, 27.485424, 22.192574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328907, 27.032328, 22.943464>,  <31.812653, 27.330156, 22.668011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328907, 27.032328, 22.943464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486546, 27.279596, 22.671419>,  <32.581127, 27.427958, 22.508192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486546, 27.279596, 22.671419>,  <32.328907, 27.032328, 22.943464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486546, 27.279596, 22.671419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657560, 0.327354, 0.678567,
		0.642109, -0.714634, -0.277477,
		0.394094, 0.618172, -0.680112,
		32.604774, 27.465048, 22.467386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060139, 27.029356, 23.068565>,  <32.328907, 27.032328, 22.943464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060139, 27.029356, 23.068565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002804, 27.360403, 22.851494>,  <32.968403, 27.559031, 22.721251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002804, 27.360403, 22.851494>,  <33.060139, 27.029356, 23.068565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002804, 27.360403, 22.851494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661505, 0.487976, 0.569465,
		0.736115, -0.277357, -0.617421,
		-0.143342, 0.827618, -0.542680,
		32.959801, 27.608688, 22.688690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726040, 27.246565, 22.983376>,  <33.060139, 27.029356, 23.068565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726040, 27.246565, 22.983376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471821, 27.550032, 22.926105>,  <33.319290, 27.732111, 22.891743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471821, 27.550032, 22.926105>,  <33.726040, 27.246565, 22.983376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471821, 27.550032, 22.926105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573311, 0.587964, 0.570625,
		0.517096, 0.280578, -0.808633,
		-0.635552, 0.758666, -0.143175,
		33.281155, 27.777632, 22.883152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222240, 27.833591, 22.941433>,  <33.726040, 27.246565, 22.983376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222240, 27.833591, 22.941433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863987, 27.987318, 23.031006>,  <33.649036, 28.079554, 23.084749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863987, 27.987318, 23.031006>,  <34.222240, 27.833591, 22.941433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863987, 27.987318, 23.031006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421786, 0.573984, 0.701883,
		0.141209, 0.723080, -0.676177,
		-0.895632, 0.384314, 0.223933,
		33.595299, 28.102612, 23.098186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378937, 28.604593, 23.046259>,  <34.222240, 27.833591, 22.941433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378937, 28.604593, 23.046259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033962, 28.506348, 23.223291>,  <33.826977, 28.447399, 23.329510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033962, 28.506348, 23.223291>,  <34.378937, 28.604593, 23.046259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033962, 28.506348, 23.223291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215364, 0.613222, 0.759985,
		-0.458064, 0.750754, -0.475968,
		-0.862436, -0.245615, 0.442580,
		33.775230, 28.432663, 23.356066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231972, 29.199387, 23.377550>,  <34.378937, 28.604593, 23.046259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231972, 29.199387, 23.377550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011444, 28.932396, 23.577761>,  <33.879128, 28.772202, 23.697887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011444, 28.932396, 23.577761>,  <34.231972, 29.199387, 23.377550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011444, 28.932396, 23.577761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145130, 0.514065, 0.845384,
		-0.821576, 0.538716, -0.186542,
		-0.551316, -0.667475, 0.500528,
		33.846050, 28.732153, 23.727919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578262, 29.482454, 23.599897>,  <34.231972, 29.199387, 23.377550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578262, 29.482454, 23.599897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600521, 29.176943, 23.857126>,  <33.613876, 28.993635, 24.011463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600521, 29.176943, 23.857126>,  <33.578262, 29.482454, 23.599897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600521, 29.176943, 23.857126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004376, 0.643878, 0.765116,
		-0.998441, -0.045393, 0.032490,
		0.055651, -0.763780, 0.643073,
		33.617218, 28.947809, 24.050049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107765, 29.593519, 24.123381>,  <33.578262, 29.482454, 23.599897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107765, 29.593519, 24.123381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355217, 29.336786, 24.304640>,  <33.503689, 29.182747, 24.413395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355217, 29.336786, 24.304640>,  <33.107765, 29.593519, 24.123381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355217, 29.336786, 24.304640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126582, 0.650646, 0.748756,
		-0.775415, -0.405845, 0.483757,
		0.618634, -0.641832, 0.453148,
		33.540806, 29.144238, 24.440584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937801, 29.620182, 24.706173>,  <33.107765, 29.593519, 24.123381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937801, 29.620182, 24.706173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293468, 29.449636, 24.772623>,  <33.506866, 29.347309, 24.812492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293468, 29.449636, 24.772623>,  <32.937801, 29.620182, 24.706173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293468, 29.449636, 24.772623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169356, 0.643902, 0.746129,
		-0.425091, -0.635298, 0.644743,
		0.889166, -0.426364, 0.166126,
		33.560219, 29.321728, 24.822460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951706, 29.491220, 25.377825>,  <32.937801, 29.620182, 24.706173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951706, 29.491220, 25.377825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334496, 29.493668, 25.261776>,  <33.564167, 29.495136, 25.192146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334496, 29.493668, 25.261776>,  <32.951706, 29.491220, 25.377825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334496, 29.493668, 25.261776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218568, 0.642447, 0.734500,
		0.190881, -0.766306, 0.613465,
		0.956971, 0.006119, -0.290121,
		33.621586, 29.495502, 25.174740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279942, 29.507439, 25.968569>,  <32.951706, 29.491220, 25.377825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279942, 29.507439, 25.968569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565933, 29.643105, 25.724024>,  <33.737530, 29.724504, 25.577297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565933, 29.643105, 25.724024>,  <33.279942, 29.507439, 25.968569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565933, 29.643105, 25.724024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271778, 0.670843, 0.690005,
		0.644158, -0.659496, 0.387461,
		0.714981, 0.339169, -0.611365,
		33.780430, 29.744854, 25.540615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881203, 29.602613, 26.368967>,  <33.279942, 29.507439, 25.968569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881203, 29.602613, 26.368967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972816, 29.834692, 26.056322>,  <34.027782, 29.973940, 25.868736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972816, 29.834692, 26.056322>,  <33.881203, 29.602613, 26.368967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972816, 29.834692, 26.056322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455805, 0.645563, 0.612772,
		0.860108, -0.496606, -0.116603,
		0.229031, 0.580198, -0.781610,
		34.041527, 30.008751, 25.821838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637058, 29.789448, 26.392433>,  <33.881203, 29.602613, 26.368967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637058, 29.789448, 26.392433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470074, 30.070690, 26.162174>,  <34.369884, 30.239435, 26.024019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470074, 30.070690, 26.162174>,  <34.637058, 29.789448, 26.392433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470074, 30.070690, 26.162174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571457, 0.695674, 0.435287,
		0.706516, -0.147244, -0.692209,
		-0.417459, 0.703105, -0.575649,
		34.344837, 30.281622, 25.989479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213322, 30.267447, 26.272512>,  <34.637058, 29.789448, 26.392433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213322, 30.267447, 26.272512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878609, 30.456198, 26.161430>,  <34.677780, 30.569448, 26.094780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878609, 30.456198, 26.161430>,  <35.213322, 30.267447, 26.272512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878609, 30.456198, 26.161430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358162, 0.855377, 0.374233,
		0.414136, 0.213689, -0.884776,
		-0.836787, 0.471876, -0.277707,
		34.627571, 30.597761, 26.078119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434433, 30.827900, 26.008554>,  <35.213322, 30.267447, 26.272512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434433, 30.827900, 26.008554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059498, 30.950920, 26.074057>,  <34.834538, 31.024733, 26.113358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059498, 30.950920, 26.074057>,  <35.434433, 30.827900, 26.008554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059498, 30.950920, 26.074057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346660, 0.870487, 0.349398,
		-0.035090, 0.384270, -0.922553,
		-0.937334, 0.307552, 0.163757,
		34.778297, 31.043186, 26.123184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320969, 31.520544, 25.718822>,  <35.434433, 30.827900, 26.008554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320969, 31.520544, 25.718822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071487, 31.457891, 26.025145>,  <34.921799, 31.420300, 26.208937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071487, 31.457891, 26.025145>,  <35.320969, 31.520544, 25.718822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071487, 31.457891, 26.025145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322005, 0.841238, 0.434318,
		-0.712252, 0.517479, -0.474249,
		-0.623707, -0.156633, 0.765804,
		34.884377, 31.410902, 26.254887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224461, 32.076134, 25.979658>,  <35.320969, 31.520544, 25.718822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224461, 32.076134, 25.979658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093037, 31.865515, 26.293295>,  <35.014183, 31.739143, 26.481478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093037, 31.865515, 26.293295>,  <35.224461, 32.076134, 25.979658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093037, 31.865515, 26.293295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457864, 0.637311, 0.619835,
		-0.826081, 0.562659, 0.031692,
		-0.328558, -0.526544, 0.784092,
		34.994469, 31.707552, 26.528522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941448, 32.595623, 26.464195>,  <35.224461, 32.076134, 25.979658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941448, 32.595623, 26.464195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995380, 32.276360, 26.699062>,  <35.027740, 32.084801, 26.839983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995380, 32.276360, 26.699062>,  <34.941448, 32.595623, 26.464195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995380, 32.276360, 26.699062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446085, 0.578022, 0.683300,
		-0.884777, 0.169799, 0.433979,
		0.134826, -0.798160, 0.587166,
		35.035828, 32.036911, 26.875212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728790, 32.898540, 27.136522>,  <34.941448, 32.595623, 26.464195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728790, 32.898540, 27.136522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952473, 32.568283, 27.166473>,  <35.086681, 32.370129, 27.184444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952473, 32.568283, 27.166473>,  <34.728790, 32.898540, 27.136522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952473, 32.568283, 27.166473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650119, 0.492781, 0.578371,
		-0.514424, -0.274749, 0.812330,
		0.559208, -0.825639, 0.074879,
		35.120235, 32.320591, 27.188936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086884, 33.094421, 27.745226>,  <34.728790, 32.898540, 27.136522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086884, 33.094421, 27.745226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304203, 32.813713, 27.560904>,  <35.434593, 32.645287, 27.450310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304203, 32.813713, 27.560904>,  <35.086884, 33.094421, 27.745226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304203, 32.813713, 27.560904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837385, 0.413679, 0.357291,
		-0.060112, -0.579986, 0.812405,
		0.543298, -0.701773, -0.460804,
		35.467194, 32.603180, 27.422663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757885, 33.072609, 28.132143>,  <35.086884, 33.094421, 27.745226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757885, 33.072609, 28.132143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859951, 32.876282, 27.798920>,  <35.921188, 32.758484, 27.598986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859951, 32.876282, 27.798920>,  <35.757885, 33.072609, 28.132143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859951, 32.876282, 27.798920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957012, 0.251091, 0.145190,
		0.137911, -0.834294, 0.533791,
		0.255162, -0.490822, -0.833059,
		35.936501, 32.729034, 27.549002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241726, 32.627380, 28.311392>,  <35.757885, 33.072609, 28.132143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241726, 32.627380, 28.311392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280289, 32.715702, 27.923176>,  <36.303425, 32.768696, 27.690247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280289, 32.715702, 27.923176>,  <36.241726, 32.627380, 28.311392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280289, 32.715702, 27.923176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972268, 0.187844, 0.139316,
		0.213072, -0.957057, -0.196574,
		0.096408, 0.220807, -0.970541,
		36.309212, 32.781944, 27.632013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816669, 32.251541, 28.065668>,  <36.241726, 32.627380, 28.311392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816669, 32.251541, 28.065668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783314, 32.559288, 27.812334>,  <36.763302, 32.743938, 27.660334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783314, 32.559288, 27.812334>,  <36.816669, 32.251541, 28.065668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783314, 32.559288, 27.812334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944670, 0.263360, 0.195549,
		0.317245, -0.581988, -0.748762,
		-0.083386, 0.769371, -0.633337,
		36.758297, 32.790100, 27.622334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448444, 32.279972, 27.704645>,  <36.816669, 32.251541, 28.065668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448444, 32.279972, 27.704645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285885, 32.636414, 27.623882>,  <37.188347, 32.850281, 27.575424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285885, 32.636414, 27.623882>,  <37.448444, 32.279972, 27.704645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285885, 32.636414, 27.623882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893846, 0.433556, 0.114320,
		0.189409, -0.134014, -0.972710,
		-0.406403, 0.891106, -0.201907,
		37.163963, 32.903744, 27.563311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985645, 32.608593, 27.192936>,  <37.448444, 32.279972, 27.704645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985645, 32.608593, 27.192936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759087, 32.890373, 27.364023>,  <37.623150, 33.059441, 27.466677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759087, 32.890373, 27.364023>,  <37.985645, 32.608593, 27.192936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759087, 32.890373, 27.364023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819916, 0.534102, 0.206089,
		-0.083266, 0.467422, -0.880104,
		-0.566396, 0.704452, 0.427719,
		37.589169, 33.101707, 27.492338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310009, 33.149193, 26.966488>,  <37.985645, 32.608593, 27.192936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310009, 33.149193, 26.966488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091740, 33.269932, 27.279188>,  <37.960777, 33.342373, 27.466808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091740, 33.269932, 27.279188>,  <38.310009, 33.149193, 26.966488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091740, 33.269932, 27.279188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771088, 0.546133, 0.327357,
		-0.328129, 0.781428, -0.530756,
		-0.545669, 0.301844, 0.781751,
		37.928040, 33.360485, 27.513714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326416, 33.856647, 27.031277>,  <38.310009, 33.149193, 26.966488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326416, 33.856647, 27.031277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217194, 33.743546, 27.399078>,  <38.151661, 33.675686, 27.619761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217194, 33.743546, 27.399078>,  <38.326416, 33.856647, 27.031277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217194, 33.743546, 27.399078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777503, 0.498007, 0.384028,
		-0.566505, 0.819780, 0.083855,
		-0.273058, -0.282752, 0.919506,
		38.135277, 33.658718, 27.674931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584389, 34.393452, 27.438318>,  <38.326416, 33.856647, 27.031277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584389, 34.393452, 27.438318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518024, 34.114319, 27.717031>,  <38.478207, 33.946838, 27.884258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518024, 34.114319, 27.717031>,  <38.584389, 34.393452, 27.438318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518024, 34.114319, 27.717031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720203, 0.396916, 0.569004,
		-0.673633, 0.596229, 0.436727,
		-0.165913, -0.697832, 0.696781,
		38.468250, 33.904968, 27.926065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762661, 34.797253, 28.073853>,  <38.584389, 34.393452, 27.438318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762661, 34.797253, 28.073853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747932, 34.410427, 28.174597>,  <38.739094, 34.178333, 28.235043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747932, 34.410427, 28.174597>,  <38.762661, 34.797253, 28.073853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747932, 34.410427, 28.174597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682284, 0.159817, 0.713405,
		-0.730159, 0.198110, 0.653927,
		-0.036824, -0.967063, 0.251859,
		38.736885, 34.120308, 28.250154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641506, 34.712021, 28.858519>,  <38.762661, 34.797253, 28.073853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641506, 34.712021, 28.858519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817036, 34.379734, 28.721495>,  <38.922352, 34.180363, 28.639280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817036, 34.379734, 28.721495>,  <38.641506, 34.712021, 28.858519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817036, 34.379734, 28.721495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714212, 0.091107, 0.693974,
		-0.545288, -0.549188, 0.633288,
		0.438819, -0.830718, -0.342557,
		38.948681, 34.130520, 28.618727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758213, 34.235931, 29.400810>,  <38.641506, 34.712021, 28.858519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758213, 34.235931, 29.400810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028744, 34.104801, 29.136961>,  <39.191063, 34.026123, 28.978651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028744, 34.104801, 29.136961>,  <38.758213, 34.235931, 29.400810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028744, 34.104801, 29.136961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714518, 0.074363, 0.695654,
		-0.179004, -0.941806, 0.284534,
		0.676330, -0.327830, -0.659625,
		39.231644, 34.006451, 28.939074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077293, 33.655193, 29.732761>,  <38.758213, 34.235931, 29.400810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077293, 33.655193, 29.732761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336094, 33.785023, 29.456779>,  <39.491375, 33.862923, 29.291191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336094, 33.785023, 29.456779>,  <39.077293, 33.655193, 29.732761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336094, 33.785023, 29.456779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743642, -0.068684, 0.665040,
		0.168468, -0.943362, -0.285809,
		0.647004, 0.324578, -0.689953,
		39.530193, 33.882397, 29.249794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659687, 33.291100, 29.846792>,  <39.077293, 33.655193, 29.732761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659687, 33.291100, 29.846792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850414, 33.540264, 29.598721>,  <39.964851, 33.689762, 29.449877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850414, 33.540264, 29.598721>,  <39.659687, 33.291100, 29.846792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850414, 33.540264, 29.598721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740650, 0.095245, 0.665106,
		0.473374, -0.776469, -0.415949,
		0.476817, 0.622916, -0.620179,
		39.993458, 33.727139, 29.412666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339905, 33.118969, 29.649210>,  <39.659687, 33.291100, 29.846792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339905, 33.118969, 29.649210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322472, 33.518581, 29.651627>,  <40.312012, 33.758350, 29.653076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322472, 33.518581, 29.651627>,  <40.339905, 33.118969, 29.649210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322472, 33.518581, 29.651627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766678, 0.029566, 0.641351,
		0.640551, 0.032583, -0.767224,
		-0.043581, 0.999032, 0.006042,
		40.309399, 33.818291, 29.653439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005516, 33.131165, 29.754303>,  <40.339905, 33.118969, 29.649210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005516, 33.131165, 29.754303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869495, 33.496525, 29.843798>,  <40.787884, 33.715740, 29.897495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869495, 33.496525, 29.843798>,  <41.005516, 33.131165, 29.754303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869495, 33.496525, 29.843798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737656, 0.111506, 0.665905,
		0.583292, 0.391483, -0.711696,
		-0.340049, 0.913404, 0.223739,
		40.767479, 33.770546, 29.910919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565506, 33.674568, 29.655199>,  <41.005516, 33.131165, 29.754303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565506, 33.674568, 29.655199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310825, 33.856251, 29.904455>,  <41.158016, 33.965260, 30.054008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310825, 33.856251, 29.904455>,  <41.565506, 33.674568, 29.655199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310825, 33.856251, 29.904455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752313, 0.188560, 0.631245,
		0.169219, 0.870711, -0.461765,
		-0.636703, 0.454210, 0.623139,
		41.119816, 33.992516, 30.091396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845161, 34.336647, 29.856817>,  <41.565506, 33.674568, 29.655199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845161, 34.336647, 29.856817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569061, 34.315056, 30.145439>,  <41.403400, 34.302101, 30.318613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569061, 34.315056, 30.145439>,  <41.845161, 34.336647, 29.856817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569061, 34.315056, 30.145439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624196, 0.459952, 0.631525,
		-0.365970, 0.886302, -0.283788,
		-0.690250, -0.053980, 0.721554,
		41.361988, 34.298862, 30.361906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982861, 34.921135, 30.253532>,  <41.845161, 34.336647, 29.856817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982861, 34.921135, 30.253532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786560, 34.668633, 30.493757>,  <41.668777, 34.517132, 30.637892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786560, 34.668633, 30.493757>,  <41.982861, 34.921135, 30.253532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786560, 34.668633, 30.493757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606540, 0.247323, 0.755606,
		-0.625515, 0.735082, 0.261508,
		-0.490755, -0.631258, 0.600561,
		41.639332, 34.479256, 30.673925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004086, 35.298836, 30.821085>,  <41.982861, 34.921135, 30.253532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004086, 35.298836, 30.821085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917477, 34.925922, 30.936996>,  <41.865513, 34.702175, 31.006544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917477, 34.925922, 30.936996>,  <42.004086, 35.298836, 30.821085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917477, 34.925922, 30.936996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483504, 0.155463, 0.861426,
		-0.848141, 0.326626, 0.417101,
		-0.216520, -0.932280, 0.289779,
		41.852520, 34.646236, 31.023930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487106, 35.259159, 31.429777>,  <42.004086, 35.298836, 30.821085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487106, 35.259159, 31.429777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758163, 34.967545, 31.391211>,  <41.920799, 34.792576, 31.368071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758163, 34.967545, 31.391211>,  <41.487106, 35.259159, 31.429777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758163, 34.967545, 31.391211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368702, 0.223378, 0.902309,
		-0.636282, -0.646995, 0.420170,
		0.677646, -0.729040, -0.096417,
		41.961456, 34.748833, 31.362286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438126, 34.866901, 32.119259>,  <41.487106, 35.259159, 31.429777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438126, 34.866901, 32.119259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544582, 34.684616, 32.459023>,  <41.608456, 34.575245, 32.662880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544582, 34.684616, 32.459023>,  <41.438126, 34.866901, 32.119259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544582, 34.684616, 32.459023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409769, 0.851092, 0.328225,
		-0.872500, 0.260704, 0.413252,
		0.266146, -0.455714, 0.849406,
		41.624428, 34.547901, 32.713844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065479, 35.260639, 32.630554>,  <41.438126, 34.866901, 32.119259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065479, 35.260639, 32.630554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398170, 35.090569, 32.773361>,  <41.597786, 34.988525, 32.859047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398170, 35.090569, 32.773361>,  <41.065479, 35.260639, 32.630554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398170, 35.090569, 32.773361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266340, 0.869791, 0.415364,
		-0.487134, -0.250380, 0.836666,
		0.831724, -0.425176, 0.357019,
		41.647686, 34.963017, 32.880466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104454, 35.642338, 33.200237>,  <41.065479, 35.260639, 32.630554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104454, 35.642338, 33.200237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453621, 35.463814, 33.121418>,  <41.663120, 35.356701, 33.074127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453621, 35.463814, 33.121418>,  <41.104454, 35.642338, 33.200237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453621, 35.463814, 33.121418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486615, 0.767486, 0.417337,
		-0.035028, -0.460187, 0.887131,
		0.872913, -0.446310, -0.197051,
		41.715496, 35.329922, 33.062302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902103, 36.271271, 32.841999>,  <41.104454, 35.642338, 33.200237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902103, 36.271271, 32.841999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012722, 36.501030, 33.150181>,  <41.079094, 36.638885, 33.335091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012722, 36.501030, 33.150181>,  <40.902103, 36.271271, 32.841999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012722, 36.501030, 33.150181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431877, 0.641913, -0.633585,
		-0.858491, 0.507953, -0.070551,
		0.276544, 0.574396, 0.770450,
		41.095684, 36.673347, 33.381317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626442, 36.984245, 32.850925>,  <40.902103, 36.271271, 32.841999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626442, 36.984245, 32.850925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989616, 36.923042, 33.006996>,  <41.207520, 36.886322, 33.100639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989616, 36.923042, 33.006996>,  <40.626442, 36.984245, 32.850925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989616, 36.923042, 33.006996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377511, 0.702921, -0.602816,
		-0.182031, 0.694616, 0.695969,
		0.907937, -0.153005, 0.390179,
		41.261997, 36.877140, 33.124050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486855, 37.583805, 32.554317>,  <40.626442, 36.984245, 32.850925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486855, 37.583805, 32.554317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610088, 37.859009, 32.291492>,  <40.684029, 38.024132, 32.133797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610088, 37.859009, 32.291492>,  <40.486855, 37.583805, 32.554317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610088, 37.859009, 32.291492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689242, 0.637479, 0.344333,
		0.655766, 0.346789, 0.670603,
		0.308085, 0.688010, -0.657059,
		40.702515, 38.065411, 32.094376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831783, 38.161133, 32.926487>,  <40.486855, 37.583805, 32.554317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831783, 38.161133, 32.926487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632351, 38.280666, 32.601006>,  <40.512691, 38.352386, 32.405716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632351, 38.280666, 32.601006>,  <40.831783, 38.161133, 32.926487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632351, 38.280666, 32.601006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739011, 0.344101, 0.579186,
		0.453076, 0.890109, 0.049278,
		-0.498582, 0.298832, -0.813704,
		40.482777, 38.370316, 32.356895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701992, 38.855934, 33.004974>,  <40.831783, 38.161133, 32.926487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701992, 38.855934, 33.004974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416206, 38.658882, 32.806236>,  <40.244736, 38.540649, 32.686993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416206, 38.658882, 32.806236>,  <40.701992, 38.855934, 33.004974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416206, 38.658882, 32.806236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617871, 0.111052, 0.778397,
		-0.328286, 0.863124, -0.383725,
		-0.714467, -0.492630, -0.496843,
		40.201866, 38.511093, 32.657185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974243, 39.200367, 32.987087>,  <40.701992, 38.855934, 33.004974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974243, 39.200367, 32.987087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954533, 38.801319, 32.967770>,  <39.942707, 38.561890, 32.956181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954533, 38.801319, 32.967770>,  <39.974243, 39.200367, 32.987087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954533, 38.801319, 32.967770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775427, 0.007739, 0.631389,
		-0.629511, 0.068562, -0.773961,
		-0.049279, -0.997617, -0.048292,
		39.939751, 38.502033, 32.953281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242233, 39.025043, 32.784286>,  <39.974243, 39.200367, 32.987087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242233, 39.025043, 32.784286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417187, 38.720638, 32.975933>,  <39.522160, 38.537994, 33.090923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417187, 38.720638, 32.975933>,  <39.242233, 39.025043, 32.784286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417187, 38.720638, 32.975933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833844, -0.143701, 0.532968,
		-0.336744, -0.632625, -0.697416,
		0.437388, -0.761010, 0.479120,
		39.548405, 38.492336, 33.119671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773880, 38.581642, 32.571514>,  <39.242233, 39.025043, 32.784286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773880, 38.581642, 32.571514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915760, 38.509869, 32.938557>,  <39.000889, 38.466805, 33.158783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915760, 38.509869, 32.938557>,  <38.773880, 38.581642, 32.571514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915760, 38.509869, 32.938557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934680, -0.043126, 0.352866,
		-0.023740, -0.982826, -0.182999,
		0.354698, -0.179423, 0.917604,
		39.022171, 38.456039, 33.213837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023758, 37.887707, 32.398087>,  <38.773880, 38.581642, 32.571514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023758, 37.887707, 32.398087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333881, 37.868744, 32.650005>,  <39.519955, 37.857365, 32.801155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333881, 37.868744, 32.650005>,  <39.023758, 37.887707, 32.398087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333881, 37.868744, 32.650005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631175, -0.093770, 0.769951,
		0.022557, -0.994465, -0.102621,
		0.775312, -0.047404, 0.629797,
		39.566475, 37.854523, 32.838943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944111, 37.371006, 32.907623>,  <39.023758, 37.887707, 32.398087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944111, 37.371006, 32.907623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154942, 37.686741, 33.033562>,  <39.281441, 37.876183, 33.109123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154942, 37.686741, 33.033562>,  <38.944111, 37.371006, 32.907623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154942, 37.686741, 33.033562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627189, 0.111326, 0.770870,
		0.573429, -0.603777, 0.553744,
		0.527080, 0.789341, 0.314845,
		39.313065, 37.923542, 33.128014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178478, 37.324593, 33.704372>,  <38.944111, 37.371006, 32.907623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178478, 37.324593, 33.704372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127777, 37.702690, 33.584076>,  <39.097355, 37.929550, 33.511898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127777, 37.702690, 33.584076>,  <39.178478, 37.324593, 33.704372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127777, 37.702690, 33.584076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753653, 0.105356, 0.648774,
		0.644935, 0.308893, 0.699031,
		-0.126754, 0.945244, -0.300746,
		39.089752, 37.986263, 33.493851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152672, 37.820107, 34.317474>,  <39.178478, 37.324593, 33.704372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152672, 37.820107, 34.317474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955051, 37.955872, 33.997295>,  <38.836479, 38.037331, 33.805187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955051, 37.955872, 33.997295>,  <39.152672, 37.820107, 34.317474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955051, 37.955872, 33.997295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776805, 0.241177, 0.581728,
		0.390493, 0.909194, 0.144501,
		-0.494053, 0.339410, -0.800445,
		38.806835, 38.057693, 33.757160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824013, 38.308949, 34.664059>,  <39.152672, 37.820107, 34.317474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824013, 38.308949, 34.664059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611332, 38.262581, 34.328472>,  <38.483723, 38.234760, 34.127121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611332, 38.262581, 34.328472>,  <38.824013, 38.308949, 34.664059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611332, 38.262581, 34.328472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844423, 0.148773, 0.514604,
		0.065165, 0.982054, -0.176985,
		-0.531699, -0.115916, -0.838963,
		38.451820, 38.227806, 34.076782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276787, 38.764824, 34.641708>,  <38.824013, 38.308949, 34.664059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276787, 38.764824, 34.641708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182232, 38.437325, 34.432415>,  <38.125500, 38.240826, 34.306839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182232, 38.437325, 34.432415>,  <38.276787, 38.764824, 34.641708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182232, 38.437325, 34.432415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893140, -0.028970, 0.448845,
		-0.382650, 0.573419, -0.724410,
		-0.236390, -0.818750, -0.523229,
		38.111317, 38.191700, 34.275448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652378, 38.601322, 34.980732>,  <38.276787, 38.764824, 34.641708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652378, 38.601322, 34.980732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281422, 38.594234, 35.130203>,  <37.058849, 38.589981, 35.219887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281422, 38.594234, 35.130203>,  <37.652378, 38.601322, 34.980732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281422, 38.594234, 35.130203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167332, 0.873733, 0.456718,
		-0.334585, 0.486083, -0.807326,
		-0.927390, -0.017720, 0.373675,
		37.003204, 38.588917, 35.242306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323063, 39.263542, 34.825424>,  <37.652378, 38.601322, 34.980732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323063, 39.263542, 34.825424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130318, 39.115360, 35.143059>,  <37.014671, 39.026451, 35.333641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130318, 39.115360, 35.143059>,  <37.323063, 39.263542, 34.825424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130318, 39.115360, 35.143059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063547, 0.889077, 0.453325,
		-0.873941, 0.268901, -0.404869,
		-0.481860, -0.370451, 0.794089,
		36.985760, 39.004227, 35.381287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901588, 39.805176, 34.988670>,  <37.323063, 39.263542, 34.825424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901588, 39.805176, 34.988670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969368, 39.586445, 35.316639>,  <37.010036, 39.455208, 35.513420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969368, 39.586445, 35.316639>,  <36.901588, 39.805176, 34.988670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969368, 39.586445, 35.316639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087949, 0.820242, 0.565215,
		-0.981606, -0.167888, 0.090900,
		0.169452, -0.546824, 0.819920,
		37.020203, 39.422398, 35.562614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425606, 39.959660, 35.473724>,  <36.901588, 39.805176, 34.988670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425606, 39.959660, 35.473724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717457, 39.815136, 35.705963>,  <36.892567, 39.728420, 35.845306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717457, 39.815136, 35.705963>,  <36.425606, 39.959660, 35.473724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717457, 39.815136, 35.705963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176893, 0.720410, 0.670610,
		-0.660568, -0.592001, 0.461719,
		0.729629, -0.361309, 0.580601,
		36.936344, 39.706745, 35.880142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123486, 39.724754, 36.152699>,  <36.425606, 39.959660, 35.473724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123486, 39.724754, 36.152699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515491, 39.798470, 36.182682>,  <36.750694, 39.842697, 36.200672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515491, 39.798470, 36.182682>,  <36.123486, 39.724754, 36.152699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515491, 39.798470, 36.182682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169623, 0.577132, 0.798840,
		0.103954, -0.795587, 0.596855,
		0.980011, 0.184283, 0.074955,
		36.809494, 39.853756, 36.205170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161388, 39.978302, 36.857861>,  <36.123486, 39.724754, 36.152699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161388, 39.978302, 36.857861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534885, 40.065540, 36.744331>,  <36.758984, 40.117886, 36.676212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534885, 40.065540, 36.744331>,  <36.161388, 39.978302, 36.857861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534885, 40.065540, 36.744331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090934, 0.622382, 0.777413,
		0.346200, -0.751713, 0.561313,
		0.933743, 0.218098, -0.283825,
		36.815010, 40.130970, 36.659184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472549, 40.387444, 37.418507>,  <36.161388, 39.978302, 36.857861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472549, 40.387444, 37.418507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741661, 40.465183, 37.132961>,  <36.903126, 40.511826, 36.961636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741661, 40.465183, 37.132961>,  <36.472549, 40.387444, 37.418507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741661, 40.465183, 37.132961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323686, 0.790315, 0.520220,
		0.665280, -0.581060, 0.468798,
		0.672777, 0.194348, -0.713862,
		36.943493, 40.523487, 36.918804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225296, 40.432400, 37.730526>,  <36.472549, 40.387444, 37.418507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225296, 40.432400, 37.730526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227272, 40.641743, 37.389687>,  <37.228458, 40.767349, 37.185184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227272, 40.641743, 37.389687>,  <37.225296, 40.432400, 37.730526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227272, 40.641743, 37.389687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464706, 0.753307, 0.465377,
		0.885451, -0.398275, -0.239485,
		0.004942, 0.523359, -0.852098,
		37.228756, 40.798752, 37.134056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883537, 40.715187, 37.736244>,  <37.225296, 40.432400, 37.730526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883537, 40.715187, 37.736244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672501, 40.930904, 37.473701>,  <37.545879, 41.060333, 37.316177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672501, 40.930904, 37.473701>,  <37.883537, 40.715187, 37.736244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672501, 40.930904, 37.473701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380962, 0.840797, 0.384614,
		0.759284, -0.047126, -0.649051,
		-0.527595, 0.539295, -0.656357,
		37.514221, 41.092693, 37.276794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308537, 41.262665, 37.336651>,  <37.883537, 40.715187, 37.736244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308537, 41.262665, 37.336651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926357, 41.368732, 37.388508>,  <37.697052, 41.432373, 37.419624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926357, 41.368732, 37.388508>,  <38.308537, 41.262665, 37.336651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926357, 41.368732, 37.388508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293444, 0.805949, 0.514137,
		0.031847, 0.529274, -0.847853,
		-0.955446, 0.265171, 0.129645,
		37.639725, 41.448284, 37.427402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292408, 42.000938, 37.161942>,  <38.308537, 41.262665, 37.336651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292408, 42.000938, 37.161942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017303, 41.887199, 37.429111>,  <37.852242, 41.818954, 37.589413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017303, 41.887199, 37.429111>,  <38.292408, 42.000938, 37.161942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017303, 41.887199, 37.429111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156959, 0.840082, 0.519255,
		-0.708763, 0.461962, -0.533147,
		-0.687763, -0.284347, 0.667928,
		37.810974, 41.801895, 37.629490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896358, 42.070263, 36.707298>,  <38.292408, 42.000938, 37.161942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896358, 42.070263, 36.707298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153851, 41.809372, 36.867405>,  <39.308346, 41.652836, 36.963467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153851, 41.809372, 36.867405>,  <38.896358, 42.070263, 36.707298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153851, 41.809372, 36.867405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600670, 0.754727, 0.263786,
		-0.474137, 0.070620, 0.877614,
		0.643730, -0.652228, 0.400263,
		39.346970, 41.613705, 36.987484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920876, 42.304134, 37.393604>,  <38.896358, 42.070263, 36.707298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920876, 42.304134, 37.393604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254204, 42.149902, 37.235157>,  <39.454201, 42.057362, 37.140091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254204, 42.149902, 37.235157>,  <38.920876, 42.304134, 37.393604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254204, 42.149902, 37.235157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516403, 0.798678, 0.308937,
		0.197247, -0.461998, 0.864669,
		0.833320, -0.385580, -0.396114,
		39.504200, 42.034229, 37.116322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496243, 42.460896, 37.717247>,  <38.920876, 42.304134, 37.393604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496243, 42.460896, 37.717247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667618, 42.369026, 37.367691>,  <39.770443, 42.313904, 37.157955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667618, 42.369026, 37.367691>,  <39.496243, 42.460896, 37.717247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667618, 42.369026, 37.367691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788040, 0.568166, 0.237022,
		0.442079, -0.790213, 0.424417,
		0.428437, -0.229676, -0.873894,
		39.796150, 42.300125, 37.105522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203224, 42.030598, 37.835579>,  <39.496243, 42.460896, 37.717247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203224, 42.030598, 37.835579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115551, 42.291965, 37.545753>,  <40.062946, 42.448788, 37.371857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115551, 42.291965, 37.545753>,  <40.203224, 42.030598, 37.835579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115551, 42.291965, 37.545753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783920, 0.560070, 0.267939,
		0.580885, -0.509274, -0.634990,
		-0.219184, 0.653423, -0.724566,
		40.049797, 42.487991, 37.328384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887012, 42.071571, 37.444359>,  <40.203224, 42.030598, 37.835579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887012, 42.071571, 37.444359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667370, 42.405537, 37.459309>,  <40.535583, 42.605915, 37.468277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667370, 42.405537, 37.459309>,  <40.887012, 42.071571, 37.444359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667370, 42.405537, 37.459309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742387, 0.466735, 0.480645,
		0.383855, 0.291671, -0.876118,
		-0.549105, 0.834917, 0.037374,
		40.502640, 42.656013, 37.470520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241951, 42.594269, 37.140495>,  <40.887012, 42.071571, 37.444359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241951, 42.594269, 37.140495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011673, 42.739708, 37.433445>,  <40.873505, 42.826973, 37.609215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011673, 42.739708, 37.433445>,  <41.241951, 42.594269, 37.140495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011673, 42.739708, 37.433445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808889, 0.384106, 0.445154,
		-0.119452, 0.848682, -0.515239,
		-0.575700, 0.363597, 0.732371,
		40.838963, 42.848785, 37.653156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689201, 43.236511, 37.318428>,  <41.241951, 42.594269, 37.140495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689201, 43.236511, 37.318428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436615, 43.110390, 37.601791>,  <41.285065, 43.034718, 37.771809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436615, 43.110390, 37.601791>,  <41.689201, 43.236511, 37.318428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436615, 43.110390, 37.601791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586146, 0.403994, 0.702297,
		-0.507627, 0.858704, -0.070295,
		-0.631465, -0.315302, 0.708405,
		41.247177, 43.015800, 37.814312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753708, 43.737995, 37.941540>,  <41.689201, 43.236511, 37.318428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753708, 43.737995, 37.941540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620178, 43.392033, 38.091469>,  <41.540062, 43.184456, 38.181427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620178, 43.392033, 38.091469>,  <41.753708, 43.737995, 37.941540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620178, 43.392033, 38.091469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708831, 0.031796, 0.704661,
		-0.621386, 0.500920, 0.602461,
		-0.333823, -0.864909, 0.374825,
		41.520031, 43.132561, 38.203915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844620, 43.689087, 38.676891>,  <41.753708, 43.737995, 37.941540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844620, 43.689087, 38.676891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869110, 43.310246, 38.550877>,  <41.883804, 43.082943, 38.475266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869110, 43.310246, 38.550877>,  <41.844620, 43.689087, 38.676891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869110, 43.310246, 38.550877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779263, -0.151870, 0.608017,
		-0.623699, -0.282728, 0.728741,
		0.061229, -0.947101, -0.315041,
		41.887478, 43.026115, 38.456364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911407, 43.304905, 39.225224>,  <41.844620, 43.689087, 38.676891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911407, 43.304905, 39.225224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053692, 43.072186, 38.932655>,  <42.139061, 42.932552, 38.757114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053692, 43.072186, 38.932655>,  <41.911407, 43.304905, 39.225224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053692, 43.072186, 38.932655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882911, -0.047464, 0.467135,
		-0.306494, -0.811947, 0.496793,
		0.355709, -0.581798, -0.731425,
		42.160404, 42.897648, 38.713226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250744, 42.621716, 39.592075>,  <41.911407, 43.304905, 39.225224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250744, 42.621716, 39.592075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415070, 42.724648, 39.242214>,  <42.513664, 42.786407, 39.032299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415070, 42.724648, 39.242214>,  <42.250744, 42.621716, 39.592075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415070, 42.724648, 39.242214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899081, -0.273534, 0.341809,
		-0.151289, -0.926801, -0.343733,
		0.410811, 0.257332, -0.874651,
		42.538315, 42.801846, 38.979820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687294, 42.043732, 39.266621>,  <42.250744, 42.621716, 39.592075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687294, 42.043732, 39.266621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829224, 42.394955, 39.138180>,  <42.914383, 42.605690, 39.061115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829224, 42.394955, 39.138180>,  <42.687294, 42.043732, 39.266621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829224, 42.394955, 39.138180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926660, -0.284710, 0.245443,
		0.124091, -0.384646, -0.914685,
		0.354828, 0.878059, -0.321106,
		42.935673, 42.658371, 39.041847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190971, 42.035374, 38.597378>,  <42.687294, 42.043732, 39.266621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190971, 42.035374, 38.597378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289852, 42.302483, 38.878227>,  <43.349182, 42.462746, 39.046738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289852, 42.302483, 38.878227>,  <43.190971, 42.035374, 38.597378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289852, 42.302483, 38.878227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945428, -0.324960, -0.023802,
		0.212267, 0.669689, -0.711659,
		0.247200, 0.667771, 0.702121,
		43.364014, 42.502815, 39.088863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895081, 41.990429, 38.618053>,  <43.190971, 42.035374, 38.597378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895081, 41.990429, 38.618053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818134, 42.209511, 38.943756>,  <43.771969, 42.340958, 39.139179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818134, 42.209511, 38.943756>,  <43.895081, 41.990429, 38.618053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818134, 42.209511, 38.943756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858122, -0.308640, 0.410327,
		0.476050, 0.777666, -0.410623,
		-0.192363, 0.547701, 0.814261,
		43.760426, 42.373821, 39.188034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421940, 42.164131, 38.160744>,  <43.895081, 41.990429, 38.618053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421940, 42.164131, 38.160744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782558, 41.991776, 38.176460>,  <44.998932, 41.888363, 38.185890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782558, 41.991776, 38.176460>,  <44.421940, 42.164131, 38.160744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782558, 41.991776, 38.176460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381784, -0.749481, 0.540850,
		-0.203597, -0.502604, -0.840201,
		0.901548, -0.430891, 0.039295,
		45.053024, 41.862507, 38.188248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307030, 41.547222, 37.956444>,  <44.421940, 42.164131, 38.160744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307030, 41.547222, 37.956444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637447, 41.536491, 38.181633>,  <44.835697, 41.530052, 38.316746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637447, 41.536491, 38.181633>,  <44.307030, 41.547222, 37.956444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637447, 41.536491, 38.181633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336485, -0.824789, 0.454424,
		0.452141, -0.564804, -0.690337,
		0.826043, -0.026824, 0.562969,
		44.885262, 41.528442, 38.350525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872963, 41.823776, 37.381351>,  <44.307030, 41.547222, 37.956444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872963, 41.823776, 37.381351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174862, 42.051582, 37.251118>,  <44.356003, 42.188267, 37.172977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174862, 42.051582, 37.251118>,  <43.872963, 41.823776, 37.381351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174862, 42.051582, 37.251118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625551, -0.475315, 0.618677,
		0.197594, -0.670613, -0.715007,
		0.754747, 0.569520, -0.325583,
		44.401287, 42.222439, 37.153442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939533, 41.192020, 37.052559>,  <43.872963, 41.823776, 37.381351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939533, 41.192020, 37.052559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042812, 41.072159, 37.419937>,  <44.104782, 41.000244, 37.640366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042812, 41.072159, 37.419937>,  <43.939533, 41.192020, 37.052559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042812, 41.072159, 37.419937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391975, -0.901408, -0.183899,
		0.883000, -0.312525, -0.350199,
		0.258200, -0.299652, 0.918445,
		44.120274, 40.982262, 37.695469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150555, 40.492496, 37.045841>,  <43.939533, 41.192020, 37.052559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150555, 40.492496, 37.045841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035904, 40.546974, 37.425167>,  <43.967113, 40.579662, 37.652763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035904, 40.546974, 37.425167>,  <44.150555, 40.492496, 37.045841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035904, 40.546974, 37.425167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252954, -0.965477, 0.062202,
		0.924044, -0.222050, 0.311184,
		-0.286629, 0.136193, 0.948312,
		43.949917, 40.587833, 37.709660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476871, 39.956108, 37.496010>,  <44.150555, 40.492496, 37.045841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476871, 39.956108, 37.496010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149403, 40.066311, 37.697552>,  <43.952923, 40.132435, 37.818478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149403, 40.066311, 37.697552>,  <44.476871, 39.956108, 37.496010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149403, 40.066311, 37.697552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225027, -0.961138, 0.159928,
		0.528339, 0.017547, 0.848852,
		-0.818671, 0.275511, 0.503858,
		43.903801, 40.148964, 37.848709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401268, 39.405724, 37.962147>,  <44.476871, 39.956108, 37.496010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401268, 39.405724, 37.962147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050564, 39.587067, 37.897953>,  <43.840141, 39.695873, 37.859436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050564, 39.587067, 37.897953>,  <44.401268, 39.405724, 37.962147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050564, 39.587067, 37.897953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447716, -0.891284, -0.071863,
		-0.175614, 0.008844, 0.984419,
		-0.876761, 0.453360, -0.160481,
		43.787537, 39.723076, 37.849808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974667, 39.360764, 37.483944>,  <44.401268, 39.405724, 37.962147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974667, 39.360764, 37.483944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322182, 39.289917, 37.298973>,  <45.530689, 39.247410, 37.187992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322182, 39.289917, 37.298973>,  <44.974667, 39.360764, 37.483944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322182, 39.289917, 37.298973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035938, -0.953936, 0.297849,
		-0.493880, -0.242149, -0.835133,
		0.868787, -0.177115, -0.462428,
		45.582817, 39.236782, 37.160244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105068, 38.811989, 36.895588>,  <44.974667, 39.360764, 37.483944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105068, 38.811989, 36.895588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386932, 38.877766, 37.171677>,  <45.556049, 38.917233, 37.337330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386932, 38.877766, 37.171677>,  <45.105068, 38.811989, 36.895588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386932, 38.877766, 37.171677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337674, -0.777830, 0.530053,
		0.624042, -0.606579, -0.492578,
		0.704662, 0.164444, 0.690225,
		45.598331, 38.927097, 37.378742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360424, 38.101002, 36.923634>,  <45.105068, 38.811989, 36.895588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360424, 38.101002, 36.923634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386852, 38.313248, 37.261646>,  <45.402710, 38.440598, 37.464455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386852, 38.313248, 37.261646>,  <45.360424, 38.101002, 36.923634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386852, 38.313248, 37.261646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378035, -0.770439, 0.513335,
		0.923431, -0.353368, 0.149689,
		0.066070, 0.530617, 0.845033,
		45.406673, 38.472431, 37.515156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725124, 37.658108, 37.396397>,  <45.360424, 38.101002, 36.923634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725124, 37.658108, 37.396397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479141, 37.916290, 37.577599>,  <45.331551, 38.071201, 37.686321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479141, 37.916290, 37.577599>,  <45.725124, 37.658108, 37.396397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479141, 37.916290, 37.577599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462268, -0.760488, 0.456033,
		0.638857, 0.071029, 0.766040,
		-0.614956, 0.645455, 0.453008,
		45.294655, 38.109928, 37.713501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726753, 37.662476, 38.223759>,  <45.725124, 37.658108, 37.396397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726753, 37.662476, 38.223759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376854, 37.731682, 38.042702>,  <45.166916, 37.773205, 37.934067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376854, 37.731682, 38.042702>,  <45.726753, 37.662476, 38.223759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376854, 37.731682, 38.042702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355622, -0.863723, 0.357093,
		-0.329176, 0.473336, 0.817066,
		-0.874744, 0.173020, -0.452645,
		45.114429, 37.783588, 37.906910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283676, 37.528538, 38.813946>,  <45.726753, 37.662476, 38.223759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283676, 37.528538, 38.813946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256618, 37.210587, 38.572754>,  <45.240383, 37.019814, 38.428040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256618, 37.210587, 38.572754>,  <45.283676, 37.528538, 38.813946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256618, 37.210587, 38.572754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934256, 0.161631, -0.317870,
		0.350129, -0.584841, 0.731691,
		-0.067639, -0.794882, -0.602982,
		45.236328, 36.972122, 38.391861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832401, 36.997749, 38.952457>,  <45.283676, 37.528538, 38.813946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832401, 36.997749, 38.952457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686039, 37.012325, 38.580482>,  <45.598221, 37.021072, 38.357296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686039, 37.012325, 38.580482>,  <45.832401, 36.997749, 38.952457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686039, 37.012325, 38.580482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930650, 0.015889, -0.365567,
		0.001453, -0.999210, -0.039732,
		-0.365909, 0.036445, -0.929937,
		45.576267, 37.023258, 38.301502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971977, 36.472530, 38.524380>,  <45.832401, 36.997749, 38.952457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971977, 36.472530, 38.524380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954964, 36.823185, 38.332672>,  <45.944756, 37.033577, 38.217648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954964, 36.823185, 38.332672>,  <45.971977, 36.472530, 38.524380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954964, 36.823185, 38.332672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879631, -0.194606, -0.434025,
		-0.473751, -0.440045, -0.762837,
		-0.042538, 0.876635, -0.479272,
		45.942204, 37.086174, 38.188889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984177, 36.361526, 37.773815>,  <45.971977, 36.472530, 38.524380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984177, 36.361526, 37.773815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149422, 36.714245, 37.864830>,  <46.248569, 36.925877, 37.919437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149422, 36.714245, 37.864830>,  <45.984177, 36.361526, 37.773815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149422, 36.714245, 37.864830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823401, -0.254934, -0.506971,
		-0.389040, 0.396786, -0.831390,
		0.413109, 0.881799, 0.227534,
		46.273354, 36.978783, 37.933090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268902, 36.656261, 37.176991>,  <45.984177, 36.361526, 37.773815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268902, 36.656261, 37.176991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444256, 36.802605, 37.505371>,  <46.549469, 36.890411, 37.702400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444256, 36.802605, 37.505371>,  <46.268902, 36.656261, 37.176991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444256, 36.802605, 37.505371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857586, -0.443647, -0.260237,
		0.269005, 0.818124, -0.508242,
		0.438386, 0.365857, 0.820955,
		46.575771, 36.912361, 37.751656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933659, 36.644028, 36.678967>,  <46.268902, 36.656261, 37.176991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933659, 36.644028, 36.678967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717533, 36.372883, 36.479546>,  <46.587856, 36.210194, 36.359894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717533, 36.372883, 36.479546>,  <46.933659, 36.644028, 36.678967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717533, 36.372883, 36.479546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314208, 0.712162, -0.627773,
		0.780598, -0.182545, -0.597783,
		-0.540315, -0.677866, -0.498555,
		46.555439, 36.169525, 36.329979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096962, 36.515190, 35.891293>,  <46.933659, 36.644028, 36.678967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096962, 36.515190, 35.891293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731155, 36.501228, 36.052509>,  <46.511673, 36.492851, 36.149239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731155, 36.501228, 36.052509>,  <47.096962, 36.515190, 35.891293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731155, 36.501228, 36.052509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274416, 0.785550, -0.554624,
		-0.297247, -0.617813, -0.727977,
		-0.914516, -0.034909, 0.403040,
		46.456802, 36.490757, 36.173420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539246, 36.365257, 35.485016>,  <47.096962, 36.515190, 35.891293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539246, 36.365257, 35.485016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384415, 36.619751, 35.751961>,  <46.291515, 36.772449, 35.912128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384415, 36.619751, 35.751961>,  <46.539246, 36.365257, 35.485016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384415, 36.619751, 35.751961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199428, 0.648880, -0.734291,
		-0.900221, -0.417320, -0.124285,
		-0.387080, 0.636238, 0.667361,
		46.268291, 36.810623, 35.952168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411434, 35.771606, 35.234234>,  <46.539246, 36.365257, 35.485016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411434, 35.771606, 35.234234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201859, 35.754753, 34.893948>,  <46.076115, 35.744640, 34.689777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201859, 35.754753, 34.893948>,  <46.411434, 35.771606, 35.234234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201859, 35.754753, 34.893948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378547, 0.906234, 0.188260,
		0.763017, 0.420671, -0.490755,
		-0.523935, -0.042129, -0.850716,
		46.044678, 35.742115, 34.638733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934555, 35.237900, 34.913654>,  <46.411434, 35.771606, 35.234234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934555, 35.237900, 34.913654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220947, 35.113194, 34.663799>,  <47.392784, 35.038368, 34.513885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220947, 35.113194, 34.663799>,  <46.934555, 35.237900, 34.913654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.220947, 35.113194, 34.663799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677345, 0.526879, 0.513423,
		0.169042, -0.790697, 0.588407,
		0.715981, -0.311765, -0.624639,
		47.435741, 35.019665, 34.476406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.480572, 34.891571, 35.274323>,  <46.934555, 35.237900, 34.913654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.480572, 34.891571, 35.274323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.521896, 35.136879, 34.961086>,  <47.546692, 35.284065, 34.773144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.521896, 35.136879, 34.961086>,  <47.480572, 34.891571, 35.274323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.521896, 35.136879, 34.961086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710194, 0.505731, 0.489755,
		0.696384, -0.606743, -0.383292,
		0.103313, 0.613269, -0.783088,
		47.552891, 35.320858, 34.726158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.001274, 28.546431, 28.236053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.670731, 28.749214, 28.334139>,  <33.472404, 28.870884, 28.392990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.670731, 28.749214, 28.334139>,  <34.001274, 28.546431, 28.236053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670731, 28.749214, 28.334139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540812, 0.592972, 0.596579,
		0.157036, 0.625601, -0.764175,
		-0.826355, 0.506959, 0.245215,
		33.422825, 28.901302, 28.407703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240471, 29.277515, 28.298861>,  <34.001274, 28.546431, 28.236053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240471, 29.277515, 28.298861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.881931, 29.263252, 28.475624>,  <33.666809, 29.254694, 28.581682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.881931, 29.263252, 28.475624>,  <34.240471, 29.277515, 28.298861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881931, 29.263252, 28.475624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280522, 0.726239, 0.627602,
		-0.343313, 0.686517, -0.640961,
		-0.896350, -0.035660, 0.441910,
		33.613026, 29.252554, 28.608196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988335, 29.954615, 28.429340>,  <34.240471, 29.277515, 28.298861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988335, 29.954615, 28.429340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797829, 29.731558, 28.701283>,  <33.683525, 29.597723, 28.864447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797829, 29.731558, 28.701283>,  <33.988335, 29.954615, 28.429340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797829, 29.731558, 28.701283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178412, 0.695808, 0.695716,
		-0.861009, 0.452642, -0.231901,
		-0.476269, -0.557644, 0.679854,
		33.654949, 29.564264, 28.905239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450768, 30.376240, 28.869150>,  <33.988335, 29.954615, 28.429340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450768, 30.376240, 28.869150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.549004, 30.056255, 29.088146>,  <33.607944, 29.864264, 29.219543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.549004, 30.056255, 29.088146>,  <33.450768, 30.376240, 28.869150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549004, 30.056255, 29.088146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239573, 0.597356, 0.765356,
		-0.939304, -0.056796, 0.338351,
		0.245586, -0.799962, 0.547492,
		33.622681, 29.816267, 29.252394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247547, 30.577660, 29.477161>,  <33.450768, 30.376240, 28.869150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247547, 30.577660, 29.477161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.522972, 30.293634, 29.536072>,  <33.688229, 30.123220, 29.571419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.522972, 30.293634, 29.536072>,  <33.247547, 30.577660, 29.477161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522972, 30.293634, 29.536072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413841, 0.551533, 0.724256,
		-0.595495, -0.437748, 0.673619,
		0.688564, -0.710062, 0.147277,
		33.729542, 30.080616, 29.580256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169685, 30.465197, 30.166555>,  <33.247547, 30.577660, 29.477161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169685, 30.465197, 30.166555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534409, 30.316597, 30.096600>,  <33.753242, 30.227438, 30.054626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534409, 30.316597, 30.096600>,  <33.169685, 30.465197, 30.166555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534409, 30.316597, 30.096600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366186, 0.543023, 0.755668,
		-0.185760, -0.753070, 0.631172,
		0.911812, -0.371499, -0.174891,
		33.807953, 30.205147, 30.044132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462658, 30.485529, 30.806234>,  <33.169685, 30.465197, 30.166555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462658, 30.485529, 30.806234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797661, 30.394529, 30.607508>,  <33.998661, 30.339930, 30.488272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797661, 30.394529, 30.607508>,  <33.462658, 30.485529, 30.806234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797661, 30.394529, 30.607508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546426, 0.348241, 0.761674,
		-0.000267, -0.909381, 0.415964,
		0.837508, -0.227497, -0.496816,
		34.048912, 30.326281, 30.458464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892830, 30.023983, 31.219067>,  <33.462658, 30.485529, 30.806234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892830, 30.023983, 31.219067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146832, 30.236834, 30.995062>,  <34.299232, 30.364544, 30.860659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146832, 30.236834, 30.995062>,  <33.892830, 30.023983, 31.219067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146832, 30.236834, 30.995062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553947, 0.191614, 0.810202,
		0.538434, -0.824699, -0.173093,
		0.635005, 0.532124, -0.560011,
		34.337334, 30.396471, 30.827059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580593, 29.885242, 31.471264>,  <33.892830, 30.023983, 31.219067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580593, 29.885242, 31.471264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655544, 30.204988, 31.242912>,  <34.700516, 30.396837, 31.105902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655544, 30.204988, 31.242912>,  <34.580593, 29.885242, 31.471264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655544, 30.204988, 31.242912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791506, 0.221313, 0.569683,
		0.581729, -0.558599, -0.591235,
		0.187376, 0.799367, -0.570878,
		34.711758, 30.444799, 31.071650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230503, 29.921242, 31.651529>,  <34.580593, 29.885242, 31.471264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230503, 29.921242, 31.651529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176575, 30.273067, 31.469019>,  <35.144218, 30.484163, 31.359512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176575, 30.273067, 31.469019>,  <35.230503, 29.921242, 31.651529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176575, 30.273067, 31.469019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883478, 0.315208, 0.346569,
		0.448652, -0.356385, -0.819574,
		-0.134824, 0.879564, -0.456277,
		35.136127, 30.536938, 31.332136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821033, 30.102648, 31.229322>,  <35.230503, 29.921242, 31.651529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821033, 30.102648, 31.229322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627842, 30.437973, 31.330481>,  <35.511925, 30.639168, 31.391176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627842, 30.437973, 31.330481>,  <35.821033, 30.102648, 31.229322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627842, 30.437973, 31.330481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866558, 0.416141, 0.275505,
		0.125720, 0.352214, -0.927437,
		-0.482981, 0.838315, 0.252897,
		35.482948, 30.689468, 31.406349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258991, 30.578035, 30.956495>,  <35.821033, 30.102648, 31.229322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258991, 30.578035, 30.956495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018650, 30.799639, 31.186993>,  <35.874447, 30.932600, 31.325291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018650, 30.799639, 31.186993>,  <36.258991, 30.578035, 30.956495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018650, 30.799639, 31.186993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767228, 0.602025, 0.221194,
		-0.224369, 0.575014, -0.786777,
		-0.600849, 0.554008, 0.576242,
		35.838394, 30.965841, 31.359865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291470, 31.324574, 30.728807>,  <36.258991, 30.578035, 30.956495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291470, 31.324574, 30.728807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180393, 31.329762, 31.113041>,  <36.113747, 31.332874, 31.343580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180393, 31.329762, 31.113041>,  <36.291470, 31.324574, 30.728807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180393, 31.329762, 31.113041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654468, 0.734528, 0.179280,
		-0.703248, 0.678455, -0.212463,
		-0.277693, 0.012972, 0.960582,
		36.097084, 31.333652, 31.401217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371746, 31.974234, 30.982101>,  <36.291470, 31.324574, 30.728807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371746, 31.974234, 30.982101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323849, 31.766018, 31.320261>,  <36.295113, 31.641088, 31.523157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323849, 31.766018, 31.320261>,  <36.371746, 31.974234, 30.982101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323849, 31.766018, 31.320261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675780, 0.581081, 0.453504,
		-0.727313, 0.625608, 0.282189,
		-0.119741, -0.520537, 0.845401,
		36.287926, 31.609858, 31.573881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376648, 32.500832, 31.555847>,  <36.371746, 31.974234, 30.982101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376648, 32.500832, 31.555847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496315, 32.155037, 31.717419>,  <36.568115, 31.947559, 31.814362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496315, 32.155037, 31.717419>,  <36.376648, 32.500832, 31.555847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496315, 32.155037, 31.717419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552044, 0.502088, 0.665699,
		-0.778295, 0.023828, 0.627446,
		0.299171, -0.864488, 0.403927,
		36.586067, 31.895691, 31.838596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540947, 32.679146, 32.168049>,  <36.376648, 32.500832, 31.555847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540947, 32.679146, 32.168049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711491, 32.317326, 32.168655>,  <36.813816, 32.100231, 32.169018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711491, 32.317326, 32.168655>,  <36.540947, 32.679146, 32.168049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711491, 32.317326, 32.168655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770831, 0.364203, 0.522663,
		-0.473329, -0.221672, 0.852538,
		0.426357, -0.904554, 0.001517,
		36.839397, 32.045959, 32.169109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788780, 32.527847, 32.876846>,  <36.540947, 32.679146, 32.168049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788780, 32.527847, 32.876846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028286, 32.303951, 32.647701>,  <37.171989, 32.169613, 32.510212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028286, 32.303951, 32.647701>,  <36.788780, 32.527847, 32.876846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028286, 32.303951, 32.647701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800605, 0.398018, 0.447899,
		-0.022696, -0.726824, 0.686449,
		0.598763, -0.559740, -0.572865,
		37.207916, 32.136028, 32.475842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205975, 32.283485, 33.310272>,  <36.788780, 32.527847, 32.876846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205975, 32.283485, 33.310272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388702, 32.237877, 32.957382>,  <37.498341, 32.210510, 32.745647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388702, 32.237877, 32.957382>,  <37.205975, 32.283485, 33.310272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388702, 32.237877, 32.957382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813702, 0.454304, 0.362624,
		0.359450, -0.883519, 0.300316,
		0.456820, -0.114022, -0.882221,
		37.525749, 32.203671, 32.692715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829350, 32.004478, 33.406853>,  <37.205975, 32.283485, 33.310272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829350, 32.004478, 33.406853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882374, 32.189911, 33.056419>,  <37.914188, 32.301170, 32.846161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882374, 32.189911, 33.056419>,  <37.829350, 32.004478, 33.406853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882374, 32.189911, 33.056419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771123, 0.507088, 0.385008,
		0.622733, -0.726606, -0.290254,
		0.132565, 0.463579, -0.876083,
		37.922142, 32.328983, 32.793594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517700, 32.095570, 33.488373>,  <37.829350, 32.004478, 33.406853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517700, 32.095570, 33.488373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384537, 32.340176, 33.201256>,  <38.304638, 32.486938, 33.028988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384537, 32.340176, 33.201256>,  <38.517700, 32.095570, 33.488373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384537, 32.340176, 33.201256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429284, 0.776036, 0.462043,
		0.839577, -0.154318, -0.520862,
		-0.332906, 0.611518, -0.717788,
		38.284664, 32.523632, 32.985920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128605, 32.404736, 33.188812>,  <38.517700, 32.095570, 33.488373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128605, 32.404736, 33.188812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818924, 32.640976, 33.097771>,  <38.633118, 32.782722, 33.043144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818924, 32.640976, 33.097771>,  <39.128605, 32.404736, 33.188812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818924, 32.640976, 33.097771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439468, 0.760376, 0.478222,
		0.455506, 0.270213, -0.848233,
		-0.774198, 0.590604, -0.227606,
		38.586666, 32.818157, 33.029488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803852, 32.208981, 32.724392>,  <39.128605, 32.404736, 33.188812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803852, 32.208981, 32.724392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.120266, 32.237770, 32.481384>,  <40.310116, 32.255043, 32.335579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.120266, 32.237770, 32.481384>,  <39.803852, 32.208981, 32.724392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120266, 32.237770, 32.481384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469469, -0.565302, -0.678257,
		-0.392252, 0.821737, -0.413383,
		0.791035, 0.071977, -0.607522,
		40.357578, 32.259365, 32.299129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617058, 32.459629, 32.000187>,  <39.803852, 32.208981, 32.724392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617058, 32.459629, 32.000187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.968147, 32.277103, 31.941698>,  <40.178802, 32.167587, 31.906605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.968147, 32.277103, 31.941698>,  <39.617058, 32.459629, 32.000187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968147, 32.277103, 31.941698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357473, -0.420372, -0.833967,
		0.319080, 0.784263, -0.532089,
		0.877725, -0.456309, -0.146221,
		40.231464, 32.140209, 31.897831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739368, 32.405918, 31.300280>,  <39.617058, 32.459629, 32.000187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739368, 32.405918, 31.300280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.952957, 32.108124, 31.460588>,  <40.081112, 31.929449, 31.556774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.952957, 32.108124, 31.460588>,  <39.739368, 32.405918, 31.300280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952957, 32.108124, 31.460588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294299, -0.608023, -0.737358,
		0.792629, 0.275782, -0.543768,
		0.533973, -0.744482, 0.400774,
		40.113148, 31.884779, 31.580820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876915, 32.001633, 30.688549>,  <39.739368, 32.405918, 31.300280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876915, 32.001633, 30.688549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994884, 31.771433, 30.993660>,  <40.065666, 31.633314, 31.176725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994884, 31.771433, 30.993660>,  <39.876915, 32.001633, 30.688549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994884, 31.771433, 30.993660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061412, -0.808047, -0.585909,
		0.953546, 0.125953, -0.273652,
		0.294921, -0.575496, 0.762775,
		40.083359, 31.598783, 31.222492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372780, 31.586208, 30.407391>,  <39.876915, 32.001633, 30.688549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372780, 31.586208, 30.407391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227318, 31.392912, 30.725945>,  <40.140041, 31.276934, 30.917076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227318, 31.392912, 30.725945>,  <40.372780, 31.586208, 30.407391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227318, 31.392912, 30.725945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247656, -0.773997, -0.582747,
		0.898008, -0.409151, 0.161793,
		-0.363659, -0.483243, 0.796384,
		40.118221, 31.247940, 30.964859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696194, 30.930313, 30.417704>,  <40.372780, 31.586208, 30.407391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696194, 30.930313, 30.417704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.347485, 30.886600, 30.608728>,  <40.138260, 30.860373, 30.723343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.347485, 30.886600, 30.608728>,  <40.696194, 30.930313, 30.417704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347485, 30.886600, 30.608728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274703, -0.698099, -0.661208,
		0.405643, -0.707612, 0.578566,
		-0.871775, -0.109281, 0.477562,
		40.085953, 30.853817, 30.751997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606422, 30.203564, 30.625946>,  <40.696194, 30.930313, 30.417704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606422, 30.203564, 30.625946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.240452, 30.363365, 30.602980>,  <40.020870, 30.459246, 30.589199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.240452, 30.363365, 30.602980>,  <40.606422, 30.203564, 30.625946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240452, 30.363365, 30.602980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333424, -0.828305, -0.450265,
		-0.227441, -0.392818, 0.891047,
		-0.914931, 0.399505, -0.057416,
		39.965973, 30.483217, 30.585754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233719, 29.597342, 30.389120>,  <40.606422, 30.203564, 30.625946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233719, 29.597342, 30.389120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950745, 29.878336, 30.358021>,  <39.780960, 30.046932, 30.339361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950745, 29.878336, 30.358021>,  <40.233719, 29.597342, 30.389120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950745, 29.878336, 30.358021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604147, -0.658133, -0.449297,
		-0.366793, -0.270879, 0.889993,
		-0.707439, 0.702486, -0.077748,
		39.738514, 30.089081, 30.334696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552292, 29.315907, 30.434324>,  <40.233719, 29.597342, 30.389120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552292, 29.315907, 30.434324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470474, 29.666466, 30.259930>,  <39.421383, 29.876802, 30.155293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470474, 29.666466, 30.259930>,  <39.552292, 29.315907, 30.434324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470474, 29.666466, 30.259930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781940, -0.414228, -0.465816,
		-0.588840, 0.245637, 0.770020,
		-0.204542, 0.876400, -0.435988,
		39.409111, 29.929386, 30.129133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764126, 29.369490, 30.315950>,  <39.552292, 29.315907, 30.434324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764126, 29.369490, 30.315950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916931, 29.633600, 30.057308>,  <39.008614, 29.792067, 29.902122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916931, 29.633600, 30.057308>,  <38.764126, 29.369490, 30.315950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916931, 29.633600, 30.057308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721331, -0.224345, -0.655248,
		-0.577708, 0.716732, 0.390575,
		0.382013, 0.660276, -0.646607,
		39.031536, 29.831684, 29.863325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214710, 29.820074, 30.047798>,  <38.764126, 29.369490, 30.315950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214710, 29.820074, 30.047798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487968, 29.806570, 29.755997>,  <38.651924, 29.798468, 29.580915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487968, 29.806570, 29.755997>,  <38.214710, 29.820074, 30.047798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487968, 29.806570, 29.755997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729619, -0.074244, -0.679811,
		-0.031212, 0.996669, -0.075351,
		0.683141, -0.033759, -0.729506,
		38.692909, 29.796442, 29.537146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923714, 30.265526, 29.521954>,  <38.214710, 29.820074, 30.047798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923714, 30.265526, 29.521954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206539, 30.049299, 29.339594>,  <38.376236, 29.919563, 29.230177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206539, 30.049299, 29.339594>,  <37.923714, 30.265526, 29.521954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206539, 30.049299, 29.339594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664875, -0.288630, -0.688937,
		0.240829, 0.790241, -0.563490,
		0.707066, -0.540566, -0.455901,
		38.418659, 29.887129, 29.202824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796860, 30.441330, 28.807701>,  <37.923714, 30.265526, 29.521954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796860, 30.441330, 28.807701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042297, 30.125645, 28.797493>,  <38.189560, 29.936234, 28.791368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042297, 30.125645, 28.797493>,  <37.796860, 30.441330, 28.807701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042297, 30.125645, 28.797493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514638, -0.375188, -0.770962,
		0.598877, 0.486188, -0.636370,
		0.613591, -0.789211, -0.025519,
		38.226376, 29.888882, 28.789837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995090, 30.330994, 28.032608>,  <37.796860, 30.441330, 28.807701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995090, 30.330994, 28.032608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021076, 29.981403, 28.225252>,  <38.036667, 29.771650, 28.340837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021076, 29.981403, 28.225252>,  <37.995090, 30.330994, 28.032608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021076, 29.981403, 28.225252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435633, -0.459051, -0.774272,
		0.897777, -0.159501, -0.410556,
		0.064969, -0.873975, 0.481609,
		38.040565, 29.719212, 28.369736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168659, 29.861582, 27.494555>,  <37.995090, 30.330994, 28.032608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168659, 29.861582, 27.494555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029911, 29.635830, 27.794197>,  <37.946663, 29.500380, 27.973982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029911, 29.635830, 27.794197>,  <38.168659, 29.861582, 27.494555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029911, 29.635830, 27.794197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477460, -0.581205, -0.658964,
		0.807290, -0.586240, -0.067868,
		-0.346866, -0.564379, 0.749107,
		37.925850, 29.466516, 28.018929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220112, 29.251825, 27.231819>,  <38.168659, 29.861582, 27.494555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220112, 29.251825, 27.231819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989719, 29.186501, 27.552214>,  <37.851486, 29.147305, 27.744450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989719, 29.186501, 27.552214>,  <38.220112, 29.251825, 27.231819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989719, 29.186501, 27.552214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432262, -0.770800, -0.467992,
		0.693830, -0.615789, 0.373368,
		-0.575977, -0.163314, 0.800987,
		37.816925, 29.137506, 27.792509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239574, 28.560358, 27.545183>,  <38.220112, 29.251825, 27.231819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239574, 28.560358, 27.545183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878326, 28.715355, 27.619188>,  <37.661579, 28.808353, 27.663591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878326, 28.715355, 27.619188>,  <38.239574, 28.560358, 27.545183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878326, 28.715355, 27.619188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424147, -0.737868, -0.525024,
		-0.066929, -0.552630, 0.830735,
		-0.903117, 0.387493, 0.185012,
		37.607391, 28.831602, 27.674692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667652, 27.960148, 27.541477>,  <38.239574, 28.560358, 27.545183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667652, 27.960148, 27.541477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452271, 28.296124, 27.514423>,  <37.323040, 28.497709, 27.498192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452271, 28.296124, 27.514423>,  <37.667652, 27.960148, 27.541477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452271, 28.296124, 27.514423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777428, -0.526133, -0.344660,
		-0.325077, -0.133003, 0.936288,
		-0.538453, 0.839937, -0.067633,
		37.290733, 28.548105, 27.494133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087940, 27.681978, 27.857117>,  <37.667652, 27.960148, 27.541477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087940, 27.681978, 27.857117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953552, 28.022652, 27.696241>,  <36.872917, 28.227057, 27.599716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953552, 28.022652, 27.696241>,  <37.087940, 27.681978, 27.857117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953552, 28.022652, 27.696241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876772, -0.438798, -0.196790,
		-0.344083, 0.286510, 0.894158,
		-0.335973, 0.851685, -0.402187,
		36.852760, 28.278156, 27.575584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.380501, 27.835283, 28.203428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417732, 28.029722, 27.855854>,  <36.440071, 28.146385, 27.647310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417732, 28.029722, 27.855854>,  <36.380501, 27.835283, 28.203428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417732, 28.029722, 27.855854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868662, -0.386859, -0.309463,
		-0.486584, 0.783612, 0.386248,
		0.093075, 0.486099, -0.868933,
		36.445656, 28.175552, 27.595175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720440, 27.919283, 28.049404>,  <36.380501, 27.835283, 28.203428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720440, 27.919283, 28.049404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895847, 27.981718, 27.695377>,  <36.001091, 28.019180, 27.482962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895847, 27.981718, 27.695377>,  <35.720440, 27.919283, 28.049404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895847, 27.981718, 27.695377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712086, -0.540476, -0.448128,
		-0.548305, 0.826754, -0.125858,
		0.438514, 0.156089, -0.885066,
		36.027401, 28.028545, 27.429857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331924, 28.382093, 27.651970>,  <35.720440, 27.919283, 28.049404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331924, 28.382093, 27.651970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.550430, 28.186987, 27.379595>,  <35.681534, 28.069923, 27.216169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.550430, 28.186987, 27.379595>,  <35.331924, 28.382093, 27.651970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550430, 28.186987, 27.379595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836303, -0.272183, -0.475935,
		0.046807, 0.829457, -0.556606,
		0.546266, -0.487768, -0.680937,
		35.714310, 28.040657, 27.175314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068241, 28.576342, 27.021095>,  <35.331924, 28.382093, 27.651970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068241, 28.576342, 27.021095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264244, 28.235365, 26.948175>,  <35.381847, 28.030779, 26.904425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264244, 28.235365, 26.948175>,  <35.068241, 28.576342, 27.021095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264244, 28.235365, 26.948175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855966, -0.430940, -0.285679,
		0.164966, 0.296026, -0.940827,
		0.490008, -0.852443, -0.182297,
		35.411247, 27.979631, 26.893486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938595, 28.491009, 26.309067>,  <35.068241, 28.576342, 27.021095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938595, 28.491009, 26.309067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055420, 28.137539, 26.455389>,  <35.125515, 27.925457, 26.543182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055420, 28.137539, 26.455389>,  <34.938595, 28.491009, 26.309067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055420, 28.137539, 26.455389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775447, -0.442677, -0.450243,
		0.559804, -0.152163, -0.814534,
		0.292066, -0.883676, 0.365807,
		35.143040, 27.872437, 26.565130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822624, 27.975616, 25.714272>,  <34.938595, 28.491009, 26.309067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822624, 27.975616, 25.714272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820507, 27.756321, 26.048794>,  <34.819237, 27.624744, 26.249508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820507, 27.756321, 26.048794>,  <34.822624, 27.975616, 25.714272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820507, 27.756321, 26.048794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771251, -0.530092, -0.352384,
		0.636509, -0.646867, -0.420023,
		-0.005295, -0.548238, 0.836305,
		34.818920, 27.591850, 26.299685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556122, 27.430908, 25.442545>,  <34.822624, 27.975616, 25.714272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556122, 27.430908, 25.442545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503510, 27.398643, 25.837755>,  <34.471943, 27.379284, 26.074881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503510, 27.398643, 25.837755>,  <34.556122, 27.430908, 25.442545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503510, 27.398643, 25.837755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855155, -0.494893, -0.154242,
		0.501408, -0.865202, -0.003886,
		-0.131528, -0.080661, 0.988025,
		34.464050, 27.374445, 26.134163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531368, 26.779812, 25.608624>,  <34.556122, 27.430908, 25.442545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531368, 26.779812, 25.608624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357239, 26.943874, 25.929190>,  <34.252762, 27.042311, 26.121529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357239, 26.943874, 25.929190>,  <34.531368, 26.779812, 25.608624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357239, 26.943874, 25.929190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792606, -0.596757, -0.125129,
		0.426927, -0.689677, 0.584875,
		-0.435327, 0.410155, 0.801414,
		34.226639, 27.066921, 26.169613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215832, 26.234751, 25.849644>,  <34.531368, 26.779812, 25.608624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215832, 26.234751, 25.849644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047523, 26.565418, 25.999079>,  <33.946537, 26.763819, 26.088739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047523, 26.565418, 25.999079>,  <34.215832, 26.234751, 25.849644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047523, 26.565418, 25.999079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898530, -0.323104, -0.297065,
		-0.124867, -0.460677, 0.878741,
		-0.420775, 0.826669, 0.373587,
		33.921291, 26.813419, 26.111155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740940, 26.005367, 26.309034>,  <34.215832, 26.234751, 25.849644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740940, 26.005367, 26.309034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626331, 26.357828, 26.158585>,  <33.557564, 26.569305, 26.068316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626331, 26.357828, 26.158585>,  <33.740940, 26.005367, 26.309034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626331, 26.357828, 26.158585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720417, -0.456957, -0.521718,
		-0.631587, 0.121482, 0.765729,
		-0.286526, 0.881154, -0.376125,
		33.540375, 26.622175, 26.045748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025970, 26.031677, 26.469841>,  <33.740940, 26.005367, 26.309034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025970, 26.031677, 26.469841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091618, 26.307180, 26.187372>,  <33.131004, 26.472483, 26.017891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091618, 26.307180, 26.187372>,  <33.025970, 26.031677, 26.469841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091618, 26.307180, 26.187372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785077, -0.342245, -0.516258,
		-0.597261, 0.639124, 0.484561,
		0.164114, 0.688758, -0.706171,
		33.140850, 26.513807, 25.975521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392971, 26.371855, 26.367153>,  <33.025970, 26.031677, 26.469841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392971, 26.371855, 26.367153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.601849, 26.445349, 26.034035>,  <32.727177, 26.489445, 25.834164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.601849, 26.445349, 26.034035>,  <32.392971, 26.371855, 26.367153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601849, 26.445349, 26.034035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760829, -0.340807, -0.552259,
		-0.385293, 0.922004, -0.038176,
		0.522196, 0.183736, -0.832798,
		32.758507, 26.500469, 25.784195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837397, 26.463034, 25.881935>,  <32.392971, 26.371855, 26.367153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837397, 26.463034, 25.881935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160904, 26.436527, 25.648182>,  <32.355007, 26.420624, 25.507929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160904, 26.436527, 25.648182>,  <31.837397, 26.463034, 25.881935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160904, 26.436527, 25.648182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569298, -0.337635, -0.749601,
		-0.147636, 0.938942, -0.310792,
		0.808766, -0.066265, -0.584385,
		32.403534, 26.416647, 25.472866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659555, 26.826288, 25.360622>,  <31.837397, 26.463034, 25.881935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659555, 26.826288, 25.360622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937653, 26.582762, 25.207790>,  <32.104511, 26.436646, 25.116091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937653, 26.582762, 25.207790>,  <31.659555, 26.826288, 25.360622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937653, 26.582762, 25.207790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573860, -0.150066, -0.805087,
		0.432811, 0.778990, -0.453706,
		0.695241, -0.608814, -0.382081,
		32.146225, 26.400118, 25.093166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725433, 27.050268, 24.598942>,  <31.659555, 26.826288, 25.360622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725433, 27.050268, 24.598942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872890, 26.680828, 24.641026>,  <31.961365, 26.459164, 24.666275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872890, 26.680828, 24.641026>,  <31.725433, 27.050268, 24.598942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872890, 26.680828, 24.641026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452876, -0.277283, -0.847359,
		0.811791, 0.264728, -0.520494,
		0.368643, -0.923598, 0.105207,
		31.983484, 26.403749, 24.672588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907248, 26.885962, 23.979170>,  <31.725433, 27.050268, 24.598942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907248, 26.885962, 23.979170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916891, 26.522688, 24.146318>,  <31.922678, 26.304724, 24.246607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916891, 26.522688, 24.146318>,  <31.907248, 26.885962, 23.979170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916891, 26.522688, 24.146318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452382, -0.382660, -0.805557,
		0.891498, -0.169615, -0.420073,
		0.024111, -0.908186, 0.417871,
		31.924124, 26.250233, 24.271679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347973, 26.480011, 23.532526>,  <31.907248, 26.885962, 23.979170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347973, 26.480011, 23.532526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.076275, 26.256939, 23.723366>,  <31.913258, 26.123096, 23.837870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.076275, 26.256939, 23.723366>,  <32.347973, 26.480011, 23.532526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076275, 26.256939, 23.723366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256695, -0.428493, -0.866315,
		0.687561, -0.710905, 0.147896,
		-0.679240, -0.557680, 0.477101,
		31.872503, 26.089636, 23.866495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264072, 25.835997, 23.148172>,  <32.347973, 26.480011, 23.532526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264072, 25.835997, 23.148172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939762, 25.838247, 23.382307>,  <31.745176, 25.839598, 23.522787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939762, 25.838247, 23.382307>,  <32.264072, 25.835997, 23.148172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939762, 25.838247, 23.382307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515181, -0.481614, -0.708968,
		0.277917, -0.876365, 0.393378,
		-0.810771, 0.005626, 0.585336,
		31.696531, 25.839935, 23.557907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099033, 25.248396, 23.131458>,  <32.264072, 25.835997, 23.148172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099033, 25.248396, 23.131458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.761406, 25.436245, 23.234997>,  <31.558830, 25.548954, 23.297119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.761406, 25.436245, 23.234997>,  <32.099033, 25.248396, 23.131458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761406, 25.436245, 23.234997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489726, -0.478469, -0.728859,
		-0.218440, -0.741971, 0.633847,
		-0.844069, 0.469624, 0.258846,
		31.508184, 25.577131, 23.312651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540037, 24.775852, 23.041821>,  <32.099033, 25.248396, 23.131458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540037, 24.775852, 23.041821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381538, 25.142849, 23.028009>,  <31.286438, 25.363047, 23.019722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381538, 25.142849, 23.028009>,  <31.540037, 24.775852, 23.041821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381538, 25.142849, 23.028009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416315, -0.213062, -0.883904,
		-0.818333, -0.335871, 0.466392,
		-0.396248, 0.917494, -0.034528,
		31.262665, 25.418097, 23.017651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043936, 24.583927, 22.604246>,  <31.540037, 24.775852, 23.041821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043936, 24.583927, 22.604246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.008307, 24.981867, 22.623590>,  <30.986929, 25.220631, 22.635197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.008307, 24.981867, 22.623590>,  <31.043936, 24.583927, 22.604246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008307, 24.981867, 22.623590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533049, -0.006598, -0.846058,
		-0.841382, -0.101140, 0.530892,
		-0.089073, 0.994850, 0.048362,
		30.981585, 25.280321, 22.638100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351259, 24.849113, 22.648851>,  <31.043936, 24.583927, 22.604246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351259, 24.849113, 22.648851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528017, 25.168985, 22.486252>,  <30.634071, 25.360909, 22.388693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528017, 25.168985, 22.486252>,  <30.351259, 24.849113, 22.648851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528017, 25.168985, 22.486252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586418, -0.085406, -0.805494,
		-0.678855, 0.594320, 0.431206,
		0.441894, 0.799681, -0.406498,
		30.660585, 25.408890, 22.364302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950312, 25.501959, 22.467287>,  <30.351259, 24.849113, 22.648851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950312, 25.501959, 22.467287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.248522, 25.436520, 22.208851>,  <30.427448, 25.397255, 22.053789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.248522, 25.436520, 22.208851>,  <29.950312, 25.501959, 22.467287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248522, 25.436520, 22.208851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642876, 0.079180, -0.761867,
		0.175797, 0.983344, -0.046144,
		0.745524, -0.163599, -0.646088,
		30.472179, 25.387440, 22.015024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007269, 26.044210, 22.006695>,  <29.950312, 25.501959, 22.467287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007269, 26.044210, 22.006695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.128279, 25.709333, 21.824450>,  <30.200884, 25.508408, 21.715101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.128279, 25.709333, 21.824450>,  <30.007269, 26.044210, 22.006695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128279, 25.709333, 21.824450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599932, 0.204192, -0.773555,
		0.740649, 0.507357, -0.440487,
		0.302524, -0.837195, -0.455614,
		30.219036, 25.458176, 21.687765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585609, 26.146231, 22.698240>,  <30.007269, 26.044210, 22.006695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585609, 26.146231, 22.698240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966537, 26.152931, 22.576385>,  <30.195095, 26.156952, 22.503273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966537, 26.152931, 22.576385>,  <29.585609, 26.146231, 22.698240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966537, 26.152931, 22.576385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176969, 0.843682, -0.506836,
		0.248526, 0.536582, 0.806421,
		0.952322, 0.016750, -0.304636,
		30.252234, 26.157957, 22.484995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920441, 26.062708, 23.079275>,  <29.585609, 26.146231, 22.698240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920441, 26.062708, 23.079275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.671646, 25.933289, 23.364498>,  <28.522369, 25.855637, 23.535633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.671646, 25.933289, 23.364498>,  <28.920441, 26.062708, 23.079275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671646, 25.933289, 23.364498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228088, 0.796288, 0.560269,
		-0.749074, 0.511119, -0.421481,
		-0.621984, -0.323548, 0.713059,
		28.485050, 25.836224, 23.578415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687817, 26.720615, 23.322737>,  <28.920441, 26.062708, 23.079275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687817, 26.720615, 23.322737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.620567, 26.444250, 23.603983>,  <28.580217, 26.278431, 23.772730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.620567, 26.444250, 23.603983>,  <28.687817, 26.720615, 23.322737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620567, 26.444250, 23.603983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214421, 0.670557, 0.710195,
		-0.962163, 0.270164, 0.035409,
		-0.168125, -0.690916, 0.703114,
		28.570129, 26.236975, 23.814917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228476, 26.994976, 23.879358>,  <28.687817, 26.720615, 23.322737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228476, 26.994976, 23.879358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.436497, 26.694115, 24.041254>,  <28.561310, 26.513597, 24.138391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.436497, 26.694115, 24.041254>,  <28.228476, 26.994976, 23.879358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436497, 26.694115, 24.041254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294190, 0.602599, 0.741840,
		-0.801871, -0.266726, 0.534658,
		0.520052, -0.752152, 0.404739,
		28.592512, 26.468470, 24.162676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055180, 27.097260, 24.615000>,  <28.228476, 26.994976, 23.879358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055180, 27.097260, 24.615000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.360029, 26.838373, 24.608307>,  <28.542938, 26.683041, 24.604290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.360029, 26.838373, 24.608307>,  <28.055180, 27.097260, 24.615000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360029, 26.838373, 24.608307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463353, 0.527198, 0.712296,
		-0.452188, -0.550611, 0.701679,
		0.762122, -0.647218, -0.016734,
		28.588665, 26.644209, 24.603287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191401, 26.836811, 25.362570>,  <28.055180, 27.097260, 24.615000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191401, 26.836811, 25.362570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.523167, 26.832277, 25.139162>,  <28.722227, 26.829557, 25.005117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.523167, 26.832277, 25.139162>,  <28.191401, 26.836811, 25.362570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523167, 26.832277, 25.139162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490594, 0.492967, 0.718541,
		0.267186, -0.869974, 0.414436,
		0.829415, -0.011336, -0.558518,
		28.771992, 26.828876, 24.971607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707071, 26.826981, 25.863642>,  <28.191401, 26.836811, 25.362570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707071, 26.826981, 25.863642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.934658, 26.906031, 25.544338>,  <29.071211, 26.953461, 25.352757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.934658, 26.906031, 25.544338>,  <28.707071, 26.826981, 25.863642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934658, 26.906031, 25.544338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777300, 0.187665, 0.600488,
		0.268477, -0.962147, -0.046839,
		0.568968, 0.197625, -0.798260,
		29.105349, 26.965319, 25.304859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309082, 26.759224, 26.120453>,  <28.707071, 26.826981, 25.863642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309082, 26.759224, 26.120453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.433350, 26.929764, 25.780638>,  <29.507910, 27.032087, 25.576750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.433350, 26.929764, 25.780638>,  <29.309082, 26.759224, 26.120453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433350, 26.929764, 25.780638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810309, 0.348413, 0.471178,
		0.496876, -0.834765, -0.237236,
		0.310667, 0.426351, -0.849535,
		29.526550, 27.057669, 25.525778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075483, 26.623055, 25.989822>,  <29.309082, 26.759224, 26.120453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075483, 26.623055, 25.989822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001471, 26.938416, 25.755152>,  <29.957062, 27.127632, 25.614349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001471, 26.938416, 25.755152>,  <30.075483, 26.623055, 25.989822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001471, 26.938416, 25.755152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834544, 0.441302, 0.329831,
		0.518940, -0.428576, -0.739611,
		-0.185034, 0.788400, -0.586675,
		29.945961, 27.174936, 25.579149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737341, 26.773405, 25.558069>,  <30.075483, 26.623055, 25.989822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737341, 26.773405, 25.558069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.487066, 27.079132, 25.620472>,  <30.336901, 27.262568, 25.657913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.487066, 27.079132, 25.620472>,  <30.737341, 26.773405, 25.558069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487066, 27.079132, 25.620472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754733, 0.542569, 0.368778,
		0.197218, 0.348483, -0.916332,
		-0.625686, 0.764316, 0.156007,
		30.299360, 27.308426, 25.667274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993990, 27.382587, 25.197802>,  <30.737341, 26.773405, 25.558069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993990, 27.382587, 25.197802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766848, 27.538198, 25.487961>,  <30.630562, 27.631565, 25.662056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766848, 27.538198, 25.487961>,  <30.993990, 27.382587, 25.197802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766848, 27.538198, 25.487961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815148, 0.388193, 0.429930,
		-0.114340, 0.835443, -0.537551,
		-0.567855, 0.389025, 0.725396,
		30.596491, 27.654905, 25.705580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383966, 28.009453, 25.450279>,  <30.993990, 27.382587, 25.197802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383966, 28.009453, 25.450279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.122925, 27.951075, 25.747684>,  <30.966301, 27.916048, 25.926126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.122925, 27.951075, 25.747684>,  <31.383966, 28.009453, 25.450279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122925, 27.951075, 25.747684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716772, 0.199230, 0.668240,
		-0.245657, 0.969024, -0.025408,
		-0.652603, -0.145946, 0.743512,
		30.927143, 27.907291, 25.970737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414959, 28.597551, 25.978249>,  <31.383966, 28.009453, 25.450279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414959, 28.597551, 25.978249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248978, 28.292286, 26.176397>,  <31.149389, 28.109127, 26.295286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248978, 28.292286, 26.176397>,  <31.414959, 28.597551, 25.978249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248978, 28.292286, 26.176397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580686, 0.197013, 0.789930,
		-0.700440, 0.615442, 0.361406,
		-0.414955, -0.763163, 0.495374,
		31.124491, 28.063337, 26.325010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295301, 28.837660, 26.553127>,  <31.414959, 28.597551, 25.978249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295301, 28.837660, 26.553127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.313368, 28.444805, 26.626194>,  <31.324207, 28.209093, 26.670034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.313368, 28.444805, 26.626194>,  <31.295301, 28.837660, 26.553127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313368, 28.444805, 26.626194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587195, 0.174030, 0.790516,
		-0.808184, 0.071558, 0.584566,
		0.045164, -0.982137, 0.182667,
		31.326918, 28.150164, 26.680994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312380, 28.870535, 27.272375>,  <31.295301, 28.837660, 26.553127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312380, 28.870535, 27.272375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414286, 28.488003, 27.215061>,  <31.475430, 28.258484, 27.180674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414286, 28.488003, 27.215061>,  <31.312380, 28.870535, 27.272375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414286, 28.488003, 27.215061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714339, 0.086251, 0.694464,
		-0.651777, -0.279280, 0.705117,
		0.254767, -0.956328, -0.143284,
		31.490715, 28.201105, 27.172075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309292, 28.604546, 27.882559>,  <31.312380, 28.870535, 27.272375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309292, 28.604546, 27.882559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.555553, 28.363605, 27.679329>,  <31.703310, 28.219042, 27.557390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.555553, 28.363605, 27.679329>,  <31.309292, 28.604546, 27.882559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555553, 28.363605, 27.679329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745564, 0.236488, 0.623063,
		-0.255150, -0.762395, 0.594687,
		0.615656, -0.602352, -0.508074,
		31.740250, 28.182899, 27.526907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558500, 28.086113, 28.361160>,  <31.309292, 28.604546, 27.882559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558500, 28.086113, 28.361160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809450, 28.142025, 28.054733>,  <31.960020, 28.175573, 27.870876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809450, 28.142025, 28.054733>,  <31.558500, 28.086113, 28.361160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809450, 28.142025, 28.054733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698837, 0.332945, 0.633068,
		0.343561, -0.932526, 0.111184,
		0.627370, 0.139798, -0.766070,
		31.997663, 28.183960, 27.824913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209641, 27.779257, 28.608370>,  <31.558500, 28.086113, 28.361160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209641, 27.779257, 28.608370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296242, 28.023428, 28.303606>,  <32.348202, 28.169930, 28.120749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296242, 28.023428, 28.303606>,  <32.209641, 27.779257, 28.608370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296242, 28.023428, 28.303606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762247, 0.381930, 0.522598,
		0.610003, -0.693909, -0.382605,
		0.216508, 0.610426, -0.761909,
		32.361195, 28.206556, 28.075033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903172, 27.926952, 28.745583>,  <32.209641, 27.779257, 28.608370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903172, 27.926952, 28.745583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836269, 28.173845, 28.438063>,  <32.796127, 28.321981, 28.253551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836269, 28.173845, 28.438063>,  <32.903172, 27.926952, 28.745583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836269, 28.173845, 28.438063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797240, 0.543430, 0.262853,
		0.580029, -0.568955, -0.582972,
		-0.167253, 0.617231, -0.768799,
		32.786095, 28.359015, 28.207422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513031, 27.994629, 28.358797>,  <32.903172, 27.926952, 28.745583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513031, 27.994629, 28.358797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298397, 28.326008, 28.294611>,  <33.169617, 28.524836, 28.256100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298397, 28.326008, 28.294611>,  <33.513031, 27.994629, 28.358797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298397, 28.326008, 28.294611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663992, 0.531869, 0.525576,
		0.520759, 0.175469, -0.835476,
		-0.536586, 0.828448, -0.160466,
		33.137421, 28.574543, 28.246471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.968552, 28.829624, 28.777689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750080, 29.163546, 28.749994>,  <38.618999, 29.363899, 28.733377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750080, 29.163546, 28.749994>,  <38.968552, 28.829624, 28.777689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750080, 29.163546, 28.749994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597925, 0.446413, 0.665734,
		0.586665, 0.322209, -0.742970,
		-0.546177, 0.834804, -0.069238,
		38.586227, 29.413986, 28.729223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433048, 29.303392, 28.588219>,  <38.968552, 28.829624, 28.777689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433048, 29.303392, 28.588219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133526, 29.518452, 28.743252>,  <38.953812, 29.647488, 28.836271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133526, 29.518452, 28.743252>,  <39.433048, 29.303392, 28.588219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133526, 29.518452, 28.743252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638797, 0.429541, 0.638305,
		0.176699, 0.725556, -0.665091,
		-0.748810, 0.537646, 0.387583,
		38.908882, 29.679745, 28.859528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594364, 30.062675, 28.666040>,  <39.433048, 29.303392, 28.588219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594364, 30.062675, 28.666040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.302860, 30.013779, 28.935549>,  <39.127956, 29.984440, 29.097254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.302860, 30.013779, 28.935549>,  <39.594364, 30.062675, 28.666040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302860, 30.013779, 28.935549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575627, 0.423570, 0.699458,
		-0.370892, 0.897577, -0.238315,
		-0.728761, -0.122242, 0.673769,
		39.084232, 29.977106, 29.137680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541321, 30.637690, 28.972307>,  <39.594364, 30.062675, 28.666040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541321, 30.637690, 28.972307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.382122, 30.387421, 29.240675>,  <39.286602, 30.237259, 29.401695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.382122, 30.387421, 29.240675>,  <39.541321, 30.637690, 28.972307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382122, 30.387421, 29.240675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556672, 0.416596, 0.718724,
		-0.729188, 0.659531, 0.182491,
		-0.397996, -0.625673, 0.670919,
		39.262722, 30.199718, 29.441952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073799, 31.023684, 29.506521>,  <39.541321, 30.637690, 28.972307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073799, 31.023684, 29.506521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.181240, 30.693071, 29.704391>,  <39.245705, 30.494703, 29.823112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.181240, 30.693071, 29.704391>,  <39.073799, 31.023684, 29.506521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181240, 30.693071, 29.704391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350174, 0.562194, 0.749210,
		-0.897348, -0.028014, 0.440434,
		0.268598, -0.826531, 0.494674,
		39.261818, 30.445112, 29.852793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957569, 31.146164, 30.144945>,  <39.073799, 31.023684, 29.506521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957569, 31.146164, 30.144945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.186005, 30.823704, 30.206879>,  <39.323067, 30.630228, 30.244040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.186005, 30.823704, 30.206879>,  <38.957569, 31.146164, 30.144945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186005, 30.823704, 30.206879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345407, 0.407095, 0.845558,
		-0.744680, -0.429411, 0.510939,
		0.571093, -0.806151, 0.154834,
		39.357334, 30.581858, 30.253328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829159, 30.866804, 30.831930>,  <38.957569, 31.146164, 30.144945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829159, 30.866804, 30.831930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.189342, 30.751974, 30.701237>,  <39.405453, 30.683077, 30.622820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.189342, 30.751974, 30.701237>,  <38.829159, 30.866804, 30.831930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189342, 30.751974, 30.701237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423491, 0.407516, 0.809065,
		-0.099112, -0.866902, 0.488526,
		0.900463, -0.287074, -0.326735,
		39.459480, 30.665852, 30.603216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054028, 30.722794, 31.506140>,  <38.829159, 30.866804, 30.831930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054028, 30.722794, 31.506140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368160, 30.753517, 31.260422>,  <39.556641, 30.771952, 31.112991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368160, 30.753517, 31.260422>,  <39.054028, 30.722794, 31.506140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368160, 30.753517, 31.260422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508775, 0.485261, 0.711104,
		0.352711, -0.870989, 0.342012,
		0.785330, 0.076807, -0.614295,
		39.603760, 30.776560, 31.076134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642006, 30.652401, 31.982637>,  <39.054028, 30.722794, 31.506140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642006, 30.652401, 31.982637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791714, 30.843641, 31.664810>,  <39.881538, 30.958385, 31.474113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791714, 30.843641, 31.664810>,  <39.642006, 30.652401, 31.982637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791714, 30.843641, 31.664810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498534, 0.618750, 0.607135,
		0.781911, -0.623353, -0.006769,
		0.374271, 0.478100, -0.794570,
		39.903996, 30.987072, 31.426439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321308, 30.789200, 32.190453>,  <39.642006, 30.652401, 31.982637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321308, 30.789200, 32.190453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263527, 31.035419, 31.880552>,  <40.228859, 31.183151, 31.694613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263527, 31.035419, 31.880552>,  <40.321308, 30.789200, 32.190453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263527, 31.035419, 31.880552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646431, 0.651492, 0.397095,
		0.749173, -0.443459, -0.492020,
		-0.144452, 0.615550, -0.774746,
		40.220192, 31.220085, 31.648129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967533, 31.106636, 32.041492>,  <40.321308, 30.789200, 32.190453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967533, 31.106636, 32.041492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.680717, 31.344421, 31.895906>,  <40.508629, 31.487093, 31.808554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.680717, 31.344421, 31.895906>,  <40.967533, 31.106636, 32.041492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680717, 31.344421, 31.895906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544719, 0.803686, 0.239518,
		0.434900, -0.026517, -0.900088,
		-0.717037, 0.594462, -0.363968,
		40.465607, 31.522760, 31.786716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354321, 31.616768, 31.713392>,  <40.967533, 31.106636, 32.041492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354321, 31.616768, 31.713392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987110, 31.757490, 31.786552>,  <40.766785, 31.841923, 31.830448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987110, 31.757490, 31.786552>,  <41.354321, 31.616768, 31.713392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987110, 31.757490, 31.786552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394189, 0.859604, 0.325110,
		-0.042848, 0.370559, -0.927820,
		-0.918030, 0.351806, 0.182903,
		40.711700, 31.863031, 31.841423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399776, 32.233170, 31.543852>,  <41.354321, 31.616768, 31.713392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399776, 32.233170, 31.543852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070549, 32.257786, 31.769690>,  <40.873013, 32.272556, 31.905191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070549, 32.257786, 31.769690>,  <41.399776, 32.233170, 31.543852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070549, 32.257786, 31.769690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300686, 0.890575, 0.341267,
		-0.481811, 0.450653, -0.751512,
		-0.823071, 0.061543, 0.564594,
		40.823627, 32.276249, 31.939068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036224, 32.847633, 31.528431>,  <41.399776, 32.233170, 31.543852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036224, 32.847633, 31.528431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.896294, 32.725189, 31.882587>,  <40.812336, 32.651722, 32.095081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.896294, 32.725189, 31.882587>,  <41.036224, 32.847633, 31.528431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896294, 32.725189, 31.882587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113240, 0.924362, 0.364324,
		-0.929946, 0.227711, -0.288699,
		-0.349823, -0.306109, 0.885393,
		40.791348, 32.633358, 32.148205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066181, 33.582333, 31.421350>,  <41.036224, 32.847633, 31.528431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066181, 33.582333, 31.421350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212234, 33.876686, 31.193264>,  <41.299866, 34.053299, 31.056412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212234, 33.876686, 31.193264>,  <41.066181, 33.582333, 31.421350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212234, 33.876686, 31.193264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785899, -0.084685, -0.612529,
		-0.499041, 0.671786, 0.547413,
		0.365131, 0.735888, -0.570217,
		41.321774, 34.097454, 31.022200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484592, 33.975491, 31.276611>,  <41.066181, 33.582333, 31.421350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484592, 33.975491, 31.276611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.756908, 34.057880, 30.995441>,  <40.920296, 34.107315, 30.826738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.756908, 34.057880, 30.995441>,  <40.484592, 33.975491, 31.276611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756908, 34.057880, 30.995441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708026, -0.060865, -0.703559,
		-0.187700, 0.976663, 0.104400,
		0.680785, 0.205975, -0.702926,
		40.961143, 34.119675, 30.784563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242466, 34.543549, 30.898930>,  <40.484592, 33.975491, 31.276611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242466, 34.543549, 30.898930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502979, 34.354137, 30.661747>,  <40.659286, 34.240490, 30.519438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502979, 34.354137, 30.661747>,  <40.242466, 34.543549, 30.898930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502979, 34.354137, 30.661747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663899, 0.022867, -0.747472,
		0.367509, 0.880482, -0.299482,
		0.651287, -0.473528, -0.592955,
		40.698364, 34.212078, 30.483860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319057, 34.955776, 30.231710>,  <40.242466, 34.543549, 30.898930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319057, 34.955776, 30.231710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427193, 34.584244, 30.130362>,  <40.492073, 34.361324, 30.069551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427193, 34.584244, 30.130362>,  <40.319057, 34.955776, 30.231710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427193, 34.584244, 30.130362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492533, 0.092702, -0.865342,
		0.827241, 0.358731, -0.432417,
		0.270339, -0.928826, -0.253374,
		40.508293, 34.305595, 30.054350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389351, 35.090660, 29.525999>,  <40.319057, 34.955776, 30.231710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389351, 35.090660, 29.525999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338802, 34.698887, 29.588909>,  <40.308472, 34.463821, 29.626656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.338802, 34.698887, 29.588909>,  <40.389351, 35.090660, 29.525999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338802, 34.698887, 29.588909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564586, -0.059349, -0.823238,
		0.815642, -0.192831, -0.545476,
		-0.126373, -0.979435, 0.157277,
		40.300892, 34.405056, 29.636093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509819, 34.792515, 28.859838>,  <40.389351, 35.090660, 29.525999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509819, 34.792515, 28.859838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.335609, 34.467686, 29.015198>,  <40.231083, 34.272789, 29.108414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.335609, 34.467686, 29.015198>,  <40.509819, 34.792515, 28.859838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335609, 34.467686, 29.015198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573375, -0.082357, -0.815143,
		0.693944, -0.577714, -0.429754,
		-0.435526, -0.812074, 0.388398,
		40.204952, 34.224064, 29.131718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437347, 34.149696, 28.322605>,  <40.509819, 34.792515, 28.859838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437347, 34.149696, 28.322605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.149441, 34.089462, 28.593681>,  <39.976696, 34.053322, 28.756327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.149441, 34.089462, 28.593681>,  <40.437347, 34.149696, 28.322605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149441, 34.089462, 28.593681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671498, -0.096698, -0.734670,
		0.176161, -0.983857, -0.031517,
		-0.719762, -0.150584, 0.677692,
		39.933514, 34.044289, 28.796989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042522, 33.576591, 28.032801>,  <40.437347, 34.149696, 28.322605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042522, 33.576591, 28.032801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.799850, 33.718716, 28.317249>,  <39.654247, 33.803989, 28.487919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.799850, 33.718716, 28.317249>,  <40.042522, 33.576591, 28.032801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799850, 33.718716, 28.317249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790428, -0.364868, -0.492031,
		0.084641, -0.860596, 0.502206,
		-0.606679, 0.355312, 0.711122,
		39.617847, 33.825310, 28.530586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521183, 33.094807, 28.089199>,  <40.042522, 33.576591, 28.032801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521183, 33.094807, 28.089199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356972, 33.422882, 28.248579>,  <39.258446, 33.619728, 28.344208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356972, 33.422882, 28.248579>,  <39.521183, 33.094807, 28.089199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356972, 33.422882, 28.248579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893116, -0.273554, -0.357089,
		-0.183879, -0.502461, 0.844820,
		-0.410528, 0.820183, 0.398455,
		39.233814, 33.668938, 28.368114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874039, 32.861088, 28.507839>,  <39.521183, 33.094807, 28.089199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874039, 32.861088, 28.507839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824284, 33.249817, 28.427752>,  <38.794430, 33.483055, 28.379698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824284, 33.249817, 28.427752>,  <38.874039, 32.861088, 28.507839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824284, 33.249817, 28.427752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916915, -0.189702, -0.351112,
		-0.379201, 0.139911, 0.914676,
		-0.124391, 0.971822, -0.200222,
		38.786964, 33.541363, 28.367685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272655, 33.063103, 28.915726>,  <38.874039, 32.861088, 28.507839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272655, 33.063103, 28.915726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333519, 33.313446, 28.609747>,  <38.370037, 33.463654, 28.426159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333519, 33.313446, 28.609747>,  <38.272655, 33.063103, 28.915726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333519, 33.313446, 28.609747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970698, -0.051012, -0.234824,
		-0.185988, 0.778266, 0.599759,
		0.152161, 0.625859, -0.764949,
		38.379166, 33.501205, 28.380262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659309, 33.543381, 28.826292>,  <38.272655, 33.063103, 28.915726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659309, 33.543381, 28.826292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830875, 33.559296, 28.465305>,  <37.933815, 33.568844, 28.248713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830875, 33.559296, 28.465305>,  <37.659309, 33.543381, 28.826292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830875, 33.559296, 28.465305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887451, -0.168005, -0.429191,
		-0.168697, 0.984983, -0.036748,
		0.428919, 0.039791, -0.902466,
		37.959553, 33.571232, 28.194565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203163, 33.882919, 28.517197>,  <37.659309, 33.543381, 28.826292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203163, 33.882919, 28.517197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.428188, 33.734451, 28.221697>,  <37.563206, 33.645370, 28.044397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.428188, 33.734451, 28.221697>,  <37.203163, 33.882919, 28.517197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428188, 33.734451, 28.221697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820207, -0.138351, -0.555085,
		0.103826, 0.918199, -0.382270,
		0.562566, -0.371173, -0.738749,
		37.596958, 33.623100, 28.000072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978992, 34.191002, 27.887913>,  <37.203163, 33.882919, 28.517197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978992, 34.191002, 27.887913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.156822, 33.853889, 27.766541>,  <37.263519, 33.651623, 27.693716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.156822, 33.853889, 27.766541>,  <36.978992, 34.191002, 27.887913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156822, 33.853889, 27.766541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833427, -0.265053, -0.484919,
		0.328255, 0.468472, -0.820233,
		0.444576, -0.842781, -0.303433,
		37.290195, 33.601055, 27.675510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833244, 34.818520, 27.659073>,  <36.978992, 34.191002, 27.887913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833244, 34.818520, 27.659073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.571308, 35.118298, 27.620058>,  <36.414146, 35.298164, 27.596649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.571308, 35.118298, 27.620058>,  <36.833244, 34.818520, 27.659073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571308, 35.118298, 27.620058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484231, 0.515139, 0.707214,
		0.580266, 0.415881, -0.700239,
		-0.654838, 0.749449, -0.097536,
		36.374855, 35.343132, 27.590797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277138, 35.375126, 27.621859>,  <36.833244, 34.818520, 27.659073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277138, 35.375126, 27.621859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.918205, 35.519573, 27.723364>,  <36.702847, 35.606243, 27.784267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.918205, 35.519573, 27.723364>,  <37.277138, 35.375126, 27.621859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918205, 35.519573, 27.723364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417305, 0.506925, 0.754243,
		0.143735, 0.782700, -0.605575,
		-0.897327, 0.361121, 0.253762,
		36.649006, 35.627911, 27.799492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438183, 36.033630, 27.845320>,  <37.277138, 35.375126, 27.621859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438183, 36.033630, 27.845320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.079826, 35.962837, 28.008322>,  <36.864815, 35.920361, 28.106123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.079826, 35.962837, 28.008322>,  <37.438183, 36.033630, 27.845320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079826, 35.962837, 28.008322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281306, 0.483972, 0.828636,
		-0.343879, 0.856999, -0.383798,
		-0.895888, -0.176985, 0.407507,
		36.811062, 35.909740, 28.130573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093521, 36.810310, 28.082916>,  <37.438183, 36.033630, 27.845320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093521, 36.810310, 28.082916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964596, 36.489964, 28.284800>,  <36.887241, 36.297756, 28.405930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964596, 36.489964, 28.284800>,  <37.093521, 36.810310, 28.082916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964596, 36.489964, 28.284800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322395, 0.408423, 0.853963,
		-0.890043, 0.437958, 0.126555,
		-0.322312, -0.800864, 0.504710,
		36.867901, 36.249702, 28.436213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942616, 37.139282, 28.805408>,  <37.093521, 36.810310, 28.082916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942616, 37.139282, 28.805408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.945976, 36.742016, 28.851978>,  <36.947994, 36.503658, 28.879919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.945976, 36.742016, 28.851978>,  <36.942616, 37.139282, 28.805408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945976, 36.742016, 28.851978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337824, 0.112402, 0.934474,
		-0.941172, 0.031477, 0.336459,
		0.008405, -0.993164, 0.116423,
		36.948498, 36.444065, 28.886906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632359, 36.992027, 29.412924>,  <36.942616, 37.139282, 28.805408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632359, 36.992027, 29.412924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.867043, 36.673584, 29.353609>,  <37.007854, 36.482517, 29.318020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.867043, 36.673584, 29.353609>,  <36.632359, 36.992027, 29.412924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867043, 36.673584, 29.353609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346148, 0.081007, 0.934676,
		-0.732089, -0.599712, 0.323098,
		0.586709, -0.796105, -0.148285,
		37.043056, 36.434753, 29.309124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481453, 36.493153, 29.954754>,  <36.632359, 36.992027, 29.412924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481453, 36.493153, 29.954754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838108, 36.361794, 29.830090>,  <37.052101, 36.282978, 29.755291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838108, 36.361794, 29.830090>,  <36.481453, 36.493153, 29.954754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838108, 36.361794, 29.830090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349583, 0.061950, 0.934855,
		-0.287696, -0.942506, 0.170039,
		0.891640, -0.328397, -0.311661,
		37.105598, 36.263275, 29.736591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681408, 35.907097, 30.426838>,  <36.481453, 36.493153, 29.954754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681408, 35.907097, 30.426838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020794, 36.054955, 30.275330>,  <37.224426, 36.143669, 30.184423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020794, 36.054955, 30.275330>,  <36.681408, 35.907097, 30.426838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020794, 36.054955, 30.275330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355696, 0.131678, 0.925279,
		0.391896, -0.919797, -0.019755,
		0.848467, 0.369640, -0.378773,
		37.275333, 36.165848, 30.161697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342682, 35.662926, 30.846519>,  <36.681408, 35.907097, 30.426838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342682, 35.662926, 30.846519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.445221, 35.981396, 30.627289>,  <37.506744, 36.172478, 30.495750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.445221, 35.981396, 30.627289>,  <37.342682, 35.662926, 30.846519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445221, 35.981396, 30.627289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550485, 0.345828, 0.759848,
		0.794514, -0.496491, -0.349633,
		0.256345, 0.796178, -0.548076,
		37.522125, 36.220249, 30.462866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032276, 35.723923, 30.923925>,  <37.342682, 35.662926, 30.846519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032276, 35.723923, 30.923925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927273, 36.090218, 30.802258>,  <37.864273, 36.309994, 30.729256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927273, 36.090218, 30.802258>,  <38.032276, 35.723923, 30.923925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927273, 36.090218, 30.802258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432074, 0.393409, 0.811505,
		0.862788, 0.081599, -0.498937,
		-0.262505, 0.915735, -0.304172,
		37.848522, 36.364937, 30.711006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798992, 36.096130, 30.801956>,  <38.032276, 35.723923, 30.923925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798992, 36.096130, 30.801956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.544674, 36.404755, 30.810558>,  <38.392082, 36.589928, 30.815720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.544674, 36.404755, 30.810558>,  <38.798992, 36.096130, 30.801956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544674, 36.404755, 30.810558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527519, 0.414022, 0.741829,
		0.563460, 0.482996, -0.670245,
		-0.635796, 0.771557, 0.021504,
		38.353935, 36.636223, 30.817009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250515, 36.761536, 30.698076>,  <38.798992, 36.096130, 30.801956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250515, 36.761536, 30.698076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892994, 36.807728, 30.871410>,  <38.678482, 36.835442, 30.975410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892994, 36.807728, 30.871410>,  <39.250515, 36.761536, 30.698076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892994, 36.807728, 30.871410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448289, 0.203542, 0.870406,
		0.012311, 0.972232, -0.233695,
		-0.893804, 0.115479, 0.433335,
		38.624851, 36.842373, 31.001411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.763531, 33.487419, 24.530806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471725, 33.716972, 24.679651>,  <34.296642, 33.854702, 24.768959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471725, 33.716972, 24.679651>,  <34.763531, 33.487419, 24.530806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471725, 33.716972, 24.679651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682710, 0.578052, 0.446949,
		0.041395, 0.580101, -0.813492,
		-0.729516, 0.573881, 0.372112,
		34.252872, 33.889137, 24.791285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822521, 34.350967, 24.346203>,  <34.763531, 33.487419, 24.530806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822521, 34.350967, 24.346203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612068, 34.322464, 24.685167>,  <34.485794, 34.305363, 24.888546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612068, 34.322464, 24.685167>,  <34.822521, 34.350967, 24.346203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612068, 34.322464, 24.685167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449841, 0.822331, 0.348445,
		-0.721682, 0.564529, -0.400602,
		-0.526135, -0.071259, 0.847410,
		34.454227, 34.301086, 24.939390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604969, 35.083229, 24.681707>,  <34.822521, 34.350967, 24.346203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604969, 35.083229, 24.681707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559265, 34.858807, 25.009649>,  <34.531845, 34.724152, 25.206413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559265, 34.858807, 25.009649>,  <34.604969, 35.083229, 24.681707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559265, 34.858807, 25.009649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502766, 0.679118, 0.534813,
		-0.856839, 0.473300, 0.204487,
		-0.114256, -0.561058, 0.819854,
		34.524990, 34.690491, 25.255606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311428, 35.458008, 25.351101>,  <34.604969, 35.083229, 24.681707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311428, 35.458008, 25.351101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492458, 35.129475, 25.490002>,  <34.601074, 34.932354, 25.573341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492458, 35.129475, 25.490002>,  <34.311428, 35.458008, 25.351101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492458, 35.129475, 25.490002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480508, 0.552661, 0.680938,
		-0.751193, -0.141316, 0.644778,
		0.452571, -0.821337, 0.347252,
		34.628231, 34.883072, 25.594177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431061, 35.652187, 26.028122>,  <34.311428, 35.458008, 25.351101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431061, 35.652187, 26.028122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652508, 35.319118, 26.033157>,  <34.785378, 35.119278, 26.036179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652508, 35.319118, 26.033157>,  <34.431061, 35.652187, 26.028122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652508, 35.319118, 26.033157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452552, 0.313507, 0.834811,
		-0.699074, -0.456469, 0.550393,
		0.553618, -0.832676, 0.012589,
		34.818592, 35.069317, 26.036934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379623, 35.200855, 26.655903>,  <34.431061, 35.652187, 26.028122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379623, 35.200855, 26.655903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739212, 35.150444, 26.488110>,  <34.954964, 35.120197, 26.387434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739212, 35.150444, 26.488110>,  <34.379623, 35.200855, 26.655903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739212, 35.150444, 26.488110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437993, 0.266505, 0.858567,
		0.003588, -0.955558, 0.294781,
		0.898972, -0.126031, -0.419484,
		35.008904, 35.112637, 26.362265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710705, 35.011555, 27.221907>,  <34.379623, 35.200855, 26.655903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710705, 35.011555, 27.221907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021255, 35.079617, 26.979158>,  <35.207584, 35.120453, 26.833509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021255, 35.079617, 26.979158>,  <34.710705, 35.011555, 27.221907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021255, 35.079617, 26.979158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564873, 0.239260, 0.789729,
		0.279576, -0.955930, 0.089640,
		0.776373, 0.170154, -0.606871,
		35.254169, 35.130661, 26.797098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273521, 34.664089, 27.566776>,  <34.710705, 35.011555, 27.221907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273521, 34.664089, 27.566776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438278, 34.935242, 27.323195>,  <35.537132, 35.097931, 27.177046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438278, 34.935242, 27.323195>,  <35.273521, 34.664089, 27.566776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438278, 34.935242, 27.323195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644053, 0.256186, 0.720808,
		0.644627, -0.689093, -0.331069,
		0.411888, 0.677879, -0.608956,
		35.561844, 35.138607, 27.140507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092667, 34.449833, 27.502306>,  <35.273521, 34.664089, 27.566776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092667, 34.449833, 27.502306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018444, 34.834194, 27.420105>,  <35.973911, 35.064812, 27.370785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018444, 34.834194, 27.420105>,  <36.092667, 34.449833, 27.502306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018444, 34.834194, 27.420105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746795, 0.273829, 0.606065,
		0.638643, -0.041006, -0.768410,
		-0.185560, 0.960904, -0.205502,
		35.962776, 35.122467, 27.358454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614258, 34.046989, 27.291761>,  <36.092667, 34.449833, 27.502306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614258, 34.046989, 27.291761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789162, 33.693501, 27.358492>,  <36.894104, 33.481407, 27.398531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789162, 33.693501, 27.358492>,  <36.614258, 34.046989, 27.291761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789162, 33.693501, 27.358492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831066, -0.467950, -0.300587,
		0.343704, -0.007210, -0.939050,
		0.437261, -0.883726, 0.166828,
		36.920341, 33.428383, 27.408541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633705, 33.641403, 26.608410>,  <36.614258, 34.046989, 27.291761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633705, 33.641403, 26.608410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679382, 33.381344, 26.908882>,  <36.706791, 33.225307, 27.089165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679382, 33.381344, 26.908882>,  <36.633705, 33.641403, 26.608410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679382, 33.381344, 26.908882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873759, -0.425549, -0.235482,
		0.472762, -0.629458, -0.616667,
		0.114196, -0.650146, 0.751179,
		36.713642, 33.186298, 27.134235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538460, 32.990894, 26.338968>,  <36.633705, 33.641403, 26.608410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538460, 32.990894, 26.338968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476955, 32.932419, 26.729862>,  <36.440052, 32.897335, 26.964397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476955, 32.932419, 26.729862>,  <36.538460, 32.990894, 26.338968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476955, 32.932419, 26.729862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844531, -0.493975, -0.206778,
		0.512957, -0.857099, -0.047505,
		-0.153763, -0.146188, 0.977234,
		36.430828, 32.888561, 27.023033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256691, 32.321449, 26.379051>,  <36.538460, 32.990894, 26.338968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256691, 32.321449, 26.379051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153809, 32.445858, 26.745026>,  <36.092079, 32.520504, 26.964611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153809, 32.445858, 26.745026>,  <36.256691, 32.321449, 26.379051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153809, 32.445858, 26.745026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813985, -0.580024, -0.031650,
		0.520841, -0.752885, 0.402353,
		-0.257203, 0.311024, 0.914938,
		36.076649, 32.539165, 27.019506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096947, 31.701309, 26.746620>,  <36.256691, 32.321449, 26.379051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096947, 31.701309, 26.746620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912865, 31.983351, 26.962412>,  <35.802414, 32.152576, 27.091887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912865, 31.983351, 26.962412>,  <36.096947, 31.701309, 26.746620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912865, 31.983351, 26.962412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847478, -0.529966, -0.030282,
		0.264554, -0.471134, 0.841454,
		-0.460208, 0.705102, 0.539480,
		35.774803, 32.194881, 27.124256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902950, 31.315819, 27.299629>,  <36.096947, 31.701309, 26.746620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902950, 31.315819, 27.299629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664440, 31.636267, 27.278975>,  <35.521336, 31.828535, 27.266582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664440, 31.636267, 27.278975>,  <35.902950, 31.315819, 27.299629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664440, 31.636267, 27.278975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792633, -0.597714, -0.120297,
		-0.127236, -0.030801, 0.991394,
		-0.596275, 0.801118, -0.051637,
		35.485558, 31.876602, 27.263483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313427, 31.067970, 27.695774>,  <35.902950, 31.315819, 27.299629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313427, 31.067970, 27.695774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231052, 31.359190, 27.434229>,  <35.181629, 31.533922, 27.277302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231052, 31.359190, 27.434229>,  <35.313427, 31.067970, 27.695774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231052, 31.359190, 27.434229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755427, -0.543013, -0.366697,
		-0.622029, 0.418430, 0.661813,
		-0.205936, 0.728048, -0.653863,
		35.169273, 31.577604, 27.238070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600361, 30.966686, 27.549429>,  <35.313427, 31.067970, 27.695774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600361, 30.966686, 27.549429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712231, 31.199574, 27.244062>,  <34.779350, 31.339306, 27.060843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712231, 31.199574, 27.244062>,  <34.600361, 30.966686, 27.549429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712231, 31.199574, 27.244062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606398, -0.509353, -0.610607,
		-0.744356, 0.633703, 0.210606,
		0.279670, 0.582220, -0.763416,
		34.796131, 31.374239, 27.015038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927780, 31.173386, 27.173012>,  <34.600361, 30.966686, 27.549429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927780, 31.173386, 27.173012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232288, 31.219639, 26.917795>,  <34.414993, 31.247391, 26.764666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232288, 31.219639, 26.917795>,  <33.927780, 31.173386, 27.173012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232288, 31.219639, 26.917795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525773, -0.465822, -0.711739,
		-0.379514, 0.877291, -0.293820,
		0.761270, 0.115633, -0.638042,
		34.460670, 31.254328, 26.726383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577614, 31.249725, 26.559502>,  <33.927780, 31.173386, 27.173012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577614, 31.249725, 26.559502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945641, 31.174423, 26.422071>,  <34.166454, 31.129242, 26.339613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945641, 31.174423, 26.422071>,  <33.577614, 31.249725, 26.559502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945641, 31.174423, 26.422071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386273, -0.582314, -0.715334,
		-0.065402, 0.790866, -0.608484,
		0.920063, -0.188257, -0.343575,
		34.221661, 31.117947, 26.318998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602325, 31.338404, 25.845160>,  <33.577614, 31.249725, 26.559502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602325, 31.338404, 25.845160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919609, 31.101097, 25.900085>,  <34.109978, 30.958714, 25.933041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919609, 31.101097, 25.900085>,  <33.602325, 31.338404, 25.845160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919609, 31.101097, 25.900085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355305, -0.634029, -0.686852,
		0.494546, 0.496029, -0.713708,
		0.793210, -0.593264, 0.137315,
		34.157574, 30.923119, 25.941280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839401, 31.192381, 25.182154>,  <33.602325, 31.338404, 25.845160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839401, 31.192381, 25.182154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989594, 30.917683, 25.431118>,  <34.079708, 30.752863, 25.580496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989594, 30.917683, 25.431118>,  <33.839401, 31.192381, 25.182154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989594, 30.917683, 25.431118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219883, -0.718379, -0.659987,
		0.900371, 0.110953, -0.420739,
		0.375477, -0.686747, 0.622411,
		34.102238, 30.711658, 25.617842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198555, 30.805010, 24.786779>,  <33.839401, 31.192381, 25.182154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198555, 30.805010, 24.786779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125584, 30.557636, 25.092527>,  <34.081802, 30.409212, 25.275976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125584, 30.557636, 25.092527>,  <34.198555, 30.805010, 24.786779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125584, 30.557636, 25.092527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191555, -0.740163, -0.644566,
		0.964379, -0.264003, 0.016560,
		-0.182425, -0.618434, 0.764369,
		34.070858, 30.372107, 25.321838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632210, 30.179382, 24.634899>,  <34.198555, 30.805010, 24.786779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632210, 30.179382, 24.634899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362762, 30.071482, 24.910137>,  <34.201096, 30.006741, 25.075279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362762, 30.071482, 24.910137>,  <34.632210, 30.179382, 24.634899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362762, 30.071482, 24.910137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127288, -0.874760, -0.467540,
		0.728036, -0.402530, 0.554918,
		-0.673619, -0.269751, 0.688094,
		34.160675, 29.990557, 25.116566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.091648, 30.508512, 27.987448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405548, 30.590734, 27.753553>,  <30.593887, 30.640068, 27.613216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405548, 30.590734, 27.753553>,  <30.091648, 30.508512, 27.987448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405548, 30.590734, 27.753553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589857, 0.042066, 0.806412,
		0.190359, -0.977741, -0.088237,
		0.784750, 0.205554, -0.584735,
		30.640974, 30.652401, 27.578133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643404, 30.033752, 28.235538>,  <30.091648, 30.508512, 27.987448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643404, 30.033752, 28.235538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.826923, 30.300589, 28.000765>,  <30.937035, 30.460691, 27.859901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.826923, 30.300589, 28.000765>,  <30.643404, 30.033752, 28.235538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826923, 30.300589, 28.000765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536133, 0.318925, 0.781567,
		0.708566, -0.673257, -0.211328,
		0.458798, 0.667092, -0.586935,
		30.964563, 30.500717, 27.824684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342625, 29.922955, 28.195910>,  <30.643404, 30.033752, 28.235538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342625, 29.922955, 28.195910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.265329, 30.306040, 28.110636>,  <31.218952, 30.535891, 28.059471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.265329, 30.306040, 28.110636>,  <31.342625, 29.922955, 28.195910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265329, 30.306040, 28.110636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675929, 0.287438, 0.678601,
		0.711182, -0.012967, -0.702889,
		-0.193238, 0.957711, -0.213186,
		31.207357, 30.593353, 28.046680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040779, 30.193840, 28.273376>,  <31.342625, 29.922955, 28.195910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040779, 30.193840, 28.273376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.824451, 30.529545, 28.250919>,  <31.694654, 30.730968, 28.237444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.824451, 30.529545, 28.250919>,  <32.040779, 30.193840, 28.273376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824451, 30.529545, 28.250919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633240, 0.450176, 0.629563,
		0.553643, 0.304928, -0.774918,
		-0.540821, 0.839262, -0.056144,
		31.662205, 30.781322, 28.234076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515518, 30.707384, 28.237776>,  <32.040779, 30.193840, 28.273376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515518, 30.707384, 28.237776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.210171, 30.946926, 28.334637>,  <32.026962, 31.090651, 28.392754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.210171, 30.946926, 28.334637>,  <32.515518, 30.707384, 28.237776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210171, 30.946926, 28.334637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593393, 0.501987, 0.629201,
		0.255241, 0.624006, -0.738558,
		-0.763372, 0.598853, 0.242154,
		31.981159, 31.126581, 28.407282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646694, 31.428389, 28.010309>,  <32.515518, 30.707384, 28.237776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646694, 31.428389, 28.010309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.393562, 31.423672, 28.319990>,  <32.241684, 31.420841, 28.505798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.393562, 31.423672, 28.319990>,  <32.646694, 31.428389, 28.010309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393562, 31.423672, 28.319990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676396, 0.478225, 0.560169,
		-0.376848, 0.878158, -0.294659,
		-0.632831, -0.011793, 0.774201,
		32.203712, 31.420134, 28.552250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699474, 32.082798, 28.265730>,  <32.646694, 31.428389, 28.010309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699474, 32.082798, 28.265730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.506821, 31.923800, 28.578146>,  <32.391228, 31.828400, 28.765596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.506821, 31.923800, 28.578146>,  <32.699474, 32.082798, 28.265730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506821, 31.923800, 28.578146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558070, 0.548049, 0.623057,
		-0.675713, 0.735960, -0.042125,
		-0.481632, -0.397499, 0.781041,
		32.362331, 31.804550, 28.812458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511879, 32.671570, 28.601318>,  <32.699474, 32.082798, 28.265730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511879, 32.671570, 28.601318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.473106, 32.385303, 28.877991>,  <32.449844, 32.213543, 29.043993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.473106, 32.385303, 28.877991>,  <32.511879, 32.671570, 28.601318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473106, 32.385303, 28.877991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324385, 0.634290, 0.701749,
		-0.940946, 0.292392, 0.170671,
		-0.096931, -0.715670, 0.691680,
		32.444027, 32.170601, 29.085495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229218, 33.013691, 29.190327>,  <32.511879, 32.671570, 28.601318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229218, 33.013691, 29.190327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404884, 32.680737, 29.325539>,  <32.510284, 32.480965, 29.406666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404884, 32.680737, 29.325539>,  <32.229218, 33.013691, 29.190327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404884, 32.680737, 29.325539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299293, 0.490317, 0.818543,
		-0.847086, -0.258307, 0.464460,
		0.439168, -0.832386, 0.338031,
		32.536636, 32.431023, 29.426949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129185, 32.993587, 29.957880>,  <32.229218, 33.013691, 29.190327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129185, 32.993587, 29.957880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.429604, 32.737202, 29.894520>,  <32.609856, 32.583370, 29.856504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.429604, 32.737202, 29.894520>,  <32.129185, 32.993587, 29.957880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429604, 32.737202, 29.894520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447479, 0.317751, 0.835941,
		-0.485475, -0.698714, 0.525464,
		0.751050, -0.640962, -0.158400,
		32.654919, 32.544914, 29.847000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108219, 32.657246, 30.597523>,  <32.129185, 32.993587, 29.957880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108219, 32.657246, 30.597523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.465260, 32.617733, 30.421562>,  <32.679482, 32.594025, 30.315985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.465260, 32.617733, 30.421562>,  <32.108219, 32.657246, 30.597523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465260, 32.617733, 30.421562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449621, 0.122847, 0.884731,
		-0.033350, -0.987498, 0.154066,
		0.892596, -0.098777, -0.439903,
		32.733040, 32.588100, 30.289591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540607, 32.101940, 31.025253>,  <32.108219, 32.657246, 30.597523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540607, 32.101940, 31.025253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793884, 32.298508, 30.786060>,  <32.945850, 32.416447, 30.642544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793884, 32.298508, 30.786060>,  <32.540607, 32.101940, 31.025253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793884, 32.298508, 30.786060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606556, 0.164873, 0.777758,
		0.480794, -0.855177, -0.193676,
		0.633188, 0.491416, -0.597982,
		32.983841, 32.445934, 30.606667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166695, 31.764366, 31.234781>,  <32.540607, 32.101940, 31.025253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166695, 31.764366, 31.234781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.259838, 32.113720, 31.063681>,  <33.315723, 32.323334, 30.961020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.259838, 32.113720, 31.063681>,  <33.166695, 31.764366, 31.234781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259838, 32.113720, 31.063681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734589, 0.130274, 0.665888,
		0.637303, -0.469281, -0.611245,
		0.232859, 0.873387, -0.427752,
		33.329697, 32.375736, 30.935354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923653, 31.865162, 31.175016>,  <33.166695, 31.764366, 31.234781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923653, 31.865162, 31.175016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.754589, 32.226784, 31.149578>,  <33.653152, 32.443756, 31.134315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.754589, 32.226784, 31.149578>,  <33.923653, 31.865162, 31.175016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754589, 32.226784, 31.149578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666035, 0.357435, 0.654704,
		0.614620, 0.234360, -0.753205,
		-0.422659, 0.904055, -0.063594,
		33.627792, 32.498001, 31.130499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720570, 31.683384, 30.839638>,  <33.923653, 31.865162, 31.175016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720570, 31.683384, 30.839638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.836056, 31.338667, 31.006468>,  <34.905346, 31.131836, 31.106565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.836056, 31.338667, 31.006468>,  <34.720570, 31.683384, 30.839638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836056, 31.338667, 31.006468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568518, -0.504829, -0.649566,
		0.770344, -0.049574, -0.635698,
		0.288717, -0.861795, 0.417076,
		34.922672, 31.080128, 31.131590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078587, 31.411955, 30.306585>,  <34.720570, 31.683384, 30.839638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078587, 31.411955, 30.306585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.944519, 31.117430, 30.541704>,  <34.864079, 30.940714, 30.682775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.944519, 31.117430, 30.541704>,  <35.078587, 31.411955, 30.306585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944519, 31.117430, 30.541704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397228, -0.455281, -0.796824,
		0.854324, -0.500563, -0.139886,
		-0.335173, -0.736312, 0.587795,
		34.843967, 30.896536, 30.718042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146343, 30.880102, 29.916466>,  <35.078587, 31.411955, 30.306585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146343, 30.880102, 29.916466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915539, 30.725182, 30.204092>,  <34.777054, 30.632229, 30.376667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915539, 30.725182, 30.204092>,  <35.146343, 30.880102, 29.916466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915539, 30.725182, 30.204092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434759, -0.599657, -0.671860,
		0.691403, -0.700293, 0.177629,
		-0.577016, -0.387300, 0.719064,
		34.742435, 30.608992, 30.419811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053894, 30.315056, 29.643852>,  <35.146343, 30.880102, 29.916466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053894, 30.315056, 29.643852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.754990, 30.311241, 29.909637>,  <34.575649, 30.308952, 30.069109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.754990, 30.311241, 29.909637>,  <35.053894, 30.315056, 29.643852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754990, 30.311241, 29.909637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548565, -0.555506, -0.624891,
		0.375073, -0.831458, 0.409876,
		-0.747259, -0.009536, 0.664464,
		34.530811, 30.308380, 30.108976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940636, 29.637766, 29.710228>,  <35.053894, 30.315056, 29.643852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940636, 29.637766, 29.710228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596634, 29.819109, 29.803913>,  <34.390232, 29.927916, 29.860125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596634, 29.819109, 29.803913>,  <34.940636, 29.637766, 29.710228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596634, 29.819109, 29.803913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488369, -0.598195, -0.635342,
		-0.147934, -0.660780, 0.735857,
		-0.860007, 0.453358, 0.234211,
		34.338631, 29.955116, 29.874176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531727, 29.097364, 29.851145>,  <34.940636, 29.637766, 29.710228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531727, 29.097364, 29.851145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.283894, 29.394400, 29.749414>,  <34.135193, 29.572620, 29.688375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.283894, 29.394400, 29.749414>,  <34.531727, 29.097364, 29.851145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283894, 29.394400, 29.749414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383750, -0.569220, -0.727135,
		-0.684729, -0.352922, 0.637646,
		-0.619583, 0.742586, -0.254327,
		34.098019, 29.617176, 29.673117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909229, 28.747791, 29.868273>,  <34.531727, 29.097364, 29.851145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909229, 28.747791, 29.868273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.824570, 29.076694, 29.656954>,  <33.773773, 29.274036, 29.530163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.824570, 29.076694, 29.656954>,  <33.909229, 28.747791, 29.868273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824570, 29.076694, 29.656954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531968, -0.550377, -0.643503,
		-0.819886, 0.144837, 0.553903,
		-0.211652, 0.822258, -0.528295,
		33.761074, 29.323372, 29.498465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100853, 28.768797, 29.776556>,  <33.909229, 28.747791, 29.868273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100853, 28.768797, 29.776556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.261814, 29.021534, 29.511574>,  <33.358391, 29.173176, 29.352585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.261814, 29.021534, 29.511574>,  <33.100853, 28.768797, 29.776556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261814, 29.021534, 29.511574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612340, -0.352148, -0.707836,
		-0.680523, 0.690483, 0.245197,
		0.402403, 0.631843, -0.662455,
		33.382534, 29.211086, 29.312838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557777, 29.189106, 29.334938>,  <33.100853, 28.768797, 29.776556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557777, 29.189106, 29.334938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.882172, 29.218851, 29.102812>,  <33.076809, 29.236698, 28.963535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.882172, 29.218851, 29.102812>,  <32.557777, 29.189106, 29.334938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882172, 29.218851, 29.102812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533783, -0.312034, -0.785945,
		-0.239525, 0.947156, -0.213362,
		0.810989, 0.074364, -0.580316,
		33.125469, 29.241161, 28.928717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327385, 29.506435, 28.763474>,  <32.557777, 29.189106, 29.334938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327385, 29.506435, 28.763474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.663040, 29.314831, 28.660410>,  <32.864433, 29.199867, 28.598572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.663040, 29.314831, 28.660410>,  <32.327385, 29.506435, 28.763474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663040, 29.314831, 28.660410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454077, -0.356179, -0.816670,
		0.299423, 0.802299, -0.516394,
		0.839142, -0.479012, -0.257657,
		32.914783, 29.171127, 28.583113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490021, 29.672525, 28.015293>,  <32.327385, 29.506435, 28.763474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490021, 29.672525, 28.015293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.686749, 29.331223, 28.084660>,  <32.804783, 29.126442, 28.126280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.686749, 29.331223, 28.084660>,  <32.490021, 29.672525, 28.015293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686749, 29.331223, 28.084660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601879, -0.477080, -0.640419,
		0.629174, 0.210592, -0.748192,
		0.491815, -0.853256, 0.173415,
		32.834293, 29.075245, 28.136684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575726, 29.341051, 27.399651>,  <32.490021, 29.672525, 28.015293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575726, 29.341051, 27.399651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.669651, 29.028774, 27.631300>,  <32.726006, 28.841408, 27.770290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.669651, 29.028774, 27.631300>,  <32.575726, 29.341051, 27.399651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669651, 29.028774, 27.631300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407824, -0.619933, -0.670345,
		0.882351, -0.078775, -0.463953,
		0.234813, -0.780690, 0.579125,
		32.740093, 28.794567, 27.805038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979549, 28.811069, 27.069628>,  <32.575726, 29.341051, 27.399651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979549, 28.811069, 27.069628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.766365, 28.621326, 27.349894>,  <32.638454, 28.507481, 27.518053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.766365, 28.621326, 27.349894>,  <32.979549, 28.811069, 27.069628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766365, 28.621326, 27.349894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363272, -0.619595, -0.695799,
		0.764187, -0.625368, 0.157901,
		-0.532965, -0.474359, 0.700665,
		32.606476, 28.479019, 27.560093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050156, 28.013866, 27.190159>,  <32.979549, 28.811069, 27.069628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050156, 28.013866, 27.190159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.688328, 28.100092, 27.337286>,  <32.471233, 28.151827, 27.425562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.688328, 28.100092, 27.337286>,  <33.050156, 28.013866, 27.190159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688328, 28.100092, 27.337286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410319, -0.674421, -0.613836,
		0.115742, -0.706179, 0.698509,
		-0.904567, 0.215565, 0.367818,
		32.416958, 28.164761, 27.447632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725666, 27.680969, 27.152224>,  <33.050156, 28.013866, 27.190159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725666, 27.680969, 27.152224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861668, 27.468489, 26.841812>,  <33.943268, 27.341000, 26.655565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861668, 27.468489, 26.841812>,  <33.725666, 27.680969, 27.152224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861668, 27.468489, 26.841812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929373, 0.315932, 0.190924,
		0.143754, -0.786137, 0.601102,
		0.340000, -0.531203, -0.776031,
		33.963669, 27.309128, 26.609003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265182, 27.248907, 27.402403>,  <33.725666, 27.680969, 27.152224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265182, 27.248907, 27.402403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345928, 27.246534, 27.010645>,  <34.394375, 27.245111, 26.775591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345928, 27.246534, 27.010645>,  <34.265182, 27.248907, 27.402403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345928, 27.246534, 27.010645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942361, 0.273627, 0.192575,
		0.266846, -0.961818, 0.060827,
		0.201866, -0.005933, -0.979395,
		34.406487, 27.244755, 26.716825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813534, 26.922779, 27.418633>,  <34.265182, 27.248907, 27.402403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813534, 26.922779, 27.418633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812725, 27.126654, 27.074490>,  <34.812241, 27.248980, 26.868004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812725, 27.126654, 27.074490>,  <34.813534, 26.922779, 27.418633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812725, 27.126654, 27.074490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963611, 0.230969, 0.134564,
		0.267301, -0.828777, -0.491608,
		-0.002023, 0.509688, -0.860357,
		34.812119, 27.279560, 26.816383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482414, 26.755373, 27.141624>,  <34.813534, 26.922779, 27.418633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482414, 26.755373, 27.141624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392838, 27.073738, 26.916637>,  <35.339092, 27.264757, 26.781645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392838, 27.073738, 26.916637>,  <35.482414, 26.755373, 27.141624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392838, 27.073738, 26.916637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940071, 0.328669, 0.090790,
		0.257126, -0.508427, -0.821820,
		-0.223946, 0.795914, -0.562467,
		35.325653, 27.312511, 26.747898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956219, 26.824682, 26.576450>,  <35.482414, 26.755373, 27.141624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956219, 26.824682, 26.576450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808979, 27.186943, 26.660633>,  <35.720634, 27.404301, 26.711143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808979, 27.186943, 26.660633>,  <35.956219, 26.824682, 26.576450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808979, 27.186943, 26.660633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929786, 0.358599, 0.083092,
		-0.000218, 0.226268, -0.974065,
		-0.368100, 0.905654, 0.210459,
		35.698547, 27.458639, 26.723770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472702, 27.345625, 26.371117>,  <35.956219, 26.824682, 26.576450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472702, 27.345625, 26.371117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238831, 27.573513, 26.602139>,  <36.098507, 27.710245, 26.740751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238831, 27.573513, 26.602139>,  <36.472702, 27.345625, 26.371117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238831, 27.573513, 26.602139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809436, 0.457422, 0.368209,
		-0.054410, 0.682777, -0.728598,
		-0.584682, 0.569719, 0.577553,
		36.063427, 27.744429, 26.775404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656174, 28.170858, 26.260487>,  <36.472702, 27.345625, 26.371117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656174, 28.170858, 26.260487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486923, 28.108171, 26.617453>,  <36.385372, 28.070560, 26.831633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486923, 28.108171, 26.617453>,  <36.656174, 28.170858, 26.260487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486923, 28.108171, 26.617453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665934, 0.614093, 0.423583,
		-0.614408, 0.773518, -0.155476,
		-0.423125, -0.156716, 0.892415,
		36.359985, 28.061157, 26.885178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569397, 28.804831, 26.427002>,  <36.656174, 28.170858, 26.260487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569397, 28.804831, 26.427002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558521, 28.599226, 26.769943>,  <36.551994, 28.475863, 26.975708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558521, 28.599226, 26.769943>,  <36.569397, 28.804831, 26.427002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558521, 28.599226, 26.769943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527912, 0.720930, 0.448965,
		-0.848863, 0.464815, 0.251749,
		-0.027192, -0.514011, 0.857352,
		36.550365, 28.445023, 27.027149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489601, 29.327349, 26.794491>,  <36.569397, 28.804831, 26.427002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489601, 29.327349, 26.794491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600723, 29.026840, 27.033962>,  <36.667397, 28.846535, 27.177645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600723, 29.026840, 27.033962>,  <36.489601, 29.327349, 26.794491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600723, 29.026840, 27.033962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464502, 0.650565, 0.600836,
		-0.840870, 0.111174, 0.529695,
		0.277804, -0.751270, 0.598681,
		36.684063, 28.801460, 27.213566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466354, 29.534893, 27.440863>,  <36.489601, 29.327349, 26.794491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466354, 29.534893, 27.440863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685551, 29.204653, 27.494671>,  <36.817066, 29.006510, 27.526957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685551, 29.204653, 27.494671>,  <36.466354, 29.534893, 27.440863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685551, 29.204653, 27.494671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530355, 0.467279, 0.707371,
		-0.646864, -0.316286, 0.693924,
		0.547988, -0.825599, 0.134522,
		36.849949, 28.956974, 27.535027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520138, 29.287876, 28.145844>,  <36.466354, 29.534893, 27.440863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520138, 29.287876, 28.145844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.859428, 29.150562, 27.984514>,  <37.063004, 29.068172, 27.887716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.859428, 29.150562, 27.984514>,  <36.520138, 29.287876, 28.145844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859428, 29.150562, 27.984514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529295, 0.522037, 0.668823,
		-0.019049, -0.780789, 0.624504,
		0.848224, -0.343287, -0.403323,
		37.113895, 29.047577, 27.863518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910732, 29.037983, 28.682745>,  <36.520138, 29.287876, 28.145844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910732, 29.037983, 28.682745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192326, 29.052851, 28.399048>,  <37.361282, 29.061771, 28.228830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192326, 29.052851, 28.399048>,  <36.910732, 29.037983, 28.682745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192326, 29.052851, 28.399048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681216, 0.247111, 0.689117,
		0.200877, -0.968274, 0.148641,
		0.703985, 0.037171, -0.709242,
		37.403522, 29.064003, 28.186275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450493, 28.739637, 28.988794>,  <36.910732, 29.037983, 28.682745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450493, 28.739637, 28.988794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615685, 28.946407, 28.688864>,  <37.714798, 29.070469, 28.508905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615685, 28.946407, 28.688864>,  <37.450493, 28.739637, 28.988794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615685, 28.946407, 28.688864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708851, 0.334488, 0.621006,
		0.571820, -0.787977, -0.228285,
		0.412980, 0.516924, -0.749825,
		37.739578, 29.101484, 28.463917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185894, 28.682138, 29.089046>,  <37.450493, 28.739637, 28.988794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185894, 28.682138, 29.089046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165813, 28.995260, 28.840952>,  <38.153767, 29.183134, 28.692095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165813, 28.995260, 28.840952>,  <38.185894, 28.682138, 29.089046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165813, 28.995260, 28.840952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759276, 0.433359, 0.485489,
		0.648829, -0.446560, -0.616121,
		-0.050202, 0.782805, -0.620238,
		38.150753, 29.230103, 28.654881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.804237, 29.462418, 24.667511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441730, 29.495010, 24.833418>,  <34.224224, 29.514566, 24.932962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441730, 29.495010, 24.833418>,  <34.804237, 29.462418, 24.667511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441730, 29.495010, 24.833418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254204, -0.889036, -0.380783,
		0.337718, -0.450529, 0.826421,
		-0.906271, 0.081482, 0.414769,
		34.169849, 29.519455, 24.957850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770443, 28.822292, 25.039259>,  <34.804237, 29.462418, 24.667511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770443, 28.822292, 25.039259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.414684, 28.985582, 24.956968>,  <34.201229, 29.083557, 24.907593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.414684, 28.985582, 24.956968>,  <34.770443, 28.822292, 25.039259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414684, 28.985582, 24.956968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232807, -0.791792, -0.564682,
		-0.393412, -0.454332, 0.799256,
		-0.889398, 0.408225, -0.205729,
		34.147865, 29.108049, 24.895250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330868, 28.216837, 24.889204>,  <34.770443, 28.822292, 25.039259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330868, 28.216837, 24.889204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103394, 28.514814, 24.749685>,  <33.966911, 28.693602, 24.665974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103394, 28.514814, 24.749685>,  <34.330868, 28.216837, 24.889204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103394, 28.514814, 24.749685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397133, -0.619998, -0.676674,
		-0.720337, -0.246295, 0.648424,
		-0.568683, 0.744943, -0.348796,
		33.932789, 28.738297, 24.645046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612644, 28.010935, 24.898289>,  <34.330868, 28.216837, 24.889204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612644, 28.010935, 24.898289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629101, 28.299528, 24.621805>,  <33.638973, 28.472685, 24.455915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629101, 28.299528, 24.621805>,  <33.612644, 28.010935, 24.898289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629101, 28.299528, 24.621805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238255, -0.664753, -0.708052,
		-0.970331, 0.193811, 0.144551,
		0.041138, 0.721485, -0.691207,
		33.641441, 28.515974, 24.414444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250957, 27.722446, 24.343740>,  <33.612644, 28.010935, 24.898289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250957, 27.722446, 24.343740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390251, 28.044294, 24.151360>,  <33.473827, 28.237404, 24.035931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390251, 28.044294, 24.151360>,  <33.250957, 27.722446, 24.343740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390251, 28.044294, 24.151360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322760, -0.378776, -0.867384,
		-0.880089, 0.457288, 0.127796,
		0.348238, 0.804622, -0.480950,
		33.494724, 28.285681, 24.007074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687290, 28.215200, 24.033892>,  <33.250957, 27.722446, 24.343740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687290, 28.215200, 24.033892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015678, 28.300825, 23.822163>,  <33.212711, 28.352200, 23.695126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015678, 28.300825, 23.822163>,  <32.687290, 28.215200, 24.033892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015678, 28.300825, 23.822163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469800, -0.273611, -0.839300,
		-0.324489, 0.937718, -0.124061,
		0.820972, 0.214060, -0.529324,
		33.261971, 28.365044, 23.663366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344433, 28.412542, 23.418779>,  <32.687290, 28.215200, 24.033892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344433, 28.412542, 23.418779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724792, 28.349897, 23.312002>,  <32.953011, 28.312311, 23.247936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724792, 28.349897, 23.312002>,  <32.344433, 28.412542, 23.418779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724792, 28.349897, 23.312002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301494, -0.273944, -0.913267,
		0.069901, 0.948909, -0.307711,
		0.950902, -0.156611, -0.266942,
		33.010063, 28.302914, 23.231920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625862, 28.840446, 22.885904>,  <32.344433, 28.412542, 23.418779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625862, 28.840446, 22.885904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834980, 28.499846, 22.869762>,  <32.960449, 28.295485, 22.860077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834980, 28.499846, 22.869762>,  <32.625862, 28.840446, 22.885904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834980, 28.499846, 22.869762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429794, -0.222404, -0.875108,
		0.736181, 0.474846, -0.482242,
		0.522794, -0.851503, -0.040357,
		32.991817, 28.244394, 22.857655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805405, 28.761341, 22.165026>,  <32.625862, 28.840446, 22.885904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805405, 28.761341, 22.165026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853329, 28.392841, 22.313051>,  <32.882084, 28.171741, 22.401867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853329, 28.392841, 22.313051>,  <32.805405, 28.761341, 22.165026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853329, 28.392841, 22.313051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426739, -0.384345, -0.818641,
		0.896403, -0.059835, -0.439183,
		0.119814, -0.921249, 0.370062,
		32.889275, 28.116467, 22.424070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084560, 28.374594, 21.654016>,  <32.805405, 28.761341, 22.165026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084560, 28.374594, 21.654016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943886, 28.096693, 21.904978>,  <32.859482, 27.929953, 22.055555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943886, 28.096693, 21.904978>,  <33.084560, 28.374594, 21.654016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943886, 28.096693, 21.904978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340402, -0.529427, -0.777067,
		0.872032, -0.486857, -0.050300,
		-0.351690, -0.694750, 0.627405,
		32.838379, 27.888268, 22.093199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299839, 27.681221, 21.425936>,  <33.084560, 28.374594, 21.654016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299839, 27.681221, 21.425936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.975246, 27.635698, 21.655210>,  <32.780491, 27.608385, 21.792776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.975246, 27.635698, 21.655210>,  <33.299839, 27.681221, 21.425936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975246, 27.635698, 21.655210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430314, -0.547259, -0.717870,
		0.395380, -0.829190, 0.395119,
		-0.811483, -0.113807, 0.573188,
		32.731800, 27.601557, 21.827168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158504, 27.000736, 21.440081>,  <33.299839, 27.681221, 21.425936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158504, 27.000736, 21.440081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.819153, 27.188831, 21.537350>,  <32.615543, 27.301687, 21.595711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.819153, 27.188831, 21.537350>,  <33.158504, 27.000736, 21.440081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819153, 27.188831, 21.537350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512559, -0.614711, -0.599511,
		-0.132431, -0.633252, 0.762531,
		-0.848378, 0.470236, 0.243172,
		32.564640, 27.329903, 21.610300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606148, 26.561348, 21.684704>,  <33.158504, 27.000736, 21.440081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606148, 26.561348, 21.684704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453590, 26.889360, 21.514015>,  <32.362057, 27.086168, 21.411602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453590, 26.889360, 21.514015>,  <32.606148, 26.561348, 21.684704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453590, 26.889360, 21.514015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528859, -0.572161, -0.626849,
		-0.758189, -0.013399, 0.651897,
		-0.381389, 0.820032, -0.426720,
		32.339172, 27.135370, 21.386000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975071, 26.633492, 21.872972>,  <32.606148, 26.561348, 21.684704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975071, 26.633492, 21.872972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.069054, 26.730511, 21.496469>,  <32.125443, 26.788721, 21.270567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.069054, 26.730511, 21.496469>,  <31.975071, 26.633492, 21.872972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069054, 26.730511, 21.496469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488519, -0.807711, -0.330079,
		-0.840323, 0.537377, -0.071290,
		0.234958, 0.242547, -0.941258,
		32.139542, 26.803274, 21.214092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250692, 26.426821, 21.930199>,  <31.975071, 26.633492, 21.872972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250692, 26.426821, 21.930199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066935, 26.092533, 22.050554>,  <30.956680, 25.891960, 22.122766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066935, 26.092533, 22.050554>,  <31.250692, 26.426821, 21.930199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066935, 26.092533, 22.050554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269659, 0.191538, 0.943714,
		-0.846311, 0.514672, 0.137368,
		-0.459392, -0.835719, 0.300887,
		30.929117, 25.841818, 22.140820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042450, 26.625217, 22.545752>,  <31.250692, 26.426821, 21.930199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042450, 26.625217, 22.545752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.017822, 26.226891, 22.572756>,  <31.003046, 25.987894, 22.588959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.017822, 26.226891, 22.572756>,  <31.042450, 26.625217, 22.545752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017822, 26.226891, 22.572756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040260, 0.065104, 0.997066,
		-0.997290, 0.064107, 0.036083,
		-0.061569, -0.995817, 0.067509,
		30.999352, 25.928146, 22.593008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475477, 26.431313, 23.087942>,  <31.042450, 26.625217, 22.545752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475477, 26.431313, 23.087942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727659, 26.120846, 23.084059>,  <30.878969, 25.934566, 23.081728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727659, 26.120846, 23.084059>,  <30.475477, 26.431313, 23.087942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727659, 26.120846, 23.084059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227694, 0.172963, 0.958248,
		-0.742079, -0.606343, 0.285773,
		0.630455, -0.776165, -0.009709,
		30.916796, 25.887997, 23.081146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403925, 26.076103, 23.760439>,  <30.475477, 26.431313, 23.087942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403925, 26.076103, 23.760439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749289, 25.942974, 23.608780>,  <30.956507, 25.863096, 23.517784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749289, 25.942974, 23.608780>,  <30.403925, 26.076103, 23.760439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749289, 25.942974, 23.608780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418463, 0.052677, 0.906705,
		-0.281801, -0.941516, 0.184757,
		0.863410, -0.332824, -0.379146,
		31.008312, 25.843126, 23.495037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627424, 25.694126, 24.234770>,  <30.403925, 26.076103, 23.760439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627424, 25.694126, 24.234770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.965368, 25.753214, 24.029093>,  <31.168135, 25.788668, 23.905687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.965368, 25.753214, 24.029093>,  <30.627424, 25.694126, 24.234770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965368, 25.753214, 24.029093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489214, 0.175675, 0.854288,
		0.216527, -0.973302, 0.076154,
		0.844858, 0.147721, -0.514191,
		31.218826, 25.797531, 23.874836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141081, 25.282135, 24.584822>,  <30.627424, 25.694126, 24.234770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141081, 25.282135, 24.584822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.361645, 25.532190, 24.363859>,  <31.493982, 25.682224, 24.231281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.361645, 25.532190, 24.363859>,  <31.141081, 25.282135, 24.584822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361645, 25.532190, 24.363859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630725, 0.120997, 0.766516,
		0.546017, -0.771078, -0.327571,
		0.551409, 0.625138, -0.552405,
		31.527067, 25.719732, 24.198137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805279, 25.096441, 24.717972>,  <31.141081, 25.282135, 24.584822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805279, 25.096441, 24.717972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.864067, 25.460913, 24.564011>,  <31.899340, 25.679596, 24.471634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.864067, 25.460913, 24.564011>,  <31.805279, 25.096441, 24.717972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864067, 25.460913, 24.564011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594609, 0.229583, 0.770540,
		0.790468, -0.342115, -0.508053,
		0.146973, 0.911180, -0.384903,
		31.908159, 25.734266, 24.448540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482483, 25.181211, 24.655230>,  <31.805279, 25.096441, 24.717972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482483, 25.181211, 24.655230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328777, 25.550266, 24.668381>,  <32.236553, 25.771700, 24.676271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328777, 25.550266, 24.668381>,  <32.482483, 25.181211, 24.655230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328777, 25.550266, 24.668381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583828, 0.215256, 0.782822,
		0.715184, 0.320003, -0.621377,
		-0.384261, 0.922639, 0.032879,
		32.213497, 25.827059, 24.678244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064327, 25.615992, 24.528988>,  <32.482483, 25.181211, 24.655230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064327, 25.615992, 24.528988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.787556, 25.847498, 24.701620>,  <32.621490, 25.986401, 24.805199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.787556, 25.847498, 24.701620>,  <33.064327, 25.615992, 24.528988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787556, 25.847498, 24.701620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709867, 0.436430, 0.552827,
		0.131601, 0.688884, -0.712825,
		-0.691932, 0.578764, 0.431581,
		32.579975, 26.021128, 24.831095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383598, 26.236286, 24.570147>,  <33.064327, 25.615992, 24.528988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383598, 26.236286, 24.570147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.093296, 26.288795, 24.840271>,  <32.919113, 26.320301, 25.002346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.093296, 26.288795, 24.840271>,  <33.383598, 26.236286, 24.570147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093296, 26.288795, 24.840271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632748, 0.512657, 0.580355,
		-0.270018, 0.848499, -0.455127,
		-0.725755, 0.131274, 0.675313,
		32.875568, 26.328178, 25.042864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382915, 26.979467, 24.717024>,  <33.383598, 26.236286, 24.570147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382915, 26.979467, 24.717024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210632, 26.824585, 25.043106>,  <33.107262, 26.731655, 25.238756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210632, 26.824585, 25.043106>,  <33.382915, 26.979467, 24.717024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210632, 26.824585, 25.043106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519416, 0.632332, 0.574773,
		-0.738036, 0.670991, -0.071230,
		-0.430708, -0.387205, 0.815207,
		33.081421, 26.708424, 25.287668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116131, 27.497383, 25.106997>,  <33.382915, 26.979467, 24.717024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116131, 27.497383, 25.106997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.151169, 27.201927, 25.374350>,  <33.172192, 27.024652, 25.534761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.151169, 27.201927, 25.374350>,  <33.116131, 27.497383, 25.106997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151169, 27.201927, 25.374350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519411, 0.606400, 0.602072,
		-0.850023, 0.294427, 0.436777,
		0.087596, -0.738642, 0.668382,
		33.177448, 26.980335, 25.574863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189713, 27.842550, 25.718321>,  <33.116131, 27.497383, 25.106997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189713, 27.842550, 25.718321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286072, 27.461922, 25.794724>,  <33.343887, 27.233545, 25.840565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286072, 27.461922, 25.794724>,  <33.189713, 27.842550, 25.718321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286072, 27.461922, 25.794724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683195, 0.306041, 0.663011,
		-0.689356, -0.029225, 0.723833,
		0.240899, -0.951569, 0.191005,
		33.358341, 27.176451, 25.852026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220783, 27.826933, 26.500385>,  <33.189713, 27.842550, 25.718321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220783, 27.826933, 26.500385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.449554, 27.522802, 26.377228>,  <33.586819, 27.340324, 26.303333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.449554, 27.522802, 26.377228>,  <33.220783, 27.826933, 26.500385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449554, 27.522802, 26.377228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783820, 0.395842, 0.478472,
		-0.241918, -0.514986, 0.822353,
		0.571928, -0.760328, -0.307895,
		33.621132, 27.294704, 26.284859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490814, 27.501854, 26.826717>,  <33.220783, 27.826933, 26.500385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490814, 27.501854, 26.826717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251484, 27.699274, 27.079197>,  <32.107883, 27.817726, 27.230684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251484, 27.699274, 27.079197>,  <32.490814, 27.501854, 26.826717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251484, 27.699274, 27.079197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780532, -0.181035, -0.598327,
		-0.181035, -0.850667, 0.493550,
		0.598327, -0.493550, -0.631199,
		32.071987, 27.847340, 27.268557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962109, 27.020084, 26.976961>,  <32.490814, 27.501854, 26.826717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962109, 27.020084, 26.976961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828331, 27.394581, 27.020046>,  <31.748064, 27.619278, 27.045897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828331, 27.394581, 27.020046>,  <31.962109, 27.020084, 26.976961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828331, 27.394581, 27.020046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768748, -0.204911, -0.605836,
		-0.545137, -0.285422, 0.788264,
		-0.334443, 0.936240, 0.107713,
		31.727999, 27.675453, 27.052361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295700, 26.849766, 26.842915>,  <31.962109, 27.020084, 26.976961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295700, 26.849766, 26.842915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312237, 27.249422, 26.841917>,  <31.322159, 27.489216, 26.841318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312237, 27.249422, 26.841917>,  <31.295700, 26.849766, 26.842915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312237, 27.249422, 26.841917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818465, 0.032435, -0.573640,
		-0.573067, 0.025757, 0.819104,
		0.041343, 0.999142, -0.002494,
		31.324640, 27.549164, 26.841169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631851, 27.062702, 26.975266>,  <31.295700, 26.849766, 26.842915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631851, 27.062702, 26.975266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786613, 27.366232, 26.765697>,  <30.879471, 27.548349, 26.639957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786613, 27.366232, 26.765697>,  <30.631851, 27.062702, 26.975266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786613, 27.366232, 26.765697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776512, -0.038316, -0.628936,
		-0.497326, 0.650168, 0.574411,
		0.386905, 0.758824, -0.523919,
		30.902685, 27.593880, 26.608522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075657, 27.652290, 26.963528>,  <30.631851, 27.062702, 26.975266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075657, 27.652290, 26.963528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.324894, 27.712156, 26.656448>,  <30.474436, 27.748075, 26.472200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.324894, 27.712156, 26.656448>,  <30.075657, 27.652290, 26.963528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324894, 27.712156, 26.656448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779344, 0.035736, -0.625577,
		-0.066192, 0.988091, 0.138907,
		0.623091, 0.149664, -0.767697,
		30.511822, 27.757055, 26.426140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854671, 28.216772, 26.567150>,  <30.075657, 27.652290, 26.963528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854671, 28.216772, 26.567150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.072958, 28.005424, 26.306990>,  <30.203930, 27.878616, 26.150894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.072958, 28.005424, 26.306990>,  <29.854671, 28.216772, 26.567150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072958, 28.005424, 26.306990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821510, -0.184254, -0.539603,
		0.165271, 0.828780, -0.534611,
		0.545717, -0.528369, -0.650399,
		30.236673, 27.846914, 26.111870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572714, 28.397388, 25.967066>,  <29.854671, 28.216772, 26.567150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572714, 28.397388, 25.967066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.764301, 28.057981, 25.877079>,  <29.879253, 27.854338, 25.823088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.764301, 28.057981, 25.877079>,  <29.572714, 28.397388, 25.967066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764301, 28.057981, 25.877079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694065, -0.209145, -0.688863,
		0.537461, 0.486085, -0.689099,
		0.478967, -0.848516, -0.224967,
		29.907991, 27.803427, 25.809589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902679, 28.770708, 25.370510>,  <29.572714, 28.397388, 25.967066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902679, 28.770708, 25.370510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.664219, 29.090292, 25.338846>,  <29.521143, 29.282042, 25.319847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.664219, 29.090292, 25.338846>,  <29.902679, 28.770708, 25.370510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664219, 29.090292, 25.338846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649025, 0.537609, 0.538278,
		0.472620, 0.269518, -0.839041,
		-0.596152, 0.798959, -0.079161,
		29.485373, 29.329979, 25.315098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281441, 29.370760, 25.138540>,  <29.902679, 28.770708, 25.370510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281441, 29.370760, 25.138540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.963375, 29.511831, 25.335854>,  <29.772535, 29.596474, 25.454241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.963375, 29.511831, 25.335854>,  <30.281441, 29.370760, 25.138540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963375, 29.511831, 25.335854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596912, 0.598521, 0.534293,
		-0.106806, 0.719298, -0.686442,
		-0.795166, 0.352680, 0.493284,
		29.724825, 29.617636, 25.483839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391701, 30.116957, 25.241764>,  <30.281441, 29.370760, 25.138540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391701, 30.116957, 25.241764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.118267, 30.033054, 25.521397>,  <29.954206, 29.982714, 25.689177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.118267, 30.033054, 25.521397>,  <30.391701, 30.116957, 25.241764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118267, 30.033054, 25.521397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380958, 0.714452, 0.586881,
		-0.622560, 0.667504, -0.408482,
		-0.683586, -0.209754, 0.699081,
		29.913191, 29.970129, 25.731121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399343, 30.633957, 25.584343>,  <30.391701, 30.116957, 25.241764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399343, 30.633957, 25.584343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.185747, 30.439939, 25.861353>,  <30.057590, 30.323528, 26.027559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.185747, 30.439939, 25.861353>,  <30.399343, 30.633957, 25.584343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185747, 30.439939, 25.861353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363350, 0.607934, 0.705969,
		-0.763435, 0.628608, -0.148389,
		-0.533989, -0.485044, 0.692523,
		30.025551, 30.294426, 26.069109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097429, 31.060280, 26.042574>,  <30.399343, 30.633957, 25.584343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097429, 31.060280, 26.042574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.105497, 30.729521, 26.267370>,  <30.110338, 30.531065, 26.402248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.105497, 30.729521, 26.267370>,  <30.097429, 31.060280, 26.042574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105497, 30.729521, 26.267370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486277, 0.499252, 0.717135,
		-0.873572, 0.258816, 0.412172,
		0.020172, -0.826899, 0.561989,
		30.111549, 30.481451, 26.435966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795258, 31.148907, 26.765814>,  <30.097429, 31.060280, 26.042574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795258, 31.148907, 26.765814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.043303, 30.836840, 26.798801>,  <30.192129, 30.649599, 26.818594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.043303, 30.836840, 26.798801>,  <29.795258, 31.148907, 26.765814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043303, 30.836840, 26.798801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393656, 0.400366, 0.827491,
		-0.678598, -0.480674, 0.555390,
		0.620113, -0.780166, 0.082467,
		30.229336, 30.602791, 26.823542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964632, 31.121927, 27.473295>,  <29.795258, 31.148907, 26.765814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964632, 31.121927, 27.473295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.238993, 30.873329, 27.321884>,  <30.403608, 30.724171, 27.231037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.238993, 30.873329, 27.321884>,  <29.964632, 31.121927, 27.473295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238993, 30.873329, 27.321884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575928, 0.145671, 0.804417,
		-0.444801, -0.769756, 0.457852,
		0.685901, -0.621495, -0.378529,
		30.444763, 30.686880, 27.208324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.704758, 29.486755, 21.519194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.665190, 29.169355, 21.759386>,  <30.641449, 28.978916, 21.903502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.665190, 29.169355, 21.759386>,  <30.704758, 29.486755, 21.519194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665190, 29.169355, 21.759386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419127, 0.514078, 0.748369,
		-0.902523, 0.325706, 0.281723,
		-0.098921, -0.793498, 0.600479,
		30.635513, 28.931307, 21.939529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251896, 29.611969, 22.081108>,  <30.704758, 29.486755, 21.519194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251896, 29.611969, 22.081108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.562851, 29.371723, 22.155867>,  <30.749424, 29.227575, 22.200722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.562851, 29.371723, 22.155867>,  <30.251896, 29.611969, 22.081108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562851, 29.371723, 22.155867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346963, 0.657269, 0.669039,
		-0.524676, -0.455257, 0.719344,
		0.777387, -0.600615, 0.186896,
		30.796068, 29.191538, 22.211935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276834, 29.588688, 22.818033>,  <30.251896, 29.611969, 22.081108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276834, 29.588688, 22.818033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649094, 29.468983, 22.733812>,  <30.872450, 29.397160, 22.683279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649094, 29.468983, 22.733812>,  <30.276834, 29.588688, 22.818033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649094, 29.468983, 22.733812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346244, 0.534113, 0.771258,
		-0.118352, -0.790673, 0.600690,
		0.930649, -0.299266, -0.210552,
		30.928288, 29.379204, 22.670647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689322, 29.523102, 23.450483>,  <30.276834, 29.588688, 22.818033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689322, 29.523102, 23.450483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.965748, 29.578163, 23.166658>,  <31.131603, 29.611200, 22.996365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.965748, 29.578163, 23.166658>,  <30.689322, 29.523102, 23.450483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965748, 29.578163, 23.166658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484398, 0.640411, 0.596014,
		0.536455, -0.755596, 0.375888,
		0.691068, 0.137655, -0.709561,
		31.173069, 29.619459, 22.953791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289225, 29.511995, 23.801435>,  <30.689322, 29.523102, 23.450483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289225, 29.511995, 23.801435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.395838, 29.676399, 23.452717>,  <31.459806, 29.775042, 23.243486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.395838, 29.676399, 23.452717>,  <31.289225, 29.511995, 23.801435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395838, 29.676399, 23.452717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362329, 0.795442, 0.485788,
		0.893128, -0.445356, 0.063092,
		0.266534, 0.411010, -0.871797,
		31.475798, 29.799702, 23.191177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044235, 29.660542, 23.849791>,  <31.289225, 29.511995, 23.801435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044235, 29.660542, 23.849791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.867519, 29.897120, 23.579971>,  <31.761490, 30.039066, 23.418079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.867519, 29.897120, 23.579971>,  <32.044235, 29.660542, 23.849791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867519, 29.897120, 23.579971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496445, 0.787459, 0.365308,
		0.747239, -0.173487, -0.641511,
		-0.441787, 0.591447, -0.674547,
		31.734983, 30.074554, 23.377607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572205, 30.147432, 23.725359>,  <32.044235, 29.660542, 23.849791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572205, 30.147432, 23.725359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239925, 30.331379, 23.599846>,  <32.040558, 30.441748, 23.524538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239925, 30.331379, 23.599846>,  <32.572205, 30.147432, 23.725359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239925, 30.331379, 23.599846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365113, 0.875507, 0.316514,
		0.420271, 0.148363, -0.895188,
		-0.830701, 0.459866, -0.313781,
		31.990715, 30.469339, 23.505711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809010, 30.714184, 23.295488>,  <32.572205, 30.147432, 23.725359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809010, 30.714184, 23.295488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.433273, 30.814528, 23.389046>,  <32.207832, 30.874733, 23.445179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.433273, 30.814528, 23.389046>,  <32.809010, 30.714184, 23.295488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433273, 30.814528, 23.389046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311818, 0.908638, 0.277752,
		-0.142847, 0.333836, -0.931745,
		-0.939342, 0.250859, 0.233892,
		32.151470, 30.889786, 23.459213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801144, 31.439203, 23.140715>,  <32.809010, 30.714184, 23.295488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801144, 31.439203, 23.140715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.483528, 31.375166, 23.375278>,  <32.292961, 31.336744, 23.516016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.483528, 31.375166, 23.375278>,  <32.801144, 31.439203, 23.140715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483528, 31.375166, 23.375278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148533, 0.884355, 0.442555,
		-0.589444, 0.438506, -0.678431,
		-0.794037, -0.160092, 0.586410,
		32.245316, 31.327139, 23.551201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282143, 32.002647, 23.023052>,  <32.801144, 31.439203, 23.140715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282143, 32.002647, 23.023052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.271774, 31.826740, 23.382147>,  <32.265553, 31.721197, 23.597605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.271774, 31.826740, 23.382147>,  <32.282143, 32.002647, 23.023052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271774, 31.826740, 23.382147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181560, 0.881033, 0.436825,
		-0.983038, 0.174316, 0.057008,
		-0.025920, -0.439766, 0.897738,
		32.264000, 31.694811, 23.651468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087460, 32.523258, 23.400242>,  <32.282143, 32.002647, 23.023052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087460, 32.523258, 23.400242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.243279, 32.255672, 23.653458>,  <32.336769, 32.095123, 23.805387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.243279, 32.255672, 23.653458>,  <32.087460, 32.523258, 23.400242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243279, 32.255672, 23.653458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349613, 0.743297, 0.570334,
		-0.852069, -0.000854, 0.523429,
		0.389550, -0.668961, 0.633041,
		32.360142, 32.054985, 23.843370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772900, 32.651146, 24.017202>,  <32.087460, 32.523258, 23.400242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772900, 32.651146, 24.017202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.135967, 32.489834, 24.063681>,  <32.353809, 32.393047, 24.091568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.135967, 32.489834, 24.063681>,  <31.772900, 32.651146, 24.017202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135967, 32.489834, 24.063681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245629, 0.734960, 0.632060,
		-0.340293, -0.545162, 0.766159,
		0.907671, -0.403277, 0.116194,
		32.408268, 32.368851, 24.098539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304646, 32.734035, 24.619749>,  <31.772900, 32.651146, 24.017202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304646, 32.734035, 24.619749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996256, 32.970802, 24.713758>,  <30.811222, 33.112862, 24.770164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996256, 32.970802, 24.713758>,  <31.304646, 32.734035, 24.619749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996256, 32.970802, 24.713758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565938, -0.467502, -0.679085,
		-0.292084, -0.656567, 0.695418,
		-0.770975, 0.591913, 0.235026,
		30.764963, 33.148376, 24.784266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744165, 32.422485, 24.843697>,  <31.304646, 32.734035, 24.619749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744165, 32.422485, 24.843697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580244, 32.764301, 24.716053>,  <30.481892, 32.969391, 24.639467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580244, 32.764301, 24.716053>,  <30.744165, 32.422485, 24.843697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580244, 32.764301, 24.716053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603012, -0.516279, -0.608138,
		-0.684425, -0.056789, 0.726868,
		-0.409803, 0.854535, -0.319110,
		30.457304, 33.020660, 24.620319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134537, 32.202682, 24.707062>,  <30.744165, 32.422485, 24.843697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134537, 32.202682, 24.707062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.161673, 32.543823, 24.499973>,  <30.177954, 32.748508, 24.375721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.161673, 32.543823, 24.499973>,  <30.134537, 32.202682, 24.707062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161673, 32.543823, 24.499973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586041, -0.385896, -0.712488,
		-0.807436, 0.351740, 0.473630,
		0.067839, 0.852856, -0.517721,
		30.182024, 32.799679, 24.344658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443117, 32.375538, 24.585260>,  <30.134537, 32.202682, 24.707062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443117, 32.375538, 24.585260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689663, 32.542244, 24.318007>,  <29.837591, 32.642265, 24.157654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689663, 32.542244, 24.318007>,  <29.443117, 32.375538, 24.585260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689663, 32.542244, 24.318007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625107, -0.257034, -0.737004,
		-0.478889, 0.871919, 0.102095,
		0.616366, 0.416763, -0.668133,
		29.874573, 32.667274, 24.117567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025072, 32.535603, 24.056564>,  <29.443117, 32.375538, 24.585260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025072, 32.535603, 24.056564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382229, 32.550339, 23.877058>,  <29.596523, 32.559181, 23.769354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382229, 32.550339, 23.877058>,  <29.025072, 32.535603, 24.056564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382229, 32.550339, 23.877058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403466, -0.377021, -0.833709,
		-0.199904, 0.925472, -0.321776,
		0.892891, 0.036836, -0.448764,
		29.650097, 32.561390, 23.742428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960693, 32.687778, 23.342319>,  <29.025072, 32.535603, 24.056564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960693, 32.687778, 23.342319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324144, 32.521870, 23.361742>,  <29.542215, 32.422325, 23.373396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324144, 32.521870, 23.361742>,  <28.960693, 32.687778, 23.342319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324144, 32.521870, 23.361742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232781, -0.599587, -0.765708,
		0.346710, 0.684440, -0.641353,
		0.908628, -0.414773, 0.048559,
		29.596733, 32.397438, 23.376310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136337, 32.705585, 22.640463>,  <28.960693, 32.687778, 23.342319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136337, 32.705585, 22.640463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360518, 32.424702, 22.816097>,  <29.495026, 32.256172, 22.921478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360518, 32.424702, 22.816097>,  <29.136337, 32.705585, 22.640463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360518, 32.424702, 22.816097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268135, -0.655470, -0.706019,
		0.783581, 0.277954, -0.555646,
		0.560450, -0.702211, 0.439085,
		29.528652, 32.214039, 22.947823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440958, 32.369698, 22.043135>,  <29.136337, 32.705585, 22.640463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440958, 32.369698, 22.043135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461021, 32.138668, 22.369055>,  <29.473059, 32.000050, 22.564606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461021, 32.138668, 22.369055>,  <29.440958, 32.369698, 22.043135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461021, 32.138668, 22.369055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286234, -0.789916, -0.542312,
		0.956846, -0.206022, -0.204941,
		0.050158, -0.577570, 0.814799,
		29.476068, 31.965397, 22.613495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772680, 31.796701, 21.862284>,  <29.440958, 32.369698, 22.043135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772680, 31.796701, 21.862284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617756, 31.649832, 22.200556>,  <29.524801, 31.561710, 22.403519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617756, 31.649832, 22.200556>,  <29.772680, 31.796701, 21.862284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617756, 31.649832, 22.200556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319540, -0.806957, -0.496704,
		0.864804, -0.462607, 0.195215,
		-0.387309, -0.367173, 0.845681,
		29.501564, 31.539680, 22.454260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063072, 31.204561, 21.960932>,  <29.772680, 31.796701, 21.862284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063072, 31.204561, 21.960932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699284, 31.202042, 22.127220>,  <29.481010, 31.200529, 22.226994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699284, 31.202042, 22.127220>,  <30.063072, 31.204561, 21.960932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699284, 31.202042, 22.127220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222187, -0.837767, -0.498777,
		0.351419, -0.545991, 0.760525,
		-0.909471, -0.006301, 0.415720,
		29.426443, 31.200151, 22.251936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912771, 30.418690, 22.069927>,  <30.063072, 31.204561, 21.960932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912771, 30.418690, 22.069927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582256, 30.641300, 22.104635>,  <29.383947, 30.774866, 22.125460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582256, 30.641300, 22.104635>,  <29.912771, 30.418690, 22.069927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582256, 30.641300, 22.104635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495276, -0.644528, -0.582483,
		-0.268239, -0.524274, 0.808198,
		-0.826287, 0.556526, 0.086773,
		29.334370, 30.808258, 22.130667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322805, 29.987492, 22.252560>,  <29.912771, 30.418690, 22.069927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322805, 29.987492, 22.252560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198275, 30.311714, 22.054138>,  <29.123556, 30.506248, 21.935085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198275, 30.311714, 22.054138>,  <29.322805, 29.987492, 22.252560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198275, 30.311714, 22.054138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416254, -0.585571, -0.695585,
		-0.854289, -0.010069, 0.519702,
		-0.311326, 0.810559, -0.496056,
		29.104877, 30.554882, 21.905321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737007, 29.691624, 21.836611>,  <29.322805, 29.987492, 22.252560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737007, 29.691624, 21.836611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745880, 30.066847, 21.698305>,  <28.751204, 30.291981, 21.615322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745880, 30.066847, 21.698305>,  <28.737007, 29.691624, 21.836611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745880, 30.066847, 21.698305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477284, -0.293957, -0.828124,
		-0.878469, 0.183398, 0.441199,
		0.022183, 0.938059, -0.345765,
		28.752535, 30.348265, 21.594576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121803, 29.844534, 21.717413>,  <28.737007, 29.691624, 21.836611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121803, 29.844534, 21.717413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319868, 30.094597, 21.476086>,  <28.438707, 30.244635, 21.331289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319868, 30.094597, 21.476086>,  <28.121803, 29.844534, 21.717413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319868, 30.094597, 21.476086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568691, -0.291763, -0.769068,
		-0.656815, 0.723914, 0.211053,
		0.495161, 0.625159, -0.603317,
		28.468416, 30.282145, 21.295090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143408, 29.439035, 22.447180>,  <28.121803, 29.844534, 21.717413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143408, 29.439035, 22.447180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064789, 29.129038, 22.687429>,  <28.017616, 28.943039, 22.831579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064789, 29.129038, 22.687429>,  <28.143408, 29.439035, 22.447180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064789, 29.129038, 22.687429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662454, 0.346651, 0.664069,
		-0.722858, 0.528409, 0.445265,
		-0.196549, -0.774995, 0.600626,
		28.005825, 28.896540, 22.867617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055464, 29.696215, 23.103682>,  <28.143408, 29.439035, 22.447180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055464, 29.696215, 23.103682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120834, 29.308443, 23.176891>,  <28.160057, 29.075781, 23.220818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120834, 29.308443, 23.176891>,  <28.055464, 29.696215, 23.103682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120834, 29.308443, 23.176891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419388, 0.236189, 0.876543,
		-0.892976, -0.066490, 0.445166,
		0.163425, -0.969430, 0.183026,
		28.169863, 29.017614, 23.231800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702759, 29.635651, 23.737455>,  <28.055464, 29.696215, 23.103682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702759, 29.635651, 23.737455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972294, 29.341839, 23.705433>,  <28.134014, 29.165552, 23.686220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972294, 29.341839, 23.705433>,  <27.702759, 29.635651, 23.737455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972294, 29.341839, 23.705433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293888, 0.167030, 0.941133,
		-0.677920, -0.657696, 0.328421,
		0.673836, -0.734531, -0.080056,
		28.174444, 29.121479, 23.681416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664028, 29.247322, 24.343214>,  <27.702759, 29.635651, 23.737455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664028, 29.247322, 24.343214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.026386, 29.159531, 24.198336>,  <28.243801, 29.106855, 24.111408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.026386, 29.159531, 24.198336>,  <27.664028, 29.247322, 24.343214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026386, 29.159531, 24.198336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386093, 0.076547, 0.919279,
		-0.174039, -0.972609, 0.154083,
		0.905893, -0.219481, -0.362195,
		28.298155, 29.093687, 24.089678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952173, 29.119495, 24.930140>,  <27.664028, 29.247322, 24.343214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952173, 29.119495, 24.930140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267553, 29.103996, 24.684589>,  <28.456781, 29.094698, 24.537258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267553, 29.103996, 24.684589>,  <27.952173, 29.119495, 24.930140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267553, 29.103996, 24.684589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614735, 0.015347, 0.788585,
		-0.021138, -0.999131, 0.035923,
		0.788451, -0.038753, -0.613876,
		28.504089, 29.092373, 24.500427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392776, 28.639952, 25.150087>,  <27.952173, 29.119495, 24.930140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392776, 28.639952, 25.150087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606733, 28.916031, 24.955145>,  <28.735107, 29.081678, 24.838181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606733, 28.916031, 24.955145>,  <28.392776, 28.639952, 25.150087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606733, 28.916031, 24.955145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495170, 0.211294, 0.842711,
		0.684614, -0.692083, -0.228747,
		0.534893, 0.690200, -0.487354,
		28.767200, 29.123091, 24.808939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081242, 28.552774, 25.343922>,  <28.392776, 28.639952, 25.150087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081242, 28.552774, 25.343922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.042101, 28.927748, 25.210268>,  <29.018616, 29.152731, 25.130075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.042101, 28.927748, 25.210268>,  <29.081242, 28.552774, 25.343922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042101, 28.927748, 25.210268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573700, 0.327481, 0.750750,
		0.813199, -0.118230, -0.569849,
		-0.097853, 0.937432, -0.334136,
		29.012745, 29.208977, 25.110027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629730, 28.255833, 24.971357>,  <29.081242, 28.552774, 25.343922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629730, 28.255833, 24.971357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743511, 27.927532, 25.169533>,  <29.811779, 27.730553, 25.288439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743511, 27.927532, 25.169533>,  <29.629730, 28.255833, 24.971357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743511, 27.927532, 25.169533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445768, -0.570755, -0.689587,
		0.848751, -0.024697, -0.528215,
		0.284451, -0.820749, 0.495438,
		29.828846, 27.681307, 25.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823681, 27.779144, 24.460175>,  <29.629730, 28.255833, 24.971357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823681, 27.779144, 24.460175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738989, 27.566870, 24.788452>,  <29.688173, 27.439505, 24.985418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738989, 27.566870, 24.788452>,  <29.823681, 27.779144, 24.460175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738989, 27.566870, 24.788452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517693, -0.651350, -0.554741,
		0.828954, -0.542324, -0.136823,
		-0.211729, -0.530687, 0.820696,
		29.675470, 27.407663, 25.034660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992115, 27.152567, 24.347677>,  <29.823681, 27.779144, 24.460175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992115, 27.152567, 24.347677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707232, 27.089849, 24.621368>,  <29.536301, 27.052219, 24.785583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707232, 27.089849, 24.621368>,  <29.992115, 27.152567, 24.347677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707232, 27.089849, 24.621368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447292, -0.649859, -0.614503,
		0.541004, -0.743706, 0.392703,
		-0.712211, -0.156796, 0.684230,
		29.493568, 27.042810, 24.826637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884077, 26.458868, 24.369354>,  <29.992115, 27.152567, 24.347677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884077, 26.458868, 24.369354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550787, 26.599510, 24.540051>,  <29.350813, 26.683895, 24.642467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550787, 26.599510, 24.540051>,  <29.884077, 26.458868, 24.369354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550787, 26.599510, 24.540051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529220, -0.730707, -0.431270,
		0.160186, -0.585185, 0.794921,
		-0.833227, 0.351604, 0.426740,
		29.300819, 26.704992, 24.668072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555313, 25.794306, 24.475737>,  <29.884077, 26.458868, 24.369354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555313, 25.794306, 24.475737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265114, 26.062090, 24.539581>,  <29.090994, 26.222759, 24.577888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265114, 26.062090, 24.539581>,  <29.555313, 25.794306, 24.475737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265114, 26.062090, 24.539581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669544, -0.632896, -0.388785,
		-0.159256, -0.388931, 0.907397,
		-0.725499, 0.669458, 0.159614,
		29.047464, 26.262928, 24.587465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978394, 25.509762, 24.859814>,  <29.555313, 25.794306, 24.475737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978394, 25.509762, 24.859814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833376, 25.812263, 24.641956>,  <28.746365, 25.993765, 24.511242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833376, 25.812263, 24.641956>,  <28.978394, 25.509762, 24.859814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833376, 25.812263, 24.641956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534639, -0.647448, -0.543114,
		-0.763362, 0.094286, 0.639052,
		-0.362545, 0.756255, -0.544646,
		28.724613, 26.039141, 24.478563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352695, 25.373331, 24.802408>,  <28.978394, 25.509762, 24.859814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352695, 25.373331, 24.802408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422506, 25.609350, 24.487097>,  <28.464392, 25.750961, 24.297911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422506, 25.609350, 24.487097>,  <28.352695, 25.373331, 24.802408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422506, 25.609350, 24.487097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479478, -0.648309, -0.591436,
		-0.860024, 0.481183, 0.169769,
		0.174526, 0.590050, -0.788278,
		28.474865, 25.786366, 24.250614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689837, 25.484034, 24.559898>,  <28.352695, 25.373331, 24.802408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689837, 25.484034, 24.559898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941729, 25.569838, 24.261255>,  <28.092863, 25.621319, 24.082069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941729, 25.569838, 24.261255>,  <27.689837, 25.484034, 24.559898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941729, 25.569838, 24.261255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597804, -0.479924, -0.642108,
		-0.496054, 0.850681, -0.173988,
		0.629731, 0.214509, -0.746609,
		28.130648, 25.634190, 24.037273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362728, 25.942453, 23.936020>,  <27.689837, 25.484034, 24.559898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362728, 25.942453, 23.936020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639702, 25.678671, 23.818953>,  <27.805885, 25.520401, 23.748713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639702, 25.678671, 23.818953>,  <27.362728, 25.942453, 23.936020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639702, 25.678671, 23.818953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682418, -0.466971, -0.562355,
		0.234181, 0.589115, -0.773371,
		0.692434, -0.659455, -0.292667,
		27.847431, 25.480835, 23.731152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.730762, 33.520638, 33.505001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095882, 33.503872, 33.342499>,  <38.314953, 33.493813, 33.244995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095882, 33.503872, 33.342499>,  <37.730762, 33.520638, 33.505001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095882, 33.503872, 33.342499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282478, -0.783223, -0.553866,
		-0.294975, 0.620326, -0.726763,
		0.912795, -0.041918, -0.406260,
		38.369720, 33.491295, 33.220619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643047, 33.676979, 32.747459>,  <37.730762, 33.520638, 33.505001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643047, 33.676979, 32.747459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939945, 33.425732, 32.840874>,  <38.118084, 33.274982, 32.896923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939945, 33.425732, 32.840874>,  <37.643047, 33.676979, 32.747459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939945, 33.425732, 32.840874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356654, -0.665316, -0.655860,
		0.567333, 0.403517, -0.717849,
		0.742247, -0.628115, 0.233540,
		38.162621, 33.237297, 32.910934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857262, 33.445393, 32.130966>,  <37.643047, 33.676979, 32.747459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857262, 33.445393, 32.130966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004299, 33.162785, 32.372860>,  <38.092522, 32.993217, 32.517998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004299, 33.162785, 32.372860>,  <37.857262, 33.445393, 32.130966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004299, 33.162785, 32.372860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396676, -0.707255, -0.585182,
		0.841146, -0.024777, -0.540241,
		0.367589, -0.706524, 0.604733,
		38.114574, 32.950829, 32.554279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025024, 32.884212, 31.660547>,  <37.857262, 33.445393, 32.130966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025024, 32.884212, 31.660547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005268, 32.695843, 32.012863>,  <37.993416, 32.582821, 32.224251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005268, 32.695843, 32.012863>,  <38.025024, 32.884212, 31.660547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005268, 32.695843, 32.012863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502714, -0.750293, -0.429347,
		0.863040, -0.463990, -0.199686,
		-0.049390, -0.470929, 0.880788,
		37.990452, 32.554565, 32.277100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153969, 32.098057, 31.601774>,  <38.025024, 32.884212, 31.660547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153969, 32.098057, 31.601774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951309, 32.117695, 31.946075>,  <37.829712, 32.129478, 32.152657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951309, 32.117695, 31.946075>,  <38.153969, 32.098057, 31.601774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951309, 32.117695, 31.946075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568974, -0.769134, -0.291036,
		0.647747, -0.637199, 0.417613,
		-0.506648, 0.049093, 0.860754,
		37.799316, 32.132423, 32.204300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988689, 31.390127, 31.766787>,  <38.153969, 32.098057, 31.601774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988689, 31.390127, 31.766787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745369, 31.622072, 31.983574>,  <37.599377, 31.761240, 32.113647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745369, 31.622072, 31.983574>,  <37.988689, 31.390127, 31.766787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745369, 31.622072, 31.983574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739852, -0.661494, -0.122655,
		0.287385, -0.475587, 0.831401,
		-0.608300, 0.579865, 0.541968,
		37.562878, 31.796032, 32.146164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504963, 30.966349, 32.087132>,  <37.988689, 31.390127, 31.766787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504963, 30.966349, 32.087132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291325, 31.303661, 32.111195>,  <37.163143, 31.506048, 32.125633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291325, 31.303661, 32.111195>,  <37.504963, 30.966349, 32.087132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291325, 31.303661, 32.111195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844373, -0.528528, -0.087707,
		-0.042166, -0.097640, 0.994328,
		-0.534094, 0.843282, 0.060159,
		37.131096, 31.556646, 32.129242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949718, 30.804949, 32.416328>,  <37.504963, 30.966349, 32.087132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949718, 30.804949, 32.416328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835335, 31.138517, 32.227520>,  <36.766705, 31.338659, 32.114235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835335, 31.138517, 32.227520>,  <36.949718, 30.804949, 32.416328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835335, 31.138517, 32.227520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883361, -0.420306, -0.207401,
		-0.371348, 0.357652, 0.856846,
		-0.285960, 0.833923, -0.472016,
		36.749546, 31.388695, 32.085915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303974, 30.970251, 32.715862>,  <36.949718, 30.804949, 32.416328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303974, 30.970251, 32.715862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307434, 31.166441, 32.367298>,  <36.309509, 31.284155, 32.158157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307434, 31.166441, 32.367298>,  <36.303974, 30.970251, 32.715862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307434, 31.166441, 32.367298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871091, -0.424238, -0.247433,
		-0.491046, 0.761221, 0.423577,
		0.008654, 0.490475, -0.871412,
		36.310032, 31.313583, 32.105873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757694, 31.465570, 32.627190>,  <36.303974, 30.970251, 32.715862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757694, 31.465570, 32.627190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869205, 31.369556, 32.255241>,  <35.936111, 31.311947, 32.032070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869205, 31.369556, 32.255241>,  <35.757694, 31.465570, 32.627190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869205, 31.369556, 32.255241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921945, -0.337989, -0.189156,
		-0.268883, 0.910025, -0.315525,
		0.278781, -0.240036, -0.929873,
		35.952839, 31.297546, 31.976280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114712, 31.741711, 32.152752>,  <35.757694, 31.465570, 32.627190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114712, 31.741711, 32.152752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324944, 31.502291, 31.910927>,  <35.451084, 31.358639, 31.765831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324944, 31.502291, 31.910927>,  <35.114712, 31.741711, 32.152752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324944, 31.502291, 31.910927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849855, -0.336952, -0.405229,
		0.038839, 0.726776, -0.685776,
		0.525584, -0.598549, -0.604567,
		35.482620, 31.322725, 31.729557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733803, 31.732494, 31.580971>,  <35.114712, 31.741711, 32.152752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733803, 31.732494, 31.580971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966335, 31.408022, 31.555538>,  <35.105854, 31.213339, 31.540279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966335, 31.408022, 31.555538>,  <34.733803, 31.732494, 31.580971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966335, 31.408022, 31.555538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697564, -0.456624, -0.552176,
		0.418883, 0.365346, -0.831300,
		0.581327, -0.811182, -0.063580,
		35.140732, 31.164667, 31.536465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550823, 32.446533, 31.447292>,  <34.733803, 31.732494, 31.580971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550823, 32.446533, 31.447292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229355, 32.674351, 31.378311>,  <34.036476, 32.811039, 31.336924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229355, 32.674351, 31.378311>,  <34.550823, 32.446533, 31.447292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229355, 32.674351, 31.378311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354008, 0.690521, 0.630761,
		0.478326, 0.445873, -0.756572,
		-0.803668, 0.569542, -0.172452,
		33.988255, 32.845215, 31.326576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799667, 33.098591, 31.108593>,  <34.550823, 32.446533, 31.447292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799667, 33.098591, 31.108593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471195, 33.127991, 31.334961>,  <34.274113, 33.145630, 31.470781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471195, 33.127991, 31.334961>,  <34.799667, 33.098591, 31.108593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471195, 33.127991, 31.334961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401961, 0.778425, 0.482164,
		-0.405087, 0.623420, -0.668769,
		-0.821177, 0.073501, 0.565920,
		34.224842, 33.150040, 31.504738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591183, 33.862968, 31.135445>,  <34.799667, 33.098591, 31.108593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591183, 33.862968, 31.135445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401371, 33.709610, 31.452387>,  <34.287483, 33.617596, 31.642553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401371, 33.709610, 31.452387>,  <34.591183, 33.862968, 31.135445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401371, 33.709610, 31.452387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414043, 0.697144, 0.585285,
		-0.776781, 0.605806, -0.172076,
		-0.474531, -0.383392, 0.792358,
		34.259010, 33.594593, 31.690094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265896, 34.393867, 31.431360>,  <34.591183, 33.862968, 31.135445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265896, 34.393867, 31.431360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312599, 34.112495, 31.711803>,  <34.340622, 33.943672, 31.880070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.312599, 34.112495, 31.711803>,  <34.265896, 34.393867, 31.431360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312599, 34.112495, 31.711803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282612, 0.700284, 0.655540,
		-0.952102, 0.121604, 0.280560,
		0.116756, -0.703431, 0.701108,
		34.347626, 33.901466, 31.922136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841812, 34.637894, 31.979574>,  <34.265896, 34.393867, 31.431360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841812, 34.637894, 31.979574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106827, 34.372906, 32.119389>,  <34.265835, 34.213913, 32.203278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106827, 34.372906, 32.119389>,  <33.841812, 34.637894, 31.979574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106827, 34.372906, 32.119389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205685, 0.609625, 0.765540,
		-0.720234, -0.435305, 0.540160,
		0.662538, -0.662470, 0.349537,
		34.305588, 34.174164, 32.224251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648129, 34.421791, 32.609169>,  <33.841812, 34.637894, 31.979574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648129, 34.421791, 32.609169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043705, 34.366199, 32.629875>,  <34.281052, 34.332844, 32.642300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043705, 34.366199, 32.629875>,  <33.648129, 34.421791, 32.609169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043705, 34.366199, 32.629875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027420, 0.514368, 0.857131,
		-0.145749, -0.846233, 0.512491,
		0.988942, -0.138979, 0.051765,
		34.340389, 34.324505, 32.645405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756214, 34.592327, 33.258224>,  <33.648129, 34.421791, 32.609169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756214, 34.592327, 33.258224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130692, 34.575932, 33.118591>,  <34.355377, 34.566093, 33.034813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130692, 34.575932, 33.118591>,  <33.756214, 34.592327, 33.258224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130692, 34.575932, 33.118591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310991, 0.559377, 0.768363,
		0.163775, -0.827899, 0.536433,
		0.936196, -0.040987, -0.349081,
		34.411549, 34.563637, 33.013866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121925, 34.453037, 33.841827>,  <33.756214, 34.592327, 33.258224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121925, 34.453037, 33.841827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381210, 34.599140, 33.574570>,  <34.536781, 34.686802, 33.414215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381210, 34.599140, 33.574570>,  <34.121925, 34.453037, 33.841827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381210, 34.599140, 33.574570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402798, 0.580153, 0.707938,
		0.646204, -0.728017, 0.228935,
		0.648208, 0.365258, -0.668141,
		34.575672, 34.708717, 33.374126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667839, 34.636772, 34.205914>,  <34.121925, 34.453037, 33.841827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667839, 34.636772, 34.205914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771763, 34.833710, 33.873623>,  <34.834118, 34.951870, 33.674248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771763, 34.833710, 33.873623>,  <34.667839, 34.636772, 34.205914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771763, 34.833710, 33.873623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462546, 0.691708, 0.554610,
		0.847675, -0.528339, -0.048020,
		0.259806, 0.492340, -0.830724,
		34.849705, 34.981411, 33.624405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390942, 34.783573, 34.266029>,  <34.667839, 34.636772, 34.205914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390942, 34.783573, 34.266029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247612, 35.060707, 34.015720>,  <35.161613, 35.226986, 33.865536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247612, 35.060707, 34.015720>,  <35.390942, 34.783573, 34.266029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247612, 35.060707, 34.015720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461135, 0.714150, 0.526634,
		0.811763, -0.099860, -0.575385,
		-0.358322, 0.692833, -0.625770,
		35.140114, 35.268559, 33.827988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940269, 35.228374, 34.186543>,  <35.390942, 34.783573, 34.266029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940269, 35.228374, 34.186543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664444, 35.468697, 34.024780>,  <35.498951, 35.612888, 33.927723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664444, 35.468697, 34.024780>,  <35.940269, 35.228374, 34.186543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664444, 35.468697, 34.024780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326410, 0.756280, 0.567007,
		0.646501, 0.258985, -0.717609,
		-0.689560, 0.600806, -0.404401,
		35.457577, 35.648937, 33.903461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246201, 35.817635, 33.875080>,  <35.940269, 35.228374, 34.186543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246201, 35.817635, 33.875080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866467, 35.907772, 33.962708>,  <35.638626, 35.961853, 34.015282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866467, 35.907772, 33.962708>,  <36.246201, 35.817635, 33.875080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866467, 35.907772, 33.962708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305278, 0.826798, 0.472453,
		-0.074661, 0.515391, -0.853697,
		-0.949332, 0.225341, 0.219066,
		35.581665, 35.975376, 34.028427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247234, 36.445259, 33.748554>,  <36.246201, 35.817635, 33.875080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247234, 36.445259, 33.748554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924854, 36.400883, 33.981155>,  <35.731426, 36.374256, 34.120716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924854, 36.400883, 33.981155>,  <36.247234, 36.445259, 33.748554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924854, 36.400883, 33.981155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139626, 0.918945, 0.368843,
		-0.575287, 0.378460, -0.725130,
		-0.805946, -0.110943, 0.581500,
		35.683071, 36.367599, 34.155605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738716, 36.867954, 33.591434>,  <36.247234, 36.445259, 33.748554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738716, 36.867954, 33.591434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667145, 36.792465, 33.977673>,  <35.624203, 36.747173, 34.209415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667145, 36.792465, 33.977673>,  <35.738716, 36.867954, 33.591434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667145, 36.792465, 33.977673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221267, 0.948570, 0.226399,
		-0.958658, 0.254163, -0.127970,
		-0.178931, -0.188723, 0.965591,
		35.613464, 36.735847, 34.267349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947582, 37.243473, 32.843075>,  <35.738716, 36.867954, 33.591434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947582, 37.243473, 32.843075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044792, 37.631359, 32.833347>,  <36.103119, 37.864090, 32.827511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044792, 37.631359, 32.833347>,  <35.947582, 37.243473, 32.843075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044792, 37.631359, 32.833347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886379, -0.232186, -0.400528,
		-0.394044, 0.075787, -0.915962,
		0.243028, 0.969714, -0.024316,
		36.117702, 37.922272, 32.826054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383022, 37.518841, 32.682983>,  <35.947582, 37.243473, 32.843075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383022, 37.518841, 32.682983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.724506, 37.643864, 32.516376>,  <35.929398, 37.718876, 32.416412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.724506, 37.643864, 32.516376>,  <35.383022, 37.518841, 32.682983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724506, 37.643864, 32.516376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493358, 0.229464, -0.839014,
		-0.166661, 0.921768, 0.350097,
		0.853711, 0.312554, -0.416519,
		35.980621, 37.737629, 32.391422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142059, 37.870213, 32.156361>,  <35.383022, 37.518841, 32.682983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142059, 37.870213, 32.156361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526279, 37.816444, 32.058983>,  <35.756813, 37.784184, 32.000557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526279, 37.816444, 32.058983>,  <35.142059, 37.870213, 32.156361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526279, 37.816444, 32.058983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231256, 0.100119, -0.967728,
		0.154453, 0.985854, 0.065085,
		0.960554, -0.134418, -0.243448,
		35.814445, 37.776119, 31.985949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375542, 38.483547, 31.666891>,  <35.142059, 37.870213, 32.156361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375542, 38.483547, 31.666891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590511, 38.151196, 31.609177>,  <35.719494, 37.951786, 31.574549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590511, 38.151196, 31.609177>,  <35.375542, 38.483547, 31.666891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590511, 38.151196, 31.609177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351171, -0.064936, -0.934057,
		0.766720, 0.552650, -0.326678,
		0.537420, -0.830880, -0.144287,
		35.751736, 37.901932, 31.565891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582512, 38.516026, 30.986586>,  <35.375542, 38.483547, 31.666891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582512, 38.516026, 30.986586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681843, 38.133457, 31.048029>,  <35.741444, 37.903915, 31.084894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681843, 38.133457, 31.048029>,  <35.582512, 38.516026, 30.986586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681843, 38.133457, 31.048029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422716, -0.249675, -0.871191,
		0.871575, 0.151413, -0.466296,
		0.248332, -0.956419, 0.153606,
		35.756344, 37.846531, 31.094110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038452, 38.197681, 30.478491>,  <35.582512, 38.516026, 30.986586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038452, 38.197681, 30.478491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843021, 37.894688, 30.651703>,  <35.725765, 37.712891, 30.755630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843021, 37.894688, 30.651703>,  <36.038452, 38.197681, 30.478491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843021, 37.894688, 30.651703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408082, -0.240292, -0.880755,
		0.771210, -0.607026, -0.191715,
		-0.488573, -0.757482, 0.433032,
		35.696449, 37.667442, 30.781612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018475, 37.732998, 29.944246>,  <36.038452, 38.197681, 30.478491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018475, 37.732998, 29.944246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755249, 37.575405, 30.200912>,  <35.597313, 37.480850, 30.354912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755249, 37.575405, 30.200912>,  <36.018475, 37.732998, 29.944246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755249, 37.575405, 30.200912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490750, -0.421904, -0.762340,
		0.571065, -0.816565, 0.084295,
		-0.658065, -0.393978, 0.641664,
		35.557831, 37.457211, 30.393412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861534, 37.062946, 29.748806>,  <36.018475, 37.732998, 29.944246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861534, 37.062946, 29.748806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540119, 37.174950, 29.958918>,  <35.347271, 37.242153, 30.084984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540119, 37.174950, 29.958918>,  <35.861534, 37.062946, 29.748806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540119, 37.174950, 29.958918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593370, -0.306678, -0.744218,
		-0.047298, -0.909693, 0.412578,
		-0.803539, 0.280012, 0.525280,
		35.299057, 37.258953, 30.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345306, 36.438118, 29.821743>,  <35.861534, 37.062946, 29.748806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345306, 36.438118, 29.821743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115234, 36.748280, 29.925993>,  <34.977192, 36.934376, 29.988543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115234, 36.748280, 29.925993>,  <35.345306, 36.438118, 29.821743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115234, 36.748280, 29.925993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784913, -0.433396, -0.442809,
		-0.230400, -0.459262, 0.857901,
		-0.575176, 0.775401, 0.260626,
		34.942680, 36.980900, 30.004181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700108, 36.211559, 30.247688>,  <35.345306, 36.438118, 29.821743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700108, 36.211559, 30.247688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584457, 36.568325, 30.108606>,  <34.515068, 36.782383, 30.025158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584457, 36.568325, 30.108606>,  <34.700108, 36.211559, 30.247688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584457, 36.568325, 30.108606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807968, -0.422159, -0.411059,
		-0.513415, 0.162086, 0.842694,
		-0.289124, 0.891914, -0.347703,
		34.497719, 36.835899, 30.004295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017502, 36.089909, 30.172155>,  <34.700108, 36.211559, 30.247688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017502, 36.089909, 30.172155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078625, 36.433311, 29.976353>,  <34.115299, 36.639355, 29.858871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078625, 36.433311, 29.976353>,  <34.017502, 36.089909, 30.172155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078625, 36.433311, 29.976353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765809, -0.210214, -0.607739,
		-0.624649, 0.467733, 0.625331,
		0.152806, 0.858508, -0.489504,
		34.124466, 36.690865, 29.829502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349689, 36.412609, 29.973623>,  <34.017502, 36.089909, 30.172155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349689, 36.412609, 29.973623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628460, 36.546021, 29.719675>,  <33.795723, 36.626068, 29.567307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628460, 36.546021, 29.719675>,  <33.349689, 36.412609, 29.973623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628460, 36.546021, 29.719675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631044, -0.135379, -0.763843,
		-0.340711, 0.932970, 0.116122,
		0.696922, 0.333528, -0.634870,
		33.837536, 36.646080, 29.529215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945293, 36.889324, 29.435946>,  <33.349689, 36.412609, 29.973623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945293, 36.889324, 29.435946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302025, 36.782761, 29.289700>,  <33.516064, 36.718822, 29.201952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302025, 36.782761, 29.289700>,  <32.945293, 36.889324, 29.435946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302025, 36.782761, 29.289700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441324, -0.334772, -0.832562,
		0.099405, 0.903855, -0.416131,
		0.891825, -0.266410, -0.365615,
		33.569572, 36.702839, 29.180016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842949, 37.033783, 28.701384>,  <32.945293, 36.889324, 29.435946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842949, 37.033783, 28.701384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172787, 36.808022, 28.716867>,  <33.370689, 36.672565, 28.726158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172787, 36.808022, 28.716867>,  <32.842949, 37.033783, 28.701384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172787, 36.808022, 28.716867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214771, -0.375611, -0.901549,
		0.523377, 0.735095, -0.430943,
		0.824591, -0.564404, 0.038710,
		33.420162, 36.638699, 28.728479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177288, 37.010880, 27.954586>,  <32.842949, 37.033783, 28.701384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177288, 37.010880, 27.954586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312263, 36.679340, 28.133087>,  <33.393250, 36.480415, 28.240187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312263, 36.679340, 28.133087>,  <33.177288, 37.010880, 27.954586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312263, 36.679340, 28.133087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141732, -0.513387, -0.846372,
		0.930615, 0.222354, -0.290713,
		0.337442, -0.828850, 0.446251,
		33.413498, 36.430687, 28.266962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528622, 36.688984, 27.426142>,  <33.177288, 37.010880, 27.954586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528622, 36.688984, 27.426142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421772, 36.415371, 27.697655>,  <33.357662, 36.251202, 27.860563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421772, 36.415371, 27.697655>,  <33.528622, 36.688984, 27.426142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421772, 36.415371, 27.697655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451277, -0.533574, -0.715295,
		0.851465, -0.497394, -0.166156,
		-0.267127, -0.684031, 0.678782,
		33.341633, 36.210163, 27.901289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635292, 36.087715, 27.055984>,  <33.528622, 36.688984, 27.426142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635292, 36.087715, 27.055984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418964, 35.971233, 27.371634>,  <33.289169, 35.901344, 27.561022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418964, 35.971233, 27.371634>,  <33.635292, 36.087715, 27.055984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418964, 35.971233, 27.371634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504472, -0.638408, -0.581329,
		0.673069, -0.712483, 0.198357,
		-0.540820, -0.291209, 0.789121,
		33.256718, 35.883869, 27.608370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564713, 35.353924, 26.994852>,  <33.635292, 36.087715, 27.055984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564713, 35.353924, 26.994852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269688, 35.442486, 27.250034>,  <33.092674, 35.495621, 27.403143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269688, 35.442486, 27.250034>,  <33.564713, 35.353924, 26.994852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269688, 35.442486, 27.250034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538177, -0.763359, -0.357279,
		0.407887, -0.606847, 0.682176,
		-0.737559, 0.221402, 0.637956,
		33.048420, 35.508907, 27.441422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453209, 34.711552, 27.401501>,  <33.564713, 35.353924, 26.994852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453209, 34.711552, 27.401501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135044, 34.952148, 27.431263>,  <32.944145, 35.096504, 27.449121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135044, 34.952148, 27.431263>,  <33.453209, 34.711552, 27.401501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135044, 34.952148, 27.431263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601677, -0.768912, -0.216238,
		-0.072852, -0.216767, 0.973501,
		-0.795410, 0.601487, 0.074407,
		32.896420, 35.132595, 27.453585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998371, 34.347408, 27.836817>,  <33.453209, 34.711552, 27.401501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998371, 34.347408, 27.836817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823505, 34.609493, 27.590378>,  <32.718586, 34.766747, 27.442514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823505, 34.609493, 27.590378>,  <32.998371, 34.347408, 27.836817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823505, 34.609493, 27.590378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620023, -0.715786, -0.321284,
		-0.651504, 0.241540, 0.719166,
		-0.437166, 0.655217, -0.616098,
		32.692356, 34.806057, 27.405548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382114, 33.970524, 27.539663>,  <32.998371, 34.347408, 27.836817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382114, 33.970524, 27.539663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.349373, 34.306965, 27.325806>,  <32.329727, 34.508831, 27.197491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.349373, 34.306965, 27.325806>,  <32.382114, 33.970524, 27.539663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349373, 34.306965, 27.325806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703267, -0.428860, -0.567005,
		-0.706198, 0.329585, 0.626625,
		-0.081858, 0.841102, -0.534646,
		32.324814, 34.559296, 27.165413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674286, 34.139950, 27.471306>,  <32.382114, 33.970524, 27.539663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674286, 34.139950, 27.471306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834169, 34.337795, 27.162607>,  <31.930099, 34.456501, 26.977388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834169, 34.337795, 27.162607>,  <31.674286, 34.139950, 27.471306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834169, 34.337795, 27.162607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778996, -0.260443, -0.570381,
		-0.483114, 0.829172, 0.281202,
		0.399707, 0.494614, -0.771746,
		31.954081, 34.486179, 26.931084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128920, 34.667667, 27.157274>,  <31.674286, 34.139950, 27.471306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128920, 34.667667, 27.157274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.401579, 34.598423, 26.872911>,  <31.565174, 34.556877, 26.702293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.401579, 34.598423, 26.872911>,  <31.128920, 34.667667, 27.157274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401579, 34.598423, 26.872911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724657, -0.294028, -0.623234,
		-0.101137, 0.939989, -0.325870,
		0.681648, -0.173112, -0.710907,
		31.606073, 34.546490, 26.659639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905119, 34.865887, 26.453703>,  <31.128920, 34.667667, 27.157274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905119, 34.865887, 26.453703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.207136, 34.618107, 26.367739>,  <31.388348, 34.469437, 26.316160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.207136, 34.618107, 26.367739>,  <30.905119, 34.865887, 26.453703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207136, 34.618107, 26.367739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505661, -0.341473, -0.792277,
		0.417391, 0.706877, -0.571060,
		0.755044, -0.619452, -0.214913,
		31.433649, 34.432270, 26.303265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109978, 34.996723, 25.731998>,  <30.905119, 34.865887, 26.453703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109978, 34.996723, 25.731998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239601, 34.632729, 25.835472>,  <31.317375, 34.414333, 25.897556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239601, 34.632729, 25.835472>,  <31.109978, 34.996723, 25.731998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239601, 34.632729, 25.835472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481935, -0.394093, -0.782579,
		0.814078, 0.128933, -0.566262,
		0.324060, -0.909982, 0.258685,
		31.336819, 34.359734, 25.913078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204910, 34.766060, 25.088413>,  <31.109978, 34.996723, 25.731998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204910, 34.766060, 25.088413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210938, 34.433842, 25.311115>,  <31.214554, 34.234512, 25.444736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210938, 34.433842, 25.311115>,  <31.204910, 34.766060, 25.088413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210938, 34.433842, 25.311115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424773, -0.509390, -0.748391,
		0.905174, -0.225216, -0.360468,
		0.015069, -0.830541, 0.556753,
		31.215458, 34.184681, 25.478142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560568, 34.197853, 24.714827>,  <31.204910, 34.766060, 25.088413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560568, 34.197853, 24.714827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311275, 34.033592, 24.981043>,  <31.161699, 33.935036, 25.140774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311275, 34.033592, 24.981043>,  <31.560568, 34.197853, 24.714827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311275, 34.033592, 24.981043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396101, -0.568040, -0.721412,
		0.674305, -0.713228, 0.191360,
		-0.623232, -0.410654, 0.665542,
		31.124306, 33.910397, 25.180706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519342, 33.473907, 24.498318>,  <31.560568, 34.197853, 24.714827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519342, 33.473907, 24.498318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209179, 33.484886, 24.750662>,  <31.023081, 33.491474, 24.902069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209179, 33.484886, 24.750662>,  <31.519342, 33.473907, 24.498318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209179, 33.484886, 24.750662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525499, -0.582008, -0.620579,
		0.350131, -0.812720, 0.465720,
		-0.775409, 0.027451, 0.630862,
		30.976557, 33.493122, 24.939920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980326, 32.897514, 24.770025>,  <31.519342, 33.473907, 24.498318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980326, 32.897514, 24.770025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315643, 32.754478, 24.605394>,  <32.516834, 32.668659, 24.506617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315643, 32.754478, 24.605394>,  <31.980326, 32.897514, 24.770025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315643, 32.754478, 24.605394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543406, 0.609464, 0.577291,
		0.044409, -0.707592, 0.705224,
		0.838295, -0.357586, -0.411575,
		32.567131, 32.647202, 24.481922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403179, 32.883610, 25.313236>,  <31.980326, 32.897514, 24.770025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403179, 32.883610, 25.313236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669807, 32.860340, 25.015970>,  <32.829784, 32.846378, 24.837610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669807, 32.860340, 25.015970>,  <32.403179, 32.883610, 25.313236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669807, 32.860340, 25.015970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631509, 0.573781, 0.521508,
		0.396076, -0.816940, 0.419206,
		0.666573, -0.058176, -0.743166,
		32.869778, 32.842888, 24.793020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993473, 32.742420, 25.653666>,  <32.403179, 32.883610, 25.313236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993473, 32.742420, 25.653666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126522, 32.882603, 25.303457>,  <33.206352, 32.966713, 25.093332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126522, 32.882603, 25.303457>,  <32.993473, 32.742420, 25.653666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126522, 32.882603, 25.303457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714680, 0.512049, 0.476485,
		0.615299, -0.784209, -0.080145,
		0.332625, 0.350459, -0.875523,
		33.226311, 32.987740, 25.040800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764652, 32.751556, 25.677084>,  <32.993473, 32.742420, 25.653666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764652, 32.751556, 25.677084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659206, 32.997890, 25.380096>,  <33.595940, 33.145691, 25.201904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659206, 32.997890, 25.380096>,  <33.764652, 32.751556, 25.677084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659206, 32.997890, 25.380096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695140, 0.654922, 0.296407,
		0.668796, -0.437982, -0.600736,
		-0.263615, 0.615832, -0.742468,
		33.580124, 33.182640, 25.157356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384003, 33.072205, 25.467121>,  <33.764652, 32.751556, 25.677084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384003, 33.072205, 25.467121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108734, 33.319511, 25.315243>,  <33.943573, 33.467896, 25.224115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108734, 33.319511, 25.315243>,  <34.384003, 33.072205, 25.467121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108734, 33.319511, 25.315243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577702, 0.783528, 0.228789,
		0.438956, -0.061906, -0.896374,
		-0.688170, 0.618265, -0.379697,
		33.902283, 33.504990, 25.201334>
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
