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
	<24.303970, 34.907578, 34.667339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305695, 35.179462, 34.960724>,  <24.306730, 35.342594, 35.136757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305695, 35.179462, 34.960724>,  <24.303970, 34.907578, 34.667339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.305695, 35.179462, 34.960724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785171, 0.451916, -0.423413,
		-0.619264, 0.577721, -0.531743,
		0.004312, 0.679713, 0.733465,
		24.306988, 35.383377, 35.180763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.224243, 35.600327, 34.401577>,  <24.303970, 34.907578, 34.667339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.224243, 35.600327, 34.401577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427156, 35.624947, 34.745407>,  <24.548904, 35.639717, 34.951706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427156, 35.624947, 34.745407>,  <24.224243, 35.600327, 34.401577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427156, 35.624947, 34.745407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714616, 0.527434, -0.459497,
		-0.481652, 0.847364, 0.223575,
		0.507282, 0.061547, 0.859580,
		24.579342, 35.643410, 35.003281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605091, 35.870590, 33.907288>,  <24.224243, 35.600327, 34.401577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605091, 35.870590, 33.907288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533485, 35.648529, 33.582386>,  <24.490522, 35.515293, 33.387444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533485, 35.648529, 33.582386>,  <24.605091, 35.870590, 33.907288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533485, 35.648529, 33.582386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922515, 0.192220, -0.334690,
		0.341936, -0.809235, 0.477722,
		-0.179015, -0.555148, -0.812258,
		24.479780, 35.481983, 33.338707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110964, 35.451309, 33.688953>,  <24.605091, 35.870590, 33.907288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110964, 35.451309, 33.688953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915472, 35.536160, 33.350452>,  <24.798176, 35.587070, 33.147350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915472, 35.536160, 33.350452>,  <25.110964, 35.451309, 33.688953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915472, 35.536160, 33.350452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850108, 0.333827, -0.407278,
		0.196107, -0.918456, -0.343484,
		-0.488731, 0.212128, -0.846253,
		24.768852, 35.599796, 33.096577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559793, 35.304882, 32.963299>,  <25.110964, 35.451309, 33.688953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559793, 35.304882, 32.963299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298664, 35.591610, 32.865330>,  <25.141987, 35.763645, 32.806549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298664, 35.591610, 32.865330>,  <25.559793, 35.304882, 32.963299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298664, 35.591610, 32.865330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757500, 0.619338, -0.206435,
		0.003714, -0.320295, -0.947311,
		-0.652825, 0.716821, -0.244924,
		25.102816, 35.806656, 32.791851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295250, 35.251835, 33.212696>,  <25.559793, 35.304882, 32.963299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295250, 35.251835, 33.212696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688347, 35.321926, 33.188976>,  <26.924204, 35.363979, 33.174744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688347, 35.321926, 33.188976>,  <26.295250, 35.251835, 33.212696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688347, 35.321926, 33.188976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069412, 0.052161, -0.996223,
		-0.171473, 0.983145, 0.063424,
		0.982740, 0.175228, -0.059298,
		26.983170, 35.374496, 33.171188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410707, 35.918148, 32.779118>,  <26.295250, 35.251835, 33.212696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410707, 35.918148, 32.779118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761795, 35.727776, 32.756821>,  <26.972446, 35.613552, 32.743443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761795, 35.727776, 32.756821>,  <26.410707, 35.918148, 32.779118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761795, 35.727776, 32.756821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042709, 0.193559, -0.980159,
		0.477273, 0.857921, 0.190216,
		0.877717, -0.475927, -0.055740,
		27.025110, 35.584999, 32.740097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765247, 36.342377, 32.345417>,  <26.410707, 35.918148, 32.779118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765247, 36.342377, 32.345417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996342, 36.015926, 32.350422>,  <27.134998, 35.820057, 32.353424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996342, 36.015926, 32.350422>,  <26.765247, 36.342377, 32.345417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996342, 36.015926, 32.350422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209728, 0.133614, -0.968588,
		0.788818, 0.562213, 0.248358,
		0.577737, -0.816127, 0.012515,
		27.169662, 35.771088, 32.354176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451162, 36.543159, 32.203987>,  <26.765247, 36.342377, 32.345417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451162, 36.543159, 32.203987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409523, 36.159740, 32.097885>,  <27.384539, 35.929691, 32.034225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409523, 36.159740, 32.097885>,  <27.451162, 36.543159, 32.203987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409523, 36.159740, 32.097885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244068, 0.233926, -0.941121,
		0.964155, -0.162709, 0.209599,
		-0.104098, -0.958543, -0.265252,
		27.378294, 35.872177, 32.018311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057886, 36.467960, 31.768692>,  <27.451162, 36.543159, 32.203987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057886, 36.467960, 31.768692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816286, 36.165813, 31.667019>,  <27.671326, 35.984528, 31.606016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816286, 36.165813, 31.667019>,  <28.057886, 36.467960, 31.768692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816286, 36.165813, 31.667019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262385, 0.112684, -0.958361,
		0.752555, -0.645543, 0.130135,
		-0.603999, -0.755365, -0.254182,
		27.635086, 35.939205, 31.590765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460785, 35.991776, 31.308405>,  <28.057886, 36.467960, 31.768692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460785, 35.991776, 31.308405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075089, 35.908222, 31.243153>,  <27.843672, 35.858089, 31.204002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075089, 35.908222, 31.243153>,  <28.460785, 35.991776, 31.308405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075089, 35.908222, 31.243153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143794, 0.104722, -0.984051,
		0.222638, -0.972317, -0.070940,
		-0.964238, -0.208886, -0.163129,
		27.785816, 35.845558, 31.194214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482460, 35.564991, 30.730314>,  <28.460785, 35.991776, 31.308405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482460, 35.564991, 30.730314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100891, 35.684990, 30.732594>,  <27.871950, 35.756989, 30.733961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100891, 35.684990, 30.732594>,  <28.482460, 35.564991, 30.730314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100891, 35.684990, 30.732594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075772, 0.259236, -0.962837,
		-0.290323, -0.918042, -0.270022,
		-0.953924, 0.299994, 0.005701,
		27.814714, 35.774986, 30.734304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081161, 35.099308, 30.218025>,  <28.482460, 35.564991, 30.730314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081161, 35.099308, 30.218025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899185, 35.449455, 30.283463>,  <27.789999, 35.659542, 30.322725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899185, 35.449455, 30.283463>,  <28.081161, 35.099308, 30.218025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899185, 35.449455, 30.283463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039594, 0.203404, -0.978294,
		-0.889641, -0.438588, -0.127196,
		-0.454940, 0.875367, 0.163591,
		27.762703, 35.712067, 30.332541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043131, 35.320351, 29.558968>,  <28.081161, 35.099308, 30.218025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043131, 35.320351, 29.558968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902767, 35.645554, 29.744820>,  <27.818548, 35.840675, 29.856331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902767, 35.645554, 29.744820>,  <28.043131, 35.320351, 29.558968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902767, 35.645554, 29.744820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231068, 0.556016, -0.798407,
		-0.907453, -0.172807, -0.382971,
		-0.350908, 0.813009, 0.464629,
		27.797495, 35.889458, 29.884209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485720, 35.617020, 29.184526>,  <28.043131, 35.320351, 29.558968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485720, 35.617020, 29.184526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634586, 35.917500, 29.402586>,  <27.723906, 36.097790, 29.533422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634586, 35.917500, 29.402586>,  <27.485720, 35.617020, 29.184526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634586, 35.917500, 29.402586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039697, 0.573919, -0.817950,
		-0.927318, 0.326053, 0.183771,
		0.372165, 0.751204, 0.545148,
		27.746235, 36.142860, 29.566130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210592, 36.203075, 28.844788>,  <27.485720, 35.617020, 29.184526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210592, 36.203075, 28.844788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500376, 36.331757, 29.088646>,  <27.674246, 36.408966, 29.234961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500376, 36.331757, 29.088646>,  <27.210592, 36.203075, 28.844788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500376, 36.331757, 29.088646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375591, 0.557376, -0.740448,
		-0.578008, 0.765400, 0.282965,
		0.724457, 0.321706, 0.609645,
		27.717712, 36.428268, 29.271540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080921, 36.896290, 28.881969>,  <27.210592, 36.203075, 28.844788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080921, 36.896290, 28.881969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460890, 36.790577, 28.948669>,  <27.688871, 36.727150, 28.988689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460890, 36.790577, 28.948669>,  <27.080921, 36.896290, 28.881969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460890, 36.790577, 28.948669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275174, 0.454564, -0.847143,
		0.148083, 0.850604, 0.504523,
		0.949921, -0.264279, 0.166750,
		27.745867, 36.711292, 28.998695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482252, 37.457821, 28.876453>,  <27.080921, 36.896290, 28.881969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482252, 37.457821, 28.876453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755587, 37.190731, 28.758339>,  <27.919588, 37.030476, 28.687469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755587, 37.190731, 28.758339>,  <27.482252, 37.457821, 28.876453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755587, 37.190731, 28.758339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094477, 0.481913, -0.871111,
		0.723966, 0.567364, 0.392393,
		0.683336, -0.667726, -0.295286,
		27.960587, 36.990414, 28.669754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953661, 37.875710, 28.601250>,  <27.482252, 37.457821, 28.876453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953661, 37.875710, 28.601250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094589, 37.520107, 28.484262>,  <28.179146, 37.306744, 28.414070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094589, 37.520107, 28.484262>,  <27.953661, 37.875710, 28.601250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094589, 37.520107, 28.484262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189802, 0.373884, -0.907847,
		0.916431, 0.264342, 0.300462,
		0.352320, -0.889007, -0.292466,
		28.200285, 37.253407, 28.396523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532486, 38.022888, 28.176275>,  <27.953661, 37.875710, 28.601250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532486, 38.022888, 28.176275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419048, 37.647820, 28.095934>,  <28.350986, 37.422779, 28.047729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419048, 37.647820, 28.095934>,  <28.532486, 38.022888, 28.176275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419048, 37.647820, 28.095934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113308, 0.175218, -0.977988,
		0.952227, -0.300108, 0.056556,
		-0.283592, -0.937675, -0.200852,
		28.333971, 37.366516, 28.035679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096176, 37.603371, 27.790253>,  <28.532486, 38.022888, 28.176275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096176, 37.603371, 27.790253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732176, 37.462448, 27.702818>,  <28.513777, 37.377895, 27.650356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732176, 37.462448, 27.702818>,  <29.096176, 37.603371, 27.790253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732176, 37.462448, 27.702818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155751, 0.198122, -0.967724,
		0.384244, -0.914673, -0.125419,
		-0.909999, -0.352308, -0.218589,
		28.459175, 37.356754, 27.637241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138153, 37.474854, 27.082289>,  <29.096176, 37.603371, 27.790253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138153, 37.474854, 27.082289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743866, 37.423901, 27.126347>,  <28.507294, 37.393330, 27.152782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743866, 37.423901, 27.126347>,  <29.138153, 37.474854, 27.082289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743866, 37.423901, 27.126347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111837, 0.006173, -0.993707,
		0.125899, -0.991835, -0.020331,
		-0.985719, -0.127381, 0.110147,
		28.448151, 37.385685, 27.159391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933781, 36.995327, 26.495159>,  <29.138153, 37.474854, 27.082289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933781, 36.995327, 26.495159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610094, 37.197308, 26.615288>,  <28.415882, 37.318497, 26.687365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610094, 37.197308, 26.615288>,  <28.933781, 36.995327, 26.495159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610094, 37.197308, 26.615288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254001, 0.160247, -0.953837,
		-0.529769, -0.848141, -0.001416,
		-0.809215, 0.504954, 0.300322,
		28.367329, 37.348793, 26.705385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336216, 36.770302, 26.128675>,  <28.933781, 36.995327, 26.495159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336216, 36.770302, 26.128675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222185, 37.128056, 26.266552>,  <28.153767, 37.342709, 26.349277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222185, 37.128056, 26.266552>,  <28.336216, 36.770302, 26.128675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222185, 37.128056, 26.266552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436033, 0.199243, -0.877597,
		-0.853585, -0.400479, 0.333181,
		-0.285075, 0.894381, 0.344694,
		28.136663, 37.396370, 26.369961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615528, 36.929508, 25.867165>,  <28.336216, 36.770302, 26.128675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615528, 36.929508, 25.867165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772699, 37.277966, 25.984953>,  <27.867002, 37.487041, 26.055626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772699, 37.277966, 25.984953>,  <27.615528, 36.929508, 25.867165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772699, 37.277966, 25.984953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415709, 0.453915, -0.788129,
		-0.820240, 0.187263, 0.540499,
		0.392928, 0.871145, 0.294473,
		27.890577, 37.539310, 26.073296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081808, 37.412453, 26.074614>,  <27.615528, 36.929508, 25.867165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081808, 37.412453, 26.074614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404209, 37.574871, 25.902342>,  <27.597651, 37.672321, 25.798979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404209, 37.574871, 25.902342>,  <27.081808, 37.412453, 26.074614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404209, 37.574871, 25.902342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590234, 0.496606, -0.636401,
		-0.044532, 0.767142, 0.639930,
		0.806003, 0.406049, -0.430678,
		27.646009, 37.696686, 25.773138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837721, 38.021088, 25.841557>,  <27.081808, 37.412453, 26.074614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837721, 38.021088, 25.841557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184349, 37.964733, 25.650055>,  <27.392326, 37.930920, 25.535154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184349, 37.964733, 25.650055>,  <26.837721, 38.021088, 25.841557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184349, 37.964733, 25.650055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298759, 0.621981, -0.723797,
		0.399748, 0.770254, 0.496901,
		0.866571, -0.140882, -0.478756,
		27.444321, 37.922470, 25.506428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258305, 38.647228, 25.914413>,  <26.837721, 38.021088, 25.841557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258305, 38.647228, 25.914413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304731, 38.426090, 25.584349>,  <27.332586, 38.293407, 25.386311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304731, 38.426090, 25.584349>,  <27.258305, 38.647228, 25.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304731, 38.426090, 25.584349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303832, 0.771191, -0.559420,
		0.945629, 0.315641, -0.078463,
		0.116066, -0.552843, -0.825162,
		27.339552, 38.260239, 25.336800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443113, 39.134716, 26.355080>,  <27.258305, 38.647228, 25.914413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443113, 39.134716, 26.355080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329491, 39.512733, 26.290329>,  <27.261318, 39.739544, 26.251478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329491, 39.512733, 26.290329>,  <27.443113, 39.134716, 26.355080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329491, 39.512733, 26.290329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954783, 0.294256, 0.042459,
		0.087759, -0.142496, -0.985897,
		-0.284056, 0.945044, -0.161877,
		27.244274, 39.796246, 26.241766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823954, 39.428326, 25.792545>,  <27.443113, 39.134716, 26.355080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823954, 39.428326, 25.792545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703398, 39.716919, 26.041904>,  <27.631063, 39.890076, 26.191521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703398, 39.716919, 26.041904>,  <27.823954, 39.428326, 25.792545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703398, 39.716919, 26.041904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913360, 0.406156, -0.028485,
		-0.273748, 0.560801, -0.781386,
		-0.301390, 0.721484, 0.623397,
		27.612980, 39.933365, 26.228924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946800, 39.999088, 25.500118>,  <27.823954, 39.428326, 25.792545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946800, 39.999088, 25.500118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973148, 40.078594, 25.891251>,  <27.988956, 40.126297, 26.125931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973148, 40.078594, 25.891251>,  <27.946800, 39.999088, 25.500118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973148, 40.078594, 25.891251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934929, 0.330129, -0.130085,
		-0.348666, 0.922772, -0.164084,
		0.065870, 0.198763, 0.977831,
		27.992908, 40.138222, 26.184601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012331, 40.786991, 25.567862>,  <27.946800, 39.999088, 25.500118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012331, 40.786991, 25.567862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197201, 40.526634, 25.808771>,  <28.308123, 40.370419, 25.953318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197201, 40.526634, 25.808771>,  <28.012331, 40.786991, 25.567862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197201, 40.526634, 25.808771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874881, 0.445602, -0.189797,
		-0.144836, 0.614637, 0.775399,
		0.462176, -0.650892, 0.602274,
		28.335854, 40.331367, 25.989452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150137, 40.901634, 26.280716>,  <28.012331, 40.786991, 25.567862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150137, 40.901634, 26.280716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973137, 41.259659, 26.258572>,  <27.866936, 41.474472, 26.245285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973137, 41.259659, 26.258572>,  <28.150137, 40.901634, 26.280716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973137, 41.259659, 26.258572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264507, 0.189257, 0.945631,
		0.856871, 0.403800, -0.320495,
		-0.442502, 0.895057, -0.055361,
		27.840387, 41.528175, 26.241962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637594, 41.432854, 26.440897>,  <28.150137, 40.901634, 26.280716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637594, 41.432854, 26.440897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251186, 41.466629, 26.538614>,  <28.019342, 41.486893, 26.597244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251186, 41.466629, 26.538614>,  <28.637594, 41.432854, 26.440897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251186, 41.466629, 26.538614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248883, 0.048770, 0.967305,
		0.069759, 0.995235, -0.068127,
		-0.966018, 0.084434, 0.244295,
		27.961380, 41.491959, 26.611902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397411, 42.090843, 26.784262>,  <28.637594, 41.432854, 26.440897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397411, 42.090843, 26.784262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218689, 41.751522, 26.897924>,  <28.111456, 41.547928, 26.966122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218689, 41.751522, 26.897924>,  <28.397411, 42.090843, 26.784262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218689, 41.751522, 26.897924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408971, 0.088819, 0.908215,
		-0.795680, 0.522009, 0.307246,
		-0.446807, -0.848303, 0.284158,
		28.084646, 41.497032, 26.983171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450388, 42.147858, 27.441513>,  <28.397411, 42.090843, 26.784262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450388, 42.147858, 27.441513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312845, 41.773682, 27.474277>,  <28.230320, 41.549175, 27.493937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312845, 41.773682, 27.474277>,  <28.450388, 42.147858, 27.441513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312845, 41.773682, 27.474277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197174, 0.013360, 0.980278,
		-0.918088, 0.353225, 0.179852,
		-0.343856, -0.935443, 0.081912,
		28.209688, 41.493050, 27.498852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988770, 42.118889, 28.110622>,  <28.450388, 42.147858, 27.441513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988770, 42.118889, 28.110622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113956, 41.745052, 28.042988>,  <28.189070, 41.520752, 28.002407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113956, 41.745052, 28.042988>,  <27.988770, 42.118889, 28.110622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113956, 41.745052, 28.042988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174359, -0.118465, 0.977530,
		-0.933621, -0.335419, 0.125879,
		0.312970, -0.934591, -0.169085,
		28.207848, 41.464676, 27.992262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576078, 41.745537, 28.493982>,  <27.988770, 42.118889, 28.110622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576078, 41.745537, 28.493982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913506, 41.536594, 28.444111>,  <28.115961, 41.411228, 28.414188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913506, 41.536594, 28.444111>,  <27.576078, 41.745537, 28.493982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913506, 41.536594, 28.444111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023880, -0.268419, 0.963006,
		-0.536495, -0.809382, -0.238903,
		0.843565, -0.522353, -0.124677,
		28.166574, 41.379890, 28.406708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409096, 41.153961, 28.759340>,  <27.576078, 41.745537, 28.493982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409096, 41.153961, 28.759340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808628, 41.136936, 28.750143>,  <28.048347, 41.126720, 28.744625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808628, 41.136936, 28.750143>,  <27.409096, 41.153961, 28.759340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808628, 41.136936, 28.750143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005904, -0.364493, 0.931188,
		-0.048012, -0.930233, -0.363815,
		0.998829, -0.042560, -0.022992,
		28.108276, 41.124168, 28.743246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537148, 40.467144, 28.971046>,  <27.409096, 41.153961, 28.759340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537148, 40.467144, 28.971046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866587, 40.677105, 29.056988>,  <28.064251, 40.803082, 29.108553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866587, 40.677105, 29.056988>,  <27.537148, 40.467144, 28.971046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866587, 40.677105, 29.056988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132590, -0.546503, 0.826894,
		0.551455, -0.652543, -0.519697,
		0.823600, 0.524902, 0.214851,
		28.113667, 40.834576, 29.121443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940796, 39.972988, 29.254526>,  <27.537148, 40.467144, 28.971046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940796, 39.972988, 29.254526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100386, 40.318871, 29.376581>,  <28.196140, 40.526398, 29.449814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100386, 40.318871, 29.376581>,  <27.940796, 39.972988, 29.254526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100386, 40.318871, 29.376581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226432, -0.415372, 0.881019,
		0.888565, -0.282411, -0.361519,
		0.398975, 0.864702, 0.305138,
		28.220078, 40.578281, 29.468122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616444, 39.773777, 29.501255>,  <27.940796, 39.972988, 29.254526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616444, 39.773777, 29.501255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551155, 40.123924, 29.683281>,  <28.511982, 40.334015, 29.792496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551155, 40.123924, 29.683281>,  <28.616444, 39.773777, 29.501255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551155, 40.123924, 29.683281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360610, -0.376399, 0.853396,
		0.918324, 0.303392, -0.254232,
		-0.163221, 0.875372, 0.455063,
		28.502190, 40.386536, 29.819799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256683, 40.019718, 29.894323>,  <28.616444, 39.773777, 29.501255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256683, 40.019718, 29.894323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925705, 40.183254, 30.048302>,  <28.727118, 40.281376, 30.140688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925705, 40.183254, 30.048302>,  <29.256683, 40.019718, 29.894323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925705, 40.183254, 30.048302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198882, -0.427709, 0.881766,
		0.525147, 0.806172, 0.272594,
		-0.827445, 0.408843, 0.384944,
		28.677471, 40.305908, 30.163784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398712, 39.910683, 30.561308>,  <29.256683, 40.019718, 29.894323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398712, 39.910683, 30.561308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015156, 40.018749, 30.596035>,  <28.785021, 40.083588, 30.616871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015156, 40.018749, 30.596035>,  <29.398712, 39.910683, 30.561308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015156, 40.018749, 30.596035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079657, -0.549898, 0.831425,
		0.272362, 0.790331, 0.548813,
		-0.958892, 0.270165, 0.086816,
		28.727488, 40.099800, 30.622080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388004, 40.220722, 31.237234>,  <29.398712, 39.910683, 30.561308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388004, 40.220722, 31.237234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027000, 40.100380, 31.113970>,  <28.810398, 40.028175, 31.040010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027000, 40.100380, 31.113970>,  <29.388004, 40.220722, 31.237234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027000, 40.100380, 31.113970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095879, -0.557224, 0.824808,
		-0.419860, 0.773944, 0.474055,
		-0.902511, -0.300852, -0.308160,
		28.756247, 40.010124, 31.021523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034451, 40.103733, 31.856773>,  <29.388004, 40.220722, 31.237234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034451, 40.103733, 31.856773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799513, 39.923393, 31.587919>,  <28.658550, 39.815189, 31.426607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799513, 39.923393, 31.587919>,  <29.034451, 40.103733, 31.856773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799513, 39.923393, 31.587919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288580, -0.659227, 0.694364,
		-0.756140, 0.601795, 0.257089,
		-0.587345, -0.450845, -0.672134,
		28.623310, 39.788139, 31.386278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356131, 40.092796, 32.169643>,  <29.034451, 40.103733, 31.856773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356131, 40.092796, 32.169643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392738, 39.793270, 31.907074>,  <28.414703, 39.613552, 31.749533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392738, 39.793270, 31.907074>,  <28.356131, 40.092796, 32.169643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392738, 39.793270, 31.907074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177265, -0.660913, 0.729227,
		-0.979899, 0.049624, -0.193225,
		0.091518, -0.748820, -0.656425,
		28.420195, 39.568623, 31.710146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789177, 39.674480, 32.322964>,  <28.356131, 40.092796, 32.169643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789177, 39.674480, 32.322964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051865, 39.454548, 32.116505>,  <28.209478, 39.322590, 31.992630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051865, 39.454548, 32.116505>,  <27.789177, 39.674480, 32.322964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051865, 39.454548, 32.116505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112960, -0.748422, 0.653533,
		-0.745615, -0.370893, -0.553621,
		0.656733, -0.549821, -0.516139,
		28.248880, 39.289600, 31.961660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499678, 39.010773, 32.234943>,  <27.789177, 39.674480, 32.322964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499678, 39.010773, 32.234943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893368, 38.971367, 32.176163>,  <28.129581, 38.947723, 32.140896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893368, 38.971367, 32.176163>,  <27.499678, 39.010773, 32.234943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893368, 38.971367, 32.176163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026799, -0.738006, 0.674262,
		-0.174875, -0.667564, -0.723724,
		0.984226, -0.098516, -0.146949,
		28.188635, 38.941811, 32.132076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663727, 38.320709, 31.938669>,  <27.499678, 39.010773, 32.234943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663727, 38.320709, 31.938669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990696, 38.459099, 32.122898>,  <28.186876, 38.542133, 32.233437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990696, 38.459099, 32.122898>,  <27.663727, 38.320709, 31.938669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990696, 38.459099, 32.122898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060693, -0.846821, 0.528403,
		0.572835, -0.403974, -0.713208,
		0.817421, 0.345975, 0.460570,
		28.235922, 38.562893, 32.261070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273481, 37.767262, 31.777346>,  <27.663727, 38.320709, 31.938669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273481, 37.767262, 31.777346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370670, 37.980606, 32.101440>,  <28.428984, 38.108612, 32.295898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370670, 37.980606, 32.101440>,  <28.273481, 37.767262, 31.777346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370670, 37.980606, 32.101440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173946, -0.845687, 0.504536,
		0.954310, 0.018350, -0.298256,
		0.242973, 0.533364, 0.810239,
		28.443562, 38.140614, 32.344513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735840, 37.402447, 32.173019>,  <28.273481, 37.767262, 31.777346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735840, 37.402447, 32.173019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631359, 37.652378, 32.467327>,  <28.568670, 37.802338, 32.643913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631359, 37.652378, 32.467327>,  <28.735840, 37.402447, 32.173019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631359, 37.652378, 32.467327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168022, -0.721168, 0.672075,
		0.950548, 0.299174, 0.083386,
		-0.261203, 0.624829, 0.735773,
		28.552998, 37.839828, 32.688061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136669, 37.261280, 32.601570>,  <28.735840, 37.402447, 32.173019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136669, 37.261280, 32.601570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905869, 37.471012, 32.852055>,  <28.767389, 37.596851, 33.002346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905869, 37.471012, 32.852055>,  <29.136669, 37.261280, 32.601570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905869, 37.471012, 32.852055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291712, -0.583848, 0.757644,
		0.762873, 0.619835, 0.183927,
		-0.577000, 0.524333, 0.626215,
		28.732769, 37.628311, 33.039921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639807, 37.493355, 33.135975>,  <29.136669, 37.261280, 32.601570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639807, 37.493355, 33.135975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275703, 37.519863, 33.299454>,  <29.057241, 37.535767, 33.397541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275703, 37.519863, 33.299454>,  <29.639807, 37.493355, 33.135975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275703, 37.519863, 33.299454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288331, -0.606964, 0.740581,
		0.297142, 0.791962, 0.533388,
		-0.910259, 0.066266, 0.408701,
		29.002626, 37.539742, 33.422066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843258, 37.595242, 33.815166>,  <29.639807, 37.493355, 33.135975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843258, 37.595242, 33.815166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476233, 37.439709, 33.781971>,  <29.256018, 37.346390, 33.762054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476233, 37.439709, 33.781971>,  <29.843258, 37.595242, 33.815166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476233, 37.439709, 33.781971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250002, -0.726552, 0.640017,
		-0.309156, 0.566508, 0.763866,
		-0.917563, -0.388833, -0.082989,
		29.200964, 37.323059, 33.757072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634211, 37.349369, 34.450668>,  <29.843258, 37.595242, 33.815166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634211, 37.349369, 34.450668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384104, 37.137486, 34.221428>,  <29.234039, 37.010353, 34.083885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384104, 37.137486, 34.221428>,  <29.634211, 37.349369, 34.450668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384104, 37.137486, 34.221428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175048, -0.810844, 0.558471,
		-0.760524, 0.248875, 0.599720,
		-0.625269, -0.529711, -0.573101,
		29.196524, 36.978573, 34.049496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160219, 36.976215, 34.958111>,  <29.634211, 37.349369, 34.450668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160219, 36.976215, 34.958111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065186, 36.770958, 34.628204>,  <29.008165, 36.647804, 34.430260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065186, 36.770958, 34.628204>,  <29.160219, 36.976215, 34.958111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065186, 36.770958, 34.628204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051472, -0.854533, 0.516841,
		-0.970002, 0.080341, 0.229436,
		-0.237584, -0.513147, -0.824763,
		28.993910, 36.617016, 34.380775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578180, 36.451344, 35.117149>,  <29.160219, 36.976215, 34.958111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578180, 36.451344, 35.117149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771435, 36.293427, 34.804558>,  <28.887388, 36.198677, 34.617001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771435, 36.293427, 34.804558>,  <28.578180, 36.451344, 35.117149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771435, 36.293427, 34.804558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043824, -0.902353, 0.428764,
		-0.874446, -0.172905, -0.453263,
		0.483139, -0.394795, -0.781481,
		28.916376, 36.174988, 34.570114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008621, 35.943123, 35.543312>,  <28.578180, 36.451344, 35.117149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008621, 35.943123, 35.543312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757751, 35.933765, 35.231899>,  <28.607229, 35.928150, 35.045052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757751, 35.933765, 35.231899>,  <29.008621, 35.943123, 35.543312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757751, 35.933765, 35.231899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141344, -0.979534, 0.143303,
		-0.765947, 0.199916, 0.611031,
		-0.627174, -0.023397, -0.778528,
		28.569599, 35.926746, 34.998341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091602, 35.483990, 35.961872>,  <29.008621, 35.943123, 35.543312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091602, 35.483990, 35.961872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894096, 35.178223, 35.796043>,  <28.775593, 34.994762, 35.696545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894096, 35.178223, 35.796043>,  <29.091602, 35.483990, 35.961872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894096, 35.178223, 35.796043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744678, -0.617877, 0.252356,
		-0.449059, -0.184119, 0.874326,
		-0.493763, -0.764414, -0.414572,
		28.745968, 34.948898, 35.671673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209343, 34.850029, 36.431885>,  <29.091602, 35.483990, 35.961872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209343, 34.850029, 36.431885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120445, 34.731823, 36.060234>,  <29.067106, 34.660900, 35.837242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120445, 34.731823, 36.060234>,  <29.209343, 34.850029, 36.431885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120445, 34.731823, 36.060234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854544, -0.517861, -0.039694,
		-0.469428, -0.802800, 0.367627,
		-0.222246, -0.295520, -0.929126,
		29.053772, 34.643166, 35.781498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863335, 34.629959, 36.517479>,  <29.209343, 34.850029, 36.431885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863335, 34.629959, 36.517479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169542, 34.405201, 36.642860>,  <30.353268, 34.270348, 36.718090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169542, 34.405201, 36.642860>,  <29.863335, 34.629959, 36.517479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169542, 34.405201, 36.642860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220200, -0.228956, -0.948204,
		0.604558, 0.794892, -0.051541,
		0.765520, -0.561895, 0.313453,
		30.399199, 34.236633, 36.736897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485035, 34.852913, 36.309868>,  <29.863335, 34.629959, 36.517479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485035, 34.852913, 36.309868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347523, 34.477928, 36.288052>,  <30.265017, 34.252937, 36.274963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347523, 34.477928, 36.288052>,  <30.485035, 34.852913, 36.309868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347523, 34.477928, 36.288052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202815, -0.017415, -0.979062,
		0.916888, -0.347642, 0.196119,
		-0.343778, -0.937466, -0.054539,
		30.244389, 34.196690, 36.271690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933502, 34.288952, 36.016159>,  <30.485035, 34.852913, 36.309868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933502, 34.288952, 36.016159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542318, 34.232574, 35.954544>,  <30.307608, 34.198750, 35.917576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542318, 34.232574, 35.954544>,  <30.933502, 34.288952, 36.016159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542318, 34.232574, 35.954544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143606, 0.081452, -0.986277,
		0.151557, -0.986661, -0.059417,
		-0.977961, -0.140944, -0.154035,
		30.248930, 34.190292, 35.908333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567827, 34.715134, 36.327602>,  <30.933502, 34.288952, 36.016159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567827, 34.715134, 36.327602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810534, 34.407272, 36.248138>,  <31.956158, 34.222557, 36.200459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810534, 34.407272, 36.248138>,  <31.567827, 34.715134, 36.327602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810534, 34.407272, 36.248138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166349, -0.121443, 0.978560,
		-0.777278, -0.626806, 0.054343,
		0.606768, -0.769653, -0.198664,
		31.992563, 34.176376, 36.188538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333900, 34.120113, 36.658920>,  <31.567827, 34.715134, 36.327602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333900, 34.120113, 36.658920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730383, 34.095699, 36.611961>,  <31.968273, 34.081051, 36.583786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730383, 34.095699, 36.611961>,  <31.333900, 34.120113, 36.658920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730383, 34.095699, 36.611961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083846, -0.396647, 0.914134,
		-0.102361, -0.915940, -0.388041,
		0.991207, -0.061035, -0.117399,
		32.027744, 34.077389, 36.576740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493273, 33.590351, 37.027660>,  <31.333900, 34.120113, 36.658920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493273, 33.590351, 37.027660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866796, 33.723213, 36.974487>,  <32.090912, 33.802929, 36.942581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866796, 33.723213, 36.974487>,  <31.493273, 33.590351, 37.027660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866796, 33.723213, 36.974487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210469, -0.209541, 0.954880,
		0.289311, -0.919655, -0.265580,
		0.933810, 0.332154, -0.132936,
		32.146938, 33.822861, 36.934605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983267, 33.072433, 37.312489>,  <31.493273, 33.590351, 37.027660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983267, 33.072433, 37.312489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161385, 33.430435, 37.322983>,  <32.268253, 33.645237, 37.329277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161385, 33.430435, 37.322983>,  <31.983267, 33.072433, 37.312489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161385, 33.430435, 37.322983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402141, -0.226084, 0.887225,
		0.799998, -0.384526, -0.460590,
		0.445293, 0.895000, 0.026234,
		32.294971, 33.698936, 37.330853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590824, 32.911331, 37.506504>,  <31.983267, 33.072433, 37.312489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590824, 32.911331, 37.506504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571465, 33.304443, 37.577827>,  <32.559849, 33.540310, 37.620621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571465, 33.304443, 37.577827>,  <32.590824, 32.911331, 37.506504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571465, 33.304443, 37.577827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334006, -0.152317, 0.930182,
		0.941327, 0.104581, -0.320883,
		-0.048403, 0.982783, 0.178311,
		32.556942, 33.599277, 37.631321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246021, 33.050018, 37.866291>,  <32.590824, 32.911331, 37.506504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246021, 33.050018, 37.866291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974659, 33.328529, 37.960064>,  <32.811840, 33.495636, 38.016327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974659, 33.328529, 37.960064>,  <33.246021, 33.050018, 37.866291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974659, 33.328529, 37.960064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191155, -0.140817, 0.971406,
		0.709380, 0.703824, -0.037565,
		-0.678410, 0.696277, 0.234433,
		32.771137, 33.537411, 38.030396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588978, 33.316967, 38.345490>,  <33.246021, 33.050018, 37.866291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588978, 33.316967, 38.345490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221561, 33.463421, 38.405117>,  <33.001110, 33.551292, 38.440895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221561, 33.463421, 38.405117>,  <33.588978, 33.316967, 38.345490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221561, 33.463421, 38.405117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045758, -0.276086, 0.960043,
		0.392665, 0.888662, 0.236843,
		-0.918542, 0.366138, 0.149073,
		32.945999, 33.573261, 38.449841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701633, 33.612427, 38.955498>,  <33.588978, 33.316967, 38.345490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701633, 33.612427, 38.955498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304363, 33.585182, 38.917648>,  <33.066002, 33.568836, 38.894939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304363, 33.585182, 38.917648>,  <33.701633, 33.612427, 38.955498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304363, 33.585182, 38.917648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093360, -0.021506, 0.995400,
		-0.069835, 0.997446, 0.015000,
		-0.993180, -0.068113, -0.094624,
		33.006409, 33.564747, 38.889259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482544, 34.114944, 39.411919>,  <33.701633, 33.612427, 38.955498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482544, 34.114944, 39.411919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194298, 33.843918, 39.353100>,  <33.021351, 33.681301, 39.317806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194298, 33.843918, 39.353100>,  <33.482544, 34.114944, 39.411919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194298, 33.843918, 39.353100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098130, -0.110288, 0.989043,
		-0.686357, 0.727149, 0.012986,
		-0.720614, -0.677563, -0.147052,
		32.978115, 33.640648, 39.308983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861221, 34.331882, 39.874882>,  <33.482544, 34.114944, 39.411919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861221, 34.331882, 39.874882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837643, 33.943115, 39.783752>,  <32.823494, 33.709854, 39.729076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837643, 33.943115, 39.783752>,  <32.861221, 34.331882, 39.874882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837643, 33.943115, 39.783752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281636, -0.202753, 0.937855,
		-0.957709, 0.119450, -0.261774,
		-0.058951, -0.971917, -0.227820,
		32.819958, 33.651539, 39.715408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211048, 34.100914, 40.047935>,  <32.861221, 34.331882, 39.874882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211048, 34.100914, 40.047935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442146, 33.774456, 40.043575>,  <32.580807, 33.578583, 40.040958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442146, 33.774456, 40.043575>,  <32.211048, 34.100914, 40.047935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442146, 33.774456, 40.043575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331984, -0.247172, 0.910326,
		-0.745652, -0.522317, -0.413749,
		0.577745, -0.816144, -0.010904,
		32.615471, 33.529613, 40.040302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729712, 33.513821, 40.265644>,  <32.211048, 34.100914, 40.047935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729712, 33.513821, 40.265644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109844, 33.404572, 40.325344>,  <32.337925, 33.339024, 40.361164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109844, 33.404572, 40.325344>,  <31.729712, 33.513821, 40.265644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109844, 33.404572, 40.325344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181658, -0.097372, 0.978529,
		-0.252722, -0.957040, -0.142150,
		0.950332, -0.273118, 0.149246,
		32.394943, 33.322636, 40.370117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700035, 33.070606, 40.785454>,  <31.729712, 33.513821, 40.265644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700035, 33.070606, 40.785454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099991, 33.076122, 40.783146>,  <32.339966, 33.079433, 40.781761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099991, 33.076122, 40.783146>,  <31.700035, 33.070606, 40.785454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099991, 33.076122, 40.783146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009008, -0.247872, 0.968751,
		0.011931, -0.968695, -0.247969,
		0.999888, 0.013792, -0.005769,
		32.399956, 33.080261, 40.781414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010090, 32.386009, 40.993877>,  <31.700035, 33.070606, 40.785454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010090, 32.386009, 40.993877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319782, 32.631702, 41.054928>,  <32.505596, 32.779118, 41.091557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319782, 32.631702, 41.054928>,  <32.010090, 32.386009, 40.993877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319782, 32.631702, 41.054928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048561, -0.298089, 0.953302,
		0.631043, -0.730660, -0.260616,
		0.774226, 0.614231, 0.152625,
		32.552052, 32.815971, 41.100716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525032, 31.991686, 41.259182>,  <32.010090, 32.386009, 40.993877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525032, 31.991686, 41.259182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640797, 32.364979, 41.344337>,  <32.710255, 32.588955, 41.395432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640797, 32.364979, 41.344337>,  <32.525032, 31.991686, 41.259182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640797, 32.364979, 41.344337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003655, -0.221323, 0.975194,
		0.957197, -0.283014, -0.060644,
		0.289416, 0.933230, 0.212884,
		32.727623, 32.644947, 41.408203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176582, 31.967054, 41.729309>,  <32.525032, 31.991686, 41.259182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176582, 31.967054, 41.729309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977570, 32.307495, 41.796352>,  <32.858162, 32.511761, 41.836578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977570, 32.307495, 41.796352>,  <33.176582, 31.967054, 41.729309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977570, 32.307495, 41.796352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091495, -0.243628, 0.965544,
		0.862609, 0.465050, 0.199083,
		-0.497528, 0.851102, 0.167606,
		32.828312, 32.562824, 41.846634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431210, 32.328190, 42.411842>,  <33.176582, 31.967054, 41.729309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431210, 32.328190, 42.411842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058846, 32.459332, 42.347443>,  <32.835426, 32.538017, 42.308804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058846, 32.459332, 42.347443>,  <33.431210, 32.328190, 42.411842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058846, 32.459332, 42.347443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207206, -0.111034, 0.971976,
		0.300789, 0.938181, 0.171296,
		-0.930909, 0.327853, -0.160999,
		32.779572, 32.557686, 42.299145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276398, 32.740639, 42.988762>,  <33.431210, 32.328190, 42.411842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276398, 32.740639, 42.988762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928383, 32.650723, 42.813255>,  <32.719574, 32.596771, 42.707951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928383, 32.650723, 42.813255>,  <33.276398, 32.740639, 42.988762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928383, 32.650723, 42.813255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446196, -0.019423, 0.894725,
		-0.209646, 0.974214, -0.083402,
		-0.870033, -0.224789, -0.438762,
		32.667374, 32.583286, 42.681625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709267, 33.151836, 43.415459>,  <33.276398, 32.740639, 42.988762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709267, 33.151836, 43.415459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500332, 32.862514, 43.234798>,  <32.374969, 32.688919, 43.126404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500332, 32.862514, 43.234798>,  <32.709267, 33.151836, 43.415459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500332, 32.862514, 43.234798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479517, -0.188833, 0.856975,
		-0.705142, 0.664206, -0.248203,
		-0.522339, -0.723307, -0.451652,
		32.343632, 32.645523, 43.099304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021248, 33.210125, 43.709621>,  <32.709267, 33.151836, 43.415459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021248, 33.210125, 43.709621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018940, 32.855930, 43.523769>,  <32.017555, 32.643414, 43.412258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018940, 32.855930, 43.523769>,  <32.021248, 33.210125, 43.709621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018940, 32.855930, 43.523769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434263, -0.416322, 0.798806,
		-0.900768, 0.206380, -0.382132,
		-0.005767, -0.885485, -0.464633,
		32.017208, 32.590286, 43.384380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382341, 32.821838, 43.921944>,  <32.021248, 33.210125, 43.709621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382341, 32.821838, 43.921944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617119, 32.521873, 43.799873>,  <31.757986, 32.341896, 43.726631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617119, 32.521873, 43.799873>,  <31.382341, 32.821838, 43.921944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617119, 32.521873, 43.799873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214750, -0.507637, 0.834378,
		-0.780628, -0.424195, -0.458997,
		0.586943, -0.749909, -0.305180,
		31.793201, 32.296902, 43.708321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075768, 32.150795, 43.934521>,  <31.382341, 32.821838, 43.921944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075768, 32.150795, 43.934521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465706, 32.070881, 43.974037>,  <31.699669, 32.022930, 43.997746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465706, 32.070881, 43.974037>,  <31.075768, 32.150795, 43.934521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465706, 32.070881, 43.974037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204163, -0.622703, 0.755353,
		-0.089395, -0.756522, -0.647829,
		0.974847, -0.199788, 0.098787,
		31.758160, 32.010944, 44.003674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148319, 31.358688, 44.008572>,  <31.075768, 32.150795, 43.934521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148319, 31.358688, 44.008572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498610, 31.494158, 44.146214>,  <31.708784, 31.575439, 44.228798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498610, 31.494158, 44.146214>,  <31.148319, 31.358688, 44.008572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498610, 31.494158, 44.146214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063668, -0.625480, 0.777638,
		0.478597, -0.702905, -0.526184,
		0.875723, 0.338674, 0.344105,
		31.761326, 31.595760, 44.249447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419783, 30.756397, 44.290371>,  <31.148319, 31.358688, 44.008572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419783, 30.756397, 44.290371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662109, 31.042570, 44.429592>,  <31.807507, 31.214273, 44.513126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662109, 31.042570, 44.429592>,  <31.419783, 30.756397, 44.290371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662109, 31.042570, 44.429592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114006, -0.511019, 0.851976,
		0.787392, -0.476463, -0.391148,
		0.605818, 0.715432, 0.348053,
		31.843855, 31.257200, 44.534008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877424, 30.491222, 44.729702>,  <31.419783, 30.756397, 44.290371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877424, 30.491222, 44.729702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936356, 30.865929, 44.856678>,  <31.971714, 31.090752, 44.932861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936356, 30.865929, 44.856678>,  <31.877424, 30.491222, 44.729702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936356, 30.865929, 44.856678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114118, -0.334896, 0.935319,
		0.982482, -0.101574, -0.156241,
		0.147329, 0.936764, 0.317438,
		31.980555, 31.146957, 44.951908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392170, 30.470329, 45.216156>,  <31.877424, 30.491222, 44.729702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392170, 30.470329, 45.216156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201057, 30.810930, 45.302567>,  <32.086388, 31.015291, 45.354412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201057, 30.810930, 45.302567>,  <32.392170, 30.470329, 45.216156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201057, 30.810930, 45.302567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077105, -0.204311, 0.975865,
		0.875087, 0.482909, 0.031962,
		-0.477784, 0.851502, 0.216025,
		32.057724, 31.066381, 45.367374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698486, 30.773148, 45.874516>,  <32.392170, 30.470329, 45.216156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698486, 30.773148, 45.874516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340836, 30.949087, 45.840900>,  <32.126244, 31.054651, 45.820732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340836, 30.949087, 45.840900>,  <32.698486, 30.773148, 45.874516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340836, 30.949087, 45.840900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115288, -0.044761, 0.992323,
		0.432710, 0.896956, 0.090731,
		-0.894131, 0.439849, -0.084040,
		32.072598, 31.081041, 45.815689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728901, 31.332172, 46.390362>,  <32.698486, 30.773148, 45.874516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728901, 31.332172, 46.390362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355186, 31.218687, 46.304001>,  <32.130959, 31.150595, 46.252182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355186, 31.218687, 46.304001>,  <32.728901, 31.332172, 46.390362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355186, 31.218687, 46.304001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264067, 0.143812, 0.953722,
		-0.239536, 0.948063, -0.209282,
		-0.934286, -0.283715, -0.215904,
		32.074902, 31.133572, 46.239231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373844, 31.753012, 46.811878>,  <32.728901, 31.332172, 46.390362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373844, 31.753012, 46.811878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113865, 31.468237, 46.705505>,  <31.957878, 31.297373, 46.641682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113865, 31.468237, 46.705505>,  <32.373844, 31.753012, 46.811878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113865, 31.468237, 46.705505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293217, -0.087917, 0.951995,
		-0.701138, 0.696720, -0.151610,
		-0.649945, -0.711935, -0.265933,
		31.918882, 31.254656, 46.625725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749550, 31.949469, 47.182083>,  <32.373844, 31.753012, 46.811878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749550, 31.949469, 47.182083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689734, 31.571932, 47.064236>,  <31.653843, 31.345409, 46.993526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689734, 31.571932, 47.064236>,  <31.749550, 31.949469, 47.182083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689734, 31.571932, 47.064236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508095, -0.182264, 0.841795,
		-0.848219, 0.275580, -0.452305,
		-0.149543, -0.943841, -0.294620,
		31.644871, 31.288780, 46.975849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015499, 31.810635, 47.393597>,  <31.749550, 31.949469, 47.182083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015499, 31.810635, 47.393597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225073, 31.472490, 47.351921>,  <31.350817, 31.269604, 47.326916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225073, 31.472490, 47.351921>,  <31.015499, 31.810635, 47.393597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225073, 31.472490, 47.351921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400848, -0.352645, 0.845555,
		-0.751540, -0.401254, -0.523625,
		0.523935, -0.845362, -0.104185,
		31.382254, 31.218882, 47.320667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507694, 31.282642, 47.453617>,  <31.015499, 31.810635, 47.393597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507694, 31.282642, 47.453617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876719, 31.147985, 47.529037>,  <31.098133, 31.067190, 47.574287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876719, 31.147985, 47.529037>,  <30.507694, 31.282642, 47.453617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876719, 31.147985, 47.529037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310804, -0.358789, 0.880154,
		-0.228647, -0.870599, -0.435634,
		0.922563, -0.336641, 0.188550,
		31.153486, 31.046993, 47.585602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414217, 30.758278, 47.950325>,  <30.507694, 31.282642, 47.453617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414217, 30.758278, 47.950325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810637, 30.802046, 47.980927>,  <31.048489, 30.828306, 47.999287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810637, 30.802046, 47.980927>,  <30.414217, 30.758278, 47.950325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810637, 30.802046, 47.980927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043143, -0.279830, 0.959080,
		0.126351, -0.953794, -0.272604,
		0.991047, 0.109420, 0.076506,
		31.107950, 30.834871, 48.003880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690844, 30.033903, 48.237659>,  <30.414217, 30.758278, 47.950325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690844, 30.033903, 48.237659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939625, 30.338594, 48.310265>,  <31.088894, 30.521410, 48.353828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939625, 30.338594, 48.310265>,  <30.690844, 30.033903, 48.237659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939625, 30.338594, 48.310265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077999, -0.290909, 0.953566,
		0.779162, -0.578913, -0.240346,
		0.621951, 0.761729, 0.181511,
		31.126209, 30.567114, 48.364719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204401, 29.723869, 48.579067>,  <30.690844, 30.033903, 48.237659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204401, 29.723869, 48.579067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258350, 30.107662, 48.678024>,  <31.290720, 30.337938, 48.737400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258350, 30.107662, 48.678024>,  <31.204401, 29.723869, 48.579067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258350, 30.107662, 48.678024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168640, -0.268259, 0.948471,
		0.976407, -0.086202, -0.197988,
		0.134872, 0.959482, 0.247393,
		31.298813, 30.395508, 48.752243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813366, 29.813967, 48.978832>,  <31.204401, 29.723869, 48.579067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813366, 29.813967, 48.978832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564196, 30.118763, 49.049641>,  <31.414694, 30.301640, 49.092125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564196, 30.118763, 49.049641>,  <31.813366, 29.813967, 48.978832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564196, 30.118763, 49.049641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257307, -0.014116, 0.966227,
		0.738753, 0.647436, -0.187272,
		-0.622926, 0.761989, 0.177017,
		31.377317, 30.347361, 49.102745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079987, 30.175228, 49.499935>,  <31.813366, 29.813967, 48.978832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079987, 30.175228, 49.499935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707497, 30.317867, 49.530029>,  <31.484003, 30.403452, 49.548084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707497, 30.317867, 49.530029>,  <32.079987, 30.175228, 49.499935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707497, 30.317867, 49.530029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057842, -0.059201, 0.996569,
		0.359830, 0.932380, 0.034503,
		-0.931223, 0.356600, 0.075233,
		31.428129, 30.424847, 49.552601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021324, 30.656866, 50.046814>,  <32.079987, 30.175228, 49.499935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021324, 30.656866, 50.046814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642311, 30.543066, 49.988518>,  <31.414904, 30.474787, 49.953541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642311, 30.543066, 49.988518>,  <32.021324, 30.656866, 50.046814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642311, 30.543066, 49.988518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093948, -0.187929, 0.977679,
		-0.305538, 0.940076, 0.151341,
		-0.947534, -0.284500, -0.145738,
		31.358051, 30.457716, 49.944798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599026, 31.012890, 50.576237>,  <32.021324, 30.656866, 50.046814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599026, 31.012890, 50.576237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383490, 30.701332, 50.447876>,  <31.254168, 30.514397, 50.370861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383490, 30.701332, 50.447876>,  <31.599026, 31.012890, 50.576237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383490, 30.701332, 50.447876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203846, -0.249052, 0.946795,
		-0.817373, 0.575584, -0.024575,
		-0.538840, -0.778894, -0.320899,
		31.221838, 30.467665, 50.351604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100351, 31.056295, 51.022888>,  <31.599026, 31.012890, 50.576237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100351, 31.056295, 51.022888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090435, 30.695156, 50.851192>,  <31.084484, 30.478472, 50.748177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090435, 30.695156, 50.851192>,  <31.100351, 31.056295, 51.022888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090435, 30.695156, 50.851192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122385, -0.423402, 0.897637,
		-0.992173, 0.074787, -0.099999,
		-0.024792, -0.902850, -0.429241,
		31.082998, 30.424301, 50.722420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477577, 30.642431, 51.272980>,  <31.100351, 31.056295, 51.022888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477577, 30.642431, 51.272980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758364, 30.375860, 51.172489>,  <30.926836, 30.215918, 51.112194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758364, 30.375860, 51.172489>,  <30.477577, 30.642431, 51.272980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758364, 30.375860, 51.172489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186097, -0.512116, 0.838514,
		-0.687467, -0.541857, -0.483509,
		0.701967, -0.666430, -0.251225,
		30.968954, 30.175932, 51.097122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168825, 30.007477, 51.277992>,  <30.477577, 30.642431, 51.272980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168825, 30.007477, 51.277992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558075, 29.944050, 51.344791>,  <30.791624, 29.905994, 51.384872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558075, 29.944050, 51.344791>,  <30.168825, 30.007477, 51.277992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558075, 29.944050, 51.344791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229574, -0.610867, 0.757719,
		-0.018133, -0.775692, -0.630851,
		0.973122, -0.158567, 0.167001,
		30.850012, 29.896481, 51.394890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369707, 29.255249, 51.242123>,  <30.168825, 30.007477, 51.277992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369707, 29.255249, 51.242123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629900, 29.408348, 51.504536>,  <30.786016, 29.500208, 51.661983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629900, 29.408348, 51.504536>,  <30.369707, 29.255249, 51.242123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629900, 29.408348, 51.504536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292192, -0.671164, 0.681295,
		0.701068, -0.634858, -0.324745,
		0.650482, 0.382746, 0.656032,
		30.825045, 29.523172, 51.701344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875496, 28.779837, 51.495262>,  <30.369707, 29.255249, 51.242123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875496, 28.779837, 51.495262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784824, 29.045641, 51.780090>,  <30.730421, 29.205124, 51.950985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784824, 29.045641, 51.780090>,  <30.875496, 28.779837, 51.495262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784824, 29.045641, 51.780090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167405, -0.746801, 0.643633,
		0.959475, 0.026695, 0.280528,
		-0.226680, 0.664511, 0.712068,
		30.716820, 29.244995, 51.993710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432236, 28.842812, 52.162872>,  <30.875496, 28.779837, 51.495262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432236, 28.842812, 52.162872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040051, 28.898809, 52.218143>,  <30.804739, 28.932407, 52.251305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040051, 28.898809, 52.218143>,  <31.432236, 28.842812, 52.162872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040051, 28.898809, 52.218143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046504, -0.847538, 0.528694,
		0.191126, 0.511939, 0.837490,
		-0.980463, 0.139993, 0.138179,
		30.745911, 28.940807, 52.259598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178316, 28.878746, 52.888657>,  <31.432236, 28.842812, 52.162872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178316, 28.878746, 52.888657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912226, 28.727720, 52.631001>,  <30.752571, 28.637104, 52.476406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912226, 28.727720, 52.631001>,  <31.178316, 28.878746, 52.888657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912226, 28.727720, 52.631001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233973, -0.924680, 0.300372,
		-0.709034, 0.049104, 0.703463,
		-0.665227, -0.377566, -0.644140,
		30.712658, 28.614450, 52.437759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806730, 29.103189, 53.088924>,  <31.178316, 28.878746, 52.888657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806730, 29.103189, 53.088924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133915, 28.874130, 53.066948>,  <32.330227, 28.736694, 53.053764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133915, 28.874130, 53.066948>,  <31.806730, 29.103189, 53.088924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133915, 28.874130, 53.066948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042920, 0.155980, -0.986827,
		0.573672, 0.804827, 0.152163,
		0.817960, -0.572646, -0.054938,
		32.379303, 28.702337, 53.050465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191494, 29.461983, 52.679787>,  <31.806730, 29.103189, 53.088924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191494, 29.461983, 52.679787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299545, 29.078232, 52.647228>,  <32.364376, 28.847980, 52.627693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299545, 29.078232, 52.647228>,  <32.191494, 29.461983, 52.679787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299545, 29.078232, 52.647228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087583, 0.108670, -0.990212,
		0.958833, 0.260354, 0.113380,
		0.270127, -0.959378, -0.081394,
		32.380585, 28.790419, 52.622810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697437, 29.393555, 52.117752>,  <32.191494, 29.461983, 52.679787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697437, 29.393555, 52.117752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515121, 29.040400, 52.162933>,  <32.405731, 28.828506, 52.190041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515121, 29.040400, 52.162933>,  <32.697437, 29.393555, 52.117752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515121, 29.040400, 52.162933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026842, -0.140479, -0.989720,
		0.889681, -0.448075, 0.087728,
		-0.455792, -0.882890, 0.112955,
		32.378384, 28.775532, 52.196819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077198, 28.883646, 51.852428>,  <32.697437, 29.393555, 52.117752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077198, 28.883646, 51.852428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706718, 28.733154, 51.842587>,  <32.484432, 28.642859, 51.836681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706718, 28.733154, 51.842587>,  <33.077198, 28.883646, 51.852428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706718, 28.733154, 51.842587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143770, -0.292099, -0.945520,
		0.348545, -0.879278, 0.324632,
		-0.926200, -0.376229, -0.024604,
		32.428860, 28.620285, 51.835205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015709, 28.178181, 51.732819>,  <33.077198, 28.883646, 51.852428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015709, 28.178181, 51.732819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694118, 28.376469, 51.601437>,  <32.501163, 28.495441, 51.522610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694118, 28.376469, 51.601437>,  <33.015709, 28.178181, 51.732819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694118, 28.376469, 51.601437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170282, -0.337291, -0.925872,
		-0.569757, -0.800310, 0.186763,
		-0.803978, 0.495720, -0.328452,
		32.452927, 28.525185, 51.502899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437778, 27.721907, 51.522953>,  <33.015709, 28.178181, 51.732819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437778, 27.721907, 51.522953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451740, 28.067007, 51.321186>,  <32.460117, 28.274067, 51.200127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451740, 28.067007, 51.321186>,  <32.437778, 27.721907, 51.522953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451740, 28.067007, 51.321186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136788, -0.504102, -0.852743,
		-0.989985, -0.039233, -0.135610,
		0.034905, 0.862753, -0.504420,
		32.462212, 28.325832, 51.169861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988150, 27.641827, 50.877949>,  <32.437778, 27.721907, 51.522953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988150, 27.641827, 50.877949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239182, 27.947100, 50.816380>,  <32.389801, 28.130264, 50.779438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239182, 27.947100, 50.816380>,  <31.988150, 27.641827, 50.877949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239182, 27.947100, 50.816380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178362, -0.333386, -0.925765,
		-0.757846, 0.553537, -0.345349,
		0.627579, 0.763185, -0.153925,
		32.427456, 28.176056, 50.770203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741213, 28.029964, 50.276546>,  <31.988150, 27.641827, 50.877949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741213, 28.029964, 50.276546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121582, 28.152779, 50.291897>,  <32.349804, 28.226467, 50.301105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121582, 28.152779, 50.291897>,  <31.741213, 28.029964, 50.276546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121582, 28.152779, 50.291897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093656, -0.167392, -0.981432,
		-0.294912, 0.936861, -0.187933,
		0.950924, 0.307037, 0.038376,
		32.406860, 28.244890, 50.303410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875149, 28.581120, 49.666553>,  <31.741213, 28.029964, 50.276546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875149, 28.581120, 49.666553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222496, 28.419081, 49.780979>,  <32.430904, 28.321857, 49.849632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222496, 28.419081, 49.780979>,  <31.875149, 28.581120, 49.666553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222496, 28.419081, 49.780979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248217, -0.144337, -0.957891,
		0.429328, 0.902808, -0.024786,
		0.868370, -0.405097, 0.286060,
		32.483006, 28.297552, 49.866798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308483, 28.958391, 49.379482>,  <31.875149, 28.581120, 49.666553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308483, 28.958391, 49.379482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495377, 28.613890, 49.459415>,  <32.607513, 28.407188, 49.507378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495377, 28.613890, 49.459415>,  <32.308483, 28.958391, 49.379482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495377, 28.613890, 49.459415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411594, 0.011846, -0.911290,
		0.782486, 0.508035, 0.360023,
		0.467232, -0.861255, 0.199835,
		32.635548, 28.355513, 49.519367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049149, 29.086845, 49.307934>,  <32.308483, 28.958391, 49.379482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049149, 29.086845, 49.307934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960911, 28.697815, 49.278450>,  <32.907967, 28.464397, 49.260761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960911, 28.697815, 49.278450>,  <33.049149, 29.086845, 49.307934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960911, 28.697815, 49.278450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358288, -0.010512, -0.933552,
		0.907176, -0.232346, 0.350782,
		-0.220595, -0.972576, -0.073710,
		32.894733, 28.406042, 49.256336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581177, 28.841333, 48.890068>,  <33.049149, 29.086845, 49.307934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581177, 28.841333, 48.890068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388031, 28.491650, 48.910473>,  <33.272144, 28.281839, 48.922714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388031, 28.491650, 48.910473>,  <33.581177, 28.841333, 48.890068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388031, 28.491650, 48.910473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303949, -0.221945, -0.926475,
		0.821255, -0.431854, 0.372884,
		-0.482861, -0.874210, 0.051012,
		33.243172, 28.229387, 48.925777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060188, 28.306259, 48.628166>,  <33.581177, 28.841333, 48.890068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060188, 28.306259, 48.628166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685429, 28.177385, 48.573875>,  <33.460575, 28.100061, 48.541302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685429, 28.177385, 48.573875>,  <34.060188, 28.306259, 48.628166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685429, 28.177385, 48.573875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130103, 0.039040, -0.990732,
		0.324500, -0.945871, 0.005341,
		-0.936895, -0.322187, -0.135729,
		33.404362, 28.080729, 48.533157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190792, 27.691917, 48.248569>,  <34.060188, 28.306259, 48.628166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190792, 27.691917, 48.248569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835445, 27.869759, 48.202721>,  <33.622238, 27.976463, 48.175209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835445, 27.869759, 48.202721>,  <34.190792, 27.691917, 48.248569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835445, 27.869759, 48.202721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189071, 0.126737, -0.973750,
		-0.418404, -0.886717, -0.196650,
		-0.888364, 0.444601, -0.114625,
		33.568935, 28.003139, 48.168335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093876, 27.538235, 47.512993>,  <34.190792, 27.691917, 48.248569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093876, 27.538235, 47.512993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780128, 27.764280, 47.615292>,  <33.591881, 27.899908, 47.676670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780128, 27.764280, 47.615292>,  <34.093876, 27.538235, 47.512993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780128, 27.764280, 47.615292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053947, 0.348588, -0.935722,
		-0.617941, -0.747751, -0.242936,
		-0.784372, 0.565116, 0.255746,
		33.544815, 27.933815, 47.692017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577606, 27.413507, 46.965984>,  <34.093876, 27.538235, 47.512993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577606, 27.413507, 46.965984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489010, 27.766748, 47.131428>,  <33.435852, 27.978693, 47.230694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489010, 27.766748, 47.131428>,  <33.577606, 27.413507, 46.965984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489010, 27.766748, 47.131428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068830, 0.408924, -0.909969,
		-0.972730, -0.230020, -0.029789,
		-0.221492, 0.883104, 0.413605,
		33.422562, 28.031679, 47.255508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996994, 27.690552, 46.642334>,  <33.577606, 27.413507, 46.965984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996994, 27.690552, 46.642334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220367, 27.992737, 46.779404>,  <33.354393, 28.174047, 46.861645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220367, 27.992737, 46.779404>,  <32.996994, 27.690552, 46.642334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220367, 27.992737, 46.779404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012994, 0.405070, -0.914193,
		-0.829446, 0.514971, 0.216389,
		0.558436, 0.755462, 0.342675,
		33.387897, 28.219376, 46.882206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582409, 28.241621, 46.475449>,  <32.996994, 27.690552, 46.642334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582409, 28.241621, 46.475449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946117, 28.399893, 46.527081>,  <33.164345, 28.494856, 46.558060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946117, 28.399893, 46.527081>,  <32.582409, 28.241621, 46.475449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946117, 28.399893, 46.527081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123228, 0.552164, -0.824578,
		-0.397540, 0.733861, 0.550827,
		0.909273, 0.395680, 0.129075,
		33.218899, 28.518597, 46.565804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498589, 28.908968, 46.372944>,  <32.582409, 28.241621, 46.475449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498589, 28.908968, 46.372944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883694, 28.831366, 46.297638>,  <33.114758, 28.784805, 46.252453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883694, 28.831366, 46.297638>,  <32.498589, 28.908968, 46.372944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883694, 28.831366, 46.297638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053670, 0.545390, -0.836462,
		0.264957, 0.815421, 0.514670,
		0.962765, -0.194005, -0.188269,
		33.172523, 28.773165, 46.241158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822681, 29.523691, 46.193737>,  <32.498589, 28.908968, 46.372944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822681, 29.523691, 46.193737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057476, 29.234694, 46.047611>,  <33.198353, 29.061295, 45.959938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057476, 29.234694, 46.047611>,  <32.822681, 29.523691, 46.193737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057476, 29.234694, 46.047611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067226, 0.406170, -0.911321,
		0.806801, 0.559491, 0.189846,
		0.586986, -0.722492, -0.365311,
		33.233570, 29.017946, 45.938019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937256, 29.759398, 45.533268>,  <32.822681, 29.523691, 46.193737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937256, 29.759398, 45.533268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111916, 29.401434, 45.496456>,  <33.216713, 29.186655, 45.474369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111916, 29.401434, 45.496456>,  <32.937256, 29.759398, 45.533268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111916, 29.401434, 45.496456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152400, 0.174398, -0.972810,
		0.886628, 0.410755, 0.212536,
		0.436652, -0.894911, -0.092027,
		33.242912, 29.132961, 45.468849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604080, 29.888889, 45.275478>,  <32.937256, 29.759398, 45.533268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604080, 29.888889, 45.275478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464603, 29.521061, 45.203030>,  <33.380917, 29.300364, 45.159561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464603, 29.521061, 45.203030>,  <33.604080, 29.888889, 45.275478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464603, 29.521061, 45.203030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170579, 0.127758, -0.977026,
		0.921586, -0.371572, 0.112312,
		-0.348687, -0.919572, -0.181123,
		33.359997, 29.245190, 45.148693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149948, 29.572298, 44.943359>,  <33.604080, 29.888889, 45.275478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149948, 29.572298, 44.943359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821712, 29.367718, 44.841335>,  <33.624771, 29.244970, 44.780121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821712, 29.367718, 44.841335>,  <34.149948, 29.572298, 44.943359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821712, 29.367718, 44.841335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093010, 0.320821, -0.942562,
		0.563901, -0.797178, -0.215692,
		-0.820588, -0.511450, -0.255057,
		33.575535, 29.214283, 44.764820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360222, 29.195570, 44.353977>,  <34.149948, 29.572298, 44.943359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360222, 29.195570, 44.353977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962688, 29.239870, 44.352165>,  <33.724167, 29.266449, 44.351078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962688, 29.239870, 44.352165>,  <34.360222, 29.195570, 44.353977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962688, 29.239870, 44.352165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039043, 0.311493, -0.949446,
		-0.103738, -0.943773, -0.313898,
		-0.993838, 0.110749, -0.004534,
		33.664536, 29.273094, 44.350803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423660, 29.124285, 43.679249>,  <34.360222, 29.195570, 44.353977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423660, 29.124285, 43.679249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045414, 29.219767, 43.767643>,  <33.818466, 29.277056, 43.820679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045414, 29.219767, 43.767643>,  <34.423660, 29.124285, 43.679249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045414, 29.219767, 43.767643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116081, 0.386984, -0.914751,
		-0.303873, -0.890653, -0.338228,
		-0.945614, 0.238707, 0.220982,
		33.761730, 29.291378, 43.833939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925312, 28.899006, 43.101646>,  <34.423660, 29.124285, 43.679249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925312, 28.899006, 43.101646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706482, 29.182859, 43.279243>,  <33.575184, 29.353172, 43.385803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706482, 29.182859, 43.279243>,  <33.925312, 28.899006, 43.101646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706482, 29.182859, 43.279243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318560, 0.313998, -0.894385,
		-0.774099, -0.630733, 0.054281,
		-0.547074, 0.709634, 0.443992,
		33.542358, 29.395750, 43.412441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310760, 28.831270, 42.730755>,  <33.925312, 28.899006, 43.101646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310760, 28.831270, 42.730755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314915, 29.194803, 42.897568>,  <33.317410, 29.412922, 42.997658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314915, 29.194803, 42.897568>,  <33.310760, 28.831270, 42.730755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314915, 29.194803, 42.897568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420083, 0.382436, -0.822966,
		-0.907426, -0.166639, 0.385758,
		0.010390, 0.908832, 0.417034,
		33.318031, 29.467453, 43.022678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674755, 29.131691, 42.569462>,  <33.310760, 28.831270, 42.730755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674755, 29.131691, 42.569462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909378, 29.443312, 42.658031>,  <33.050152, 29.630285, 42.711174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909378, 29.443312, 42.658031>,  <32.674755, 29.131691, 42.569462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909378, 29.443312, 42.658031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252179, 0.435482, -0.864153,
		-0.769649, 0.451034, 0.451895,
		0.586554, 0.779053, 0.221427,
		33.085346, 29.677029, 42.724461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296143, 29.670076, 42.225357>,  <32.674755, 29.131691, 42.569462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296143, 29.670076, 42.225357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666290, 29.801682, 42.300663>,  <32.888378, 29.880644, 42.345844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666290, 29.801682, 42.300663>,  <32.296143, 29.670076, 42.225357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666290, 29.801682, 42.300663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061343, 0.620074, -0.782141,
		-0.374068, 0.712222, 0.593981,
		0.925370, 0.329011, 0.188260,
		32.943901, 29.900385, 42.357140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340843, 30.448217, 42.182243>,  <32.296143, 29.670076, 42.225357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340843, 30.448217, 42.182243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721657, 30.339615, 42.125786>,  <32.950146, 30.274454, 42.091911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721657, 30.339615, 42.125786>,  <32.340843, 30.448217, 42.182243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721657, 30.339615, 42.125786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061600, 0.281756, -0.957507,
		0.299737, 0.920270, 0.251516,
		0.952031, -0.271506, -0.141141,
		33.007267, 30.258163, 42.083443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713528, 31.018475, 41.844757>,  <32.340843, 30.448217, 42.182243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713528, 31.018475, 41.844757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936474, 30.695074, 41.769207>,  <33.070240, 30.501034, 41.723877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936474, 30.695074, 41.769207>,  <32.713528, 31.018475, 41.844757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936474, 30.695074, 41.769207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134364, 0.312322, -0.940426,
		0.819324, 0.498783, 0.282710,
		0.557365, -0.808499, -0.188874,
		33.103683, 30.452524, 41.712543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189442, 31.324604, 41.414906>,  <32.713528, 31.018475, 41.844757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189442, 31.324604, 41.414906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215027, 30.934055, 41.332344>,  <33.230377, 30.699726, 41.282806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215027, 30.934055, 41.332344>,  <33.189442, 31.324604, 41.414906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215027, 30.934055, 41.332344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041775, 0.209270, -0.976965,
		0.997077, 0.053871, 0.054175,
		0.063967, -0.976373, -0.206408,
		33.234219, 30.641144, 41.270420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834572, 31.240561, 41.024323>,  <33.189442, 31.324604, 41.414906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834572, 31.240561, 41.024323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617191, 30.913322, 40.949089>,  <33.486763, 30.716980, 40.903950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617191, 30.913322, 40.949089>,  <33.834572, 31.240561, 41.024323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617191, 30.913322, 40.949089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104038, 0.156692, -0.982153,
		0.832966, -0.553325, -0.000042,
		-0.543456, -0.818095, -0.188086,
		33.454155, 30.667894, 40.892662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148994, 30.981710, 40.501949>,  <33.834572, 31.240561, 41.024323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148994, 30.981710, 40.501949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805321, 30.779194, 40.472370>,  <33.599117, 30.657684, 40.454620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805321, 30.779194, 40.472370>,  <34.148994, 30.981710, 40.501949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805321, 30.779194, 40.472370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015960, 0.117943, -0.992892,
		0.511417, -0.854258, -0.093254,
		-0.859185, -0.506293, -0.073952,
		33.547565, 30.627306, 40.450184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290810, 30.537149, 39.949024>,  <34.148994, 30.981710, 40.501949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290810, 30.537149, 39.949024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897678, 30.595688, 39.993980>,  <33.661800, 30.630810, 40.020954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897678, 30.595688, 39.993980>,  <34.290810, 30.537149, 39.949024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897678, 30.595688, 39.993980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096522, 0.111354, -0.989082,
		-0.157262, -0.982946, -0.095316,
		-0.982828, 0.146345, 0.112388,
		33.602829, 30.639591, 40.027699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004032, 30.064835, 39.470737>,  <34.290810, 30.537149, 39.949024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004032, 30.064835, 39.470737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729053, 30.347641, 39.537128>,  <33.564068, 30.517324, 39.576962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729053, 30.347641, 39.537128>,  <34.004032, 30.064835, 39.470737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729053, 30.347641, 39.537128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171622, 0.063914, -0.983087,
		-0.705666, -0.704305, 0.077402,
		-0.687446, 0.707015, 0.165976,
		33.522820, 30.559746, 39.586922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394024, 29.798622, 39.134689>,  <34.004032, 30.064835, 39.470737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394024, 29.798622, 39.134689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370872, 30.197523, 39.153194>,  <33.356979, 30.436863, 39.164295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370872, 30.197523, 39.153194>,  <33.394024, 29.798622, 39.134689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370872, 30.197523, 39.153194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217097, 0.032656, -0.975604,
		-0.974433, -0.066512, 0.214610,
		-0.057881, 0.997251, 0.046261,
		33.353508, 30.496698, 39.167072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845966, 29.982023, 38.726460>,  <33.394024, 29.798622, 39.134689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845966, 29.982023, 38.726460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046391, 30.327005, 38.755062>,  <33.166645, 30.533995, 38.772224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046391, 30.327005, 38.755062>,  <32.845966, 29.982023, 38.726460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046391, 30.327005, 38.755062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015748, 0.073526, -0.997169,
		-0.865271, 0.500764, 0.023259,
		0.501057, 0.862455, 0.071506,
		33.196709, 30.585743, 38.776512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488876, 30.440321, 38.280769>,  <32.845966, 29.982023, 38.726460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488876, 30.440321, 38.280769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844357, 30.615700, 38.334408>,  <33.057644, 30.720926, 38.366589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844357, 30.615700, 38.334408>,  <32.488876, 30.440321, 38.280769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844357, 30.615700, 38.334408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004218, 0.300272, -0.953844,
		-0.458473, 0.847114, 0.268701,
		0.888698, 0.438445, 0.134094,
		33.110966, 30.747234, 38.374638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361145, 31.115089, 37.997150>,  <32.488876, 30.440321, 38.280769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361145, 31.115089, 37.997150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754677, 31.047104, 38.019730>,  <32.990795, 31.006313, 38.033276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754677, 31.047104, 38.019730>,  <32.361145, 31.115089, 37.997150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754677, 31.047104, 38.019730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106106, 0.299281, -0.948247,
		0.144274, 0.938905, 0.312477,
		0.983832, -0.169963, 0.056445,
		33.049828, 30.996115, 38.036663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626968, 31.748552, 37.756840>,  <32.361145, 31.115089, 37.997150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626968, 31.748552, 37.756840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908916, 31.468006, 37.714413>,  <33.078083, 31.299679, 37.688957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908916, 31.468006, 37.714413>,  <32.626968, 31.748552, 37.756840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908916, 31.468006, 37.714413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185902, 0.326955, -0.926575,
		0.684546, 0.633394, 0.360844,
		0.704867, -0.701365, -0.106066,
		33.120377, 31.257597, 37.682594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307022, 32.103111, 37.416878>,  <32.626968, 31.748552, 37.756840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307022, 32.103111, 37.416878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299679, 31.706272, 37.367233>,  <33.295273, 31.468168, 37.337448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299679, 31.706272, 37.367233>,  <33.307022, 32.103111, 37.416878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299679, 31.706272, 37.367233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012898, 0.124356, -0.992154,
		0.999748, -0.016610, -0.015079,
		-0.018354, -0.992099, -0.124111,
		33.294174, 31.408642, 37.330002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869640, 31.858202, 36.996429>,  <33.307022, 32.103111, 37.416878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869640, 31.858202, 36.996429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555237, 31.611540, 36.978870>,  <33.366596, 31.463543, 36.968334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555237, 31.611540, 36.978870>,  <33.869640, 31.858202, 36.996429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555237, 31.611540, 36.978870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035681, 0.116138, -0.992592,
		0.617184, -0.778620, -0.113289,
		-0.786010, -0.616654, -0.043897,
		33.319435, 31.426544, 36.965702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102585, 31.422466, 36.505497>,  <33.869640, 31.858202, 36.996429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102585, 31.422466, 36.505497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703594, 31.425108, 36.533760>,  <33.464199, 31.426693, 36.550720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703594, 31.425108, 36.533760>,  <34.102585, 31.422466, 36.505497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703594, 31.425108, 36.533760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069920, 0.078980, -0.994421,
		-0.012153, -0.996854, -0.078319,
		-0.997479, 0.006610, 0.070660,
		33.404350, 31.427090, 36.554958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485001, 32.008896, 36.658337>,  <34.102585, 31.422466, 36.505497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485001, 32.008896, 36.658337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467644, 31.705366, 36.918278>,  <34.457230, 31.523249, 37.074242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467644, 31.705366, 36.918278>,  <34.485001, 32.008896, 36.658337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467644, 31.705366, 36.918278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992665, 0.106215, 0.057744,
		-0.112842, -0.642578, -0.757865,
		-0.043392, -0.758822, 0.649851,
		34.454628, 31.477720, 37.113232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980610, 31.934423, 37.303848>,  <34.485001, 32.008896, 36.658337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980610, 31.934423, 37.303848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233284, 31.833866, 37.010513>,  <35.384888, 31.773531, 36.834515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233284, 31.833866, 37.010513>,  <34.980610, 31.934423, 37.303848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233284, 31.833866, 37.010513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643201, -0.358098, 0.676800,
		-0.432750, -0.899203, -0.064507,
		0.631681, -0.251394, -0.733335,
		35.422787, 31.758448, 36.790512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989784, 31.270596, 37.268322>,  <34.980610, 31.934423, 37.303848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989784, 31.270596, 37.268322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335842, 31.439852, 37.160637>,  <35.543476, 31.541405, 37.096024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335842, 31.439852, 37.160637>,  <34.989784, 31.270596, 37.268322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335842, 31.439852, 37.160637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422467, -0.325594, 0.845878,
		0.270268, -0.845542, -0.460449,
		0.865145, 0.423139, -0.269216,
		35.595387, 31.566793, 37.079872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518887, 30.804295, 37.505180>,  <34.989784, 31.270596, 37.268322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518887, 30.804295, 37.505180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739651, 31.135811, 37.468292>,  <35.872108, 31.334721, 37.446159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739651, 31.135811, 37.468292>,  <35.518887, 30.804295, 37.505180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739651, 31.135811, 37.468292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450614, -0.203349, 0.869250,
		0.701672, -0.521303, -0.485694,
		0.551908, 0.828789, -0.092222,
		35.905224, 31.384447, 37.440624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247517, 30.589861, 37.586544>,  <35.518887, 30.804295, 37.505180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247517, 30.589861, 37.586544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185604, 30.972900, 37.683743>,  <36.148457, 31.202724, 37.742062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185604, 30.972900, 37.683743>,  <36.247517, 30.589861, 37.586544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185604, 30.972900, 37.683743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478601, -0.142497, 0.866392,
		0.864283, 0.250398, -0.436253,
		-0.154778, 0.957599, 0.242998,
		36.139172, 31.260180, 37.756641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882442, 30.959965, 37.670498>,  <36.247517, 30.589861, 37.586544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882442, 30.959965, 37.670498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596542, 31.123779, 37.897270>,  <36.425003, 31.222069, 38.033333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596542, 31.123779, 37.897270>,  <36.882442, 30.959965, 37.670498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596542, 31.123779, 37.897270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486251, -0.291649, 0.823712,
		0.502685, 0.864419, 0.009318,
		-0.714750, 0.409536, 0.566932,
		36.382118, 31.246639, 38.067348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155720, 31.221525, 38.290760>,  <36.882442, 30.959965, 37.670498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155720, 31.221525, 38.290760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770512, 31.247740, 38.395294>,  <36.539387, 31.263470, 38.458015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770512, 31.247740, 38.395294>,  <37.155720, 31.221525, 38.290760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770512, 31.247740, 38.395294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216635, -0.388330, 0.895695,
		0.160185, 0.919187, 0.359772,
		-0.963021, 0.065538, 0.261333,
		36.481606, 31.267401, 38.473694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220890, 31.592329, 38.856110>,  <37.155720, 31.221525, 38.290760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220890, 31.592329, 38.856110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860897, 31.418518, 38.870060>,  <36.644901, 31.314232, 38.878429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860897, 31.418518, 38.870060>,  <37.220890, 31.592329, 38.856110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860897, 31.418518, 38.870060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239982, -0.427067, 0.871793,
		-0.363923, 0.792969, 0.488631,
		-0.899983, -0.434528, 0.034879,
		36.590900, 31.288160, 38.880524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811390, 31.882397, 39.449390>,  <37.220890, 31.592329, 38.856110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811390, 31.882397, 39.449390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678421, 31.517496, 39.353645>,  <36.598640, 31.298555, 39.296200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678421, 31.517496, 39.353645>,  <36.811390, 31.882397, 39.449390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678421, 31.517496, 39.353645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215113, -0.320441, 0.922520,
		-0.918272, 0.255176, 0.302758,
		-0.332421, -0.912252, -0.239360,
		36.578693, 31.243820, 39.281837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517914, 31.549402, 40.064312>,  <36.811390, 31.882397, 39.449390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517914, 31.549402, 40.064312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554077, 31.214779, 39.848167>,  <36.575775, 31.014004, 39.718479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554077, 31.214779, 39.848167>,  <36.517914, 31.549402, 40.064312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554077, 31.214779, 39.848167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269152, -0.501870, 0.822000,
		-0.958845, -0.219757, 0.179788,
		0.090410, -0.836560, -0.540364,
		36.581200, 30.963810, 39.686058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026779, 31.124542, 40.420681>,  <36.517914, 31.549402, 40.064312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026779, 31.124542, 40.420681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251579, 30.872660, 40.206158>,  <36.386459, 30.721531, 40.077446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251579, 30.872660, 40.206158>,  <36.026779, 31.124542, 40.420681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251579, 30.872660, 40.206158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117277, -0.581172, 0.805286,
		-0.818779, -0.515469, -0.252769,
		0.562002, -0.629707, -0.536305,
		36.420181, 30.683748, 40.045265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727688, 30.365034, 40.608952>,  <36.026779, 31.124542, 40.420681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727688, 30.365034, 40.608952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091049, 30.325600, 40.446430>,  <36.309067, 30.301939, 40.348919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091049, 30.325600, 40.446430>,  <35.727688, 30.365034, 40.608952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091049, 30.325600, 40.446430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224379, -0.705043, 0.672732,
		-0.352783, -0.702279, -0.618343,
		0.908404, -0.098585, -0.406304,
		36.363571, 30.296024, 40.324539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849907, 29.633842, 40.521225>,  <35.727688, 30.365034, 40.608952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849907, 29.633842, 40.521225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208275, 29.811525, 40.521187>,  <36.423298, 29.918135, 40.521164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208275, 29.811525, 40.521187>,  <35.849907, 29.633842, 40.521225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208275, 29.811525, 40.521187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327855, -0.661108, 0.674868,
		0.299721, -0.604660, -0.737939,
		0.895923, 0.444209, -0.000093,
		36.477051, 29.944788, 40.521160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358837, 29.026903, 40.521561>,  <35.849907, 29.633842, 40.521225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358837, 29.026903, 40.521561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538658, 29.353483, 40.666512>,  <36.646549, 29.549431, 40.753483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538658, 29.353483, 40.666512>,  <36.358837, 29.026903, 40.521561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538658, 29.353483, 40.666512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299594, -0.519994, 0.799906,
		0.841516, -0.251030, -0.478366,
		0.449548, 0.816449, 0.362377,
		36.673523, 29.598417, 40.775223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937901, 28.655325, 40.739311>,  <36.358837, 29.026903, 40.521561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937901, 28.655325, 40.739311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860691, 29.010353, 40.906628>,  <36.814365, 29.223370, 41.007015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860691, 29.010353, 40.906628>,  <36.937901, 28.655325, 40.739311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860691, 29.010353, 40.906628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193295, -0.383553, 0.903064,
		0.961967, 0.255161, -0.097529,
		-0.193019, 0.887569, 0.418287,
		36.802784, 29.276625, 41.032112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497654, 28.778557, 41.236618>,  <36.937901, 28.655325, 40.739311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497654, 28.778557, 41.236618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199810, 29.010771, 41.368397>,  <37.021103, 29.150099, 41.447464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199810, 29.010771, 41.368397>,  <37.497654, 28.778557, 41.236618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199810, 29.010771, 41.368397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109275, -0.380879, 0.918145,
		0.658493, 0.719661, 0.220169,
		-0.744611, 0.580534, 0.329447,
		36.976425, 29.184931, 41.467232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701191, 28.779018, 41.939796>,  <37.497654, 28.778557, 41.236618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701191, 28.779018, 41.939796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359898, 28.987171, 41.953667>,  <37.155121, 29.112062, 41.961990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359898, 28.987171, 41.953667>,  <37.701191, 28.779018, 41.939796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359898, 28.987171, 41.953667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069633, -0.179566, 0.981279,
		0.516866, 0.834842, 0.189446,
		-0.853230, 0.520381, 0.034679,
		37.103928, 29.143286, 41.964069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692062, 29.245502, 42.555950>,  <37.701191, 28.779018, 41.939796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692062, 29.245502, 42.555950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304424, 29.173416, 42.488564>,  <37.071842, 29.130165, 42.448132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304424, 29.173416, 42.488564>,  <37.692062, 29.245502, 42.555950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304424, 29.173416, 42.488564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108028, -0.303915, 0.946555,
		-0.221781, 0.935499, 0.275054,
		-0.969094, -0.180214, -0.168463,
		37.013695, 29.119352, 42.438026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289734, 29.478624, 43.107140>,  <37.692062, 29.245502, 42.555950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289734, 29.478624, 43.107140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060993, 29.204754, 42.926384>,  <36.923748, 29.040432, 42.817932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060993, 29.204754, 42.926384>,  <37.289734, 29.478624, 43.107140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060993, 29.204754, 42.926384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291068, -0.345664, 0.892074,
		-0.766982, 0.641667, -0.001617,
		-0.571856, -0.684675, -0.451887,
		36.889435, 28.999352, 42.790817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714195, 29.648037, 43.409180>,  <37.289734, 29.478624, 43.107140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714195, 29.648037, 43.409180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665039, 29.283337, 43.252407>,  <36.635544, 29.064516, 43.158344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665039, 29.283337, 43.252407>,  <36.714195, 29.648037, 43.409180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665039, 29.283337, 43.252407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425941, -0.308245, 0.850623,
		-0.896366, 0.271474, -0.350471,
		-0.122891, -0.911749, -0.391932,
		36.628170, 29.009811, 43.134827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947243, 29.519014, 43.552769>,  <36.714195, 29.648037, 43.409180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947243, 29.519014, 43.552769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135120, 29.168266, 43.511818>,  <36.247849, 28.957817, 43.487247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135120, 29.168266, 43.511818>,  <35.947243, 29.519014, 43.552769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135120, 29.168266, 43.511818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364668, -0.298316, 0.882057,
		-0.803992, -0.376965, -0.459885,
		0.469696, -0.876872, -0.102377,
		36.276028, 28.905205, 43.481106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446339, 28.943146, 43.768734>,  <35.947243, 29.519014, 43.552769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446339, 28.943146, 43.768734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830875, 28.837339, 43.799355>,  <36.061596, 28.773855, 43.817726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830875, 28.837339, 43.799355>,  <35.446339, 28.943146, 43.768734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830875, 28.837339, 43.799355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181847, -0.401069, 0.897817,
		-0.206784, -0.877026, -0.433665,
		0.961339, -0.264514, 0.076550,
		36.119278, 28.757984, 43.822319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491562, 28.176830, 43.969479>,  <35.446339, 28.943146, 43.768734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491562, 28.176830, 43.969479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804180, 28.393526, 44.093220>,  <35.991753, 28.523544, 44.167465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804180, 28.393526, 44.093220>,  <35.491562, 28.176830, 43.969479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804180, 28.393526, 44.093220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106158, -0.373156, 0.921675,
		0.614745, -0.753174, -0.234129,
		0.781549, 0.541741, 0.309352,
		36.038647, 28.556047, 44.186024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839500, 27.683249, 44.291626>,  <35.491562, 28.176830, 43.969479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839500, 27.683249, 44.291626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933121, 28.047995, 44.426521>,  <35.989292, 28.266842, 44.507458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933121, 28.047995, 44.426521>,  <35.839500, 27.683249, 44.291626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933121, 28.047995, 44.426521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240148, -0.281899, 0.928904,
		0.942100, -0.298393, 0.153005,
		0.234046, 0.911864, 0.337235,
		36.003334, 28.321554, 44.527691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306454, 27.593094, 44.847832>,  <35.839500, 27.683249, 44.291626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306454, 27.593094, 44.847832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147015, 27.957090, 44.893505>,  <36.051350, 28.175488, 44.920910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147015, 27.957090, 44.893505>,  <36.306454, 27.593094, 44.847832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147015, 27.957090, 44.893505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025270, -0.135349, 0.990476,
		0.916777, 0.391918, 0.076945,
		-0.398599, 0.909990, 0.114181,
		36.027435, 28.230087, 44.927761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566124, 27.846600, 45.469574>,  <36.306454, 27.593094, 44.847832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566124, 27.846600, 45.469574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243553, 28.077782, 45.419537>,  <36.050011, 28.216492, 45.389515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243553, 28.077782, 45.419537>,  <36.566124, 27.846600, 45.469574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243553, 28.077782, 45.419537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099421, 0.076018, 0.992137,
		0.582920, 0.812521, -0.003842,
		-0.806424, 0.577955, -0.125094,
		36.001625, 28.251167, 45.382008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766876, 28.475475, 45.861599>,  <36.566124, 27.846600, 45.469574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766876, 28.475475, 45.861599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372616, 28.455811, 45.797009>,  <36.136059, 28.444012, 45.758255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372616, 28.455811, 45.797009>,  <36.766876, 28.475475, 45.861599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372616, 28.455811, 45.797009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166420, 0.123200, 0.978328,
		-0.028205, 0.991163, -0.129615,
		-0.985651, -0.049164, -0.161475,
		36.076920, 28.441061, 45.748566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472042, 29.105621, 46.159431>,  <36.766876, 28.475475, 45.861599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472042, 29.105621, 46.159431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152885, 28.867565, 46.121109>,  <35.961391, 28.724731, 46.098118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152885, 28.867565, 46.121109>,  <36.472042, 29.105621, 46.159431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152885, 28.867565, 46.121109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233781, 0.159017, 0.959197,
		-0.555621, 0.787733, -0.266011,
		-0.797892, -0.595139, -0.095804,
		35.913517, 28.689024, 46.092369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027493, 29.368904, 46.560013>,  <36.472042, 29.105621, 46.159431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027493, 29.368904, 46.560013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902100, 28.989107, 46.554474>,  <35.826866, 28.761229, 46.551151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902100, 28.989107, 46.554474>,  <36.027493, 29.368904, 46.560013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902100, 28.989107, 46.554474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211400, 0.055561, 0.975819,
		-0.925765, 0.308827, -0.218141,
		-0.313480, -0.949494, -0.013850,
		35.808056, 28.704260, 46.550320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427425, 29.455435, 46.853237>,  <36.027493, 29.368904, 46.560013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427425, 29.455435, 46.853237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510593, 29.064419, 46.867012>,  <35.560493, 28.829809, 46.875275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510593, 29.064419, 46.867012>,  <35.427425, 29.455435, 46.853237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510593, 29.064419, 46.867012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192424, -0.006362, 0.981291,
		-0.959033, -0.210651, -0.189425,
		0.207915, -0.977540, 0.034433,
		35.572968, 28.771156, 46.877342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862347, 29.145107, 47.221489>,  <35.427425, 29.455435, 46.853237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862347, 29.145107, 47.221489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147175, 28.864267, 47.220123>,  <35.318073, 28.695763, 47.219303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147175, 28.864267, 47.220123>,  <34.862347, 29.145107, 47.221489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147175, 28.864267, 47.220123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104102, -0.110391, 0.988421,
		-0.694348, -0.703470, -0.151696,
		0.712070, -0.702100, -0.003417,
		35.360798, 28.653637, 47.219097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600689, 28.658600, 47.544106>,  <34.862347, 29.145107, 47.221489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600689, 28.658600, 47.544106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996220, 28.615227, 47.585011>,  <35.233540, 28.589203, 47.609554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996220, 28.615227, 47.585011>,  <34.600689, 28.658600, 47.544106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996220, 28.615227, 47.585011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109101, -0.059114, 0.992271,
		-0.101553, -0.992344, -0.070284,
		0.988830, -0.108437, 0.102262,
		35.292870, 28.582697, 47.615688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781387, 27.968206, 47.840282>,  <34.600689, 28.658600, 47.544106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781387, 27.968206, 47.840282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111076, 28.181767, 47.915768>,  <35.308887, 28.309902, 47.961060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111076, 28.181767, 47.915768>,  <34.781387, 27.968206, 47.840282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111076, 28.181767, 47.915768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087693, -0.208885, 0.974000,
		0.559438, -0.819340, -0.125348,
		0.824220, 0.533900, 0.188709,
		35.358341, 28.341936, 47.972382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070087, 27.690990, 48.315918>,  <34.781387, 27.968206, 47.840282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070087, 27.690990, 48.315918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274906, 28.032652, 48.352196>,  <35.397797, 28.237650, 48.373962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274906, 28.032652, 48.352196>,  <35.070087, 27.690990, 48.315918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274906, 28.032652, 48.352196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005860, -0.109055, 0.994018,
		0.858936, -0.508454, -0.060847,
		0.512048, 0.854155, 0.090692,
		35.428520, 28.288898, 48.379402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649654, 27.565283, 48.779907>,  <35.070087, 27.690990, 48.315918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649654, 27.565283, 48.779907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614239, 27.963709, 48.781612>,  <35.592991, 28.202765, 48.782635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614239, 27.963709, 48.781612>,  <35.649654, 27.565283, 48.779907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614239, 27.963709, 48.781612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035549, -0.001118, 0.999367,
		0.995438, 0.088631, -0.035310,
		-0.088536, 0.996064, 0.004264,
		35.587677, 28.262527, 48.782890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344555, 27.896160, 49.025784>,  <35.649654, 27.565283, 48.779907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344555, 27.896160, 49.025784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006542, 28.099304, 49.092720>,  <35.803734, 28.221189, 49.132881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006542, 28.099304, 49.092720>,  <36.344555, 27.896160, 49.025784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006542, 28.099304, 49.092720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189925, -0.007482, 0.981770,
		0.499852, 0.861408, -0.090132,
		-0.845030, 0.507858, 0.167343,
		35.753033, 28.251661, 49.142921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474792, 28.316544, 49.606167>,  <36.344555, 27.896160, 49.025784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474792, 28.316544, 49.606167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078918, 28.373772, 49.603008>,  <35.841396, 28.408108, 49.601112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078918, 28.373772, 49.603008>,  <36.474792, 28.316544, 49.606167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078918, 28.373772, 49.603008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008865, 0.116152, 0.993192,
		0.143012, 0.982873, -0.116222,
		-0.989681, 0.143069, -0.007898,
		35.782013, 28.416693, 49.600639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335773, 28.937801, 49.957798>,  <36.474792, 28.316544, 49.606167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335773, 28.937801, 49.957798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012138, 28.703516, 49.977062>,  <35.817959, 28.562944, 49.988621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012138, 28.703516, 49.977062>,  <36.335773, 28.937801, 49.957798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012138, 28.703516, 49.977062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054019, 0.155727, 0.986322,
		-0.585205, 0.795416, -0.157636,
		-0.809084, -0.585716, 0.048165,
		35.769413, 28.527802, 49.991512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937916, 29.264938, 50.433590>,  <36.335773, 28.937801, 49.957798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937916, 29.264938, 50.433590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731720, 28.922312, 50.424068>,  <35.608002, 28.716736, 50.418358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731720, 28.922312, 50.424068>,  <35.937916, 29.264938, 50.433590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731720, 28.922312, 50.424068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098339, 0.031545, 0.994653,
		-0.851236, 0.515072, -0.100495,
		-0.515488, -0.856566, -0.023799,
		35.577072, 28.665342, 50.416927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422939, 29.632812, 50.209194>,  <35.937916, 29.264938, 50.433590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422939, 29.632812, 50.209194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637226, 29.826714, 50.485748>,  <35.765800, 29.943054, 50.651680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637226, 29.826714, 50.485748>,  <35.422939, 29.632812, 50.209194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637226, 29.826714, 50.485748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602697, 0.353962, -0.715169,
		-0.591406, 0.799828, -0.102535,
		0.535719, 0.484753, 0.691390,
		35.797943, 29.972139, 50.693165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371120, 30.331242, 50.100060>,  <35.422939, 29.632812, 50.209194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371120, 30.331242, 50.100060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724880, 30.255318, 50.270618>,  <35.937134, 30.209764, 50.372955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724880, 30.255318, 50.270618>,  <35.371120, 30.331242, 50.100060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724880, 30.255318, 50.270618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462829, 0.474612, -0.748687,
		-0.060267, 0.859486, 0.507594,
		0.884397, -0.189808, 0.426399,
		35.990200, 30.198376, 50.398537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604843, 30.912722, 50.155060>,  <35.371120, 30.331242, 50.100060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604843, 30.912722, 50.155060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942772, 30.698824, 50.147919>,  <36.145531, 30.570484, 50.143635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942772, 30.698824, 50.147919>,  <35.604843, 30.912722, 50.155060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942772, 30.698824, 50.147919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337508, 0.558510, -0.757730,
		0.415162, 0.634124, 0.652324,
		0.844824, -0.534746, -0.017850,
		36.196220, 30.538401, 50.142563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131134, 31.367540, 49.913132>,  <35.604843, 30.912722, 50.155060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131134, 31.367540, 49.913132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321411, 31.016273, 49.892982>,  <36.435577, 30.805513, 49.880894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321411, 31.016273, 49.892982>,  <36.131134, 31.367540, 49.913132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321411, 31.016273, 49.892982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466514, 0.300429, -0.831930,
		0.745708, 0.372241, 0.552590,
		0.475693, -0.878168, -0.050377,
		36.464119, 30.752823, 49.877869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870499, 31.414268, 49.877304>,  <36.131134, 31.367540, 49.913132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870499, 31.414268, 49.877304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780857, 31.061031, 49.712418>,  <36.727070, 30.849089, 49.613487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780857, 31.061031, 49.712418>,  <36.870499, 31.414268, 49.877304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780857, 31.061031, 49.712418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597369, 0.209722, -0.774059,
		0.770018, -0.419715, 0.480534,
		-0.224106, -0.883095, -0.412214,
		36.713627, 30.796103, 49.588753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466030, 31.143570, 49.645607>,  <36.870499, 31.414268, 49.877304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466030, 31.143570, 49.645607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201675, 30.925611, 49.439186>,  <37.043060, 30.794836, 49.315334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201675, 30.925611, 49.439186>,  <37.466030, 31.143570, 49.645607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201675, 30.925611, 49.439186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570595, 0.081831, -0.817144,
		0.487489, -0.834500, 0.256835,
		-0.660890, -0.544898, -0.516054,
		37.003410, 30.762142, 49.284370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912750, 30.819361, 49.225227>,  <37.466030, 31.143570, 49.645607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912750, 30.819361, 49.225227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554333, 30.751017, 49.061314>,  <37.339283, 30.710011, 48.962967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554333, 30.751017, 49.061314>,  <37.912750, 30.819361, 49.225227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554333, 30.751017, 49.061314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404482, 0.066383, -0.912134,
		0.183051, -0.983056, 0.009629,
		-0.896040, -0.170862, -0.409780,
		37.285522, 30.699759, 48.938381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030560, 30.393950, 48.609768>,  <37.912750, 30.819361, 49.225227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030560, 30.393950, 48.609768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671013, 30.555437, 48.541599>,  <37.455284, 30.652330, 48.500698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671013, 30.555437, 48.541599>,  <38.030560, 30.393950, 48.609768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671013, 30.555437, 48.541599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200918, 0.034062, -0.979016,
		-0.389445, -0.914248, -0.111732,
		-0.898869, 0.403721, -0.170424,
		37.401352, 30.676554, 48.490471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661259, 30.028282, 48.193310>,  <38.030560, 30.393950, 48.609768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661259, 30.028282, 48.193310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502079, 30.393223, 48.154831>,  <37.406570, 30.612186, 48.131744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502079, 30.393223, 48.154831>,  <37.661259, 30.028282, 48.193310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502079, 30.393223, 48.154831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423880, 0.089859, -0.901250,
		-0.813613, -0.399424, -0.422486,
		-0.397945, 0.912352, -0.096198,
		37.382694, 30.666929, 48.125973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502251, 30.027182, 47.563553>,  <37.661259, 30.028282, 48.193310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502251, 30.027182, 47.563553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474255, 30.422808, 47.615479>,  <37.457455, 30.660183, 47.646633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474255, 30.422808, 47.615479>,  <37.502251, 30.027182, 47.563553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474255, 30.422808, 47.615479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143730, 0.138778, -0.979838,
		-0.987139, -0.049923, -0.151872,
		-0.069993, 0.989064, 0.129817,
		37.453259, 30.719526, 47.654423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089920, 30.245647, 46.993164>,  <37.502251, 30.027182, 47.563553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089920, 30.245647, 46.993164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242062, 30.584295, 47.142063>,  <37.333347, 30.787483, 47.231403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242062, 30.584295, 47.142063>,  <37.089920, 30.245647, 46.993164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242062, 30.584295, 47.142063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091911, 0.365901, -0.926104,
		-0.920263, 0.386461, 0.061358,
		0.380354, 0.846620, 0.372245,
		37.356167, 30.838282, 47.253738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716587, 30.850304, 46.655590>,  <37.089920, 30.245647, 46.993164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716587, 30.850304, 46.655590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092705, 30.936041, 46.761349>,  <37.318375, 30.987484, 46.824806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092705, 30.936041, 46.761349>,  <36.716587, 30.850304, 46.655590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092705, 30.936041, 46.761349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184871, 0.330618, -0.925481,
		-0.285785, 0.919103, 0.271251,
		0.940292, 0.214342, 0.264401,
		37.374794, 31.000343, 46.840668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788292, 31.445648, 46.387306>,  <36.716587, 30.850304, 46.655590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788292, 31.445648, 46.387306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163357, 31.308414, 46.409531>,  <37.388393, 31.226074, 46.422863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163357, 31.308414, 46.409531>,  <36.788292, 31.445648, 46.387306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163357, 31.308414, 46.409531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159053, 0.281454, -0.946301,
		0.309025, 0.896145, 0.318477,
		0.937660, -0.343086, 0.055559,
		37.444656, 31.205488, 46.426197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143478, 31.772108, 45.890614>,  <36.788292, 31.445648, 46.387306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143478, 31.772108, 45.890614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432693, 31.504316, 45.958755>,  <37.606220, 31.343641, 45.999641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432693, 31.504316, 45.958755>,  <37.143478, 31.772108, 45.890614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432693, 31.504316, 45.958755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428207, 0.240833, -0.870999,
		0.542087, 0.702709, 0.460805,
		0.723036, -0.669477, 0.170352,
		37.649605, 31.303473, 46.009861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711033, 32.181385, 45.679630>,  <37.143478, 31.772108, 45.890614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711033, 32.181385, 45.679630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814037, 31.794935, 45.672680>,  <37.875839, 31.563066, 45.668510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814037, 31.794935, 45.672680>,  <37.711033, 32.181385, 45.679630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814037, 31.794935, 45.672680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522710, 0.154401, -0.838412,
		0.812690, 0.206814, 0.544760,
		0.257507, -0.966120, -0.017377,
		37.891289, 31.505098, 45.667465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375633, 32.148582, 45.454681>,  <37.711033, 32.181385, 45.679630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375633, 32.148582, 45.454681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235764, 31.782894, 45.372784>,  <38.151840, 31.563480, 45.323647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235764, 31.782894, 45.372784>,  <38.375633, 32.148582, 45.454681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235764, 31.782894, 45.372784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499995, 0.002708, -0.866024,
		0.792294, -0.405200, 0.456161,
		-0.349678, -0.914224, -0.204743,
		38.130859, 31.508627, 45.311359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914196, 31.682323, 45.245434>,  <38.375633, 32.148582, 45.454681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914196, 31.682323, 45.245434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593708, 31.508787, 45.080589>,  <38.401417, 31.404665, 44.981682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593708, 31.508787, 45.080589>,  <38.914196, 31.682323, 45.245434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593708, 31.508787, 45.080589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476556, -0.046141, -0.877932,
		0.361867, -0.899807, 0.243718,
		-0.801215, -0.433840, -0.412111,
		38.353344, 31.378635, 44.956955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183685, 31.226437, 44.652519>,  <38.914196, 31.682323, 45.245434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183685, 31.226437, 44.652519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794815, 31.271748, 44.570499>,  <38.561493, 31.298935, 44.521286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794815, 31.271748, 44.570499>,  <39.183685, 31.226437, 44.652519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794815, 31.271748, 44.570499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219176, 0.130833, -0.966874,
		-0.082699, -0.984911, -0.152021,
		-0.972174, 0.113279, -0.205049,
		38.503162, 31.305731, 44.508984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031734, 30.776440, 44.058453>,  <39.183685, 31.226437, 44.652519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031734, 30.776440, 44.058453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714676, 31.020290, 44.055058>,  <38.524441, 31.166601, 44.053020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714676, 31.020290, 44.055058>,  <39.031734, 30.776440, 44.058453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714676, 31.020290, 44.055058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104071, 0.121566, -0.987113,
		-0.600737, -0.783312, -0.159803,
		-0.792644, 0.609626, -0.008491,
		38.476883, 31.203178, 44.052509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505009, 30.586720, 43.651962>,  <39.031734, 30.776440, 44.058453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505009, 30.586720, 43.651962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404552, 30.973064, 43.677391>,  <38.344280, 31.204870, 43.692646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404552, 30.973064, 43.677391>,  <38.505009, 30.586720, 43.651962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404552, 30.973064, 43.677391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092382, 0.041457, -0.994860,
		-0.963532, -0.255722, 0.078816,
		-0.251140, 0.965861, 0.063569,
		38.329212, 31.262823, 43.696461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967934, 30.651711, 43.220779>,  <38.505009, 30.586720, 43.651962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967934, 30.651711, 43.220779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092052, 31.029737, 43.261902>,  <38.166523, 31.256554, 43.286575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092052, 31.029737, 43.261902>,  <37.967934, 30.651711, 43.220779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092052, 31.029737, 43.261902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199581, 0.170494, -0.964935,
		-0.929454, 0.278897, 0.241521,
		0.310295, 0.945065, 0.102803,
		38.185143, 31.313257, 43.292744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420895, 31.088392, 42.934452>,  <37.967934, 30.651711, 43.220779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420895, 31.088392, 42.934452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754673, 31.308060, 42.916027>,  <37.954941, 31.439859, 42.904972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754673, 31.308060, 42.916027>,  <37.420895, 31.088392, 42.934452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754673, 31.308060, 42.916027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212259, 0.243135, -0.946484,
		-0.508578, 0.799563, 0.319448,
		0.834443, 0.549166, -0.046061,
		38.005005, 31.472809, 42.902210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210949, 31.610529, 42.420818>,  <37.420895, 31.088392, 42.934452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210949, 31.610529, 42.420818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609558, 31.641050, 42.434158>,  <37.848724, 31.659363, 42.442162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609558, 31.641050, 42.434158>,  <37.210949, 31.610529, 42.420818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609558, 31.641050, 42.434158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010548, 0.281574, -0.959481,
		-0.082602, 0.956501, 0.279791,
		0.996527, 0.076304, 0.033347,
		37.908516, 31.663942, 42.444164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333187, 32.196167, 42.064529>,  <37.210949, 31.610529, 42.420818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333187, 32.196167, 42.064529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664856, 31.972586, 42.067207>,  <37.863857, 31.838436, 42.068813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664856, 31.972586, 42.067207>,  <37.333187, 32.196167, 42.064529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664856, 31.972586, 42.067207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110827, 0.152638, -0.982048,
		0.547897, 0.815029, 0.188511,
		0.829172, -0.558954, 0.006697,
		37.913609, 31.804899, 42.069218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805698, 32.589066, 41.722546>,  <37.333187, 32.196167, 42.064529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805698, 32.589066, 41.722546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986893, 32.233242, 41.698906>,  <38.095608, 32.019749, 41.684723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986893, 32.233242, 41.698906>,  <37.805698, 32.589066, 41.722546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986893, 32.233242, 41.698906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230934, 0.181112, -0.955964,
		0.861089, 0.419389, 0.287470,
		0.452985, -0.889557, -0.059102,
		38.122787, 31.966375, 41.681175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391781, 32.727249, 41.390594>,  <37.805698, 32.589066, 41.722546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391781, 32.727249, 41.390594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332886, 32.335114, 41.338058>,  <38.297546, 32.099831, 41.306538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332886, 32.335114, 41.338058>,  <38.391781, 32.727249, 41.390594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332886, 32.335114, 41.338058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261951, 0.089393, -0.960932,
		0.953783, -0.175893, 0.243639,
		-0.147241, -0.980342, -0.131337,
		38.288712, 32.041012, 41.298656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973095, 32.506996, 41.054729>,  <38.391781, 32.727249, 41.390594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973095, 32.506996, 41.054729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696960, 32.228401, 40.976395>,  <38.531281, 32.061245, 40.929394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696960, 32.228401, 40.976395>,  <38.973095, 32.506996, 41.054729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696960, 32.228401, 40.976395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376151, -0.114283, -0.919483,
		0.618023, -0.708414, 0.340876,
		-0.690331, -0.696483, -0.195841,
		38.489861, 32.019455, 40.917641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319717, 32.082355, 40.710392>,  <38.973095, 32.506996, 41.054729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319717, 32.082355, 40.710392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938023, 32.008137, 40.616577>,  <38.709007, 31.963606, 40.560287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938023, 32.008137, 40.616577>,  <39.319717, 32.082355, 40.710392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938023, 32.008137, 40.616577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282838, -0.305204, -0.909315,
		0.097138, -0.934036, 0.343716,
		-0.954236, -0.185545, -0.234534,
		38.651752, 31.952473, 40.546219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344879, 31.619129, 40.203125>,  <39.319717, 32.082355, 40.710392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344879, 31.619129, 40.203125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957455, 31.710728, 40.164242>,  <38.724998, 31.765688, 40.140911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957455, 31.710728, 40.164242>,  <39.344879, 31.619129, 40.203125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957455, 31.710728, 40.164242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105136, 0.022652, -0.994200,
		-0.225469, -0.973163, -0.046015,
		-0.968561, 0.228999, -0.097207,
		38.666885, 31.779427, 40.135078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081799, 31.150034, 39.887138>,  <39.344879, 31.619129, 40.203125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081799, 31.150034, 39.887138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877205, 31.488846, 39.829285>,  <38.754448, 31.692133, 39.794571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877205, 31.488846, 39.829285>,  <39.081799, 31.150034, 39.887138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877205, 31.488846, 39.829285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258970, -0.008540, -0.965847,
		-0.819338, -0.531475, -0.214988,
		-0.511488, 0.847031, -0.144633,
		38.723759, 31.742954, 39.785896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770615, 31.141329, 39.270912>,  <39.081799, 31.150034, 39.887138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770615, 31.141329, 39.270912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772064, 31.534842, 39.342651>,  <38.772934, 31.770948, 39.385693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772064, 31.534842, 39.342651>,  <38.770615, 31.141329, 39.270912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772064, 31.534842, 39.342651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038689, 0.179072, -0.983075,
		-0.999245, 0.010503, -0.037413,
		0.003625, 0.983780, 0.179344,
		38.773151, 31.829975, 39.396454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483139, 31.339792, 38.730824>,  <38.770615, 31.141329, 39.270912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483139, 31.339792, 38.730824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630436, 31.683962, 38.871719>,  <38.718815, 31.890463, 38.956257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630436, 31.683962, 38.871719>,  <38.483139, 31.339792, 38.730824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630436, 31.683962, 38.871719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064009, 0.401421, -0.913654,
		-0.927525, 0.313896, 0.202894,
		0.368238, 0.860424, 0.352236,
		38.740906, 31.942089, 38.977390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092003, 31.848984, 38.330406>,  <38.483139, 31.339792, 38.730824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092003, 31.848984, 38.330406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393620, 32.051929, 38.497261>,  <38.574589, 32.173698, 38.597374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393620, 32.051929, 38.497261>,  <38.092003, 31.848984, 38.330406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393620, 32.051929, 38.497261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187703, 0.442146, -0.877083,
		-0.629435, 0.739655, 0.238163,
		0.754042, 0.507363, 0.417138,
		38.619831, 32.204140, 38.622402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016113, 32.648540, 38.169048>,  <38.092003, 31.848984, 38.330406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016113, 32.648540, 38.169048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395546, 32.592297, 38.282490>,  <38.623203, 32.558552, 38.350555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395546, 32.592297, 38.282490>,  <38.016113, 32.648540, 38.169048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395546, 32.592297, 38.282490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312519, 0.558374, -0.768473,
		-0.050302, 0.817587, 0.573604,
		0.948579, -0.140606, 0.283599,
		38.680119, 32.550114, 38.367569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343567, 33.204140, 38.023186>,  <38.016113, 32.648540, 38.169048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343567, 33.204140, 38.023186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660488, 32.961262, 38.047089>,  <38.850643, 32.815536, 38.061432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660488, 32.961262, 38.047089>,  <38.343567, 33.204140, 38.023186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660488, 32.961262, 38.047089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490034, 0.574950, -0.655209,
		0.363480, 0.548409, 0.753080,
		0.792306, -0.607190, 0.059757,
		38.898178, 32.779106, 38.065014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916759, 33.669380, 38.039253>,  <38.343567, 33.204140, 38.023186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916759, 33.669380, 38.039253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086205, 33.319672, 37.944431>,  <39.187874, 33.109848, 37.887539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086205, 33.319672, 37.944431>,  <38.916759, 33.669380, 38.039253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086205, 33.319672, 37.944431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598471, 0.466571, -0.651263,
		0.679986, 0.134012, 0.720874,
		0.423617, -0.874272, -0.237059,
		39.213291, 33.057388, 37.873314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590984, 33.812504, 38.138245>,  <38.916759, 33.669380, 38.039253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590984, 33.812504, 38.138245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552120, 33.498856, 37.893063>,  <39.528801, 33.310669, 37.745953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552120, 33.498856, 37.893063>,  <39.590984, 33.812504, 38.138245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552120, 33.498856, 37.893063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635756, 0.424952, -0.644383,
		0.765751, -0.452299, 0.457221,
		-0.097157, -0.784118, -0.612959,
		39.522972, 33.263618, 37.709175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253677, 33.522346, 38.038223>,  <39.590984, 33.812504, 38.138245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253677, 33.522346, 38.038223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020634, 33.412399, 37.732277>,  <39.880810, 33.346428, 37.548710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020634, 33.412399, 37.732277>,  <40.253677, 33.522346, 38.038223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020634, 33.412399, 37.732277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666267, 0.377433, -0.643142,
		0.465468, -0.884302, -0.036755,
		-0.582604, -0.274874, -0.764864,
		39.845852, 33.329937, 37.502819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701603, 33.136139, 37.679436>,  <40.253677, 33.522346, 38.038223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701603, 33.136139, 37.679436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407330, 33.255245, 37.436092>,  <40.230766, 33.326710, 37.290085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407330, 33.255245, 37.436092>,  <40.701603, 33.136139, 37.679436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407330, 33.255245, 37.436092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677226, 0.308294, -0.668072,
		-0.011377, -0.903487, -0.428464,
		-0.735687, 0.297767, -0.608358,
		40.186623, 33.344574, 37.253586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950924, 32.759941, 37.131767>,  <40.701603, 33.136139, 37.679436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950924, 32.759941, 37.131767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716995, 33.058048, 37.003662>,  <40.576637, 33.236912, 36.926800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716995, 33.058048, 37.003662>,  <40.950924, 32.759941, 37.131767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716995, 33.058048, 37.003662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704593, 0.271094, -0.655787,
		-0.401913, -0.609172, -0.683649,
		-0.584820, 0.745264, -0.320262,
		40.541550, 33.281628, 36.907585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624393, 32.786003, 37.499107>,  <40.950924, 32.759941, 37.131767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624393, 32.786003, 37.499107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607006, 33.172432, 37.600945>,  <41.596573, 33.404289, 37.662045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607006, 33.172432, 37.600945>,  <41.624393, 32.786003, 37.499107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607006, 33.172432, 37.600945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910059, 0.143432, -0.388871,
		-0.412194, 0.214788, -0.885417,
		-0.043473, 0.966071, 0.254591,
		41.593964, 33.462254, 37.677322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708778, 32.425461, 36.798416>,  <41.624393, 32.786003, 37.499107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708778, 32.425461, 36.798416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092396, 32.492710, 36.707226>,  <42.322567, 32.533062, 36.652512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092396, 32.492710, 36.707226>,  <41.708778, 32.425461, 36.798416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092396, 32.492710, 36.707226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278602, 0.705317, -0.651850,
		0.051204, 0.688666, 0.723268,
		0.959041, 0.168127, -0.227979,
		42.380108, 32.543148, 36.638832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765461, 33.098381, 36.792038>,  <41.708778, 32.425461, 36.798416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765461, 33.098381, 36.792038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026104, 32.927086, 36.541588>,  <42.182487, 32.824310, 36.391319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026104, 32.927086, 36.541588>,  <41.765461, 33.098381, 36.792038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026104, 32.927086, 36.541588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227515, 0.677076, -0.699861,
		0.723636, 0.598484, 0.343756,
		0.651604, -0.428234, -0.626121,
		42.221584, 32.798615, 36.353752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348660, 33.525059, 36.570194>,  <41.765461, 33.098381, 36.792038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348660, 33.525059, 36.570194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202606, 33.284966, 36.285549>,  <42.114975, 33.140907, 36.114761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202606, 33.284966, 36.285549>,  <42.348660, 33.525059, 36.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202606, 33.284966, 36.285549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185414, 0.795966, -0.576247,
		0.912305, -0.078462, -0.401924,
		-0.365131, -0.600235, -0.711616,
		42.093067, 33.104897, 36.072063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417519, 34.220032, 36.865932>,  <42.348660, 33.525059, 36.570194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417519, 34.220032, 36.865932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814667, 34.235195, 36.911152>,  <43.052956, 34.244293, 36.938286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814667, 34.235195, 36.911152>,  <42.417519, 34.220032, 36.865932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814667, 34.235195, 36.911152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042534, 0.998342, 0.038785,
		-0.111395, -0.043317, 0.992832,
		0.992865, 0.037908, 0.113053,
		43.112526, 34.246567, 36.945068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814846, 34.805355, 37.109966>,  <42.417519, 34.220032, 36.865932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814846, 34.805355, 37.109966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176018, 34.700237, 36.973927>,  <43.392719, 34.637169, 36.892303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176018, 34.700237, 36.973927>,  <42.814846, 34.805355, 37.109966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176018, 34.700237, 36.973927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323323, 0.936662, 0.134638,
		0.283174, -0.231529, 0.930702,
		0.902926, -0.262792, -0.340097,
		43.446896, 34.621399, 36.871899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381947, 34.903862, 37.577518>,  <42.814846, 34.805355, 37.109966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381947, 34.903862, 37.577518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548183, 34.932186, 37.214802>,  <43.647926, 34.949181, 36.997173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548183, 34.932186, 37.214802>,  <43.381947, 34.903862, 37.577518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548183, 34.932186, 37.214802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433782, 0.860848, 0.266034,
		0.799447, -0.503911, 0.327044,
		0.415592, 0.070815, -0.906790,
		43.672859, 34.953430, 36.942764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989746, 35.213856, 37.698231>,  <43.381947, 34.903862, 37.577518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989746, 35.213856, 37.698231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925335, 35.289917, 37.310848>,  <43.886688, 35.335552, 37.078419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925335, 35.289917, 37.310848>,  <43.989746, 35.213856, 37.698231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925335, 35.289917, 37.310848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483037, 0.870892, 0.090680,
		0.860666, -0.453199, -0.232089,
		-0.161028, 0.190153, -0.968458,
		43.877026, 35.346962, 37.020309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538025, 35.579914, 37.483917>,  <43.989746, 35.213856, 37.698231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538025, 35.579914, 37.483917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286491, 35.661465, 37.183784>,  <44.135571, 35.710396, 37.003704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286491, 35.661465, 37.183784>,  <44.538025, 35.579914, 37.483917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286491, 35.661465, 37.183784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207154, 0.974061, 0.091062,
		0.749435, -0.098171, -0.654759,
		-0.628836, 0.203881, -0.750332,
		44.097839, 35.722630, 36.958683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831673, 36.163689, 37.151394>,  <44.538025, 35.579914, 37.483917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831673, 36.163689, 37.151394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456806, 36.160496, 37.011883>,  <44.231884, 36.158581, 36.928177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456806, 36.160496, 37.011883>,  <44.831673, 36.163689, 37.151394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456806, 36.160496, 37.011883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008890, 0.999960, 0.001010,
		0.348760, 0.004047, -0.937203,
		-0.937170, -0.007979, -0.348782,
		44.175655, 36.158100, 36.907249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801315, 36.730747, 36.794167>,  <44.831673, 36.163689, 37.151394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801315, 36.730747, 36.794167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423279, 36.624474, 36.870289>,  <44.196457, 36.560711, 36.915962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423279, 36.624474, 36.870289>,  <44.801315, 36.730747, 36.794167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423279, 36.624474, 36.870289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278045, 0.959693, -0.040995,
		-0.171739, -0.091656, -0.980869,
		-0.945091, -0.265685, 0.190301,
		44.139751, 36.544769, 36.927380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315708, 37.087593, 36.313625>,  <44.801315, 36.730747, 36.794167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315708, 37.087593, 36.313625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067326, 36.993237, 36.612629>,  <43.918297, 36.936623, 36.792030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067326, 36.993237, 36.612629>,  <44.315708, 37.087593, 36.313625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067326, 36.993237, 36.612629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330176, 0.943627, 0.023503,
		-0.710916, -0.232216, -0.663832,
		-0.620952, -0.235890, 0.747512,
		43.881039, 36.922470, 36.836884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640747, 37.364056, 36.181385>,  <44.315708, 37.087593, 36.313625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640747, 37.364056, 36.181385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653839, 37.318153, 36.578526>,  <43.661694, 37.290611, 36.816811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653839, 37.318153, 36.578526>,  <43.640747, 37.364056, 36.181385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653839, 37.318153, 36.578526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200409, 0.972457, 0.119009,
		-0.979165, -0.202872, 0.008831,
		0.032731, -0.114759, 0.992854,
		43.663658, 37.283726, 36.876381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974201, 37.431751, 36.516911>,  <43.640747, 37.364056, 36.181385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974201, 37.431751, 36.516911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217731, 37.532143, 36.817932>,  <43.363850, 37.592377, 36.998547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217731, 37.532143, 36.817932>,  <42.974201, 37.431751, 36.516911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217731, 37.532143, 36.817932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322395, 0.945044, -0.054349,
		-0.724840, -0.209532, 0.656280,
		0.608825, 0.250976, 0.752558,
		43.400379, 37.607437, 37.043701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727512, 38.022202, 36.708843>,  <42.974201, 37.431751, 36.516911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727512, 38.022202, 36.708843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082314, 38.038548, 36.892822>,  <43.295197, 38.048355, 37.003208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082314, 38.038548, 36.892822>,  <42.727512, 38.022202, 36.708843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082314, 38.038548, 36.892822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050249, 0.998703, 0.008176,
		-0.459013, -0.030364, 0.887910,
		0.887007, 0.040863, 0.459944,
		43.348415, 38.050808, 37.030804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679794, 38.584076, 37.292660>,  <42.727512, 38.022202, 36.708843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679794, 38.584076, 37.292660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068150, 38.531410, 37.212612>,  <43.301163, 38.499809, 37.164585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068150, 38.531410, 37.212612>,  <42.679794, 38.584076, 37.292660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068150, 38.531410, 37.212612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109521, 0.986955, -0.118003,
		0.213046, 0.092650, 0.972640,
		0.970885, -0.131664, -0.200120,
		43.359413, 38.491913, 37.152576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980091, 39.088993, 37.627048>,  <42.679794, 38.584076, 37.292660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980091, 39.088993, 37.627048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267059, 38.995701, 37.364471>,  <43.439240, 38.939728, 37.206924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267059, 38.995701, 37.364471>,  <42.980091, 39.088993, 37.627048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267059, 38.995701, 37.364471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205934, 0.971182, -0.119990,
		0.665511, -0.049101, 0.744771,
		0.717416, -0.233228, -0.656444,
		43.482285, 38.925732, 37.167538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592030, 39.417778, 37.855633>,  <42.980091, 39.088993, 37.627048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592030, 39.417778, 37.855633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622986, 39.358364, 37.461285>,  <43.641560, 39.322716, 37.224674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622986, 39.358364, 37.461285>,  <43.592030, 39.417778, 37.855633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622986, 39.358364, 37.461285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295065, 0.947955, -0.119660,
		0.952338, -0.281637, 0.117189,
		0.077389, -0.148535, -0.985874,
		43.646202, 39.313805, 37.165524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241852, 39.705761, 37.641216>,  <43.592030, 39.417778, 37.855633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241852, 39.705761, 37.641216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037117, 39.701813, 37.297607>,  <43.914276, 39.699444, 37.091442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037117, 39.701813, 37.297607>,  <44.241852, 39.705761, 37.641216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037117, 39.701813, 37.297607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339107, 0.916413, -0.212586,
		0.789319, -0.400111, -0.465711,
		-0.511841, -0.009872, -0.859023,
		43.883564, 39.698853, 37.039902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714584, 39.943481, 37.173264>,  <44.241852, 39.705761, 37.641216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714584, 39.943481, 37.173264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355171, 39.990757, 37.004189>,  <44.139523, 40.019123, 36.902744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355171, 39.990757, 37.004189>,  <44.714584, 39.943481, 37.173264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355171, 39.990757, 37.004189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254628, 0.924798, -0.282688,
		0.357485, -0.361633, -0.861061,
		-0.898537, 0.118194, -0.422683,
		44.085609, 40.026215, 36.877384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765163, 40.471909, 36.518112>,  <44.714584, 39.943481, 37.173264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765163, 40.471909, 36.518112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369801, 40.472523, 36.578850>,  <44.132584, 40.472889, 36.615292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369801, 40.472523, 36.578850>,  <44.765163, 40.471909, 36.518112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369801, 40.472523, 36.578850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020529, 0.989421, -0.143615,
		-0.150453, -0.145067, -0.977916,
		-0.988404, 0.001532, 0.151839,
		44.073280, 40.472980, 36.624401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418644, 40.634064, 35.890720>,  <44.765163, 40.471909, 36.518112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418644, 40.634064, 35.890720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178093, 40.738537, 36.192749>,  <44.033764, 40.801220, 36.373966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178093, 40.738537, 36.192749>,  <44.418644, 40.634064, 35.890720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178093, 40.738537, 36.192749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054141, 0.929565, -0.364661,
		-0.797128, -0.260180, -0.544879,
		-0.601378, 0.261182, 0.755068,
		43.997681, 40.816891, 36.419270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837841, 40.832840, 35.612587>,  <44.418644, 40.634064, 35.890720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837841, 40.832840, 35.612587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829071, 41.011734, 35.970245>,  <43.823807, 41.119072, 36.184841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829071, 41.011734, 35.970245>,  <43.837841, 40.832840, 35.612587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829071, 41.011734, 35.970245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191120, 0.875992, -0.442844,
		-0.981322, -0.180599, 0.066267,
		-0.021928, 0.447238, 0.894146,
		43.822495, 41.145905, 36.238491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374680, 41.349468, 35.482189>,  <43.837841, 40.832840, 35.612587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374680, 41.349468, 35.482189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538597, 41.459412, 35.830101>,  <43.636948, 41.525379, 36.038849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538597, 41.459412, 35.830101>,  <43.374680, 41.349468, 35.482189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538597, 41.459412, 35.830101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186547, 0.958622, -0.215045,
		-0.892900, -0.074131, 0.444111,
		0.409793, 0.274862, 0.869782,
		43.661533, 41.541870, 36.091034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917210, 41.872894, 35.735996>,  <43.374680, 41.349468, 35.482189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917210, 41.872894, 35.735996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276947, 41.929501, 35.901482>,  <43.492790, 41.963463, 36.000774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276947, 41.929501, 35.901482>,  <42.917210, 41.872894, 35.735996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276947, 41.929501, 35.901482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014495, 0.955308, -0.295258,
		-0.437010, 0.259541, 0.861197,
		0.899340, 0.141514, 0.413717,
		43.546749, 41.971954, 36.025597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797245, 42.468822, 36.259560>,  <42.917210, 41.872894, 35.735996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797245, 42.468822, 36.259560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195866, 42.464409, 36.226654>,  <43.435036, 42.461761, 36.206909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195866, 42.464409, 36.226654>,  <42.797245, 42.468822, 36.259560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195866, 42.464409, 36.226654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010814, 0.965428, -0.260444,
		0.082294, 0.260435, 0.961978,
		0.996549, -0.011030, -0.082266,
		43.494831, 42.461102, 36.201973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034164, 43.051594, 36.610313>,  <42.797245, 42.468822, 36.259560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034164, 43.051594, 36.610313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316315, 42.938221, 36.350430>,  <43.485603, 42.870197, 36.194500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316315, 42.938221, 36.350430>,  <43.034164, 43.051594, 36.610313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316315, 42.938221, 36.350430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006799, 0.913831, -0.406037,
		0.708805, 0.290825, 0.642664,
		0.705372, -0.283431, -0.649706,
		43.527927, 42.853191, 36.155518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818027, 43.409775, 36.678520>,  <43.034164, 43.051594, 36.610313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818027, 43.409775, 36.678520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677719, 43.311378, 36.317089>,  <43.593536, 43.252342, 36.100231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677719, 43.311378, 36.317089>,  <43.818027, 43.409775, 36.678520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677719, 43.311378, 36.317089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076060, 0.954211, -0.289304,
		0.933368, -0.170205, -0.315998,
		-0.350770, -0.245992, -0.903575,
		43.572487, 43.237579, 36.046017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231709, 43.643185, 36.179947>,  <43.818027, 43.409775, 36.678520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231709, 43.643185, 36.179947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863110, 43.650902, 36.024788>,  <43.641949, 43.655533, 35.931690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863110, 43.650902, 36.024788>,  <44.231709, 43.643185, 36.179947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863110, 43.650902, 36.024788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066727, 0.991778, -0.109196,
		0.382606, -0.126508, -0.915210,
		-0.921499, 0.019290, -0.387902,
		43.586658, 43.656689, 35.908417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973164, 43.962914, 36.020966>,  <44.231709, 43.643185, 36.179947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973164, 43.962914, 36.020966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307114, 44.139759, 36.152122>,  <45.507484, 44.245869, 36.230816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307114, 44.139759, 36.152122>,  <44.973164, 43.962914, 36.020966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307114, 44.139759, 36.152122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331618, 0.071455, -0.940704,
		-0.439332, 0.894106, -0.086958,
		0.834875, 0.442118, 0.327894,
		45.557575, 44.272396, 36.250492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980850, 44.610180, 35.766815>,  <44.973164, 43.962914, 36.020966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980850, 44.610180, 35.766815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320152, 44.400902, 35.799622>,  <45.523735, 44.275333, 35.819305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320152, 44.400902, 35.799622>,  <44.980850, 44.610180, 35.766815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320152, 44.400902, 35.799622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133751, 0.061797, -0.989086,
		0.512416, 0.849970, 0.122397,
		0.848257, -0.523195, 0.082018,
		45.574631, 44.243942, 35.824226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381458, 45.099621, 35.318775>,  <44.980850, 44.610180, 35.766815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381458, 45.099621, 35.318775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479393, 44.711880, 35.326775>,  <45.538155, 44.479233, 35.331573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479393, 44.711880, 35.326775>,  <45.381458, 45.099621, 35.318775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479393, 44.711880, 35.326775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165869, 0.021551, -0.985912,
		0.955270, 0.244708, 0.166063,
		0.244839, -0.969357, 0.020003,
		45.552845, 44.421074, 35.332775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054211, 45.063446, 35.014931>,  <45.381458, 45.099621, 35.318775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054211, 45.063446, 35.014931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828804, 44.734364, 34.984966>,  <45.693562, 44.536915, 34.966988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828804, 44.734364, 34.984966>,  <46.054211, 45.063446, 35.014931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828804, 44.734364, 34.984966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039667, 0.063631, -0.997185,
		0.825155, -0.564897, -0.003222,
		-0.563512, -0.822704, -0.074913,
		45.659752, 44.487553, 34.962494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319965, 44.497372, 34.599426>,  <46.054211, 45.063446, 35.014931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319965, 44.497372, 34.599426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921928, 44.458054, 34.595016>,  <45.683105, 44.434464, 34.592369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921928, 44.458054, 34.595016>,  <46.319965, 44.497372, 34.599426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921928, 44.458054, 34.595016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007757, 0.033599, -0.999405,
		0.098611, -0.994590, -0.032672,
		-0.995096, -0.098299, -0.011028,
		45.623398, 44.428566, 34.591709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946884, 43.872425, 34.184048>,  <46.319965, 44.497372, 34.599426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946884, 43.872425, 34.184048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720280, 44.201973, 34.177105>,  <45.584316, 44.399700, 34.172939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720280, 44.201973, 34.177105>,  <45.946884, 43.872425, 34.184048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720280, 44.201973, 34.177105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302056, -0.227204, -0.925819,
		-0.766697, -0.519247, 0.377569,
		-0.566514, 0.823869, -0.017355,
		45.550327, 44.449135, 34.171898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.981220, 43.703362, 33.512291>,  <45.946884, 43.872425, 34.184048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.981220, 43.703362, 33.512291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698784, 43.603401, 33.247265>,  <45.529324, 43.543427, 33.088249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698784, 43.603401, 33.247265>,  <45.981220, 43.703362, 33.512291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698784, 43.603401, 33.247265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250042, -0.963376, 0.096884,
		-0.662505, -0.097259, 0.742716,
		-0.706092, -0.249896, -0.662560,
		45.486958, 43.528431, 33.048496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765560, 43.040474, 33.218754>,  <45.981220, 43.703362, 33.512291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765560, 43.040474, 33.218754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958546, 43.124538, 33.558884>,  <46.074337, 43.174976, 33.762962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958546, 43.124538, 33.558884>,  <45.765560, 43.040474, 33.218754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958546, 43.124538, 33.558884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007553, -0.971753, 0.235881,
		0.875882, -0.107383, -0.470425,
		0.482467, 0.210157, 0.850329,
		46.103287, 43.187584, 33.813984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239742, 42.611015, 33.407413>,  <45.765560, 43.040474, 33.218754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239742, 42.611015, 33.407413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093575, 42.751392, 33.752277>,  <46.005875, 42.835617, 33.959194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093575, 42.751392, 33.752277>,  <46.239742, 42.611015, 33.407413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093575, 42.751392, 33.752277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094284, -0.935399, 0.340793,
		0.926057, 0.043244, 0.374897,
		-0.365416, 0.350941, 0.862155,
		45.983952, 42.856674, 34.010925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583847, 42.399151, 33.921997>,  <46.239742, 42.611015, 33.407413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583847, 42.399151, 33.921997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206757, 42.466671, 34.037075>,  <45.980503, 42.507183, 34.106121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206757, 42.466671, 34.037075>,  <46.583847, 42.399151, 33.921997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206757, 42.466671, 34.037075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107707, -0.970349, 0.216384,
		0.315693, 0.173004, 0.932956,
		-0.942728, 0.168796, 0.287699,
		45.923939, 42.517311, 34.123386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.478298, 42.037033, 34.490097>,  <46.583847, 42.399151, 33.921997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.478298, 42.037033, 34.490097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104893, 42.107285, 34.365067>,  <45.880848, 42.149433, 34.290047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104893, 42.107285, 34.365067>,  <46.478298, 42.037033, 34.490097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104893, 42.107285, 34.365067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219511, -0.969278, 0.110970,
		-0.283485, 0.172207, 0.943388,
		-0.933515, 0.175626, -0.312577,
		45.824837, 42.159973, 34.271294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106991, 41.758148, 34.928936>,  <46.478298, 42.037033, 34.490097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106991, 41.758148, 34.928936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871723, 41.792679, 34.607292>,  <45.730560, 41.813396, 34.414307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871723, 41.792679, 34.607292>,  <46.106991, 41.758148, 34.928936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871723, 41.792679, 34.607292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126661, -0.991850, -0.013837,
		-0.798754, 0.093711, 0.594314,
		-0.588174, 0.086329, -0.804114,
		45.695271, 41.818577, 34.366058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452244, 41.450630, 35.071133>,  <46.106991, 41.758148, 34.928936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452244, 41.450630, 35.071133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481438, 41.456310, 34.672241>,  <45.498955, 41.459721, 34.432907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481438, 41.456310, 34.672241>,  <45.452244, 41.450630, 35.071133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481438, 41.456310, 34.672241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214926, -0.976181, -0.029633,
		-0.973900, 0.216494, -0.068193,
		0.072984, 0.014203, -0.997232,
		45.503334, 41.460571, 34.373070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105900, 40.836746, 34.964691>,  <45.452244, 41.450630, 35.071133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105900, 40.836746, 34.964691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272400, 40.918636, 34.610329>,  <45.372299, 40.967770, 34.397713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272400, 40.918636, 34.610329>,  <45.105900, 40.836746, 34.964691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272400, 40.918636, 34.610329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094132, -0.978790, -0.181960,
		-0.904364, -0.007650, -0.426693,
		0.416250, 0.204724, -0.885903,
		45.397274, 40.980053, 34.344559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668324, 40.487106, 34.446224>,  <45.105900, 40.836746, 34.964691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668324, 40.487106, 34.446224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028877, 40.534065, 34.279507>,  <45.245209, 40.562241, 34.179478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028877, 40.534065, 34.279507>,  <44.668324, 40.487106, 34.446224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028877, 40.534065, 34.279507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067811, -0.988942, -0.131891,
		-0.427668, 0.090622, -0.899382,
		0.901389, 0.117394, -0.416794,
		45.299294, 40.569283, 34.154469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630768, 40.193928, 33.791096>,  <44.668324, 40.487106, 34.446224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630768, 40.193928, 33.791096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026585, 40.182777, 33.847717>,  <45.264072, 40.176086, 33.881691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026585, 40.182777, 33.847717>,  <44.630768, 40.193928, 33.791096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026585, 40.182777, 33.847717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009112, -0.967115, -0.254177,
		0.143985, 0.252808, -0.956743,
		0.989538, -0.027880, 0.141554,
		45.323444, 40.174412, 33.890182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916954, 39.859585, 33.196102>,  <44.630768, 40.193928, 33.791096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916954, 39.859585, 33.196102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171810, 39.810219, 33.500423>,  <45.324722, 39.780598, 33.683018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171810, 39.810219, 33.500423>,  <44.916954, 39.859585, 33.196102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171810, 39.810219, 33.500423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029651, -0.982442, -0.184198,
		0.770176, 0.139919, -0.622295,
		0.637142, -0.123414, 0.760802,
		45.362953, 39.773193, 33.728664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236794, 39.231731, 33.015980>,  <44.916954, 39.859585, 33.196102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236794, 39.231731, 33.015980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377018, 39.307560, 33.382843>,  <45.461151, 39.353058, 33.602959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377018, 39.307560, 33.382843>,  <45.236794, 39.231731, 33.015980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377018, 39.307560, 33.382843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108812, -0.980912, 0.161155,
		0.930198, 0.043303, -0.364495,
		0.350559, 0.189568, 0.917154,
		45.482185, 39.364429, 33.657990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700874, 38.722805, 33.129471>,  <45.236794, 39.231731, 33.015980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700874, 38.722805, 33.129471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603889, 38.833435, 33.501431>,  <45.545696, 38.899815, 33.724606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603889, 38.833435, 33.501431>,  <45.700874, 38.722805, 33.129471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603889, 38.833435, 33.501431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022744, -0.959859, 0.279559,
		0.969893, 0.046634, 0.239024,
		-0.242467, 0.276579, 0.929900,
		45.531151, 38.916409, 33.780399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138447, 38.320404, 33.583675>,  <45.700874, 38.722805, 33.129471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138447, 38.320404, 33.583675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804977, 38.412899, 33.784283>,  <45.604897, 38.468395, 33.904648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804977, 38.412899, 33.784283>,  <46.138447, 38.320404, 33.583675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804977, 38.412899, 33.784283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059071, -0.940249, 0.335323,
		0.549089, 0.249925, 0.797521,
		-0.833674, 0.231233, 0.501517,
		45.554874, 38.482269, 33.934738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265255, 37.909367, 34.287666>,  <46.138447, 38.320404, 33.583675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265255, 37.909367, 34.287666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887993, 38.032146, 34.236683>,  <45.661636, 38.105812, 34.206093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887993, 38.032146, 34.236683>,  <46.265255, 37.909367, 34.287666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887993, 38.032146, 34.236683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329948, -0.818639, 0.470068,
		0.039943, 0.485401, 0.873379,
		-0.943154, 0.306946, -0.127458,
		45.605045, 38.124229, 34.198444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955990, 37.849728, 34.968269>,  <46.265255, 37.909367, 34.287666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955990, 37.849728, 34.968269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647106, 37.856785, 34.714218>,  <45.461777, 37.861019, 34.561787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647106, 37.856785, 34.714218>,  <45.955990, 37.849728, 34.968269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647106, 37.856785, 34.714218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449030, -0.722372, 0.525881,
		-0.449520, 0.691280, 0.565742,
		-0.772207, 0.017641, -0.635126,
		45.415443, 37.862076, 34.523682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414047, 37.613804, 35.375168>,  <45.955990, 37.849728, 34.968269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414047, 37.613804, 35.375168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301266, 37.573467, 34.993523>,  <45.233597, 37.549267, 34.764534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301266, 37.573467, 34.993523>,  <45.414047, 37.613804, 35.375168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301266, 37.573467, 34.993523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483774, -0.843844, 0.232144,
		-0.828533, 0.527029, 0.189140,
		-0.281951, -0.100838, -0.954115,
		45.216679, 37.543217, 34.707287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706055, 37.405369, 35.352146>,  <45.414047, 37.613804, 35.375168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706055, 37.405369, 35.352146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863308, 37.298180, 35.000320>,  <44.957661, 37.233868, 34.789227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863308, 37.298180, 35.000320>,  <44.706055, 37.405369, 35.352146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863308, 37.298180, 35.000320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318216, -0.937129, 0.143278,
		-0.862660, 0.223564, -0.453692,
		0.393136, -0.267972, -0.879565,
		44.981247, 37.217789, 34.736450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273960, 36.835358, 35.126884>,  <44.706055, 37.405369, 35.352146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273960, 36.835358, 35.126884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603504, 36.800976, 34.902786>,  <44.801231, 36.780346, 34.768330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603504, 36.800976, 34.902786>,  <44.273960, 36.835358, 35.126884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603504, 36.800976, 34.902786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082998, -0.996075, 0.030764,
		-0.560689, 0.021154, -0.827756,
		0.823857, -0.085951, -0.560244,
		44.850662, 36.775192, 34.734715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074139, 36.369572, 34.619404>,  <44.273960, 36.835358, 35.126884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074139, 36.369572, 34.619404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471703, 36.360889, 34.576191>,  <44.710239, 36.355679, 34.550262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471703, 36.360889, 34.576191>,  <44.074139, 36.369572, 34.619404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471703, 36.360889, 34.576191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026595, -0.998678, -0.043997,
		-0.106936, 0.046602, -0.993173,
		0.993910, -0.021709, -0.108034,
		44.769875, 36.354378, 34.543781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203472, 36.004482, 34.007309>,  <44.074139, 36.369572, 34.619404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203472, 36.004482, 34.007309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523785, 35.992653, 34.246601>,  <44.715973, 35.985554, 34.390175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523785, 35.992653, 34.246601>,  <44.203472, 36.004482, 34.007309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523785, 35.992653, 34.246601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141189, -0.979955, 0.140546,
		0.582082, -0.197010, -0.788903,
		0.800779, -0.029576, 0.598230,
		44.764019, 35.983780, 34.426071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582069, 35.385841, 33.728981>,  <44.203472, 36.004482, 34.007309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582069, 35.385841, 33.728981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737434, 35.452354, 34.091522>,  <44.830654, 35.492264, 34.309048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737434, 35.452354, 34.091522>,  <44.582069, 35.385841, 33.728981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737434, 35.452354, 34.091522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396900, -0.917860, -0.001694,
		0.831627, 0.360391, -0.422510,
		0.388416, 0.166285, 0.906357,
		44.853958, 35.502239, 34.363430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341125, 35.072178, 33.750591>,  <44.582069, 35.385841, 33.728981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341125, 35.072178, 33.750591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205429, 35.104790, 34.125454>,  <45.124012, 35.124355, 34.350372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205429, 35.104790, 34.125454>,  <45.341125, 35.072178, 33.750591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205429, 35.104790, 34.125454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243833, -0.954568, 0.171307,
		0.908548, 0.286625, 0.303952,
		-0.339244, 0.081527, 0.937159,
		45.103657, 35.129250, 34.406601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640610, 34.542938, 34.115444>,  <45.341125, 35.072178, 33.750591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640610, 34.542938, 34.115444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368214, 34.650185, 34.388023>,  <45.204777, 34.714531, 34.551571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368214, 34.650185, 34.388023>,  <45.640610, 34.542938, 34.115444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368214, 34.650185, 34.388023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027120, -0.939160, 0.342409,
		0.731789, 0.214697, 0.646831,
		-0.680992, 0.268113, 0.681444,
		45.163918, 34.730618, 34.592457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682716, 34.225777, 34.795223>,  <45.640610, 34.542938, 34.115444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682716, 34.225777, 34.795223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302521, 34.308479, 34.888020>,  <45.074402, 34.358101, 34.943695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302521, 34.308479, 34.888020>,  <45.682716, 34.225777, 34.795223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302521, 34.308479, 34.888020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056631, -0.849281, 0.524895,
		0.305551, 0.485770, 0.818942,
		-0.950490, 0.206760, 0.231989,
		45.017372, 34.370506, 34.957615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289692, 34.730080, 34.833195>,  <45.682716, 34.225777, 34.795223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289692, 34.730080, 34.833195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172497, 34.721909, 35.215553>,  <46.102180, 34.717007, 35.444969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172497, 34.721909, 35.215553>,  <46.289692, 34.730080, 34.833195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172497, 34.721909, 35.215553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955642, -0.037763, 0.292101,
		0.030132, 0.999078, 0.030582,
		-0.292987, -0.020424, 0.955898,
		46.084602, 34.715782, 35.502323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.859158, 34.544662, 35.226547>,  <46.289692, 34.730080, 34.833195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.859158, 34.544662, 35.226547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185589, 34.398232, 35.047665>,  <47.381447, 34.310371, 34.940334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185589, 34.398232, 35.047665>,  <46.859158, 34.544662, 35.226547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185589, 34.398232, 35.047665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016539, 0.788283, -0.615091,
		0.577699, 0.494568, 0.649358,
		0.816082, -0.366077, -0.447211,
		47.430412, 34.288406, 34.913502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.543266, 34.939854, 35.430527>,  <46.859158, 34.544662, 35.226547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.543266, 34.939854, 35.430527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547665, 34.777752, 35.064873>,  <47.550304, 34.680492, 34.845478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547665, 34.777752, 35.064873>,  <47.543266, 34.939854, 35.430527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547665, 34.777752, 35.064873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125875, 0.907481, -0.400790,
		0.991985, -0.110658, 0.060994,
		0.011001, -0.405256, -0.914137,
		47.550964, 34.656174, 34.790630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.700321, 34.143074, 45.008446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.328629, 34.022015, 44.923656>,  <34.105614, 33.949379, 44.872784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.328629, 34.022015, 44.923656>,  <34.700321, 34.143074, 45.008446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328629, 34.022015, 44.923656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145889, 0.226564, -0.963008,
		0.339484, -0.925780, -0.166376,
		-0.929229, -0.302654, -0.211976,
		34.049858, 33.931221, 44.860065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774773, 33.657440, 44.490269>,  <34.700321, 34.143074, 45.008446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774773, 33.657440, 44.490269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.414658, 33.830044, 44.467323>,  <34.198589, 33.933605, 44.453556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.414658, 33.830044, 44.467323>,  <34.774773, 33.657440, 44.490269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414658, 33.830044, 44.467323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097907, 0.072321, -0.992564,
		-0.424147, -0.899207, -0.107357,
		-0.900285, 0.431505, -0.057364,
		34.144573, 33.959496, 44.450115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437920, 33.349976, 43.900574>,  <34.774773, 33.657440, 44.490269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437920, 33.349976, 43.900574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210239, 33.676113, 43.942951>,  <34.073631, 33.871796, 43.968376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210239, 33.676113, 43.942951>,  <34.437920, 33.349976, 43.900574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210239, 33.676113, 43.942951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068163, 0.175204, -0.982170,
		-0.819370, -0.551828, -0.155303,
		-0.569199, 0.815346, 0.105943,
		34.039478, 33.920715, 43.974735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019226, 33.357758, 43.342274>,  <34.437920, 33.349976, 43.900574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019226, 33.357758, 43.342274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949825, 33.731319, 43.467308>,  <33.908184, 33.955460, 43.542328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949825, 33.731319, 43.467308>,  <34.019226, 33.357758, 43.342274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949825, 33.731319, 43.467308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004957, 0.316567, -0.948557,
		-0.984821, -0.166129, -0.050297,
		-0.173505, 0.933909, 0.312585,
		33.897774, 34.011494, 43.561085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432289, 33.576267, 43.039539>,  <34.019226, 33.357758, 43.342274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432289, 33.576267, 43.039539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679680, 33.879833, 43.121052>,  <33.828114, 34.061974, 43.169960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679680, 33.879833, 43.121052>,  <33.432289, 33.576267, 43.039539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679680, 33.879833, 43.121052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076777, 0.316447, -0.945498,
		-0.782041, 0.569126, 0.253984,
		0.618480, 0.758918, 0.203778,
		33.865223, 34.107510, 43.182186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260231, 34.327877, 42.700615>,  <33.432289, 33.576267, 43.039539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260231, 34.327877, 42.700615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.651657, 34.361771, 42.775684>,  <33.886513, 34.382107, 42.820728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.651657, 34.361771, 42.775684>,  <33.260231, 34.327877, 42.700615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651657, 34.361771, 42.775684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150140, 0.330165, -0.931906,
		-0.140925, 0.940113, 0.310368,
		0.978570, 0.084730, 0.187677,
		33.945229, 34.387188, 42.831985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363983, 34.866840, 42.262409>,  <33.260231, 34.327877, 42.700615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363983, 34.866840, 42.262409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716896, 34.708729, 42.364647>,  <33.928646, 34.613861, 42.425987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716896, 34.708729, 42.364647>,  <33.363983, 34.866840, 42.262409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716896, 34.708729, 42.364647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365551, 0.233282, -0.901084,
		0.296551, 0.888446, 0.350315,
		0.882287, -0.395275, 0.255592,
		33.981583, 34.590145, 42.441326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722702, 35.138950, 41.766590>,  <33.363983, 34.866840, 42.262409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722702, 35.138950, 41.766590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.012100, 34.919613, 41.934341>,  <34.185738, 34.788010, 42.034992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.012100, 34.919613, 41.934341>,  <33.722702, 35.138950, 41.766590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012100, 34.919613, 41.934341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548554, 0.087846, -0.831487,
		0.419101, 0.831626, 0.364353,
		0.723493, -0.548345, 0.419375,
		34.229149, 34.755108, 42.060154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253906, 35.540600, 41.749287>,  <33.722702, 35.138950, 41.766590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253906, 35.540600, 41.749287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356812, 35.154110, 41.743179>,  <34.418556, 34.922218, 41.739513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356812, 35.154110, 41.743179>,  <34.253906, 35.540600, 41.749287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356812, 35.154110, 41.743179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258439, 0.084018, -0.962367,
		0.931142, 0.243637, 0.271324,
		0.257264, -0.966221, -0.015267,
		34.433990, 34.864243, 41.738598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991329, 35.507282, 41.516109>,  <34.253906, 35.540600, 41.749287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991329, 35.507282, 41.516109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828358, 35.147346, 41.453770>,  <34.730576, 34.931385, 41.416367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828358, 35.147346, 41.453770>,  <34.991329, 35.507282, 41.516109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828358, 35.147346, 41.453770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379719, -0.011718, -0.925027,
		0.830552, -0.436059, 0.346461,
		-0.407427, -0.899841, -0.155847,
		34.706131, 34.877396, 41.407017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482838, 35.142334, 41.217674>,  <34.991329, 35.507282, 41.516109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482838, 35.142334, 41.217674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150627, 34.942810, 41.118553>,  <34.951302, 34.823097, 41.059078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150627, 34.942810, 41.118553>,  <35.482838, 35.142334, 41.217674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150627, 34.942810, 41.118553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345062, -0.111558, -0.931927,
		0.437210, -0.859502, 0.264772,
		-0.830530, -0.498811, -0.247807,
		34.901466, 34.793167, 41.044212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665855, 34.502125, 40.899593>,  <35.482838, 35.142334, 41.217674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665855, 34.502125, 40.899593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301453, 34.599598, 40.766510>,  <35.082813, 34.658081, 40.686661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301453, 34.599598, 40.766510>,  <35.665855, 34.502125, 40.899593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301453, 34.599598, 40.766510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308726, -0.131918, -0.941959,
		-0.273429, -0.960842, 0.044947,
		-0.911002, 0.243682, -0.332707,
		35.028152, 34.672703, 40.666698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601433, 33.993214, 40.416553>,  <35.665855, 34.502125, 40.899593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601433, 33.993214, 40.416553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345863, 34.286423, 40.323208>,  <35.192524, 34.462349, 40.267200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345863, 34.286423, 40.323208>,  <35.601433, 33.993214, 40.416553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345863, 34.286423, 40.323208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330793, -0.012078, -0.943626,
		-0.694518, -0.680097, -0.234762,
		-0.638922, 0.733023, -0.233359,
		35.154186, 34.506329, 40.253201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423721, 33.823238, 39.767132>,  <35.601433, 33.993214, 40.416553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423721, 33.823238, 39.767132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271404, 34.192989, 39.776253>,  <35.180016, 34.414841, 39.781727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271404, 34.192989, 39.776253>,  <35.423721, 33.823238, 39.767132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271404, 34.192989, 39.776253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409045, 0.190520, -0.892404,
		-0.829264, -0.330493, -0.450661,
		-0.380793, 0.924379, 0.022805,
		35.157166, 34.470303, 39.783092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967766, 33.899967, 39.200275>,  <35.423721, 33.823238, 39.767132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967766, 33.899967, 39.200275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126289, 34.256527, 39.288231>,  <35.221405, 34.470463, 39.341003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126289, 34.256527, 39.288231>,  <34.967766, 33.899967, 39.200275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126289, 34.256527, 39.288231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424221, 0.034611, -0.904897,
		-0.814231, 0.451904, -0.364432,
		0.396313, 0.891395, 0.219889,
		35.245182, 34.523945, 39.354198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987923, 34.260273, 38.585987>,  <34.967766, 33.899967, 39.200275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987923, 34.260273, 38.585987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228809, 34.508198, 38.787251>,  <35.373341, 34.656952, 38.908009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228809, 34.508198, 38.787251>,  <34.987923, 34.260273, 38.585987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228809, 34.508198, 38.787251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569517, 0.108129, -0.814836,
		-0.559449, 0.777268, -0.287875,
		0.602218, 0.619809, 0.503160,
		35.409473, 34.694141, 38.938198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134094, 34.973175, 38.248562>,  <34.987923, 34.260273, 38.585987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134094, 34.973175, 38.248562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441685, 34.890171, 38.490425>,  <35.626240, 34.840370, 38.635544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441685, 34.890171, 38.490425>,  <35.134094, 34.973175, 38.248562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441685, 34.890171, 38.490425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633491, 0.374274, -0.677206,
		-0.085779, 0.903802, 0.419266,
		0.768981, -0.207511, 0.604655,
		35.672379, 34.827919, 38.671822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567207, 35.603062, 38.154507>,  <35.134094, 34.973175, 38.248562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567207, 35.603062, 38.154507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795593, 35.304951, 38.292236>,  <35.932625, 35.126083, 38.374874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795593, 35.304951, 38.292236>,  <35.567207, 35.603062, 38.154507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795593, 35.304951, 38.292236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743907, 0.292254, -0.600991,
		0.347277, 0.599288, 0.721285,
		0.570965, -0.745279, 0.344322,
		35.966885, 35.081367, 38.395535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255608, 35.854904, 38.253181>,  <35.567207, 35.603062, 38.154507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255608, 35.854904, 38.253181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306797, 35.460289, 38.212448>,  <36.337509, 35.223522, 38.188007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306797, 35.460289, 38.212448>,  <36.255608, 35.854904, 38.253181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306797, 35.460289, 38.212448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822108, 0.162952, -0.545514,
		0.554763, -0.013907, 0.831892,
		0.127972, -0.986536, -0.101833,
		36.345188, 35.164330, 38.181900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946751, 35.692425, 38.283966>,  <36.255608, 35.854904, 38.253181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946751, 35.692425, 38.283966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804317, 35.362000, 38.109230>,  <36.718857, 35.163746, 38.004387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804317, 35.362000, 38.109230>,  <36.946751, 35.692425, 38.283966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804317, 35.362000, 38.109230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792265, -0.018995, -0.609881,
		0.495502, -0.563260, 0.661224,
		-0.356082, -0.826062, -0.436839,
		36.697495, 35.114182, 37.978180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564209, 35.155807, 38.176929>,  <36.946751, 35.692425, 38.283966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564209, 35.155807, 38.176929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281914, 35.047871, 37.914902>,  <37.112537, 34.983109, 37.757687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281914, 35.047871, 37.914902>,  <37.564209, 35.155807, 38.176929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281914, 35.047871, 37.914902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694015, -0.077489, -0.715778,
		0.142384, -0.959782, 0.241960,
		-0.705740, -0.269839, -0.655070,
		37.070190, 34.966919, 37.718380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948891, 34.732353, 37.715778>,  <37.564209, 35.155807, 38.176929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948891, 34.732353, 37.715778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604542, 34.753773, 37.513382>,  <37.397934, 34.766624, 37.391945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604542, 34.753773, 37.513382>,  <37.948891, 34.732353, 37.715778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604542, 34.753773, 37.513382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461204, -0.337912, -0.820430,
		-0.214917, -0.939653, 0.266201,
		-0.860873, 0.053551, -0.505995,
		37.346279, 34.769836, 37.361584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520367, 35.179985, 37.695629>,  <37.948891, 34.732353, 37.715778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520367, 35.179985, 37.695629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902161, 35.204884, 37.812302>,  <39.131237, 35.219822, 37.882305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902161, 35.204884, 37.812302>,  <38.520367, 35.179985, 37.695629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902161, 35.204884, 37.812302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282317, -0.126762, 0.950909,
		0.096168, -0.989978, -0.103418,
		0.954489, 0.062250, 0.291678,
		39.188507, 35.223557, 37.899803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498894, 34.735912, 38.221794>,  <38.520367, 35.179985, 37.695629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498894, 34.735912, 38.221794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821529, 34.968815, 38.262585>,  <39.015110, 35.108555, 38.287060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821529, 34.968815, 38.262585>,  <38.498894, 34.735912, 38.221794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821529, 34.968815, 38.262585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179031, 0.076220, 0.980886,
		0.563351, -0.809427, 0.165720,
		0.806587, 0.582253, 0.101974,
		39.063507, 35.143490, 38.293179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819042, 34.381138, 38.787155>,  <38.498894, 34.735912, 38.221794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819042, 34.381138, 38.787155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964298, 34.753651, 38.775494>,  <39.051453, 34.977158, 38.768497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964298, 34.753651, 38.775494>,  <38.819042, 34.381138, 38.787155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964298, 34.753651, 38.775494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093110, 0.067402, 0.993372,
		0.927071, -0.358018, 0.111187,
		0.363139, 0.931278, -0.029151,
		39.073238, 35.033035, 38.766747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195911, 34.351051, 39.379307>,  <38.819042, 34.381138, 38.787155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195911, 34.351051, 39.379307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132706, 34.735165, 39.287319>,  <39.094780, 34.965633, 39.232128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132706, 34.735165, 39.287319>,  <39.195911, 34.351051, 39.379307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132706, 34.735165, 39.287319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162247, 0.204480, 0.965331,
		0.974015, 0.189853, 0.123491,
		-0.158019, 0.960283, -0.229969,
		39.085300, 35.023251, 39.218327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554722, 34.750977, 39.761501>,  <39.195911, 34.351051, 39.379307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554722, 34.750977, 39.761501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267483, 35.007271, 39.652843>,  <39.095139, 35.161045, 39.587646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267483, 35.007271, 39.652843>,  <39.554722, 34.750977, 39.761501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267483, 35.007271, 39.652843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042723, 0.349010, 0.936145,
		0.694626, 0.683852, -0.223251,
		-0.718102, 0.640732, -0.271647,
		39.052052, 35.199490, 39.571350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648796, 35.223057, 40.238575>,  <39.554722, 34.750977, 39.761501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648796, 35.223057, 40.238575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278999, 35.310734, 40.113819>,  <39.057121, 35.363342, 40.038967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278999, 35.310734, 40.113819>,  <39.648796, 35.223057, 40.238575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278999, 35.310734, 40.113819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200950, 0.415031, 0.887338,
		0.323944, 0.883008, -0.339644,
		-0.924489, 0.219196, -0.311887,
		39.001652, 35.376492, 40.020252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554024, 35.954292, 40.329617>,  <39.648796, 35.223057, 40.238575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554024, 35.954292, 40.329617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188725, 35.791374, 40.325878>,  <38.969543, 35.693623, 40.323635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188725, 35.791374, 40.325878>,  <39.554024, 35.954292, 40.329617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188725, 35.791374, 40.325878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212767, 0.457260, 0.863507,
		-0.347424, 0.790587, -0.504251,
		-0.913251, -0.407291, -0.009348,
		38.914749, 35.669186, 40.323074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146641, 36.522682, 40.608540>,  <39.554024, 35.954292, 40.329617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146641, 36.522682, 40.608540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.945915, 36.176708, 40.605003>,  <38.825481, 35.969124, 40.602882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.945915, 36.176708, 40.605003>,  <39.146641, 36.522682, 40.608540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945915, 36.176708, 40.605003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529923, 0.299337, 0.793460,
		-0.683643, 0.402851, -0.608558,
		-0.501810, -0.864933, -0.008840,
		38.795372, 35.917229, 40.602352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419037, 36.705807, 40.770573>,  <39.146641, 36.522682, 40.608540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419037, 36.705807, 40.770573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480133, 36.318214, 40.848286>,  <38.516788, 36.085659, 40.894913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480133, 36.318214, 40.848286>,  <38.419037, 36.705807, 40.770573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480133, 36.318214, 40.848286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448576, 0.107198, 0.887293,
		-0.880597, -0.222675, -0.418289,
		0.152738, -0.968981, 0.194285,
		38.525955, 36.027519, 40.906570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859928, 36.469585, 41.161919>,  <38.419037, 36.705807, 40.770573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859928, 36.469585, 41.161919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092018, 36.154514, 41.244774>,  <38.231274, 35.965473, 41.294487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092018, 36.154514, 41.244774>,  <37.859928, 36.469585, 41.161919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092018, 36.154514, 41.244774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422029, -0.073247, 0.903619,
		-0.696585, -0.611722, -0.374921,
		0.580225, -0.787675, 0.207142,
		38.266087, 35.918213, 41.306915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421986, 35.919060, 41.347271>,  <37.859928, 36.469585, 41.161919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421986, 35.919060, 41.347271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778374, 35.810390, 41.492802>,  <37.992207, 35.745190, 41.580120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778374, 35.810390, 41.492802>,  <37.421986, 35.919060, 41.347271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778374, 35.810390, 41.492802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429050, -0.241403, 0.870426,
		-0.148637, -0.931623, -0.331641,
		0.890967, -0.271669, 0.363831,
		38.045662, 35.728889, 41.601952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291698, 35.240860, 41.698746>,  <37.421986, 35.919060, 41.347271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291698, 35.240860, 41.698746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620247, 35.380505, 41.879173>,  <37.817375, 35.464291, 41.987431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620247, 35.380505, 41.879173>,  <37.291698, 35.240860, 41.698746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620247, 35.380505, 41.879173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332330, -0.349804, 0.875896,
		0.463573, -0.869343, -0.171300,
		0.821375, 0.349114, 0.451068,
		37.866661, 35.485237, 42.014492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684994, 34.690422, 42.025719>,  <37.291698, 35.240860, 41.698746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684994, 34.690422, 42.025719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794346, 35.030338, 42.205990>,  <37.859955, 35.234287, 42.314152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794346, 35.030338, 42.205990>,  <37.684994, 34.690422, 42.025719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794346, 35.030338, 42.205990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173040, -0.417440, 0.892077,
		0.946214, -0.321861, 0.032930,
		0.273378, 0.849794, 0.450682,
		37.876358, 35.285278, 42.341194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291782, 34.582508, 42.635361>,  <37.684994, 34.690422, 42.025719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291782, 34.582508, 42.635361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062469, 34.905720, 42.689678>,  <37.924881, 35.099648, 42.722267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062469, 34.905720, 42.689678>,  <38.291782, 34.582508, 42.635361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062469, 34.905720, 42.689678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282008, -0.350188, 0.893219,
		0.769301, 0.473768, 0.428626,
		-0.573278, 0.808030, 0.135793,
		37.890488, 35.148129, 42.730415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013176, 34.346214, 43.293617>,  <38.291782, 34.582508, 42.635361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013176, 34.346214, 43.293617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.877720, 34.721458, 43.264565>,  <37.796448, 34.946606, 43.247131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.877720, 34.721458, 43.264565>,  <38.013176, 34.346214, 43.293617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877720, 34.721458, 43.264565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432322, -0.086568, 0.897554,
		0.835715, 0.335349, 0.434881,
		-0.338640, 0.938109, -0.072633,
		37.776127, 35.002892, 43.242775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377712, 34.907879, 43.738976>,  <38.013176, 34.346214, 43.293617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377712, 34.907879, 43.738976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994446, 34.980003, 43.650070>,  <37.764484, 35.023277, 43.596725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994446, 34.980003, 43.650070>,  <38.377712, 34.907879, 43.738976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994446, 34.980003, 43.650070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254943, -0.184789, 0.949135,
		0.130071, 0.966095, 0.223029,
		-0.958168, 0.180315, -0.222263,
		37.706997, 35.034100, 43.583393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077068, 35.244762, 44.363846>,  <38.377712, 34.907879, 43.738976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077068, 35.244762, 44.363846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742573, 35.140263, 44.170990>,  <37.541878, 35.077560, 44.055275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.742573, 35.140263, 44.170990>,  <38.077068, 35.244762, 44.363846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742573, 35.140263, 44.170990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420547, -0.258724, 0.869599,
		-0.351925, 0.929951, 0.106485,
		-0.836235, -0.261252, -0.482140,
		37.491703, 35.061886, 44.026348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395004, 35.540455, 44.634193>,  <38.077068, 35.244762, 44.363846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395004, 35.540455, 44.634193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.271885, 35.213112, 44.440056>,  <37.198013, 35.016708, 44.323574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.271885, 35.213112, 44.440056>,  <37.395004, 35.540455, 44.634193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271885, 35.213112, 44.440056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489442, -0.301253, 0.818348,
		-0.815910, 0.489429, -0.307814,
		-0.307794, -0.818355, -0.485342,
		37.179546, 34.967606, 44.294453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.678391, 35.488472, 44.710026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791233, 35.116325, 44.616360>,  <36.858940, 34.893036, 44.560162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791233, 35.116325, 44.616360>,  <36.678391, 35.488472, 44.710026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791233, 35.116325, 44.616360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651329, -0.364941, 0.665273,
		-0.704404, -0.035163, -0.708928,
		0.282110, -0.930366, -0.234163,
		36.875866, 34.837215, 44.546112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053944, 34.992596, 44.831707>,  <36.678391, 35.488472, 44.710026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053944, 34.992596, 44.831707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358822, 34.737526, 44.787098>,  <36.541748, 34.584484, 44.760334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358822, 34.737526, 44.787098>,  <36.053944, 34.992596, 44.831707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358822, 34.737526, 44.787098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419619, -0.617853, 0.664964,
		-0.492931, -0.460035, -0.738503,
		0.762193, -0.637672, -0.111520,
		36.587479, 34.546223, 44.753643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729469, 34.404896, 44.682537>,  <36.053944, 34.992596, 44.831707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729469, 34.404896, 44.682537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.082504, 34.307266, 44.843266>,  <36.294327, 34.248688, 44.939701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.082504, 34.307266, 44.843266>,  <35.729469, 34.404896, 44.682537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082504, 34.307266, 44.843266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462690, -0.602488, 0.650328,
		0.083360, -0.759891, -0.644683,
		0.882592, -0.244078, 0.401817,
		36.347282, 34.234043, 44.963810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635902, 33.784882, 44.957867>,  <35.729469, 34.404896, 44.682537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635902, 33.784882, 44.957867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964931, 33.905449, 45.150745>,  <36.162350, 33.977791, 45.266472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964931, 33.905449, 45.150745>,  <35.635902, 33.784882, 44.957867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964931, 33.905449, 45.150745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282705, -0.518988, 0.806678,
		0.493402, -0.799874, -0.341696,
		0.822577, 0.301417, 0.482198,
		36.211704, 33.995872, 45.295406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693554, 33.124702, 45.335075>,  <35.635902, 33.784882, 44.957867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693554, 33.124702, 45.335075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914780, 33.411522, 45.504761>,  <36.047516, 33.583614, 45.606571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914780, 33.411522, 45.504761>,  <35.693554, 33.124702, 45.335075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914780, 33.411522, 45.504761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330474, -0.278598, 0.901759,
		0.764791, -0.638925, 0.082883,
		0.553065, 0.717048, 0.424217,
		36.080700, 33.626637, 45.632027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069645, 32.741501, 45.819801>,  <35.693554, 33.124702, 45.335075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069645, 32.741501, 45.819801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050598, 33.129715, 45.914280>,  <36.039169, 33.362644, 45.970966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050598, 33.129715, 45.914280>,  <36.069645, 32.741501, 45.819801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050598, 33.129715, 45.914280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330278, -0.238465, 0.913264,
		0.942682, -0.034528, 0.331901,
		-0.047613, 0.970537, 0.236200,
		36.036316, 33.420876, 45.985142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523331, 32.735962, 46.388767>,  <36.069645, 32.741501, 45.819801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523331, 32.735962, 46.388767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300823, 33.067917, 46.405998>,  <36.167320, 33.267090, 46.416336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300823, 33.067917, 46.405998>,  <36.523331, 32.735962, 46.388767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300823, 33.067917, 46.405998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145721, -0.148447, 0.978125,
		0.818129, 0.537819, 0.203508,
		-0.556265, 0.829888, 0.043077,
		36.133945, 33.316883, 46.418922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677574, 33.058502, 46.994511>,  <36.523331, 32.735962, 46.388767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677574, 33.058502, 46.994511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330143, 33.249638, 46.941982>,  <36.121685, 33.364319, 46.910465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330143, 33.249638, 46.941982>,  <36.677574, 33.058502, 46.994511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330143, 33.249638, 46.941982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211895, -0.118571, 0.970073,
		0.447971, 0.870407, 0.204240,
		-0.868575, 0.477842, -0.131318,
		36.069569, 33.392990, 46.902588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578423, 33.732586, 47.454330>,  <36.677574, 33.058502, 46.994511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578423, 33.732586, 47.454330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.212807, 33.606308, 47.352459>,  <35.993435, 33.530540, 47.291336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.212807, 33.606308, 47.352459>,  <36.578423, 33.732586, 47.454330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212807, 33.606308, 47.352459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209148, -0.171163, 0.962788,
		-0.347536, 0.933296, 0.090424,
		-0.914043, -0.315692, -0.254682,
		35.938595, 33.511600, 47.276054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170269, 34.151661, 47.798016>,  <36.578423, 33.732586, 47.454330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170269, 34.151661, 47.798016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925247, 33.845715, 47.718266>,  <35.778233, 33.662148, 47.670414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925247, 33.845715, 47.718266>,  <36.170269, 34.151661, 47.798016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925247, 33.845715, 47.718266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130084, -0.151252, 0.979898,
		-0.779649, 0.626179, -0.006846,
		-0.612557, -0.764868, -0.199380,
		35.741482, 33.616253, 47.658451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546864, 34.217022, 48.238026>,  <36.170269, 34.151661, 47.798016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546864, 34.217022, 48.238026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533127, 33.829235, 48.140896>,  <35.524887, 33.596565, 48.082619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533127, 33.829235, 48.140896>,  <35.546864, 34.217022, 48.238026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533127, 33.829235, 48.140896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250844, -0.226828, 0.941077,
		-0.967418, 0.093225, -0.235395,
		-0.034338, -0.969463, -0.242823,
		35.522827, 33.538395, 48.068050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965809, 33.979153, 48.483898>,  <35.546864, 34.217022, 48.238026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965809, 33.979153, 48.483898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168312, 33.636822, 48.441444>,  <35.289814, 33.431423, 48.415974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168312, 33.636822, 48.441444>,  <34.965809, 33.979153, 48.483898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168312, 33.636822, 48.441444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207944, -0.240583, 0.948093,
		-0.836934, -0.457914, -0.299761,
		0.506262, -0.855824, -0.106132,
		35.320190, 33.380074, 48.409603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577770, 33.482231, 48.640610>,  <34.965809, 33.979153, 48.483898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577770, 33.482231, 48.640610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925083, 33.291336, 48.694748>,  <35.133472, 33.176800, 48.727230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925083, 33.291336, 48.694748>,  <34.577770, 33.482231, 48.640610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925083, 33.291336, 48.694748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281446, -0.249259, 0.926638,
		-0.408493, -0.842680, -0.350746,
		0.868286, -0.477242, 0.135349,
		35.185570, 33.148163, 48.735352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367123, 32.857513, 48.790722>,  <34.577770, 33.482231, 48.640610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367123, 32.857513, 48.790722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744225, 32.855003, 48.924095>,  <34.970486, 32.853497, 49.004120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744225, 32.855003, 48.924095>,  <34.367123, 32.857513, 48.790722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744225, 32.855003, 48.924095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317661, -0.321250, 0.892127,
		0.101520, -0.946974, -0.304852,
		0.942754, -0.006271, 0.333430,
		35.027050, 32.853123, 49.024124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453548, 32.253670, 49.223293>,  <34.367123, 32.857513, 48.790722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453548, 32.253670, 49.223293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736267, 32.502857, 49.357365>,  <34.905899, 32.652370, 49.437805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736267, 32.502857, 49.357365>,  <34.453548, 32.253670, 49.223293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736267, 32.502857, 49.357365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247540, -0.226045, 0.942140,
		0.662690, -0.748873, -0.005558,
		0.706800, 0.622970, 0.335174,
		34.948307, 32.689747, 49.457916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893166, 31.878330, 49.617718>,  <34.453548, 32.253670, 49.223293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893166, 31.878330, 49.617718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.939537, 32.258030, 49.734669>,  <34.967358, 32.485851, 49.804840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.939537, 32.258030, 49.734669>,  <34.893166, 31.878330, 49.617718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939537, 32.258030, 49.734669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181224, -0.269207, 0.945878,
		0.976585, -0.162637, 0.140819,
		0.115925, 0.949250, 0.292377,
		34.974316, 32.542805, 49.822380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312172, 31.790546, 50.224602>,  <34.893166, 31.878330, 49.617718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312172, 31.790546, 50.224602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162933, 32.159523, 50.264393>,  <35.073391, 32.380909, 50.288269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162933, 32.159523, 50.264393>,  <35.312172, 31.790546, 50.224602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162933, 32.159523, 50.264393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203559, -0.185994, 0.961234,
		0.905186, 0.338384, 0.257166,
		-0.373097, 0.922444, 0.099478,
		35.051003, 32.436256, 50.294235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738880, 32.112511, 50.741169>,  <35.312172, 31.790546, 50.224602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738880, 32.112511, 50.741169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388100, 32.302380, 50.711140>,  <35.177631, 32.416302, 50.693123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388100, 32.302380, 50.711140>,  <35.738880, 32.112511, 50.741169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388100, 32.302380, 50.711140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149222, -0.120472, 0.981437,
		0.456822, 0.871876, 0.176480,
		-0.876953, 0.474677, -0.075069,
		35.125015, 32.444782, 50.688618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849243, 32.588963, 51.140217>,  <35.738880, 32.112511, 50.741169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849243, 32.588963, 51.140217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451870, 32.554291, 51.110348>,  <35.213448, 32.533489, 51.092426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451870, 32.554291, 51.110348>,  <35.849243, 32.588963, 51.140217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451870, 32.554291, 51.110348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078241, 0.038550, 0.996189,
		-0.083466, 0.995491, -0.045078,
		-0.993434, -0.086675, -0.074671,
		35.153839, 32.528290, 51.087948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570721, 33.216900, 51.444752>,  <35.849243, 32.588963, 51.140217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570721, 33.216900, 51.444752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272179, 32.950680, 51.445530>,  <35.093056, 32.790947, 51.445995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272179, 32.950680, 51.445530>,  <35.570721, 33.216900, 51.444752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272179, 32.950680, 51.445530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268592, 0.303871, 0.914068,
		-0.608947, 0.681695, -0.405556,
		-0.746352, -0.665548, 0.001943,
		35.048271, 32.751015, 51.446114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166538, 33.390167, 51.965530>,  <35.570721, 33.216900, 51.444752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166538, 33.390167, 51.965530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993431, 33.032787, 51.917446>,  <34.889568, 32.818359, 51.888596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993431, 33.032787, 51.917446>,  <35.166538, 33.390167, 51.965530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993431, 33.032787, 51.917446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206153, -0.031735, 0.978005,
		-0.877617, 0.448032, -0.170454,
		-0.432768, -0.893454, -0.120214,
		34.863602, 32.764751, 51.881382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618374, 33.367317, 52.286884>,  <35.166538, 33.390167, 51.965530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618374, 33.367317, 52.286884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.718826, 32.980648, 52.266949>,  <34.779099, 32.748646, 52.254990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.718826, 32.980648, 52.266949>,  <34.618374, 33.367317, 52.286884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718826, 32.980648, 52.266949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056200, -0.065959, 0.996238,
		-0.966321, -0.247381, -0.070891,
		0.251127, -0.966671, -0.049834,
		34.794163, 32.690647, 52.251999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141972, 32.925869, 52.719402>,  <34.618374, 33.367317, 52.286884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141972, 32.925869, 52.719402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508625, 32.769077, 52.688099>,  <34.728619, 32.675003, 52.669319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508625, 32.769077, 52.688099>,  <34.141972, 32.925869, 52.719402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508625, 32.769077, 52.688099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080926, -0.009735, 0.996673,
		-0.391442, -0.919921, 0.022798,
		0.916637, -0.391984, -0.078256,
		34.783615, 32.651482, 52.664623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662655, 33.455162, 52.416138>,  <34.141972, 32.925869, 52.719402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662655, 33.455162, 52.416138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414139, 33.189384, 52.582275>,  <33.265030, 33.029919, 52.681957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414139, 33.189384, 52.582275>,  <33.662655, 33.455162, 52.416138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414139, 33.189384, 52.582275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484242, -0.091159, -0.870172,
		0.616044, -0.741756, -0.265117,
		-0.621288, -0.664445, 0.415348,
		33.227753, 32.990051, 52.706879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727375, 32.773575, 52.112400>,  <33.662655, 33.455162, 52.416138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727375, 32.773575, 52.112400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364624, 32.850708, 52.262276>,  <33.146973, 32.896988, 52.352200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364624, 32.850708, 52.262276>,  <33.727375, 32.773575, 52.112400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364624, 32.850708, 52.262276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410248, -0.200843, -0.889583,
		-0.096284, -0.960458, 0.261248,
		-0.906877, 0.192829, 0.374688,
		33.092560, 32.908558, 52.374683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316948, 32.204712, 51.994167>,  <33.727375, 32.773575, 52.112400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316948, 32.204712, 51.994167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030560, 32.481255, 52.032963>,  <32.858727, 32.647182, 52.056240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030560, 32.481255, 52.032963>,  <33.316948, 32.204712, 51.994167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030560, 32.481255, 52.032963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299655, -0.178858, -0.937132,
		-0.630548, -0.700023, 0.335227,
		-0.715972, 0.691359, 0.096987,
		32.815769, 32.688663, 52.062057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652100, 31.926491, 51.770874>,  <33.316948, 32.204712, 51.994167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652100, 31.926491, 51.770874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581356, 32.320168, 51.774654>,  <32.538910, 32.556374, 51.776920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.581356, 32.320168, 51.774654>,  <32.652100, 31.926491, 51.770874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581356, 32.320168, 51.774654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404133, -0.063864, -0.912468,
		-0.897439, -0.165200, 0.409039,
		-0.176863, 0.984190, 0.009449,
		32.528297, 32.615425, 51.777489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933460, 31.993185, 51.552334>,  <32.652100, 31.926491, 51.770874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933460, 31.993185, 51.552334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109447, 32.347794, 51.495045>,  <32.215038, 32.560558, 51.460670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109447, 32.347794, 51.495045>,  <31.933460, 31.993185, 51.552334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109447, 32.347794, 51.495045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417531, 0.060742, -0.906630,
		-0.795046, 0.458687, 0.396874,
		0.439966, 0.886520, -0.143223,
		32.241436, 32.613750, 51.452076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422794, 32.417217, 51.164703>,  <31.933460, 31.993185, 51.552334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422794, 32.417217, 51.164703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.772676, 32.593330, 51.083668>,  <31.982607, 32.698997, 51.035046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.772676, 32.593330, 51.083668>,  <31.422794, 32.417217, 51.164703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772676, 32.593330, 51.083668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206541, -0.039512, -0.977640,
		-0.438439, 0.896991, 0.056374,
		0.874707, 0.440279, -0.202589,
		32.035088, 32.725414, 51.022892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292494, 32.913773, 50.598400>,  <31.422794, 32.417217, 51.164703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292494, 32.913773, 50.598400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690411, 32.874039, 50.607498>,  <31.929161, 32.850197, 50.612957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690411, 32.874039, 50.607498>,  <31.292494, 32.913773, 50.598400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690411, 32.874039, 50.607498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044058, 0.217936, -0.974968,
		0.091893, 0.970895, 0.221178,
		0.994794, -0.099338, 0.022749,
		31.988850, 32.844238, 50.614323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514660, 33.429604, 50.062813>,  <31.292494, 32.913773, 50.598400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514660, 33.429604, 50.062813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841908, 33.201344, 50.091213>,  <32.038258, 33.064388, 50.108253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841908, 33.201344, 50.091213>,  <31.514660, 33.429604, 50.062813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841908, 33.201344, 50.091213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122313, 0.052041, -0.991126,
		0.561889, 0.819544, 0.112373,
		0.818120, -0.570648, 0.071000,
		32.087345, 33.030148, 50.112514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967110, 33.776615, 49.744526>,  <31.514660, 33.429604, 50.062813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967110, 33.776615, 49.744526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113392, 33.404797, 49.725792>,  <32.201160, 33.181705, 49.714554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113392, 33.404797, 49.725792>,  <31.967110, 33.776615, 49.744526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113392, 33.404797, 49.725792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252563, 0.147543, -0.956265,
		0.895807, 0.337885, 0.288728,
		0.365708, -0.929551, -0.046833,
		32.223103, 33.125931, 49.711742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612423, 33.793018, 49.380997>,  <31.967110, 33.776615, 49.744526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612423, 33.793018, 49.380997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.574707, 33.395794, 49.352863>,  <32.552078, 33.157459, 49.335983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.574707, 33.395794, 49.352863>,  <32.612423, 33.793018, 49.380997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574707, 33.395794, 49.352863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456968, 0.019600, -0.889267,
		0.884472, -0.115987, 0.451947,
		-0.094285, -0.993057, -0.070338,
		32.546421, 33.097878, 49.331760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294327, 33.477520, 49.206902>,  <32.612423, 33.793018, 49.380997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294327, 33.477520, 49.206902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013168, 33.222618, 49.080505>,  <32.844475, 33.069679, 49.004669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013168, 33.222618, 49.080505>,  <33.294327, 33.477520, 49.206902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013168, 33.222618, 49.080505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392086, 0.023530, -0.919627,
		0.593469, -0.770296, 0.233319,
		-0.702896, -0.637252, -0.315986,
		32.802299, 33.031441, 48.985710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637794, 32.964565, 48.885853>,  <33.294327, 33.477520, 49.206902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637794, 32.964565, 48.885853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273804, 32.910908, 48.728912>,  <33.055408, 32.878716, 48.634747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273804, 32.910908, 48.728912>,  <33.637794, 32.964565, 48.885853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273804, 32.910908, 48.728912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398960, -0.025417, -0.916616,
		0.112983, -0.990636, 0.076646,
		-0.909981, -0.134141, -0.392353,
		33.000809, 32.870667, 48.611206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771759, 32.656464, 48.340160>,  <33.637794, 32.964565, 48.885853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771759, 32.656464, 48.340160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404896, 32.797863, 48.266556>,  <33.184780, 32.882702, 48.222393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404896, 32.797863, 48.266556>,  <33.771759, 32.656464, 48.340160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404896, 32.797863, 48.266556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257449, 0.173086, -0.950664,
		-0.304212, -0.919281, -0.249756,
		-0.917156, 0.353503, -0.184013,
		33.129749, 32.903915, 48.211353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672176, 32.423283, 47.676620>,  <33.771759, 32.656464, 48.340160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672176, 32.423283, 47.676620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406693, 32.718285, 47.726555>,  <33.247402, 32.895287, 47.756516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406693, 32.718285, 47.726555>,  <33.672176, 32.423283, 47.676620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406693, 32.718285, 47.726555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108081, 0.259696, -0.959623,
		-0.740144, -0.623415, -0.252072,
		-0.663705, 0.737504, 0.124833,
		33.207581, 32.939537, 47.764004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076283, 32.267834, 47.222771>,  <33.672176, 32.423283, 47.676620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076283, 32.267834, 47.222771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118084, 32.659809, 47.290646>,  <33.143166, 32.894997, 47.331371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.118084, 32.659809, 47.290646>,  <33.076283, 32.267834, 47.222771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118084, 32.659809, 47.290646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173907, 0.149992, -0.973272,
		-0.979202, 0.131217, -0.154745,
		0.104500, 0.979941, 0.169692,
		33.149433, 32.953793, 47.341553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794884, 32.524338, 46.677639>,  <33.076283, 32.267834, 47.222771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794884, 32.524338, 46.677639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003078, 32.835178, 46.819180>,  <33.127995, 33.021683, 46.904102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003078, 32.835178, 46.819180>,  <32.794884, 32.524338, 46.677639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003078, 32.835178, 46.819180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045199, 0.388749, -0.920234,
		-0.852675, 0.494959, 0.167213,
		0.520482, 0.777103, 0.353848,
		33.159222, 33.068310, 46.925335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467377, 33.127705, 46.409126>,  <32.794884, 32.524338, 46.677639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467377, 33.127705, 46.409126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844742, 33.218117, 46.506187>,  <33.071159, 33.272366, 46.564423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844742, 33.218117, 46.506187>,  <32.467377, 33.127705, 46.409126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844742, 33.218117, 46.506187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086359, 0.539011, -0.837860,
		-0.320176, 0.811403, 0.488991,
		0.943414, 0.226034, 0.242651,
		33.127766, 33.285927, 46.578983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520370, 33.817677, 46.178326>,  <32.467377, 33.127705, 46.409126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520370, 33.817677, 46.178326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899704, 33.695957, 46.214237>,  <33.127304, 33.622925, 46.235786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899704, 33.695957, 46.214237>,  <32.520370, 33.817677, 46.178326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899704, 33.695957, 46.214237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280665, 0.672673, -0.684645,
		0.147944, 0.674472, 0.723326,
		0.948335, -0.304301, 0.089783,
		33.184204, 33.604668, 46.241173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879864, 34.399429, 46.044827>,  <32.520370, 33.817677, 46.178326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879864, 34.399429, 46.044827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126198, 34.089520, 45.987591>,  <33.273998, 33.903576, 45.953251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126198, 34.089520, 45.987591>,  <32.879864, 34.399429, 46.044827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126198, 34.089520, 45.987591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294938, 0.395113, -0.869998,
		0.730585, 0.493575, 0.471835,
		0.615838, -0.774770, -0.143090,
		33.310947, 33.857090, 45.944664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482384, 34.695648, 45.739983>,  <32.879864, 34.399429, 46.044827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482384, 34.695648, 45.739983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.505196, 34.304955, 45.657284>,  <33.518883, 34.070538, 45.607666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.505196, 34.304955, 45.657284>,  <33.482384, 34.695648, 45.739983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505196, 34.304955, 45.657284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326953, 0.213933, -0.920508,
		0.943318, -0.015096, 0.331546,
		0.057032, -0.976732, -0.206742,
		33.522305, 34.011936, 45.595261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185669, 34.631523, 45.552776>,  <33.482384, 34.695648, 45.739983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185669, 34.631523, 45.552776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979469, 34.328838, 45.391953>,  <33.855751, 34.147228, 45.295460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979469, 34.328838, 45.391953>,  <34.185669, 34.631523, 45.552776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979469, 34.328838, 45.391953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443520, 0.165844, -0.880787,
		0.733178, -0.632367, 0.250123,
		-0.515499, -0.756708, -0.402060,
		33.824818, 34.101826, 45.271336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.750416, 42.601120, 35.083618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.808479, 42.834221, 35.403450>,  <43.843319, 42.974079, 35.595348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.808479, 42.834221, 35.403450>,  <43.750416, 42.601120, 35.083618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808479, 42.834221, 35.403450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332329, -0.789909, 0.515366,
		0.931926, 0.190914, -0.308328,
		0.145160, 0.582749, 0.799582,
		43.852028, 43.009045, 35.643326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482048, 42.577984, 35.403828>,  <43.750416, 42.601120, 35.083618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482048, 42.577984, 35.403828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192467, 42.657249, 35.668137>,  <44.018719, 42.704811, 35.826721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192467, 42.657249, 35.668137>,  <44.482048, 42.577984, 35.403828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192467, 42.657249, 35.668137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285220, -0.786163, 0.548267,
		0.628123, 0.585386, 0.512625,
		-0.723955, 0.198168, 0.660771,
		43.975281, 42.716702, 35.866367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804310, 42.386978, 36.056091>,  <44.482048, 42.577984, 35.403828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804310, 42.386978, 36.056091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410259, 42.420761, 36.115940>,  <44.173828, 42.441029, 36.151848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410259, 42.420761, 36.115940>,  <44.804310, 42.386978, 36.056091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410259, 42.420761, 36.115940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014781, -0.825956, 0.563540,
		0.171172, 0.557372, 0.812426,
		-0.985130, 0.084454, 0.149619,
		44.114719, 42.446098, 36.160828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700428, 42.138702, 36.641232>,  <44.804310, 42.386978, 36.056091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700428, 42.138702, 36.641232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350159, 42.102837, 36.451427>,  <44.139996, 42.081318, 36.337547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350159, 42.102837, 36.451427>,  <44.700428, 42.138702, 36.641232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350159, 42.102837, 36.451427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146588, -0.886890, 0.438108,
		-0.460118, 0.453196, 0.763482,
		-0.875673, -0.089664, -0.474507,
		44.087456, 42.075939, 36.309074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230915, 41.987713, 37.169170>,  <44.700428, 42.138702, 36.641232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230915, 41.987713, 37.169170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.073708, 41.839325, 36.832619>,  <43.979385, 41.750294, 36.630688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.073708, 41.839325, 36.832619>,  <44.230915, 41.987713, 37.169170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073708, 41.839325, 36.832619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090913, -0.894852, 0.437007,
		-0.915026, 0.248243, 0.317966,
		-0.393017, -0.370965, -0.841381,
		43.955803, 41.728035, 36.580204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712444, 41.595924, 37.448059>,  <44.230915, 41.987713, 37.169170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712444, 41.595924, 37.448059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.733929, 41.452942, 37.075104>,  <43.746819, 41.367153, 36.851330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.733929, 41.452942, 37.075104>,  <43.712444, 41.595924, 37.448059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733929, 41.452942, 37.075104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217435, -0.915515, 0.338459,
		-0.974596, 0.184554, -0.126898,
		0.053713, -0.357453, -0.932385,
		43.750042, 41.345707, 36.795387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141609, 41.132030, 37.331791>,  <43.712444, 41.595924, 37.448059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141609, 41.132030, 37.331791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.397026, 41.026234, 37.042706>,  <43.550278, 40.962757, 36.869255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.397026, 41.026234, 37.042706>,  <43.141609, 41.132030, 37.331791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397026, 41.026234, 37.042706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120415, -0.961858, 0.245621,
		-0.760109, -0.069814, -0.646034,
		0.638541, -0.264491, -0.722710,
		43.588589, 40.946888, 36.825893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825787, 40.528374, 36.963417>,  <43.141609, 41.132030, 37.331791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825787, 40.528374, 36.963417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210999, 40.530457, 36.855675>,  <43.442123, 40.531708, 36.791027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210999, 40.530457, 36.855675>,  <42.825787, 40.528374, 36.963417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210999, 40.530457, 36.855675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006367, -0.999974, 0.003434,
		-0.269335, -0.005022, -0.963034,
		0.963026, 0.005207, -0.269359,
		43.499905, 40.532017, 36.774868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916271, 40.144062, 36.350410>,  <42.825787, 40.528374, 36.963417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916271, 40.144062, 36.350410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278473, 40.103436, 36.515213>,  <43.495792, 40.079060, 36.614094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278473, 40.103436, 36.515213>,  <42.916271, 40.144062, 36.350410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278473, 40.103436, 36.515213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015726, -0.978299, -0.206598,
		0.424044, 0.180596, -0.887452,
		0.905505, -0.101563, 0.412002,
		43.550125, 40.072968, 36.638813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274422, 39.679497, 35.935421>,  <42.916271, 40.144062, 36.350410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274422, 39.679497, 35.935421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443443, 39.680847, 36.297955>,  <43.544857, 39.681660, 36.515472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443443, 39.680847, 36.297955>,  <43.274422, 39.679497, 35.935421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443443, 39.680847, 36.297955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021885, -0.999663, 0.013931,
		0.906072, -0.025722, -0.422341,
		0.422558, 0.003380, 0.906330,
		43.570210, 39.681862, 36.569855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875343, 39.218819, 35.911236>,  <43.274422, 39.679497, 35.935421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875343, 39.218819, 35.911236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777817, 39.250168, 36.297897>,  <43.719299, 39.268978, 36.529892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777817, 39.250168, 36.297897>,  <43.875343, 39.218819, 35.911236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777817, 39.250168, 36.297897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025974, -0.995845, 0.087287,
		0.969473, 0.046390, 0.240770,
		-0.243819, 0.078369, 0.966649,
		43.704670, 39.273678, 36.587891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235287, 38.664654, 36.100246>,  <43.875343, 39.218819, 35.911236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235287, 38.664654, 36.100246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.024609, 38.741142, 36.431553>,  <43.898201, 38.787037, 36.630337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.024609, 38.741142, 36.431553>,  <44.235287, 38.664654, 36.100246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024609, 38.741142, 36.431553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078847, -0.959179, 0.271586,
		0.846388, 0.208350, 0.490121,
		-0.526699, 0.191222, 0.828265,
		43.866600, 38.798508, 36.680031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566078, 38.377708, 36.718021>,  <44.235287, 38.664654, 36.100246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566078, 38.377708, 36.718021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.186928, 38.404732, 36.842587>,  <43.959438, 38.420948, 36.917324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.186928, 38.404732, 36.842587>,  <44.566078, 38.377708, 36.718021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186928, 38.404732, 36.842587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083773, -0.890052, 0.448096,
		0.307444, 0.450825, 0.837995,
		-0.947871, 0.067563, 0.311408,
		43.902565, 38.424999, 36.936008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551559, 38.158875, 37.496449>,  <44.566078, 38.377708, 36.718021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551559, 38.158875, 37.496449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174885, 38.129974, 37.364990>,  <43.948879, 38.112637, 37.286114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174885, 38.129974, 37.364990>,  <44.551559, 38.158875, 37.496449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174885, 38.129974, 37.364990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069695, -0.913622, 0.400547,
		-0.329197, 0.400095, 0.855309,
		-0.941685, -0.072248, -0.328647,
		43.892380, 38.108299, 37.266396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139191, 37.757420, 38.045109>,  <44.551559, 38.158875, 37.496449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139191, 37.757420, 38.045109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953121, 37.711117, 37.694061>,  <43.841480, 37.683334, 37.483433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953121, 37.711117, 37.694061>,  <44.139191, 37.757420, 38.045109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953121, 37.711117, 37.694061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056616, -0.985493, 0.159992,
		-0.883409, 0.124111, 0.451869,
		-0.465171, -0.115755, -0.877620,
		43.813568, 37.676392, 37.430775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737617, 37.137886, 38.163750>,  <44.139191, 37.757420, 38.045109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737617, 37.137886, 38.163750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706882, 37.189060, 37.768230>,  <43.688442, 37.219765, 37.530918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706882, 37.189060, 37.768230>,  <43.737617, 37.137886, 38.163750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706882, 37.189060, 37.768230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000613, -0.991739, -0.128266,
		-0.997043, -0.009249, 0.076280,
		-0.076837, 0.127933, -0.988802,
		43.683830, 37.227440, 37.471588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234913, 36.630253, 37.933010>,  <43.737617, 37.137886, 38.163750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234913, 36.630253, 37.933010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.442348, 36.703197, 37.598869>,  <43.566811, 36.746964, 37.398384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.442348, 36.703197, 37.598869>,  <43.234913, 36.630253, 37.933010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442348, 36.703197, 37.598869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047149, -0.969406, -0.240892,
		-0.853723, 0.164310, -0.494125,
		0.518589, 0.182357, -0.835351,
		43.597923, 36.757904, 37.348263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953300, 36.183376, 37.351734>,  <43.234913, 36.630253, 37.933010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953300, 36.183376, 37.351734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308208, 36.297577, 37.206829>,  <43.521152, 36.366096, 37.119884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308208, 36.297577, 37.206829>,  <42.953300, 36.183376, 37.351734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308208, 36.297577, 37.206829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108887, -0.892861, -0.436970,
		-0.448206, 0.348267, -0.823300,
		0.887274, 0.285500, -0.362264,
		43.574390, 36.383228, 37.098148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895164, 36.204506, 36.585194>,  <42.953300, 36.183376, 37.351734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895164, 36.204506, 36.585194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278770, 36.183273, 36.696526>,  <43.508934, 36.170532, 36.763325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278770, 36.183273, 36.696526>,  <42.895164, 36.204506, 36.585194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278770, 36.183273, 36.696526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088401, -0.877205, -0.471908,
		0.269203, 0.477173, -0.836562,
		0.959018, -0.053086, 0.278329,
		43.566475, 36.167347, 36.780025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231907, 36.023586, 36.037502>,  <42.895164, 36.204506, 36.585194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231907, 36.023586, 36.037502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473492, 35.917233, 36.338047>,  <43.618443, 35.853420, 36.518372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473492, 35.917233, 36.338047>,  <43.231907, 36.023586, 36.037502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473492, 35.917233, 36.338047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165973, -0.880091, -0.444853,
		0.779542, 0.393378, -0.487410,
		0.603960, -0.265884, 0.751357,
		43.654678, 35.837467, 36.563454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866047, 35.593647, 35.710587>,  <43.231907, 36.023586, 36.037502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866047, 35.593647, 35.710587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856174, 35.514763, 36.102608>,  <43.850250, 35.467430, 36.337818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856174, 35.514763, 36.102608>,  <43.866047, 35.593647, 35.710587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856174, 35.514763, 36.102608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034301, -0.979938, -0.196328,
		0.999107, 0.028771, 0.030953,
		-0.024684, -0.197214, 0.980050,
		43.848770, 35.455597, 36.396622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041397, 35.024529, 35.206337>,  <43.866047, 35.593647, 35.710587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041397, 35.024529, 35.206337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.400902, 34.956108, 35.044857>,  <44.616604, 34.915058, 34.947971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.400902, 34.956108, 35.044857>,  <44.041397, 35.024529, 35.206337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400902, 34.956108, 35.044857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144811, 0.984897, -0.094913,
		0.413834, 0.026844, 0.909956,
		0.898761, -0.171049, -0.403697,
		44.670528, 34.904793, 34.923748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637218, 35.382267, 35.581406>,  <44.041397, 35.024529, 35.206337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637218, 35.382267, 35.581406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802757, 35.279671, 35.232018>,  <44.902081, 35.218113, 35.022385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802757, 35.279671, 35.232018>,  <44.637218, 35.382267, 35.581406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802757, 35.279671, 35.232018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431182, 0.900264, -0.060061,
		0.801754, -0.351767, 0.483167,
		0.413850, -0.256487, -0.873466,
		44.926914, 35.202724, 34.969978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225189, 35.811565, 35.576950>,  <44.637218, 35.382267, 35.581406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225189, 35.811565, 35.576950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147575, 35.726826, 35.193810>,  <45.101006, 35.675983, 34.963924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147575, 35.726826, 35.193810>,  <45.225189, 35.811565, 35.576950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147575, 35.726826, 35.193810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317793, 0.910177, -0.265680,
		0.928093, -0.355950, -0.109286,
		-0.194038, -0.211846, -0.957847,
		45.089363, 35.663273, 34.906456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792267, 36.008869, 35.176678>,  <45.225189, 35.811565, 35.576950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792267, 36.008869, 35.176678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464855, 35.989590, 34.947704>,  <45.268406, 35.978024, 34.810318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464855, 35.989590, 34.947704>,  <45.792267, 36.008869, 35.176678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464855, 35.989590, 34.947704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217024, 0.896683, -0.385825,
		0.531889, -0.440042, -0.723504,
		-0.818533, -0.048198, -0.572435,
		45.219296, 35.975132, 34.775974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032459, 36.202988, 34.492523>,  <45.792267, 36.008869, 35.176678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032459, 36.202988, 34.492523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.640945, 36.274189, 34.533108>,  <45.406036, 36.316910, 34.557457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.640945, 36.274189, 34.533108>,  <46.032459, 36.202988, 34.492523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640945, 36.274189, 34.533108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110625, 0.875940, -0.469564,
		-0.172458, -0.448379, -0.877049,
		-0.978785, 0.178004, 0.101461,
		45.347309, 36.327591, 34.563545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903217, 36.765640, 34.013599>,  <46.032459, 36.202988, 34.492523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903217, 36.765640, 34.013599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571850, 36.755672, 34.237423>,  <45.373032, 36.749691, 34.371716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571850, 36.755672, 34.237423>,  <45.903217, 36.765640, 34.013599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571850, 36.755672, 34.237423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149630, 0.972550, -0.178207,
		-0.539758, -0.231356, -0.809404,
		-0.828416, -0.024922, 0.559559,
		45.323326, 36.748196, 34.405293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439579, 36.962093, 33.545563>,  <45.903217, 36.765640, 34.013599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439579, 36.962093, 33.545563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.264889, 37.046844, 33.895275>,  <45.160072, 37.097694, 34.105103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.264889, 37.046844, 33.895275>,  <45.439579, 36.962093, 33.545563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264889, 37.046844, 33.895275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048357, 0.964933, -0.258004,
		-0.898293, -0.154955, -0.411168,
		-0.436728, 0.211880, 0.874285,
		45.133869, 37.110409, 34.157562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708740, 37.409103, 33.493153>,  <45.439579, 36.962093, 33.545563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708740, 37.409103, 33.493153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867672, 37.465164, 33.855915>,  <44.963032, 37.498802, 34.073574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867672, 37.465164, 33.855915>,  <44.708740, 37.409103, 33.493153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867672, 37.465164, 33.855915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030921, 0.989752, -0.139410,
		-0.917154, 0.027349, 0.397594,
		0.397332, 0.140155, 0.906909,
		44.986870, 37.507210, 34.127987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273224, 37.863995, 33.924858>,  <44.708740, 37.409103, 33.493153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273224, 37.863995, 33.924858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652500, 37.876041, 34.051369>,  <44.880066, 37.883270, 34.127274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652500, 37.876041, 34.051369>,  <44.273224, 37.863995, 33.924858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652500, 37.876041, 34.051369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037384, 0.999158, 0.016930,
		-0.315498, -0.027876, 0.948517,
		0.948189, 0.030118, 0.316274,
		44.936958, 37.885078, 34.146252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332859, 38.532166, 33.988415>,  <44.273224, 37.863995, 33.924858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332859, 38.532166, 33.988415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700832, 38.397942, 34.069534>,  <44.921616, 38.317406, 34.118206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700832, 38.397942, 34.069534>,  <44.332859, 38.532166, 33.988415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700832, 38.397942, 34.069534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359248, 0.928585, -0.093120,
		-0.157072, 0.158521, 0.974782,
		0.919929, -0.335562, 0.202803,
		44.976810, 38.297272, 34.130375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537659, 39.043224, 34.485695>,  <44.332859, 38.532166, 33.988415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537659, 39.043224, 34.485695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870956, 38.867504, 34.351402>,  <45.070934, 38.762074, 34.270828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870956, 38.867504, 34.351402>,  <44.537659, 39.043224, 34.485695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870956, 38.867504, 34.351402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448200, 0.892234, -0.055097,
		0.323754, -0.104565, 0.940345,
		0.833246, -0.439301, -0.335731,
		45.120930, 38.735714, 34.250683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141842, 39.164173, 34.940926>,  <44.537659, 39.043224, 34.485695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141842, 39.164173, 34.940926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284489, 39.099911, 34.572792>,  <45.370075, 39.061356, 34.351913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284489, 39.099911, 34.572792>,  <45.141842, 39.164173, 34.940926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284489, 39.099911, 34.572792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347754, 0.937142, -0.028838,
		0.867116, -0.309766, 0.390070,
		0.356618, -0.160654, -0.920334,
		45.391476, 39.051716, 34.296692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829937, 39.447018, 34.895531>,  <45.141842, 39.164173, 34.940926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829937, 39.447018, 34.895531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740612, 39.414066, 34.507027>,  <45.687016, 39.394295, 34.273926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740612, 39.414066, 34.507027>,  <45.829937, 39.447018, 34.895531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740612, 39.414066, 34.507027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293073, 0.944643, -0.147504,
		0.929645, -0.317590, -0.186807,
		-0.223312, -0.082379, -0.971260,
		45.673618, 39.389355, 34.215649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426495, 39.815228, 34.517151>,  <45.829937, 39.447018, 34.895531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426495, 39.815228, 34.517151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.114033, 39.788593, 34.268837>,  <45.926556, 39.772614, 34.119850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.114033, 39.788593, 34.268837>,  <46.426495, 39.815228, 34.517151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114033, 39.788593, 34.268837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046430, 0.985348, -0.164116,
		0.622615, -0.157022, -0.766613,
		-0.781150, -0.066587, -0.620782,
		45.879688, 39.768616, 34.082603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657104, 40.267521, 33.920406>,  <46.426495, 39.815228, 34.517151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657104, 40.267521, 33.920406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.257862, 40.245667, 33.931728>,  <46.018318, 40.232555, 33.938522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.257862, 40.245667, 33.931728>,  <46.657104, 40.267521, 33.920406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257862, 40.245667, 33.931728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056372, 0.996305, -0.064799,
		-0.024661, -0.066272, -0.997497,
		-0.998105, -0.054633, 0.028305,
		45.958431, 40.229279, 33.940220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408787, 40.761551, 33.495819>,  <46.657104, 40.267521, 33.920406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408787, 40.761551, 33.495819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068874, 40.696262, 33.696312>,  <45.864925, 40.657089, 33.816608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068874, 40.696262, 33.696312>,  <46.408787, 40.761551, 33.495819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068874, 40.696262, 33.696312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265432, 0.954007, -0.139342,
		-0.455433, -0.251452, -0.854021,
		-0.849780, -0.163224, 0.501230,
		45.813942, 40.647297, 33.846680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003777, 41.328125, 33.228706>,  <46.408787, 40.761551, 33.495819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003777, 41.328125, 33.228706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834442, 41.210247, 33.571388>,  <45.732841, 41.139523, 33.776997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834442, 41.210247, 33.571388>,  <46.003777, 41.328125, 33.228706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834442, 41.210247, 33.571388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315744, 0.934323, 0.165367,
		-0.849173, -0.200495, -0.488576,
		-0.423333, -0.294690, 0.856707,
		45.707443, 41.121841, 33.828400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292580, 41.546928, 33.164062>,  <46.003777, 41.328125, 33.228706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292580, 41.546928, 33.164062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393509, 41.512089, 33.549549>,  <45.454067, 41.491184, 33.780842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393509, 41.512089, 33.549549>,  <45.292580, 41.546928, 33.164062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393509, 41.512089, 33.549549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324524, 0.930644, 0.169074,
		-0.911602, -0.355410, 0.206556,
		0.252321, -0.087096, 0.963716,
		45.469204, 41.485962, 33.838665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766792, 41.956123, 33.420929>,  <45.292580, 41.546928, 33.164062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766792, 41.956123, 33.420929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049900, 41.921303, 33.701351>,  <45.219765, 41.900410, 33.869606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049900, 41.921303, 33.701351>,  <44.766792, 41.956123, 33.420929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049900, 41.921303, 33.701351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100870, 0.969757, 0.222255,
		-0.699203, -0.228021, 0.677585,
		0.707771, -0.087053, 0.701058,
		45.262230, 41.895187, 33.911667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581203, 42.428707, 33.921543>,  <44.766792, 41.956123, 33.420929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581203, 42.428707, 33.921543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.964130, 42.348618, 34.004936>,  <45.193886, 42.300564, 34.054970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.964130, 42.348618, 34.004936>,  <44.581203, 42.428707, 33.921543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964130, 42.348618, 34.004936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158884, 0.967010, 0.199119,
		-0.241469, -0.157495, 0.957543,
		0.957313, -0.200220, 0.208480,
		45.251324, 42.288551, 34.067478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765244, 42.811798, 34.543461>,  <44.581203, 42.428707, 33.921543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765244, 42.811798, 34.543461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.123920, 42.722755, 34.390419>,  <45.339127, 42.669331, 34.298595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.123920, 42.722755, 34.390419>,  <44.765244, 42.811798, 34.543461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123920, 42.722755, 34.390419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323745, 0.919268, 0.223909,
		0.301871, -0.324644, 0.896371,
		0.896696, -0.222604, -0.382602,
		45.392929, 42.655975, 34.275639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.896294, 35.966938, 42.612236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576473, 35.810425, 42.429977>,  <38.384579, 35.716518, 42.320621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576473, 35.810425, 42.429977>,  <38.896294, 35.966938, 42.612236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576473, 35.810425, 42.429977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509580, -0.040446, -0.859472,
		0.317865, -0.919382, 0.231727,
		-0.799556, -0.391280, -0.455643,
		38.336605, 35.693039, 42.293285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249939, 35.594196, 42.041008>,  <38.896294, 35.966938, 42.612236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249939, 35.594196, 42.041008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867531, 35.615025, 41.925549>,  <38.638088, 35.627522, 41.856270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867531, 35.615025, 41.925549>,  <39.249939, 35.594196, 42.041008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867531, 35.615025, 41.925549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282496, -0.101328, -0.953902,
		-0.078906, -0.993490, 0.082165,
		-0.956018, 0.052057, -0.288653,
		38.580727, 35.630646, 41.838951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152943, 34.972294, 41.578590>,  <39.249939, 35.594196, 42.041008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152943, 34.972294, 41.578590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884666, 35.258175, 41.499218>,  <38.723701, 35.429703, 41.451595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884666, 35.258175, 41.499218>,  <39.152943, 34.972294, 41.578590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884666, 35.258175, 41.499218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173889, -0.108565, -0.978763,
		-0.721065, -0.690953, -0.051465,
		-0.670692, 0.714701, -0.198432,
		38.683460, 35.472584, 41.439690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662197, 34.710518, 41.116806>,  <39.152943, 34.972294, 41.578590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662197, 34.710518, 41.116806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632397, 35.106541, 41.069077>,  <38.614517, 35.344154, 41.040440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632397, 35.106541, 41.069077>,  <38.662197, 34.710518, 41.116806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632397, 35.106541, 41.069077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056525, -0.115273, -0.991724,
		-0.995618, -0.080625, -0.047376,
		-0.074496, 0.990057, -0.119326,
		38.610046, 35.403557, 41.033279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082485, 34.860535, 40.680599>,  <38.662197, 34.710518, 41.116806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082485, 34.860535, 40.680599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326633, 35.174942, 40.641350>,  <38.473122, 35.363586, 40.617802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326633, 35.174942, 40.641350>,  <38.082485, 34.860535, 40.680599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326633, 35.174942, 40.641350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051731, -0.084055, -0.995117,
		-0.790425, 0.612466, -0.010643,
		0.610370, 0.786015, -0.098122,
		38.509743, 35.410748, 40.611912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724480, 35.062389, 40.112137>,  <38.082485, 34.860535, 40.680599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724480, 35.062389, 40.112137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065777, 35.260391, 40.177784>,  <38.270557, 35.379192, 40.217175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065777, 35.260391, 40.177784>,  <37.724480, 35.062389, 40.112137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065777, 35.260391, 40.177784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116475, 0.125871, -0.985185,
		-0.508333, 0.859723, 0.049743,
		0.853247, 0.495008, 0.164120,
		38.321751, 35.408894, 40.227020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755779, 35.577682, 39.644207>,  <37.724480, 35.062389, 40.112137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755779, 35.577682, 39.644207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140617, 35.524834, 39.739635>,  <38.371521, 35.493122, 39.796894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140617, 35.524834, 39.739635>,  <37.755779, 35.577682, 39.644207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140617, 35.524834, 39.739635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229351, -0.081326, -0.969940,
		0.147555, 0.987891, -0.047940,
		0.962094, -0.132124, 0.238574,
		38.429245, 35.485195, 39.811207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144348, 35.900425, 39.097660>,  <37.755779, 35.577682, 39.644207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144348, 35.900425, 39.097660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457142, 35.713932, 39.263130>,  <38.644817, 35.602036, 39.362411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457142, 35.713932, 39.263130>,  <38.144348, 35.900425, 39.097660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457142, 35.713932, 39.263130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394972, -0.142765, -0.907533,
		0.482180, 0.873066, 0.072509,
		0.781984, -0.466234, 0.413675,
		38.691738, 35.574062, 39.387234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794979, 36.230770, 38.801201>,  <38.144348, 35.900425, 39.097660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794979, 36.230770, 38.801201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884716, 35.863377, 38.931469>,  <38.938557, 35.642941, 39.009628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884716, 35.863377, 38.931469>,  <38.794979, 36.230770, 38.801201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884716, 35.863377, 38.931469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371620, -0.228305, -0.899875,
		0.900872, 0.322904, 0.290108,
		0.224340, -0.918482, 0.325671,
		38.952019, 35.587833, 39.029171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523418, 36.219364, 38.583313>,  <38.794979, 36.230770, 38.801201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523418, 36.219364, 38.583313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389904, 35.849529, 38.656776>,  <39.309795, 35.627628, 38.700855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389904, 35.849529, 38.656776>,  <39.523418, 36.219364, 38.583313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389904, 35.849529, 38.656776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337370, -0.299101, -0.892592,
		0.880211, -0.235969, 0.411762,
		-0.333782, -0.924585, 0.183663,
		39.289768, 35.572155, 38.711876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137688, 35.837280, 38.524864>,  <39.523418, 36.219364, 38.583313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137688, 35.837280, 38.524864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818764, 35.604877, 38.459457>,  <39.627411, 35.465435, 38.420212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818764, 35.604877, 38.459457>,  <40.137688, 35.837280, 38.524864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818764, 35.604877, 38.459457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313129, -0.166557, -0.934992,
		0.515998, -0.796677, 0.314726,
		-0.797306, -0.581004, -0.163519,
		39.579571, 35.430576, 38.410400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420113, 35.260246, 38.215904>,  <40.137688, 35.837280, 38.524864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420113, 35.260246, 38.215904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029675, 35.244301, 38.130447>,  <39.795410, 35.234734, 38.079174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029675, 35.244301, 38.130447>,  <40.420113, 35.260246, 38.215904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029675, 35.244301, 38.130447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217314, -0.189469, -0.957537,
		-0.002307, -0.981077, 0.193603,
		-0.976099, -0.039863, -0.213639,
		39.736843, 35.232342, 38.066357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268623, 34.653973, 37.743629>,  <40.420113, 35.260246, 38.215904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268623, 34.653973, 37.743629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991791, 34.942162, 37.726006>,  <39.825691, 35.115074, 37.715431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991791, 34.942162, 37.726006>,  <40.268623, 34.653973, 37.743629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991791, 34.942162, 37.726006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082081, 0.017913, -0.996465,
		-0.717138, -0.693250, -0.071534,
		-0.692080, 0.720475, -0.044057,
		39.784168, 35.158302, 37.712788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118412, 34.390079, 36.984848>,  <40.268623, 34.653973, 37.743629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118412, 34.390079, 36.984848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174744, 34.135601, 36.681423>,  <40.208542, 33.982914, 36.499367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174744, 34.135601, 36.681423>,  <40.118412, 34.390079, 36.984848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174744, 34.135601, 36.681423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613445, -0.657466, 0.437519,
		-0.777079, 0.403722, -0.482862,
		0.140829, -0.636197, -0.758565,
		40.216991, 33.944740, 36.453854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487255, 34.225964, 36.599720>,  <40.118412, 34.390079, 36.984848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487255, 34.225964, 36.599720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754490, 33.935097, 36.662815>,  <39.914833, 33.760574, 36.700672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754490, 33.935097, 36.662815>,  <39.487255, 34.225964, 36.599720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754490, 33.935097, 36.662815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679570, -0.509960, 0.527376,
		-0.303053, -0.459527, -0.834862,
		0.668090, -0.727169, 0.157735,
		39.954918, 33.716946, 36.710136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218502, 33.593708, 36.543060>,  <39.487255, 34.225964, 36.599720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218502, 33.593708, 36.543060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553253, 33.472832, 36.725628>,  <39.754105, 33.400307, 36.835167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553253, 33.472832, 36.725628>,  <39.218502, 33.593708, 36.543060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553253, 33.472832, 36.725628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513363, -0.722682, 0.462805,
		0.189992, -0.621620, -0.759928,
		0.836876, -0.302190, 0.456421,
		39.804317, 33.382175, 36.862553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234566, 32.761517, 36.541382>,  <39.218502, 33.593708, 36.543060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234566, 32.761517, 36.541382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439087, 32.912148, 36.850384>,  <39.561802, 33.002525, 37.035786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439087, 32.912148, 36.850384>,  <39.234566, 32.761517, 36.541382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439087, 32.912148, 36.850384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485222, -0.615407, 0.621155,
		0.709314, -0.692435, -0.131940,
		0.511306, 0.376574, 0.772501,
		39.592480, 33.025120, 37.082134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434406, 32.202190, 36.936794>,  <39.234566, 32.761517, 36.541382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434406, 32.202190, 36.936794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476963, 32.504105, 37.195709>,  <39.502499, 32.685253, 37.351059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476963, 32.504105, 37.195709>,  <39.434406, 32.202190, 36.936794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476963, 32.504105, 37.195709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290076, -0.599104, 0.746278,
		0.951071, -0.267163, 0.155202,
		0.106395, 0.754784, 0.647288,
		39.508881, 32.730541, 37.389896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653660, 31.953123, 37.478703>,  <39.434406, 32.202190, 36.936794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653660, 31.953123, 37.478703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506985, 32.305996, 37.596882>,  <39.418980, 32.517719, 37.667789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506985, 32.305996, 37.596882>,  <39.653660, 31.953123, 37.478703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506985, 32.305996, 37.596882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198536, -0.384458, 0.901541,
		0.908914, 0.271924, 0.316121,
		-0.366686, 0.882185, 0.295452,
		39.396980, 32.570652, 37.685516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863384, 31.930769, 38.129662>,  <39.653660, 31.953123, 37.478703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863384, 31.930769, 38.129662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568806, 32.200600, 38.109295>,  <39.392059, 32.362499, 38.097073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568806, 32.200600, 38.109295>,  <39.863384, 31.930769, 38.129662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568806, 32.200600, 38.109295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219030, -0.166547, 0.961399,
		0.640058, 0.719171, 0.270406,
		-0.736445, 0.674578, -0.050920,
		39.347874, 32.402973, 38.094021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940311, 32.250954, 38.720749>,  <39.863384, 31.930769, 38.129662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940311, 32.250954, 38.720749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574081, 32.352974, 38.596386>,  <39.354343, 32.414185, 38.521767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574081, 32.352974, 38.596386>,  <39.940311, 32.250954, 38.720749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574081, 32.352974, 38.596386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351899, -0.133952, 0.926404,
		0.194632, 0.957605, 0.212395,
		-0.915579, 0.255050, -0.310908,
		39.299408, 32.429489, 38.503113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691837, 32.750931, 39.098095>,  <39.940311, 32.250954, 38.720749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691837, 32.750931, 39.098095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354176, 32.589989, 38.956383>,  <39.151581, 32.493423, 38.871353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354176, 32.589989, 38.956383>,  <39.691837, 32.750931, 39.098095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354176, 32.589989, 38.956383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308546, -0.175794, 0.934824,
		-0.438414, 0.898446, 0.024251,
		-0.844152, -0.402358, -0.354282,
		39.100929, 32.469280, 38.850098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235149, 33.014557, 39.522045>,  <39.691837, 32.750931, 39.098095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235149, 33.014557, 39.522045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043125, 32.708569, 39.350296>,  <38.927910, 32.524975, 39.247246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043125, 32.708569, 39.350296>,  <39.235149, 33.014557, 39.522045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043125, 32.708569, 39.350296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360482, -0.274199, 0.891553,
		-0.799744, 0.582783, -0.144125,
		-0.480064, -0.764970, -0.429372,
		38.899105, 32.479076, 39.221485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557663, 33.131611, 39.613579>,  <39.235149, 33.014557, 39.522045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557663, 33.131611, 39.613579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598518, 32.738697, 39.550747>,  <38.623032, 32.502949, 39.513046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598518, 32.738697, 39.550747>,  <38.557663, 33.131611, 39.613579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598518, 32.738697, 39.550747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423285, -0.185817, 0.886737,
		-0.900221, -0.024082, -0.434768,
		0.102142, -0.982289, -0.157083,
		38.629162, 32.444012, 39.503624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942524, 32.765156, 39.664490>,  <38.557663, 33.131611, 39.613579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942524, 32.765156, 39.664490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181175, 32.445034, 39.688324>,  <38.324364, 32.252960, 39.702625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181175, 32.445034, 39.688324>,  <37.942524, 32.765156, 39.664490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181175, 32.445034, 39.688324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427669, -0.254242, 0.867445,
		-0.679071, -0.543023, -0.493953,
		0.596625, -0.800305, 0.059586,
		38.360165, 32.204941, 39.706200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490025, 32.212154, 39.778149>,  <37.942524, 32.765156, 39.664490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490025, 32.212154, 39.778149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845963, 32.082565, 39.906658>,  <38.059525, 32.004810, 39.983765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845963, 32.082565, 39.906658>,  <37.490025, 32.212154, 39.778149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845963, 32.082565, 39.906658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385571, -0.157455, 0.909144,
		-0.243953, -0.932871, -0.265025,
		0.889844, -0.323974, 0.321276,
		38.112915, 31.985374, 40.003040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387665, 31.735086, 40.291084>,  <37.490025, 32.212154, 39.778149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387665, 31.735086, 40.291084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776157, 31.808071, 40.352287>,  <38.009254, 31.851862, 40.389008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776157, 31.808071, 40.352287>,  <37.387665, 31.735086, 40.291084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776157, 31.808071, 40.352287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128709, -0.138341, 0.981986,
		0.200345, -0.973431, -0.110877,
		0.971234, 0.182465, 0.153005,
		38.067528, 31.862810, 40.398190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664261, 31.083082, 40.567608>,  <37.387665, 31.735086, 40.291084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664261, 31.083082, 40.567608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902382, 31.386488, 40.673645>,  <38.045254, 31.568531, 40.737267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902382, 31.386488, 40.673645>,  <37.664261, 31.083082, 40.567608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902382, 31.386488, 40.673645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220217, -0.163264, 0.961691,
		0.772736, -0.630873, 0.069847,
		0.595301, 0.758514, 0.265089,
		38.080971, 31.614042, 40.753170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668583, 30.424282, 40.551231>,  <37.664261, 31.083082, 40.567608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668583, 30.424282, 40.551231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303074, 30.261993, 40.543121>,  <37.083771, 30.164619, 40.538254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303074, 30.261993, 40.543121>,  <37.668583, 30.424282, 40.551231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303074, 30.261993, 40.543121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154862, 0.394050, -0.905948,
		0.375539, -0.824696, -0.422903,
		-0.913777, -0.405711, -0.020267,
		37.028942, 30.140276, 40.537041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587399, 30.214575, 39.859478>,  <37.668583, 30.424282, 40.551231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587399, 30.214575, 39.859478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212467, 30.238579, 39.996780>,  <36.987511, 30.252981, 40.079163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212467, 30.238579, 39.996780>,  <37.587399, 30.214575, 39.859478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212467, 30.238579, 39.996780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284266, 0.438043, -0.852825,
		-0.201536, -0.896949, -0.393530,
		-0.937324, 0.060008, 0.343254,
		36.931271, 30.256580, 40.099758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169456, 29.864582, 39.392170>,  <37.587399, 30.214575, 39.859478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169456, 29.864582, 39.392170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935959, 30.110348, 39.604488>,  <36.795860, 30.257807, 39.731880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935959, 30.110348, 39.604488>,  <37.169456, 29.864582, 39.392170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935959, 30.110348, 39.604488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355000, 0.394807, -0.847409,
		-0.730221, -0.683099, -0.012348,
		-0.583740, 0.614413, 0.530797,
		36.760838, 30.294672, 39.763729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504860, 29.861986, 39.015144>,  <37.169456, 29.864582, 39.392170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504860, 29.861986, 39.015144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559612, 30.206457, 39.210953>,  <36.592464, 30.413139, 39.328438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559612, 30.206457, 39.210953>,  <36.504860, 29.861986, 39.015144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559612, 30.206457, 39.210953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241479, 0.508276, -0.826646,
		-0.960704, -0.005061, 0.277528,
		0.136877, 0.861180, 0.489525,
		36.600674, 30.464811, 39.357811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893372, 30.133368, 38.981903>,  <36.504860, 29.861986, 39.015144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893372, 30.133368, 38.981903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129951, 30.448612, 39.050102>,  <36.271900, 30.637758, 39.091022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129951, 30.448612, 39.050102>,  <35.893372, 30.133368, 38.981903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129951, 30.448612, 39.050102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433788, 0.489230, -0.756625,
		-0.679718, 0.373544, 0.631227,
		0.591448, 0.788111, 0.170500,
		36.307384, 30.685045, 39.101254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399426, 30.641199, 38.850872>,  <35.893372, 30.133368, 38.981903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399426, 30.641199, 38.850872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752110, 30.829243, 38.866821>,  <35.963718, 30.942068, 38.876389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752110, 30.829243, 38.866821>,  <35.399426, 30.641199, 38.850872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752110, 30.829243, 38.866821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275808, 0.582156, -0.764869,
		-0.382783, 0.663394, 0.642951,
		0.881707, 0.470110, 0.039870,
		36.016621, 30.970276, 38.878784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258171, 31.368622, 38.818722>,  <35.399426, 30.641199, 38.850872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258171, 31.368622, 38.818722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637836, 31.324623, 38.700741>,  <35.865635, 31.298223, 38.629951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637836, 31.324623, 38.700741>,  <35.258171, 31.368622, 38.818722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637836, 31.324623, 38.700741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191405, 0.542218, -0.818147,
		0.249922, 0.833007, 0.493597,
		0.949159, -0.109996, -0.294954,
		35.922585, 31.291624, 38.612255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587917, 32.084309, 38.658550>,  <35.258171, 31.368622, 38.818722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587917, 32.084309, 38.658550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828758, 31.823620, 38.474060>,  <35.973263, 31.667206, 38.363365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828758, 31.823620, 38.474060>,  <35.587917, 32.084309, 38.658550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828758, 31.823620, 38.474060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115506, 0.500492, -0.858002,
		0.790019, 0.569880, 0.226070,
		0.602104, -0.651725, -0.461222,
		36.009388, 31.628103, 38.335693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963482, 32.489456, 38.178787>,  <35.587917, 32.084309, 38.658550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963482, 32.489456, 38.178787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992607, 32.116657, 38.036758>,  <36.010082, 31.892977, 37.951542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992607, 32.116657, 38.036758>,  <35.963482, 32.489456, 38.178787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992607, 32.116657, 38.036758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072718, 0.350110, -0.933882,
		0.994691, 0.093816, -0.042282,
		0.072810, -0.931999, -0.355074,
		36.014450, 31.837057, 37.930237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283512, 32.605976, 37.568501>,  <35.963482, 32.489456, 38.178787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283512, 32.605976, 37.568501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184048, 32.221199, 37.523193>,  <36.124371, 31.990332, 37.496010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184048, 32.221199, 37.523193>,  <36.283512, 32.605976, 37.568501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184048, 32.221199, 37.523193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152643, 0.154398, -0.976146,
		0.956487, -0.225440, -0.185227,
		-0.248662, -0.961945, -0.113268,
		36.109447, 31.932615, 37.489212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705856, 32.289948, 37.066528>,  <36.283512, 32.605976, 37.568501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705856, 32.289948, 37.066528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358685, 32.091381, 37.059998>,  <36.150383, 31.972240, 37.056080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358685, 32.091381, 37.059998>,  <36.705856, 32.289948, 37.066528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358685, 32.091381, 37.059998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195687, 0.371984, -0.907378,
		0.456512, -0.784345, -0.419999,
		-0.867930, -0.496418, -0.016329,
		36.098305, 31.942455, 37.055099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665596, 31.863754, 36.519836>,  <36.705856, 32.289948, 37.066528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665596, 31.863754, 36.519836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324154, 32.018841, 36.659000>,  <36.119289, 32.111893, 36.742496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324154, 32.018841, 36.659000>,  <36.665596, 31.863754, 36.519836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324154, 32.018841, 36.659000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123689, 0.497910, -0.858363,
		-0.506029, -0.775732, -0.377061,
		-0.853602, 0.387718, 0.347906,
		36.068073, 32.135155, 36.763371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.212929, 28.129017, 43.778141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848934, 28.294725, 43.771061>,  <36.630539, 28.394150, 43.766815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848934, 28.294725, 43.771061>,  <37.212929, 28.129017, 43.778141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848934, 28.294725, 43.771061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104145, 0.187034, -0.976817,
		-0.401357, -0.890729, -0.213342,
		-0.909981, 0.414270, -0.017698,
		36.575939, 28.419006, 43.765751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824238, 27.776411, 43.368000>,  <37.212929, 28.129017, 43.778141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824238, 27.776411, 43.368000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628746, 28.124611, 43.391247>,  <36.511452, 28.333530, 43.405193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628746, 28.124611, 43.391247>,  <36.824238, 27.776411, 43.368000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628746, 28.124611, 43.391247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176635, 0.163964, -0.970523,
		-0.854369, -0.464056, -0.233895,
		-0.488727, 0.870498, 0.058117,
		36.482128, 28.385761, 43.408684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256729, 27.828852, 42.830330>,  <36.824238, 27.776411, 43.368000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256729, 27.828852, 42.830330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.371899, 28.203213, 42.911507>,  <36.441002, 28.427830, 42.960213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.371899, 28.203213, 42.911507>,  <36.256729, 27.828852, 42.830330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371899, 28.203213, 42.911507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126692, 0.172832, -0.976769,
		-0.949234, 0.306951, -0.068808,
		0.287928, 0.935901, 0.202946,
		36.458279, 28.483982, 42.972389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096542, 28.098804, 42.215218>,  <36.256729, 27.828852, 42.830330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096542, 28.098804, 42.215218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.317856, 28.378300, 42.396610>,  <36.450642, 28.545998, 42.505447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.317856, 28.378300, 42.396610>,  <36.096542, 28.098804, 42.215218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317856, 28.378300, 42.396610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020344, 0.532901, -0.845933,
		-0.832746, 0.477264, 0.280629,
		0.553281, 0.698738, 0.453481,
		36.483841, 28.587921, 42.532654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784081, 28.800182, 42.068161>,  <36.096542, 28.098804, 42.215218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784081, 28.800182, 42.068161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154785, 28.888826, 42.189487>,  <36.377209, 28.942013, 42.262283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154785, 28.888826, 42.189487>,  <35.784081, 28.800182, 42.068161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154785, 28.888826, 42.189487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055109, 0.718502, -0.693339,
		-0.371583, 0.659276, 0.653668,
		0.926763, 0.221610, 0.303315,
		36.432816, 28.955309, 42.280483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867657, 29.522192, 42.028423>,  <35.784081, 28.800182, 42.068161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867657, 29.522192, 42.028423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.239185, 29.376600, 42.000679>,  <36.462101, 29.289246, 41.984032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.239185, 29.376600, 42.000679>,  <35.867657, 29.522192, 42.028423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239185, 29.376600, 42.000679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140209, 0.518530, -0.843485,
		0.342977, 0.773722, 0.532655,
		0.928821, -0.363980, -0.069361,
		36.517830, 29.267406, 41.979870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072098, 30.021261, 41.600021>,  <35.867657, 29.522192, 42.028423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072098, 30.021261, 41.600021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.386536, 29.774023, 41.601570>,  <36.575199, 29.625679, 41.602497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.386536, 29.774023, 41.601570>,  <36.072098, 30.021261, 41.600021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386536, 29.774023, 41.601570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381039, 0.479655, -0.790405,
		0.486690, 0.622806, 0.612572,
		0.786093, -0.618096, 0.003870,
		36.622364, 29.588594, 41.602730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671139, 30.396088, 41.689785>,  <36.072098, 30.021261, 41.600021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671139, 30.396088, 41.689785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728745, 30.064785, 41.473175>,  <36.763309, 29.866003, 41.343208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728745, 30.064785, 41.473175>,  <36.671139, 30.396088, 41.689785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728745, 30.064785, 41.473175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373923, 0.552208, -0.745149,
		0.916210, -0.095175, 0.389232,
		0.144017, -0.828256, -0.541526,
		36.771950, 29.816309, 41.310719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224113, 30.652012, 41.241554>,  <36.671139, 30.396088, 41.689785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224113, 30.652012, 41.241554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.059063, 30.319860, 41.091774>,  <36.960033, 30.120569, 41.001907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.059063, 30.319860, 41.091774>,  <37.224113, 30.652012, 41.241554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059063, 30.319860, 41.091774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028670, 0.422713, -0.905810,
		0.910450, -0.363023, -0.198228,
		-0.412623, -0.830378, -0.374451,
		36.935276, 30.070747, 40.979439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013760, 30.796656, 41.150715>,  <37.224113, 30.652012, 41.241554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013760, 30.796656, 41.150715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113361, 31.182671, 41.183453>,  <38.173122, 31.414280, 41.203094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113361, 31.182671, 41.183453>,  <38.013760, 30.796656, 41.150715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113361, 31.182671, 41.183453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098059, -0.109196, 0.989172,
		0.963526, -0.238281, -0.121821,
		0.249003, 0.965038, 0.081847,
		38.188061, 31.472181, 41.208008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539986, 30.794289, 41.736027>,  <38.013760, 30.796656, 41.150715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539986, 30.794289, 41.736027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429798, 31.178173, 41.713875>,  <38.363686, 31.408504, 41.700584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429798, 31.178173, 41.713875>,  <38.539986, 30.794289, 41.736027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429798, 31.178173, 41.713875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108243, 0.088207, 0.990204,
		0.955195, 0.266780, -0.128180,
		-0.275473, 0.959712, -0.055378,
		38.347157, 31.466087, 41.697262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039757, 31.193666, 42.019260>,  <38.539986, 30.794289, 41.736027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039757, 31.193666, 42.019260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700306, 31.403040, 42.049843>,  <38.496635, 31.528664, 42.068192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700306, 31.403040, 42.049843>,  <39.039757, 31.193666, 42.019260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700306, 31.403040, 42.049843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122519, 0.053880, 0.991003,
		0.514605, 0.850361, -0.109855,
		-0.848629, 0.523434, 0.076459,
		38.445717, 31.560070, 42.072781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231186, 31.629944, 42.362038>,  <39.039757, 31.193666, 42.019260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231186, 31.629944, 42.362038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834099, 31.653824, 42.403896>,  <38.595848, 31.668152, 42.429012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834099, 31.653824, 42.403896>,  <39.231186, 31.629944, 42.362038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834099, 31.653824, 42.403896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116123, 0.242572, 0.963158,
		0.032116, 0.968295, -0.247737,
		-0.992715, 0.059701, 0.104650,
		38.536285, 31.671734, 42.435291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081711, 32.117786, 42.822582>,  <39.231186, 31.629944, 42.362038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081711, 32.117786, 42.822582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738640, 31.912374, 42.832981>,  <38.532795, 31.789127, 42.839222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738640, 31.912374, 42.832981>,  <39.081711, 32.117786, 42.822582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738640, 31.912374, 42.832981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128206, 0.262539, 0.956366,
		-0.497945, 0.816923, -0.291012,
		-0.857679, -0.513527, 0.025996,
		38.481335, 31.758316, 42.840778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631420, 32.526852, 43.284542>,  <39.081711, 32.117786, 42.822582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631420, 32.526852, 43.284542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.492378, 32.152424, 43.306240>,  <38.408955, 31.927767, 43.319260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.492378, 32.152424, 43.306240>,  <38.631420, 32.526852, 43.284542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492378, 32.152424, 43.306240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056428, 0.078634, 0.995305,
		-0.935942, 0.342911, -0.080154,
		-0.347604, -0.936071, 0.054247,
		38.388096, 31.871603, 43.322514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107357, 32.503239, 43.916363>,  <38.631420, 32.526852, 43.284542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107357, 32.503239, 43.916363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.142517, 32.113441, 43.833778>,  <38.163612, 31.879562, 43.784225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.142517, 32.113441, 43.833778>,  <38.107357, 32.503239, 43.916363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142517, 32.113441, 43.833778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116683, -0.215914, 0.969415,
		-0.989271, -0.061124, -0.132687,
		0.087903, -0.974497, -0.206465,
		38.168888, 31.821093, 43.771839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548950, 32.096138, 44.200958>,  <38.107357, 32.503239, 43.916363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548950, 32.096138, 44.200958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832394, 31.820271, 44.141315>,  <38.002460, 31.654751, 44.105530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832394, 31.820271, 44.141315>,  <37.548950, 32.096138, 44.200958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832394, 31.820271, 44.141315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290242, -0.477511, 0.829303,
		-0.643144, -0.544373, -0.538538,
		0.708608, -0.689668, -0.149108,
		38.044975, 31.613371, 44.096584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222164, 31.336962, 44.344490>,  <37.548950, 32.096138, 44.200958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222164, 31.336962, 44.344490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.617710, 31.339268, 44.403961>,  <37.855038, 31.340652, 44.439644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.617710, 31.339268, 44.403961>,  <37.222164, 31.336962, 44.344490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617710, 31.339268, 44.403961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130329, -0.448487, 0.884236,
		0.071778, -0.893771, -0.442743,
		0.988869, 0.005767, 0.148676,
		37.914371, 31.340998, 44.448563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416214, 30.668295, 44.444885>,  <37.222164, 31.336962, 44.344490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416214, 30.668295, 44.444885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.688881, 30.904816, 44.617249>,  <37.852482, 31.046728, 44.720669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.688881, 30.904816, 44.617249>,  <37.416214, 30.668295, 44.444885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688881, 30.904816, 44.617249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160966, -0.453322, 0.876692,
		0.713733, -0.666978, -0.213837,
		0.681672, 0.591303, 0.430912,
		37.893383, 31.082207, 44.746521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730919, 30.259148, 44.979710>,  <37.416214, 30.668295, 44.444885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730919, 30.259148, 44.979710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887280, 30.605824, 45.103672>,  <37.981098, 30.813829, 45.178047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887280, 30.605824, 45.103672>,  <37.730919, 30.259148, 44.979710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887280, 30.605824, 45.103672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162000, -0.266652, 0.950080,
		0.906063, -0.421595, 0.036169,
		0.390904, 0.866692, 0.309902,
		38.004551, 30.865831, 45.196644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270138, 30.232792, 45.568176>,  <37.730919, 30.259148, 44.979710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270138, 30.232792, 45.568176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110771, 30.598907, 45.591881>,  <38.015152, 30.818577, 45.606102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110771, 30.598907, 45.591881>,  <38.270138, 30.232792, 45.568176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110771, 30.598907, 45.591881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048922, -0.085724, 0.995117,
		0.915900, 0.393571, 0.078931,
		-0.398415, 0.915289, 0.059261,
		37.991245, 30.873493, 45.609657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609306, 30.492041, 46.096088>,  <38.270138, 30.232792, 45.568176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609306, 30.492041, 46.096088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.298344, 30.742117, 46.068451>,  <38.111767, 30.892162, 46.051868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.298344, 30.742117, 46.068451>,  <38.609306, 30.492041, 46.096088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298344, 30.742117, 46.068451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124777, -0.045627, 0.991135,
		0.616498, 0.779136, 0.113480,
		-0.777407, 0.625192, -0.069090,
		38.065121, 30.929674, 46.047726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709465, 30.893223, 46.697086>,  <38.609306, 30.492041, 46.096088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709465, 30.893223, 46.697086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332817, 30.979130, 46.593380>,  <38.106827, 31.030674, 46.531155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332817, 30.979130, 46.593380>,  <38.709465, 30.893223, 46.697086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332817, 30.979130, 46.593380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252136, 0.060449, 0.965802,
		0.223095, 0.974793, -0.002770,
		-0.941624, 0.214767, -0.259266,
		38.050331, 31.043560, 46.515598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.972574, 31.701853, 45.590111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.318577, 31.514088, 45.661011>,  <31.526178, 31.401428, 45.703552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.318577, 31.514088, 45.661011>,  <30.972574, 31.701853, 45.590111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318577, 31.514088, 45.661011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364424, 0.344909, -0.865005,
		0.344909, 0.812828, 0.469413,
		0.865005, -0.469413, 0.177252,
		31.578079, 31.373264, 45.714188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533428, 32.209816, 45.547680>,  <30.972574, 31.701853, 45.590111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533428, 32.209816, 45.547680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.686445, 31.844761, 45.490047>,  <31.778255, 31.625729, 45.455467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.686445, 31.844761, 45.490047>,  <31.533428, 32.209816, 45.547680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686445, 31.844761, 45.490047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351207, 0.287869, -0.890946,
		0.854584, 0.290223, 0.430646,
		0.382543, -0.912634, -0.144080,
		31.801208, 31.570971, 45.446823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150478, 32.292290, 45.481865>,  <31.533428, 32.209816, 45.547680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150478, 32.292290, 45.481865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093876, 31.939226, 45.302586>,  <32.059914, 31.727386, 45.195019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093876, 31.939226, 45.302586>,  <32.150478, 32.292290, 45.481865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093876, 31.939226, 45.302586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245654, 0.407287, -0.879643,
		0.958974, -0.234574, 0.159197,
		-0.141503, -0.882662, -0.448202,
		32.051426, 31.674427, 45.168125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708694, 32.206310, 44.930283>,  <32.150478, 32.292290, 45.481865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708694, 32.206310, 44.930283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430153, 31.938726, 44.826290>,  <32.263027, 31.778177, 44.763893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430153, 31.938726, 44.826290>,  <32.708694, 32.206310, 44.930283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430153, 31.938726, 44.826290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228591, 0.136646, -0.963885,
		0.680324, -0.730632, 0.057764,
		-0.696352, -0.668958, -0.259980,
		32.221249, 31.738039, 44.748295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050713, 31.847492, 44.431164>,  <32.708694, 32.206310, 44.930283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050713, 31.847492, 44.431164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660919, 31.777111, 44.375427>,  <32.427044, 31.734882, 44.341984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660919, 31.777111, 44.375427>,  <33.050713, 31.847492, 44.431164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660919, 31.777111, 44.375427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074690, 0.331228, -0.940590,
		0.211651, -0.927001, -0.309635,
		-0.974487, -0.175950, -0.139343,
		32.368572, 31.724325, 44.333626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961891, 31.499271, 43.760227>,  <33.050713, 31.847492, 44.431164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961891, 31.499271, 43.760227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603096, 31.657909, 43.838337>,  <32.387821, 31.753092, 43.885201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603096, 31.657909, 43.838337>,  <32.961891, 31.499271, 43.760227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603096, 31.657909, 43.838337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032517, 0.381337, -0.923864,
		-0.440864, -0.835042, -0.329157,
		-0.896985, 0.396595, 0.195271,
		32.334000, 31.776888, 43.896919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534878, 31.340349, 43.197041>,  <32.961891, 31.499271, 43.760227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534878, 31.340349, 43.197041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320969, 31.633677, 43.364975>,  <32.192623, 31.809673, 43.465736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320969, 31.633677, 43.364975>,  <32.534878, 31.340349, 43.197041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320969, 31.633677, 43.364975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192960, 0.377745, -0.905580,
		-0.822670, -0.565291, -0.060507,
		-0.534772, 0.733318, 0.419838,
		32.160538, 31.853672, 43.490925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890978, 31.356413, 42.933758>,  <32.534878, 31.340349, 43.197041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890978, 31.356413, 42.933758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.988434, 31.727413, 43.047165>,  <32.046909, 31.950014, 43.115208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.988434, 31.727413, 43.047165>,  <31.890978, 31.356413, 42.933758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988434, 31.727413, 43.047165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134581, 0.321830, -0.937184,
		-0.960482, 0.190181, 0.203235,
		0.243642, 0.927500, 0.283517,
		32.061527, 32.005665, 43.132221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611359, 31.801573, 42.367107>,  <31.890978, 31.356413, 42.933758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611359, 31.801573, 42.367107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819609, 32.060829, 42.589409>,  <31.944559, 32.216385, 42.722790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819609, 32.060829, 42.589409>,  <31.611359, 31.801573, 42.367107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819609, 32.060829, 42.589409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159263, 0.565780, -0.809029,
		-0.838801, 0.509711, 0.191333,
		0.520623, 0.648142, 0.555755,
		31.975796, 32.255272, 42.756134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486738, 32.389004, 42.133183>,  <31.611359, 31.801573, 42.367107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486738, 32.389004, 42.133183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843307, 32.427994, 42.310207>,  <32.057251, 32.451385, 42.416424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843307, 32.427994, 42.310207>,  <31.486738, 32.389004, 42.133183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843307, 32.427994, 42.310207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353910, 0.460219, -0.814215,
		-0.283040, 0.882438, 0.375754,
		0.891424, 0.097472, 0.442564,
		32.110733, 32.457233, 42.442978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679667, 33.111015, 42.002216>,  <31.486738, 32.389004, 42.133183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679667, 33.111015, 42.002216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.013783, 32.905670, 42.080948>,  <32.214252, 32.782463, 42.128185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.013783, 32.905670, 42.080948>,  <31.679667, 33.111015, 42.002216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013783, 32.905670, 42.080948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452060, 0.437507, -0.777322,
		0.312937, 0.738269, 0.597519,
		0.835292, -0.513367, 0.196830,
		32.264370, 32.751659, 42.139996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223606, 33.651863, 42.150738>,  <31.679667, 33.111015, 42.002216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223606, 33.651863, 42.150738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403084, 33.309547, 42.047745>,  <32.510769, 33.104156, 41.985950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403084, 33.309547, 42.047745>,  <32.223606, 33.651863, 42.150738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403084, 33.309547, 42.047745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174622, 0.366513, -0.913879,
		0.876458, 0.365091, 0.313893,
		0.448695, -0.855790, -0.257481,
		32.537693, 33.052811, 41.970501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741234, 33.900013, 41.682957>,  <32.223606, 33.651863, 42.150738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741234, 33.900013, 41.682957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759033, 33.505608, 41.618698>,  <32.769714, 33.268967, 41.580143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759033, 33.505608, 41.618698>,  <32.741234, 33.900013, 41.682957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759033, 33.505608, 41.618698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310663, 0.166488, -0.935826,
		0.949478, -0.008262, 0.313725,
		0.044499, -0.986009, -0.160643,
		32.772385, 33.209805, 41.570507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410645, 33.729931, 41.369984>,  <32.741234, 33.900013, 41.682957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410645, 33.729931, 41.369984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.127651, 33.462925, 41.277130>,  <32.957855, 33.302723, 41.221416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.127651, 33.462925, 41.277130>,  <33.410645, 33.729931, 41.369984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127651, 33.462925, 41.277130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139867, 0.189722, -0.971824,
		0.692750, -0.720020, -0.040862,
		-0.707485, -0.667516, -0.232137,
		32.915405, 33.262669, 41.207489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127621, 33.752369, 41.225838>,  <33.410645, 33.729931, 41.369984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127621, 33.752369, 41.225838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.304306, 34.106720, 41.282558>,  <34.410316, 34.319332, 41.316589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.304306, 34.106720, 41.282558>,  <34.127621, 33.752369, 41.225838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304306, 34.106720, 41.282558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023919, -0.169625, 0.985218,
		0.896836, -0.431794, -0.096115,
		0.441715, 0.885879, 0.141798,
		34.436821, 34.372482, 41.325096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707199, 33.635712, 41.614643>,  <34.127621, 33.752369, 41.225838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707199, 33.635712, 41.614643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.592098, 34.015999, 41.660839>,  <34.523037, 34.244171, 41.688557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.592098, 34.015999, 41.660839>,  <34.707199, 33.635712, 41.614643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592098, 34.015999, 41.660839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101383, -0.089673, 0.990798,
		0.952323, 0.296815, -0.070582,
		-0.287754, 0.950715, 0.115490,
		34.505772, 34.301212, 41.695484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076694, 33.794697, 42.222675>,  <34.707199, 33.635712, 41.614643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076694, 33.794697, 42.222675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.781982, 34.057034, 42.156914>,  <34.605156, 34.214436, 42.117455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.781982, 34.057034, 42.156914>,  <35.076694, 33.794697, 42.222675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781982, 34.057034, 42.156914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136102, 0.094325, 0.986194,
		0.662296, 0.748981, 0.019765,
		-0.736777, 0.655843, -0.164409,
		34.560951, 34.253788, 42.107590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209129, 34.227524, 42.773392>,  <35.076694, 33.794697, 42.222675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209129, 34.227524, 42.773392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844589, 34.354034, 42.668007>,  <34.625866, 34.429939, 42.604774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844589, 34.354034, 42.668007>,  <35.209129, 34.227524, 42.773392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844589, 34.354034, 42.668007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158364, 0.321395, 0.933609,
		0.379952, 0.892568, -0.242816,
		-0.911349, 0.316273, -0.263465,
		34.571186, 34.448917, 42.588966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088413, 34.834499, 43.093151>,  <35.209129, 34.227524, 42.773392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088413, 34.834499, 43.093151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.719147, 34.694725, 43.029064>,  <34.497589, 34.610863, 42.990612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.719147, 34.694725, 43.029064>,  <35.088413, 34.834499, 43.093151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719147, 34.694725, 43.029064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248689, 0.225074, 0.942070,
		-0.293131, 0.909526, -0.294680,
		-0.923162, -0.349433, -0.160213,
		34.442200, 34.589893, 42.980999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519058, 35.269894, 43.483826>,  <35.088413, 34.834499, 43.093151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519058, 35.269894, 43.483826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339088, 34.923244, 43.397545>,  <34.231106, 34.715256, 43.345776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339088, 34.923244, 43.397545>,  <34.519058, 35.269894, 43.483826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339088, 34.923244, 43.397545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379110, -0.033349, 0.924750,
		-0.808607, 0.497841, -0.313543,
		-0.449922, -0.866627, -0.215703,
		34.204113, 34.663258, 43.332832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954601, 35.200672, 44.025494>,  <34.519058, 35.269894, 43.483826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954601, 35.200672, 44.025494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920895, 34.840977, 43.853790>,  <33.900669, 34.625160, 43.750767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920895, 34.840977, 43.853790>,  <33.954601, 35.200672, 44.025494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920895, 34.840977, 43.853790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360870, -0.374007, 0.854337,
		-0.928801, 0.226899, -0.292993,
		-0.084267, -0.899242, -0.429259,
		33.895615, 34.571205, 43.725014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314789, 34.933395, 44.126183>,  <33.954601, 35.200672, 44.025494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314789, 34.933395, 44.126183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546185, 34.609356, 44.088043>,  <33.685020, 34.414932, 44.065159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546185, 34.609356, 44.088043>,  <33.314789, 34.933395, 44.126183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546185, 34.609356, 44.088043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330552, -0.339681, 0.880541,
		-0.745712, -0.477866, -0.464282,
		0.578488, -0.810099, -0.095344,
		33.719730, 34.366325, 44.059441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875694, 34.311234, 44.283020>,  <33.314789, 34.933395, 44.126183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875694, 34.311234, 44.283020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259422, 34.209694, 44.332428>,  <33.489658, 34.148769, 44.362072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259422, 34.209694, 44.332428>,  <32.875694, 34.311234, 44.283020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259422, 34.209694, 44.332428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207238, -0.336134, 0.918731,
		-0.191701, -0.906958, -0.375069,
		0.959324, -0.253851, 0.123519,
		33.547218, 34.133537, 44.369484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867168, 33.646606, 44.459164>,  <32.875694, 34.311234, 44.283020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867168, 33.646606, 44.459164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228924, 33.738422, 44.603046>,  <33.445976, 33.793510, 44.689377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228924, 33.738422, 44.603046>,  <32.867168, 33.646606, 44.459164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228924, 33.738422, 44.603046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189404, -0.539449, 0.820440,
		0.382368, -0.810128, -0.444396,
		0.904389, 0.229539, 0.359709,
		33.500240, 33.807285, 44.710960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323387, 33.040653, 44.804546>,  <32.867168, 33.646606, 44.459164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323387, 33.040653, 44.804546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472733, 33.376953, 44.961388>,  <33.562340, 33.578732, 45.055492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472733, 33.376953, 44.961388>,  <33.323387, 33.040653, 44.804546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472733, 33.376953, 44.961388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045922, -0.438903, 0.897360,
		0.926549, -0.317034, -0.202478,
		0.373362, 0.840746, 0.392106,
		33.584740, 33.629177, 45.079021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702095, 32.784451, 45.285686>,  <33.323387, 33.040653, 44.804546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702095, 32.784451, 45.285686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670067, 33.167709, 45.395630>,  <33.650848, 33.397663, 45.461594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670067, 33.167709, 45.395630>,  <33.702095, 32.784451, 45.285686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670067, 33.167709, 45.395630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016715, -0.276992, 0.960727,
		0.996649, 0.072331, 0.038195,
		-0.080070, 0.958146, 0.274855,
		33.646046, 33.455154, 45.478085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133995, 32.872623, 45.808022>,  <33.702095, 32.784451, 45.285686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133995, 32.872623, 45.808022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.897312, 33.192558, 45.848301>,  <33.755302, 33.384518, 45.872467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.897312, 33.192558, 45.848301>,  <34.133995, 32.872623, 45.808022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897312, 33.192558, 45.848301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077674, -0.180895, 0.980430,
		0.802399, 0.572310, 0.169164,
		-0.591711, 0.799836, 0.100697,
		33.719799, 33.432510, 45.878510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426334, 33.276295, 46.380745>,  <34.133995, 32.872623, 45.808022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426334, 33.276295, 46.380745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040367, 33.370205, 46.333748>,  <33.808784, 33.426552, 46.305550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040367, 33.370205, 46.333748>,  <34.426334, 33.276295, 46.380745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040367, 33.370205, 46.333748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126538, -0.023781, 0.991677,
		0.230026, 0.971759, 0.052655,
		-0.964923, 0.234775, -0.117494,
		33.750889, 33.440636, 46.298500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900925, 33.870209, 46.532146>,  <34.426334, 33.276295, 46.380745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900925, 33.870209, 46.532146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255470, 33.736134, 46.659897>,  <35.468197, 33.655689, 46.736546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255470, 33.736134, 46.659897>,  <34.900925, 33.870209, 46.532146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255470, 33.736134, 46.659897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425306, 0.316918, -0.847749,
		0.182944, 0.887248, 0.423465,
		0.886367, -0.335193, 0.319374,
		35.521381, 33.635574, 46.755711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412010, 34.429485, 46.603062>,  <34.900925, 33.870209, 46.532146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412010, 34.429485, 46.603062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607021, 34.085651, 46.541828>,  <35.724030, 33.879353, 46.505089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.607021, 34.085651, 46.541828>,  <35.412010, 34.429485, 46.603062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607021, 34.085651, 46.541828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321234, 0.339626, -0.884004,
		0.811865, 0.381801, 0.441705,
		0.487528, -0.859582, -0.153083,
		35.753281, 33.827778, 46.495903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065746, 34.696110, 46.415638>,  <35.412010, 34.429485, 46.603062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065746, 34.696110, 46.415638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044647, 34.318119, 46.286495>,  <36.031986, 34.091324, 46.209011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044647, 34.318119, 46.286495>,  <36.065746, 34.696110, 46.415638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044647, 34.318119, 46.286495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582334, 0.233532, -0.778684,
		0.811236, -0.229086, 0.537974,
		-0.052751, -0.944977, -0.322854,
		36.028820, 34.034626, 46.189640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770363, 34.485367, 46.331509>,  <36.065746, 34.696110, 46.415638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770363, 34.485367, 46.331509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568405, 34.229206, 46.100002>,  <36.447227, 34.075512, 45.961098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568405, 34.229206, 46.100002>,  <36.770363, 34.485367, 46.331509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568405, 34.229206, 46.100002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573942, 0.251739, -0.779242,
		0.644723, -0.725615, 0.240449,
		-0.504899, -0.640399, -0.578762,
		36.416935, 34.037086, 45.926373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269157, 34.244267, 45.941067>,  <36.770363, 34.485367, 46.331509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269157, 34.244267, 45.941067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.932346, 34.161789, 45.741680>,  <36.730259, 34.112305, 45.622047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.932346, 34.161789, 45.741680>,  <37.269157, 34.244267, 45.941067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932346, 34.161789, 45.741680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441991, 0.266023, -0.856665,
		0.309247, -0.941655, -0.132861,
		-0.842028, -0.206197, -0.498470,
		36.679737, 34.099934, 45.592140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576195, 34.042030, 45.302902>,  <37.269157, 34.244267, 45.941067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576195, 34.042030, 45.302902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193474, 34.107204, 45.206581>,  <36.963840, 34.146309, 45.148788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193474, 34.107204, 45.206581>,  <37.576195, 34.042030, 45.302902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193474, 34.107204, 45.206581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284350, 0.351624, -0.891911,
		-0.060649, -0.921853, -0.382764,
		-0.956800, 0.162933, -0.240803,
		36.906433, 34.156086, 45.134338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520267, 33.674320, 44.610237>,  <37.576195, 34.042030, 45.302902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520267, 33.674320, 44.610237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221394, 33.937027, 44.650993>,  <37.042068, 34.094650, 44.675446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221394, 33.937027, 44.650993>,  <37.520267, 33.674320, 44.610237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221394, 33.937027, 44.650993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282416, 0.452519, -0.845854,
		-0.601634, -0.603230, -0.523594,
		-0.747180, 0.656765, 0.101889,
		36.997238, 34.134056, 44.681561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173058, 33.705490, 43.912590>,  <37.520267, 33.674320, 44.610237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173058, 33.705490, 43.912590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120647, 34.045517, 44.116634>,  <37.089203, 34.249535, 44.239059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120647, 34.045517, 44.116634>,  <37.173058, 33.705490, 43.912590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120647, 34.045517, 44.116634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046416, 0.519242, -0.853366,
		-0.990292, -0.088134, -0.107490,
		-0.131024, 0.850071, 0.510110,
		37.081341, 34.300537, 44.269669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776249, 34.063271, 43.533844>,  <37.173058, 33.705490, 43.912590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776249, 34.063271, 43.533844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925438, 34.337715, 43.783688>,  <37.014954, 34.502380, 43.933594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925438, 34.337715, 43.783688>,  <36.776249, 34.063271, 43.533844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925438, 34.337715, 43.783688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078225, 0.647537, -0.758008,
		-0.924537, 0.331579, 0.187845,
		0.372977, 0.686113, 0.624610,
		37.037331, 34.543549, 43.971069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626163, 34.655087, 43.200027>,  <36.776249, 34.063271, 43.533844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626163, 34.655087, 43.200027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.895607, 34.773006, 43.471130>,  <37.057274, 34.843758, 43.633793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.895607, 34.773006, 43.471130>,  <36.626163, 34.655087, 43.200027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895607, 34.773006, 43.471130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256000, 0.767185, -0.588125,
		-0.693341, 0.569669, 0.441311,
		0.673604, 0.294795, 0.677756,
		37.097687, 34.861446, 43.674458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548523, 35.320160, 43.127190>,  <36.626163, 34.655087, 43.200027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548523, 35.320160, 43.127190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910389, 35.262714, 43.287666>,  <37.127510, 35.228249, 43.383953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910389, 35.262714, 43.287666>,  <36.548523, 35.320160, 43.127190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910389, 35.262714, 43.287666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411918, 0.535761, -0.737078,
		-0.109088, 0.832067, 0.543842,
		0.904668, -0.143612, 0.401188,
		37.181789, 35.219631, 43.408024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898746, 35.955730, 43.249714>,  <36.548523, 35.320160, 43.127190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898746, 35.955730, 43.249714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190678, 35.682804, 43.232761>,  <37.365837, 35.519047, 43.222591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190678, 35.682804, 43.232761>,  <36.898746, 35.955730, 43.249714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190678, 35.682804, 43.232761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382942, 0.459385, -0.801449,
		0.566308, 0.568693, 0.596560,
		0.729829, -0.682315, -0.042377,
		37.409626, 35.478111, 43.220047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343678, 36.336872, 42.915760>,  <36.898746, 35.955730, 43.249714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343678, 36.336872, 42.915760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.506279, 35.971508, 42.907478>,  <37.603840, 35.752289, 42.902512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.506279, 35.971508, 42.907478>,  <37.343678, 36.336872, 42.915760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506279, 35.971508, 42.907478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630588, 0.296890, -0.717088,
		0.661144, 0.278447, 0.696675,
		0.406507, -0.913413, -0.020702,
		37.628231, 35.697483, 42.901268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076275, 36.452000, 42.922310>,  <37.343678, 36.336872, 42.915760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076275, 36.452000, 42.922310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.026958, 36.092361, 42.754295>,  <37.997368, 35.876579, 42.653484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.026958, 36.092361, 42.754295>,  <38.076275, 36.452000, 42.922310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026958, 36.092361, 42.754295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664668, 0.239485, -0.707717,
		0.736895, -0.366444, 0.568070,
		-0.123295, -0.899091, -0.420039,
		37.989971, 35.822636, 42.628284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.127163, 38.719280, 26.295002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034842, 38.489838, 25.980625>,  <27.979448, 38.352173, 25.792000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034842, 38.489838, 25.980625>,  <28.127163, 38.719280, 26.295002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034842, 38.489838, 25.980625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212533, -0.758525, 0.616011,
		-0.949505, 0.309216, 0.053160,
		-0.230804, -0.573607, -0.785942,
		27.965601, 38.317757, 25.744843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491220, 38.460445, 26.743656>,  <28.127163, 38.719280, 26.295002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491220, 38.460445, 26.743656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707851, 38.144398, 26.628836>,  <27.837830, 37.954769, 26.559942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707851, 38.144398, 26.628836>,  <27.491220, 38.460445, 26.743656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707851, 38.144398, 26.628836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052682, -0.372694, 0.926458,
		-0.838999, -0.486625, -0.243467,
		0.541577, -0.790123, -0.287054,
		27.870325, 37.907360, 26.542719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166538, 37.906136, 27.035688>,  <27.491220, 38.460445, 26.743656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166538, 37.906136, 27.035688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520401, 37.743950, 26.943619>,  <27.732719, 37.646637, 26.888378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520401, 37.743950, 26.943619>,  <27.166538, 37.906136, 27.035688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520401, 37.743950, 26.943619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046231, -0.414960, 0.908664,
		-0.463944, -0.814498, -0.348352,
		0.884657, -0.405465, -0.230174,
		27.785799, 37.622311, 26.874567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169331, 37.346241, 27.348883>,  <27.166538, 37.906136, 27.035688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169331, 37.346241, 27.348883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.562202, 37.341900, 27.273832>,  <27.797926, 37.339294, 27.228802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.562202, 37.341900, 27.273832>,  <27.169331, 37.346241, 27.348883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562202, 37.341900, 27.273832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162996, -0.447817, 0.879143,
		-0.093560, -0.894059, -0.438069,
		0.982181, -0.010849, -0.187626,
		27.856857, 37.338646, 27.217545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333462, 36.700737, 27.541702>,  <27.169331, 37.346241, 27.348883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333462, 36.700737, 27.541702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685673, 36.889629, 27.525345>,  <27.896999, 37.002964, 27.515532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685673, 36.889629, 27.525345>,  <27.333462, 36.700737, 27.541702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685673, 36.889629, 27.525345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271984, -0.432720, 0.859522,
		0.388195, -0.767955, -0.509460,
		0.880528, 0.472227, -0.040892,
		27.949831, 37.031296, 27.513077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901079, 36.220695, 27.572838>,  <27.333462, 36.700737, 27.541702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901079, 36.220695, 27.572838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.038836, 36.566448, 27.719393>,  <28.121490, 36.773899, 27.807325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.038836, 36.566448, 27.719393>,  <27.901079, 36.220695, 27.572838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038836, 36.566448, 27.719393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109368, -0.424542, 0.898779,
		0.932434, -0.269461, -0.240744,
		0.344391, 0.864381, 0.366387,
		28.142153, 36.825764, 27.829309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533113, 36.070057, 28.023277>,  <27.901079, 36.220695, 27.572838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533113, 36.070057, 28.023277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457237, 36.445724, 28.137808>,  <28.411713, 36.671124, 28.206526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457237, 36.445724, 28.137808>,  <28.533113, 36.070057, 28.023277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457237, 36.445724, 28.137808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022154, -0.287454, 0.957538,
		0.981594, 0.187977, 0.033720,
		-0.189688, 0.939167, 0.286327,
		28.400331, 36.727474, 28.223705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936218, 36.113934, 28.512644>,  <28.533113, 36.070057, 28.023277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936218, 36.113934, 28.512644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633631, 36.369297, 28.569473>,  <28.452078, 36.522514, 28.603571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633631, 36.369297, 28.569473>,  <28.936218, 36.113934, 28.512644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633631, 36.369297, 28.569473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140131, -0.370394, 0.918244,
		0.638842, 0.674713, 0.369653,
		-0.756468, 0.638413, 0.142075,
		28.406691, 36.560822, 28.612095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016689, 36.379890, 29.245768>,  <28.936218, 36.113934, 28.512644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016689, 36.379890, 29.245768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638741, 36.473145, 29.153795>,  <28.411972, 36.529095, 29.098612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638741, 36.473145, 29.153795>,  <29.016689, 36.379890, 29.245768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638741, 36.473145, 29.153795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278267, -0.201588, 0.939111,
		0.172586, 0.951321, 0.255347,
		-0.944871, 0.233132, -0.229930,
		28.355280, 36.543083, 29.084816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865705, 36.882038, 29.748070>,  <29.016689, 36.379890, 29.245768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865705, 36.882038, 29.748070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.503302, 36.770859, 29.620386>,  <28.285860, 36.704151, 29.543776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.503302, 36.770859, 29.620386>,  <28.865705, 36.882038, 29.748070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503302, 36.770859, 29.620386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266379, -0.211640, 0.940346,
		-0.328926, 0.936991, 0.117708,
		-0.906008, -0.277949, -0.319209,
		28.231499, 36.687473, 29.524624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311766, 37.067028, 30.279387>,  <28.865705, 36.882038, 29.748070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311766, 37.067028, 30.279387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136560, 36.785233, 30.056015>,  <28.031437, 36.616158, 29.921991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136560, 36.785233, 30.056015>,  <28.311766, 37.067028, 30.279387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136560, 36.785233, 30.056015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356055, -0.434435, 0.827340,
		-0.825451, 0.561217, -0.060548,
		-0.438013, -0.704486, -0.558429,
		28.005156, 36.573887, 29.888487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633469, 36.982994, 30.596994>,  <28.311766, 37.067028, 30.279387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633469, 36.982994, 30.596994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688053, 36.649727, 30.382624>,  <27.720804, 36.449768, 30.254002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688053, 36.649727, 30.382624>,  <27.633469, 36.982994, 30.596994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688053, 36.649727, 30.382624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498905, -0.525171, 0.689413,
		-0.855846, 0.173299, -0.487334,
		0.136459, -0.833165, -0.535925,
		27.728991, 36.399776, 30.221846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990475, 36.751621, 30.604666>,  <27.633469, 36.982994, 30.596994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990475, 36.751621, 30.604666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.213717, 36.434578, 30.506454>,  <27.347662, 36.244350, 30.447527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.213717, 36.434578, 30.506454>,  <26.990475, 36.751621, 30.604666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213717, 36.434578, 30.506454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357311, -0.496626, 0.791006,
		-0.748897, -0.353735, -0.560379,
		0.558106, -0.792612, -0.245528,
		27.381149, 36.196793, 30.432796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560923, 36.080994, 30.745234>,  <26.990475, 36.751621, 30.604666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560923, 36.080994, 30.745234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949528, 35.988663, 30.723774>,  <27.182692, 35.933262, 30.710897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949528, 35.988663, 30.723774>,  <26.560923, 36.080994, 30.745234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949528, 35.988663, 30.723774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085298, -0.551814, 0.829594,
		-0.221100, -0.801385, -0.555784,
		0.971514, -0.230831, -0.053650,
		27.240982, 35.919415, 30.707680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534906, 35.419735, 30.887796>,  <26.560923, 36.080994, 30.745234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534906, 35.419735, 30.887796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907249, 35.527657, 30.986355>,  <27.130655, 35.592411, 31.045490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907249, 35.527657, 30.986355>,  <26.534906, 35.419735, 30.887796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907249, 35.527657, 30.986355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111577, -0.432244, 0.894827,
		0.347933, -0.860448, -0.372254,
		0.930856, 0.269805, 0.246398,
		27.186506, 35.608597, 31.060274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728138, 34.987617, 31.335421>,  <26.534906, 35.419735, 30.887796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728138, 34.987617, 31.335421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.009495, 35.264210, 31.401264>,  <27.178308, 35.430164, 31.440769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.009495, 35.264210, 31.401264>,  <26.728138, 34.987617, 31.335421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009495, 35.264210, 31.401264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032453, -0.262581, 0.964364,
		0.710061, -0.672984, -0.207138,
		0.703392, 0.691480, 0.164608,
		27.220512, 35.471653, 31.450647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316469, 34.623077, 31.635845>,  <26.728138, 34.987617, 31.335421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316469, 34.623077, 31.635845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364418, 35.003906, 31.748409>,  <27.393187, 35.232403, 31.815947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364418, 35.003906, 31.748409>,  <27.316469, 34.623077, 31.635845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364418, 35.003906, 31.748409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230726, -0.302407, 0.924833,
		0.965607, -0.045932, -0.255917,
		0.119870, 0.952072, 0.281409,
		27.400379, 35.289528, 31.832832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743883, 34.612282, 32.196217>,  <27.316469, 34.623077, 31.635845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743883, 34.612282, 32.196217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.600613, 34.982071, 32.248447>,  <27.514650, 35.203945, 32.279785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.600613, 34.982071, 32.248447>,  <27.743883, 34.612282, 32.196217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600613, 34.982071, 32.248447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140366, -0.084948, 0.986449,
		0.923042, 0.371653, -0.099339,
		-0.358178, 0.924477, 0.130579,
		27.493158, 35.259415, 32.287621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212088, 34.995525, 32.701767>,  <27.743883, 34.612282, 32.196217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212088, 34.995525, 32.701767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853306, 35.171970, 32.713711>,  <27.638037, 35.277840, 32.720879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853306, 35.171970, 32.713711>,  <28.212088, 34.995525, 32.701767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853306, 35.171970, 32.713711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027388, -0.011967, 0.999553,
		0.441276, 0.897370, -0.001347,
		-0.896953, 0.441116, 0.029858,
		27.584219, 35.304306, 32.722668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220566, 35.601681, 33.031181>,  <28.212088, 34.995525, 32.701767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220566, 35.601681, 33.031181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830608, 35.528988, 33.082645>,  <27.596634, 35.485371, 33.113525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830608, 35.528988, 33.082645>,  <28.220566, 35.601681, 33.031181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830608, 35.528988, 33.082645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144786, -0.078375, 0.986354,
		-0.169167, 0.980220, 0.102719,
		-0.974895, -0.181731, 0.128664,
		27.538139, 35.474468, 33.121246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745422, 36.005329, 33.263870>,  <28.220566, 35.601681, 33.031181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745422, 36.005329, 33.263870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800817, 36.184330, 33.617268>,  <28.834055, 36.291729, 33.829308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800817, 36.184330, 33.617268>,  <28.745422, 36.005329, 33.263870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800817, 36.184330, 33.617268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158817, 0.890580, -0.426197,
		-0.977547, -0.081290, 0.194407,
		0.138490, 0.447502, 0.883494,
		28.842365, 36.318581, 33.882317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222366, 36.433739, 33.453480>,  <28.745422, 36.005329, 33.263870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222366, 36.433739, 33.453480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525974, 36.606007, 33.648792>,  <28.708139, 36.709366, 33.765980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525974, 36.606007, 33.648792>,  <28.222366, 36.433739, 33.453480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525974, 36.606007, 33.648792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251767, 0.885774, -0.389895,
		-0.600418, 0.173006, 0.780748,
		0.759020, 0.430667, 0.488277,
		28.753681, 36.735207, 33.795277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997496, 36.888000, 33.839622>,  <28.222366, 36.433739, 33.453480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997496, 36.888000, 33.839622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376993, 37.006725, 33.796200>,  <28.604692, 37.077961, 33.770145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376993, 37.006725, 33.796200>,  <27.997496, 36.888000, 33.839622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376993, 37.006725, 33.796200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313068, 0.835646, -0.451313,
		-0.043238, 0.462168, 0.885738,
		0.948746, 0.296810, -0.108558,
		28.661617, 37.095768, 33.763634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891863, 37.552761, 34.013397>,  <27.997496, 36.888000, 33.839622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891863, 37.552761, 34.013397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238451, 37.531761, 33.814812>,  <28.446404, 37.519161, 33.695660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238451, 37.531761, 33.814812>,  <27.891863, 37.552761, 34.013397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238451, 37.531761, 33.814812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337195, 0.671794, -0.659539,
		0.368144, 0.738876, 0.564387,
		0.866470, -0.052497, -0.496462,
		28.498392, 37.516010, 33.665874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909832, 38.209206, 33.792503>,  <27.891863, 37.552761, 34.013397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909832, 38.209206, 33.792503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201509, 38.046318, 33.572521>,  <28.376516, 37.948586, 33.440533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201509, 38.046318, 33.572521>,  <27.909832, 38.209206, 33.792503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201509, 38.046318, 33.572521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055930, 0.765508, -0.640991,
		0.682015, 0.498167, 0.535429,
		0.729196, -0.407219, -0.549951,
		28.420269, 37.924152, 33.407536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293497, 38.728107, 33.560162>,  <27.909832, 38.209206, 33.792503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293497, 38.728107, 33.560162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390455, 38.446644, 33.292995>,  <28.448629, 38.277763, 33.132698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390455, 38.446644, 33.292995>,  <28.293497, 38.728107, 33.560162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390455, 38.446644, 33.292995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022524, 0.692339, -0.721221,
		0.969916, 0.159776, 0.183669,
		0.242395, -0.703661, -0.667911,
		28.463173, 38.235546, 33.092621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932825, 38.844364, 33.276875>,  <28.293497, 38.728107, 33.560162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932825, 38.844364, 33.276875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750141, 38.627174, 32.994995>,  <28.640532, 38.496861, 32.825867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750141, 38.627174, 32.994995>,  <28.932825, 38.844364, 33.276875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750141, 38.627174, 32.994995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081881, 0.763113, -0.641056,
		0.885840, -0.350477, -0.304060,
		-0.456708, -0.542977, -0.704694,
		28.613129, 38.464283, 32.783588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408981, 38.689766, 32.653072>,  <28.932825, 38.844364, 33.276875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408981, 38.689766, 32.653072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021141, 38.689911, 32.555199>,  <28.788437, 38.689999, 32.496475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021141, 38.689911, 32.555199>,  <29.408981, 38.689766, 32.653072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021141, 38.689911, 32.555199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201053, 0.571147, -0.795845,
		0.139459, -0.820848, -0.553859,
		-0.969603, 0.000367, -0.244686,
		28.730261, 38.690022, 32.481792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452034, 38.761375, 32.009178>,  <29.408981, 38.689766, 32.653072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452034, 38.761375, 32.009178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057940, 38.824909, 32.034744>,  <28.821484, 38.863029, 32.050083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057940, 38.824909, 32.034744>,  <29.452034, 38.761375, 32.009178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057940, 38.824909, 32.034744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002071, 0.384348, -0.923186,
		-0.171199, -0.909422, -0.379002,
		-0.985234, 0.158834, 0.063916,
		28.762369, 38.872559, 32.053921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182611, 38.548325, 31.348017>,  <29.452034, 38.761375, 32.009178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182611, 38.548325, 31.348017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.891304, 38.766914, 31.513424>,  <28.716520, 38.898067, 31.612669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.891304, 38.766914, 31.513424>,  <29.182611, 38.548325, 31.348017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891304, 38.766914, 31.513424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093119, 0.518909, -0.849743,
		-0.678938, -0.657345, -0.327017,
		-0.728266, 0.546472, 0.413518,
		28.672825, 38.930855, 31.637480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724052, 38.668262, 30.758556>,  <29.182611, 38.548325, 31.348017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724052, 38.668262, 30.758556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617710, 38.934227, 31.037758>,  <28.553905, 39.093807, 31.205278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617710, 38.934227, 31.037758>,  <28.724052, 38.668262, 30.758556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617710, 38.934227, 31.037758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071420, 0.708485, -0.702103,
		-0.961364, -0.236509, -0.140866,
		-0.265855, 0.664916, 0.698003,
		28.537954, 39.133701, 31.247158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023916, 39.035217, 30.567320>,  <28.724052, 38.668262, 30.758556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023916, 39.035217, 30.567320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.218910, 39.279385, 30.817038>,  <28.335907, 39.425884, 30.966869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.218910, 39.279385, 30.817038>,  <28.023916, 39.035217, 30.567320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218910, 39.279385, 30.817038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046801, 0.732247, -0.679430,
		-0.871877, 0.301993, 0.385526,
		0.487483, 0.610422, 0.624296,
		28.365154, 39.462513, 31.004326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513708, 39.597492, 30.706568>,  <28.023916, 39.035217, 30.567320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513708, 39.597492, 30.706568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879095, 39.724346, 30.808550>,  <28.098328, 39.800461, 30.869740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879095, 39.724346, 30.808550>,  <27.513708, 39.597492, 30.706568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879095, 39.724346, 30.808550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147274, 0.841752, -0.519388,
		-0.379327, 0.436895, 0.815619,
		0.913467, 0.317137, 0.254956,
		28.153135, 39.819489, 30.885036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486250, 40.333561, 30.590092>,  <27.513708, 39.597492, 30.706568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486250, 40.333561, 30.590092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881598, 40.278488, 30.615938>,  <28.118805, 40.245445, 30.631447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.881598, 40.278488, 30.615938>,  <27.486250, 40.333561, 30.590092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881598, 40.278488, 30.615938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143385, 0.701857, -0.697737,
		0.050714, 0.698885, 0.713433,
		0.988367, -0.137681, 0.064616,
		28.178108, 40.237183, 30.635323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750322, 41.049835, 30.767656>,  <27.486250, 40.333561, 30.590092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750322, 41.049835, 30.767656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004496, 40.808544, 30.574848>,  <28.157000, 40.663769, 30.459164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004496, 40.808544, 30.574848>,  <27.750322, 41.049835, 30.767656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004496, 40.808544, 30.574848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003149, 0.626272, -0.779598,
		0.772148, 0.493866, 0.399855,
		0.635435, -0.603224, -0.482019,
		28.195126, 40.627579, 30.430243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274055, 41.503193, 30.410824>,  <27.750322, 41.049835, 30.767656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274055, 41.503193, 30.410824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338778, 41.152802, 30.229063>,  <28.377611, 40.942566, 30.120007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338778, 41.152802, 30.229063>,  <28.274055, 41.503193, 30.410824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338778, 41.152802, 30.229063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125453, 0.474994, -0.871001,
		0.978816, 0.083925, 0.186749,
		0.161803, -0.875978, -0.454404,
		28.387318, 40.890007, 30.092741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835096, 41.590092, 29.989872>,  <28.274055, 41.503193, 30.410824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835096, 41.590092, 29.989872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639687, 41.285667, 29.819166>,  <28.522440, 41.103012, 29.716742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639687, 41.285667, 29.819166>,  <28.835096, 41.590092, 29.989872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639687, 41.285667, 29.819166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110712, 0.431084, -0.895494,
		0.865497, -0.484720, -0.126337,
		-0.488525, -0.761061, -0.426766,
		28.493130, 41.057350, 29.691135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257591, 41.446648, 29.387197>,  <28.835096, 41.590092, 29.989872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257591, 41.446648, 29.387197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911356, 41.262947, 29.307360>,  <28.703613, 41.152725, 29.259457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911356, 41.262947, 29.307360>,  <29.257591, 41.446648, 29.387197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911356, 41.262947, 29.307360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104627, 0.223927, -0.968974,
		0.489700, -0.859618, -0.145779,
		-0.865590, -0.459254, -0.199596,
		28.651678, 41.125172, 29.247480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383156, 41.005493, 28.798885>,  <29.257591, 41.446648, 29.387197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383156, 41.005493, 28.798885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988434, 41.068867, 28.785553>,  <28.751600, 41.106892, 28.777554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988434, 41.068867, 28.785553>,  <29.383156, 41.005493, 28.798885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988434, 41.068867, 28.785553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060500, 0.169890, -0.983604,
		-0.150178, -0.972643, -0.177234,
		-0.986806, 0.158438, -0.033331,
		28.692392, 41.116398, 28.775553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167913, 40.588829, 28.135761>,  <29.383156, 41.005493, 28.798885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167913, 40.588829, 28.135761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842466, 40.807610, 28.214622>,  <28.647198, 40.938877, 28.261938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842466, 40.807610, 28.214622>,  <29.167913, 40.588829, 28.135761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842466, 40.807610, 28.214622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236838, -0.002110, -0.971547,
		-0.530972, -0.837162, 0.131255,
		-0.813619, 0.546950, 0.197151,
		28.598381, 40.971695, 28.273767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506483, 40.234955, 27.864031>,  <29.167913, 40.588829, 28.135761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506483, 40.234955, 27.864031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416380, 40.624374, 27.879356>,  <28.362318, 40.858025, 27.888552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416380, 40.624374, 27.879356>,  <28.506483, 40.234955, 27.864031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416380, 40.624374, 27.879356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304665, -0.033031, -0.951887,
		-0.925439, -0.226095, 0.304045,
		-0.225260, 0.973545, 0.038315,
		28.348803, 40.916439, 27.890852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859524, 40.207558, 27.541586>,  <28.506483, 40.234955, 27.864031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859524, 40.207558, 27.541586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.976080, 40.590199, 27.541142>,  <28.046013, 40.819782, 27.540874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.976080, 40.590199, 27.541142>,  <27.859524, 40.207558, 27.541586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976080, 40.590199, 27.541142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420598, 0.127074, -0.898304,
		-0.859180, 0.262223, 0.439373,
		0.291389, 0.956604, -0.001111,
		28.063496, 40.877178, 27.540808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.527546, 31.526598, 47.198002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188354, 31.350094, 47.080551>,  <37.984840, 31.244190, 47.010078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188354, 31.350094, 47.080551>,  <38.527546, 31.526598, 47.198002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188354, 31.350094, 47.080551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387675, 0.138581, 0.911319,
		-0.361439, 0.886613, -0.288580,
		-0.847980, -0.441261, -0.293630,
		37.933960, 31.217716, 46.992462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982391, 31.919428, 47.592026>,  <38.527546, 31.526598, 47.198002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982391, 31.919428, 47.592026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781399, 31.591637, 47.481777>,  <37.660805, 31.394962, 47.415627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781399, 31.591637, 47.481777>,  <37.982391, 31.919428, 47.592026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781399, 31.591637, 47.481777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438147, -0.033469, 0.898280,
		-0.745345, 0.572134, -0.342234,
		-0.502482, -0.819477, -0.275625,
		37.630653, 31.345793, 47.399090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276451, 31.988710, 47.855080>,  <37.982391, 31.919428, 47.592026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276451, 31.988710, 47.855080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339134, 31.598515, 47.793289>,  <37.376743, 31.364397, 47.756214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339134, 31.598515, 47.793289>,  <37.276451, 31.988710, 47.855080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339134, 31.598515, 47.793289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500400, -0.213266, 0.839117,
		-0.851495, -0.054192, -0.521554,
		0.156703, -0.975490, -0.154477,
		37.386147, 31.305868, 47.746944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667698, 31.686371, 48.016300>,  <37.276451, 31.988710, 47.855080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667698, 31.686371, 48.016300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.892662, 31.355844, 48.028297>,  <37.027641, 31.157530, 48.035496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.892662, 31.355844, 48.028297>,  <36.667698, 31.686371, 48.016300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892662, 31.355844, 48.028297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452179, -0.276993, 0.847826,
		-0.692264, -0.490386, -0.529426,
		0.562409, -0.826315, 0.029990,
		37.061386, 31.107950, 48.037296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223705, 31.229731, 48.316273>,  <36.667698, 31.686371, 48.016300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223705, 31.229731, 48.316273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580368, 31.053379, 48.357399>,  <36.794365, 30.947567, 48.382076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580368, 31.053379, 48.357399>,  <36.223705, 31.229731, 48.316273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580368, 31.053379, 48.357399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341085, -0.504906, 0.792925,
		-0.297670, -0.742088, -0.600581,
		0.891658, -0.440879, 0.102819,
		36.847866, 30.921114, 48.388245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160130, 30.546370, 48.349636>,  <36.223705, 31.229731, 48.316273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160130, 30.546370, 48.349636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504749, 30.600815, 48.545273>,  <36.711521, 30.633482, 48.662655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504749, 30.600815, 48.545273>,  <36.160130, 30.546370, 48.349636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504749, 30.600815, 48.545273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371092, -0.488600, 0.789659,
		0.346453, -0.861826, -0.370441,
		0.861546, 0.136112, 0.489094,
		36.763214, 30.641649, 48.692001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177040, 30.020741, 48.664333>,  <36.160130, 30.546370, 48.349636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177040, 30.020741, 48.664333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426563, 30.271885, 48.850521>,  <36.576279, 30.422571, 48.962234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426563, 30.271885, 48.850521>,  <36.177040, 30.020741, 48.664333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426563, 30.271885, 48.850521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247517, -0.406193, 0.879626,
		0.741350, -0.663928, -0.097980,
		0.623807, 0.627859, 0.465465,
		36.613705, 30.460243, 48.990162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543381, 29.608433, 49.101067>,  <36.177040, 30.020741, 48.664333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543381, 29.608433, 49.101067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.598942, 29.967413, 49.268539>,  <36.632278, 30.182800, 49.369022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.598942, 29.967413, 49.268539>,  <36.543381, 29.608433, 49.101067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598942, 29.967413, 49.268539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014397, -0.420903, 0.906991,
		0.990202, -0.132009, -0.045543,
		0.138900, 0.897449, 0.418680,
		36.640614, 30.236647, 49.394142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898327, 29.560505, 49.676651>,  <36.543381, 29.608433, 49.101067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898327, 29.560505, 49.676651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749901, 29.927002, 49.737061>,  <36.660847, 30.146900, 49.773308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749901, 29.927002, 49.737061>,  <36.898327, 29.560505, 49.676651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749901, 29.927002, 49.737061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186309, -0.232788, 0.954515,
		0.909727, 0.326045, 0.257083,
		-0.371061, 0.916245, 0.151029,
		36.638584, 30.201876, 49.782368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235214, 29.735632, 50.253548>,  <36.898327, 29.560505, 49.676651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235214, 29.735632, 50.253548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938999, 30.004395, 50.248779>,  <36.761269, 30.165651, 50.245918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938999, 30.004395, 50.248779>,  <37.235214, 29.735632, 50.253548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938999, 30.004395, 50.248779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268891, -0.280010, 0.921570,
		0.615873, 0.685664, 0.388028,
		-0.740539, 0.671907, -0.011918,
		36.716839, 30.205967, 50.245205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031727, 29.865976, 50.988842>,  <37.235214, 29.735632, 50.253548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031727, 29.865976, 50.988842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712681, 30.003637, 50.790703>,  <36.521252, 30.086233, 50.671822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712681, 30.003637, 50.790703>,  <37.031727, 29.865976, 50.988842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712681, 30.003637, 50.790703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591524, -0.285770, 0.753946,
		0.117917, 0.894368, 0.431510,
		-0.797618, 0.344152, -0.495343,
		36.473396, 30.106882, 50.642101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750393, 30.427063, 51.456154>,  <37.031727, 29.865976, 50.988842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750393, 30.427063, 51.456154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459709, 30.251270, 51.244965>,  <36.285297, 30.145796, 51.118252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459709, 30.251270, 51.244965>,  <36.750393, 30.427063, 51.456154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459709, 30.251270, 51.244965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525877, -0.138595, 0.839193,
		-0.441982, 0.887496, -0.130394,
		-0.726708, -0.439480, -0.527970,
		36.241695, 30.119427, 51.086575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112354, 30.660717, 51.475487>,  <36.750393, 30.427063, 51.456154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112354, 30.660717, 51.475487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071087, 30.266600, 51.421005>,  <36.046326, 30.030128, 51.388317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071087, 30.266600, 51.421005>,  <36.112354, 30.660717, 51.475487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071087, 30.266600, 51.421005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655996, -0.035533, 0.753927,
		-0.747680, 0.167133, -0.642683,
		-0.103170, -0.985294, -0.136206,
		36.040134, 29.971012, 51.380142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582226, 30.870316, 51.913956>,  <36.112354, 30.660717, 51.475487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582226, 30.870316, 51.913956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279648, 30.936476, 51.660835>,  <35.098103, 30.976171, 51.508965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279648, 30.936476, 51.660835>,  <35.582226, 30.870316, 51.913956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279648, 30.936476, 51.660835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261998, 0.809857, 0.524870,
		0.599289, 0.562827, -0.569279,
		-0.756446, 0.165398, -0.632798,
		35.052715, 30.986095, 51.470997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130322, 31.478899, 52.075951>,  <35.582226, 30.870316, 51.913956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130322, 31.478899, 52.075951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950527, 31.831205, 52.135563>,  <34.842651, 32.042587, 52.171329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950527, 31.831205, 52.135563>,  <35.130322, 31.478899, 52.075951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950527, 31.831205, 52.135563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072347, 0.130396, -0.988819,
		-0.890351, -0.455246, 0.005109,
		-0.449489, 0.880766, 0.149034,
		34.815681, 32.095436, 52.180271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551128, 31.533653, 51.660172>,  <35.130322, 31.478899, 52.075951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551128, 31.533653, 51.660172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.662979, 31.911699, 51.727772>,  <34.730091, 32.138527, 51.768333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.662979, 31.911699, 51.727772>,  <34.551128, 31.533653, 51.660172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662979, 31.911699, 51.727772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022866, 0.182528, -0.982935,
		-0.959836, 0.270992, 0.072651,
		0.279628, 0.945117, 0.169000,
		34.746868, 32.195236, 51.778473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009315, 31.975286, 51.390980>,  <34.551128, 31.533653, 51.660172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009315, 31.975286, 51.390980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340355, 32.199024, 51.409805>,  <34.538979, 32.333267, 51.421101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340355, 32.199024, 51.409805>,  <34.009315, 31.975286, 51.390980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340355, 32.199024, 51.409805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066047, 0.180295, -0.981393,
		-0.557421, 0.809091, 0.186155,
		0.827599, 0.559344, 0.047063,
		34.588634, 32.366829, 51.423923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881077, 32.533836, 50.920639>,  <34.009315, 31.975286, 51.390980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881077, 32.533836, 50.920639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276894, 32.536957, 50.978260>,  <34.514381, 32.538830, 51.012833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276894, 32.536957, 50.978260>,  <33.881077, 32.533836, 50.920639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276894, 32.536957, 50.978260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130738, 0.373669, -0.918302,
		-0.060994, 0.927530, 0.368739,
		0.989539, 0.007803, 0.144055,
		34.573757, 32.539299, 51.021477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094616, 33.275116, 50.769222>,  <33.881077, 32.533836, 50.920639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094616, 33.275116, 50.769222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413059, 33.033131, 50.763020>,  <34.604126, 32.887939, 50.759300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413059, 33.033131, 50.763020>,  <34.094616, 33.275116, 50.769222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413059, 33.033131, 50.763020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301801, 0.419101, -0.856312,
		0.524532, 0.677035, 0.516226,
		0.796104, -0.604961, -0.015502,
		34.651890, 32.851643, 50.758369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432899, 33.560711, 50.273884>,  <34.094616, 33.275116, 50.769222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432899, 33.560711, 50.273884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653442, 33.227364, 50.289440>,  <34.785767, 33.027355, 50.298775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653442, 33.227364, 50.289440>,  <34.432899, 33.560711, 50.273884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653442, 33.227364, 50.289440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435086, 0.247447, -0.865719,
		0.711836, 0.494239, 0.499016,
		0.551353, -0.833365, 0.038895,
		34.818848, 32.977352, 50.301109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115776, 33.755074, 50.140076>,  <34.432899, 33.560711, 50.273884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115776, 33.755074, 50.140076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076401, 33.367226, 50.050495>,  <35.052776, 33.134518, 49.996746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076401, 33.367226, 50.050495>,  <35.115776, 33.755074, 50.140076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076401, 33.367226, 50.050495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508666, 0.144400, -0.848768,
		0.855318, -0.197470, 0.478996,
		-0.098439, -0.969616, -0.223954,
		35.046867, 33.076340, 49.983311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771095, 33.556953, 49.895924>,  <35.115776, 33.755074, 50.140076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771095, 33.556953, 49.895924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501652, 33.306675, 49.738571>,  <35.339985, 33.156506, 49.644157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501652, 33.306675, 49.738571>,  <35.771095, 33.556953, 49.895924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501652, 33.306675, 49.738571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392858, 0.147714, -0.907658,
		0.626029, -0.765952, 0.146309,
		-0.673610, -0.625698, -0.393384,
		35.299568, 33.118965, 49.620556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250107, 33.103100, 49.475540>,  <35.771095, 33.556953, 49.895924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250107, 33.103100, 49.475540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880932, 33.026451, 49.341988>,  <35.659428, 32.980461, 49.261856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880932, 33.026451, 49.341988>,  <36.250107, 33.103100, 49.475540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880932, 33.026451, 49.341988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337052, 0.016798, -0.941336,
		0.185987, -0.981326, 0.049082,
		-0.922933, -0.191620, -0.333882,
		35.604053, 32.968967, 49.241821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412136, 32.733971, 48.848755>,  <36.250107, 33.103100, 49.475540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412136, 32.733971, 48.848755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033131, 32.858246, 48.818596>,  <35.805725, 32.932812, 48.800499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033131, 32.858246, 48.818596>,  <36.412136, 32.733971, 48.848755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033131, 32.858246, 48.818596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067219, -0.036970, -0.997053,
		-0.312562, -0.949792, 0.014145,
		-0.947516, 0.310690, -0.075399,
		35.748875, 32.951454, 48.795975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045101, 32.316486, 48.298092>,  <36.412136, 32.733971, 48.848755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045101, 32.316486, 48.298092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818283, 32.645264, 48.319511>,  <35.682194, 32.842529, 48.332363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818283, 32.645264, 48.319511>,  <36.045101, 32.316486, 48.298092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818283, 32.645264, 48.319511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036654, 0.090129, -0.995255,
		-0.822873, -0.562389, -0.081234,
		-0.567042, 0.821947, 0.053551,
		35.648170, 32.891846, 48.335575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550781, 32.260727, 47.763626>,  <36.045101, 32.316486, 48.298092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550781, 32.260727, 47.763626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561096, 32.649021, 47.859123>,  <35.567284, 32.882000, 47.916424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561096, 32.649021, 47.859123>,  <35.550781, 32.260727, 47.763626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561096, 32.649021, 47.859123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079009, 0.236100, -0.968511,
		-0.996540, 0.043837, -0.070609,
		0.025786, 0.970739, 0.238747,
		35.568832, 32.940243, 47.930748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997280, 32.529278, 47.431019>,  <35.550781, 32.260727, 47.763626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997280, 32.529278, 47.431019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246189, 32.835732, 47.495281>,  <35.395535, 33.019604, 47.533840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246189, 32.835732, 47.495281>,  <34.997280, 32.529278, 47.431019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246189, 32.835732, 47.495281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063228, 0.155369, -0.985831,
		-0.780244, 0.623612, 0.048240,
		0.622271, 0.766139, 0.160655,
		35.432869, 33.065575, 47.543476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760170, 33.225239, 46.996120>,  <34.997280, 32.529278, 47.431019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760170, 33.225239, 46.996120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153381, 33.258572, 47.061485>,  <35.389309, 33.278572, 47.100704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153381, 33.258572, 47.061485>,  <34.760170, 33.225239, 46.996120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153381, 33.258572, 47.061485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121192, 0.373673, -0.919609,
		-0.137700, 0.923809, 0.357233,
		0.983032, 0.083337, 0.163413,
		35.448292, 33.283573, 47.110508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255478, 33.782864, 47.015724>,  <34.760170, 33.225239, 46.996120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255478, 33.782864, 47.015724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920807, 33.622864, 46.866074>,  <33.720005, 33.526863, 46.776283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920807, 33.622864, 46.866074>,  <34.255478, 33.782864, 47.015724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920807, 33.622864, 46.866074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378683, -0.071014, 0.922798,
		-0.395684, 0.913761, -0.092056,
		-0.836680, -0.399996, -0.374125,
		33.669804, 33.502865, 46.753838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809544, 34.098717, 47.365654>,  <34.255478, 33.782864, 47.015724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809544, 34.098717, 47.365654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589466, 33.797279, 47.221771>,  <33.457420, 33.616417, 47.135441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589466, 33.797279, 47.221771>,  <33.809544, 34.098717, 47.365654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589466, 33.797279, 47.221771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447087, -0.097975, 0.889108,
		-0.705265, 0.650004, -0.283014,
		-0.550196, -0.753589, -0.359706,
		33.424408, 33.571201, 47.113861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103775, 34.228539, 47.551865>,  <33.809544, 34.098717, 47.365654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103775, 34.228539, 47.551865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132347, 33.833988, 47.492592>,  <33.149490, 33.597260, 47.457027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132347, 33.833988, 47.492592>,  <33.103775, 34.228539, 47.551865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132347, 33.833988, 47.492592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516338, -0.163678, 0.840597,
		-0.853400, 0.016466, -0.520996,
		0.071434, -0.986376, -0.148185,
		33.153778, 33.538074, 47.448135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370579, 33.934620, 47.792702>,  <33.103775, 34.228539, 47.551865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370579, 33.934620, 47.792702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640793, 33.639870, 47.803070>,  <32.802921, 33.463020, 47.809292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.640793, 33.639870, 47.803070>,  <32.370579, 33.934620, 47.792702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640793, 33.639870, 47.803070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480165, -0.412972, 0.773884,
		-0.559549, -0.535231, -0.632797,
		0.675534, -0.736873, 0.025921,
		32.843452, 33.418808, 47.810848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941702, 33.438778, 48.028156>,  <32.370579, 33.934620, 47.792702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941702, 33.438778, 48.028156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305069, 33.274914, 48.061535>,  <32.523090, 33.176598, 48.081562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.305069, 33.274914, 48.061535>,  <31.941702, 33.438778, 48.028156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305069, 33.274914, 48.061535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275584, -0.436667, 0.856374,
		-0.314379, -0.800940, -0.509569,
		0.908416, -0.409655, 0.083447,
		32.577595, 33.152016, 48.086567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792034, 32.782627, 48.150620>,  <31.941702, 33.438778, 48.028156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792034, 32.782627, 48.150620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169399, 32.790440, 48.283039>,  <32.395817, 32.795128, 48.362492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169399, 32.790440, 48.283039>,  <31.792034, 32.782627, 48.150620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169399, 32.790440, 48.283039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307346, -0.323422, 0.894951,
		0.124549, -0.946053, -0.299117,
		0.943412, 0.019533, 0.331047,
		32.452423, 32.796299, 48.382355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787273, 32.311764, 48.658787>,  <31.792034, 32.782627, 48.150620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787273, 32.311764, 48.658787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124294, 32.505005, 48.754047>,  <32.326508, 32.620949, 48.811203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124294, 32.505005, 48.754047>,  <31.787273, 32.311764, 48.658787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124294, 32.505005, 48.754047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053129, -0.365453, 0.929312,
		0.535987, -0.795647, -0.282247,
		0.842553, 0.483104, 0.238150,
		32.377060, 32.649937, 48.825493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967363, 31.569153, 48.574886>,  <31.787273, 32.311764, 48.658787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967363, 31.569153, 48.574886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708092, 31.272238, 48.506916>,  <31.552528, 31.094090, 48.466133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708092, 31.272238, 48.506916>,  <31.967363, 31.569153, 48.574886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708092, 31.272238, 48.506916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178739, 0.068613, -0.981501,
		0.740213, -0.666562, 0.088202,
		-0.648180, -0.742285, -0.169928,
		31.513638, 31.049553, 48.455936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331020, 31.136583, 48.191250>,  <31.967363, 31.569153, 48.574886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331020, 31.136583, 48.191250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957062, 31.016657, 48.115276>,  <31.732685, 30.944702, 48.069695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957062, 31.016657, 48.115276>,  <32.331020, 31.136583, 48.191250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957062, 31.016657, 48.115276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190638, 0.027178, -0.981284,
		0.299366, -0.953610, 0.031748,
		-0.934900, -0.299815, -0.189930,
		31.676592, 30.926712, 48.058296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379982, 30.471584, 47.624908>,  <32.331020, 31.136583, 48.191250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379982, 30.471584, 47.624908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019356, 30.644596, 47.628895>,  <31.802980, 30.748404, 47.631287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019356, 30.644596, 47.628895>,  <32.379982, 30.471584, 47.624908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019356, 30.644596, 47.628895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069354, -0.121739, -0.990136,
		-0.427051, -0.893362, 0.139753,
		-0.901564, 0.432531, 0.009970,
		31.748886, 30.774355, 47.631886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970156, 30.035521, 47.212601>,  <32.379982, 30.471584, 47.624908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970156, 30.035521, 47.212601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800076, 30.396542, 47.239750>,  <31.698027, 30.613153, 47.256039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800076, 30.396542, 47.239750>,  <31.970156, 30.035521, 47.212601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800076, 30.396542, 47.239750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007588, 0.078546, -0.996882,
		-0.905068, -0.423359, -0.040246,
		-0.425200, 0.902551, 0.067877,
		31.672516, 30.667307, 47.260113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387180, 30.002956, 46.825981>,  <31.970156, 30.035521, 47.212601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387180, 30.002956, 46.825981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476437, 30.392288, 46.847290>,  <31.529989, 30.625887, 46.860073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476437, 30.392288, 46.847290>,  <31.387180, 30.002956, 46.825981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476437, 30.392288, 46.847290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011538, 0.057281, -0.998291,
		-0.974718, 0.222143, 0.024012,
		0.223139, 0.973330, 0.053269,
		31.543379, 30.684288, 46.863270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977787, 30.346720, 46.310951>,  <31.387180, 30.002956, 46.825981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977787, 30.346720, 46.310951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262032, 30.611935, 46.405109>,  <31.432579, 30.771063, 46.461605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262032, 30.611935, 46.405109>,  <30.977787, 30.346720, 46.310951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262032, 30.611935, 46.405109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120384, 0.215053, -0.969154,
		-0.693208, 0.717031, 0.073001,
		0.710613, 0.663037, 0.235396,
		31.475216, 30.810846, 46.475727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825916, 30.895231, 45.860687>,  <30.977787, 30.346720, 46.310951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825916, 30.895231, 45.860687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.198414, 30.979240, 45.979801>,  <31.421913, 31.029646, 46.051270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.198414, 30.979240, 45.979801>,  <30.825916, 30.895231, 45.860687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198414, 30.979240, 45.979801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201309, 0.384674, -0.900833,
		-0.303745, 0.898842, 0.315946,
		0.931243, 0.210021, 0.297788,
		31.477787, 31.042246, 46.069138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.031811, 27.507582, 49.619099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.997864, 27.218529, 49.344696>,  <33.977497, 27.045097, 49.180054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.997864, 27.218529, 49.344696>,  <34.031811, 27.507582, 49.619099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997864, 27.218529, 49.344696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255261, 0.649743, -0.716014,
		0.963141, -0.235873, 0.129320,
		-0.084863, -0.722633, -0.686003,
		33.972404, 27.001740, 49.138897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654800, 27.887154, 49.835438>,  <34.031811, 27.507582, 49.619099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654800, 27.887154, 49.835438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.987152, 28.097948, 49.906906>,  <35.186565, 28.224424, 49.949787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.987152, 28.097948, 49.906906>,  <34.654800, 27.887154, 49.835438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987152, 28.097948, 49.906906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078801, 0.206415, -0.975286,
		-0.550840, 0.824427, 0.129980,
		0.830882, 0.526985, 0.178667,
		35.236416, 28.256044, 49.960506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540974, 28.488497, 49.303318>,  <34.654800, 27.887154, 49.835438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540974, 28.488497, 49.303318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.923386, 28.503572, 49.419651>,  <35.152832, 28.512617, 49.489452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.923386, 28.503572, 49.419651>,  <34.540974, 28.488497, 49.303318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923386, 28.503572, 49.419651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284118, 0.126699, -0.950381,
		-0.072667, 0.991225, 0.110420,
		0.956032, 0.037689, 0.290832,
		35.210194, 28.514879, 49.506901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928741, 29.232536, 49.257771>,  <34.540974, 28.488497, 49.303318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928741, 29.232536, 49.257771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.165028, 28.914017, 49.205666>,  <35.306801, 28.722906, 49.174404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.165028, 28.914017, 49.205666>,  <34.928741, 29.232536, 49.257771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165028, 28.914017, 49.205666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193803, 0.296731, -0.935089,
		0.783260, 0.527126, 0.329608,
		0.590714, -0.796297, -0.130259,
		35.342243, 28.675127, 49.166588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388145, 29.502914, 48.796360>,  <34.928741, 29.232536, 49.257771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388145, 29.502914, 48.796360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.477707, 29.113087, 48.792793>,  <35.531445, 28.879190, 48.790653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.477707, 29.113087, 48.792793>,  <35.388145, 29.502914, 48.796360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477707, 29.113087, 48.792793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315481, 0.081127, -0.945458,
		0.922139, 0.208877, 0.325624,
		0.223901, -0.974571, -0.008913,
		35.544876, 28.820715, 48.790119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856052, 29.463640, 48.351048>,  <35.388145, 29.502914, 48.796360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856052, 29.463640, 48.351048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.758652, 29.078167, 48.394913>,  <35.700211, 28.846884, 48.421234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.758652, 29.078167, 48.394913>,  <35.856052, 29.463640, 48.351048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758652, 29.078167, 48.394913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223729, -0.165829, -0.960441,
		0.943744, -0.209332, 0.255983,
		-0.243501, -0.963681, 0.109666,
		35.685600, 28.789062, 48.427811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412045, 29.141626, 47.983051>,  <35.856052, 29.463640, 48.351048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412045, 29.141626, 47.983051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.094543, 28.899555, 48.007427>,  <35.904041, 28.754313, 48.022053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.094543, 28.899555, 48.007427>,  <36.412045, 29.141626, 47.983051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094543, 28.899555, 48.007427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195198, -0.348349, -0.916815,
		0.576066, -0.715830, 0.394633,
		-0.793754, -0.605178, 0.060943,
		35.856419, 28.718002, 48.025711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571419, 28.430370, 47.698212>,  <36.412045, 29.141626, 47.983051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571419, 28.430370, 47.698212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.174759, 28.472486, 47.668419>,  <35.936764, 28.497755, 47.650543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.174759, 28.472486, 47.668419>,  <36.571419, 28.430370, 47.698212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174759, 28.472486, 47.668419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014399, -0.483503, -0.875224,
		-0.128163, -0.868987, 0.477949,
		-0.991648, 0.105289, -0.074479,
		35.877266, 28.504074, 47.646076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302212, 27.780523, 47.347244>,  <36.571419, 28.430370, 47.698212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302212, 27.780523, 47.347244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.999794, 28.039421, 47.308331>,  <35.818344, 28.194759, 47.284981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.999794, 28.039421, 47.308331>,  <36.302212, 27.780523, 47.347244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999794, 28.039421, 47.308331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059141, -0.080475, -0.995000,
		-0.651840, -0.758020, 0.022564,
		-0.756047, 0.647247, -0.097287,
		35.772980, 28.233595, 47.279144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944618, 27.514833, 46.805424>,  <36.302212, 27.780523, 47.347244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944618, 27.514833, 46.805424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.798157, 27.886589, 46.824028>,  <35.710278, 28.109642, 46.835190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.798157, 27.886589, 46.824028>,  <35.944618, 27.514833, 46.805424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798157, 27.886589, 46.824028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099600, 0.088840, -0.991053,
		-0.925207, -0.358250, -0.125097,
		-0.366158, 0.929389, 0.046514,
		35.688309, 28.165405, 46.837982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319443, 27.549528, 46.375580>,  <35.944618, 27.514833, 46.805424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319443, 27.549528, 46.375580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.463497, 27.917204, 46.439320>,  <35.549931, 28.137810, 46.477562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.463497, 27.917204, 46.439320>,  <35.319443, 27.549528, 46.375580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463497, 27.917204, 46.439320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050765, 0.151249, -0.987191,
		-0.931518, 0.363612, 0.007808,
		0.360135, 0.919190, 0.159350,
		35.571537, 28.192961, 46.487125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869114, 27.941315, 46.007423>,  <35.319443, 27.549528, 46.375580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869114, 27.941315, 46.007423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207745, 28.151670, 46.040287>,  <35.410923, 28.277884, 46.060005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207745, 28.151670, 46.040287>,  <34.869114, 27.941315, 46.007423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207745, 28.151670, 46.040287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011877, 0.172987, -0.984852,
		-0.532136, 0.832776, 0.152693,
		0.846576, 0.525889, 0.082162,
		35.461716, 28.309437, 46.064934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445896, 28.534616, 46.144615>,  <34.869114, 27.941315, 46.007423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445896, 28.534616, 46.144615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051311, 28.595623, 46.168739>,  <33.814560, 28.632227, 46.183216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051311, 28.595623, 46.168739>,  <34.445896, 28.534616, 46.144615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051311, 28.595623, 46.168739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021272, -0.245665, 0.969121,
		0.162624, 0.957281, 0.239094,
		-0.986459, 0.152516, 0.060315,
		33.755375, 28.641378, 46.186832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416348, 29.030985, 46.618465>,  <34.445896, 28.534616, 46.144615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416348, 29.030985, 46.618465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064873, 28.842806, 46.585999>,  <33.853989, 28.729898, 46.566517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064873, 28.842806, 46.585999>,  <34.416348, 29.030985, 46.618465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064873, 28.842806, 46.585999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046129, -0.252898, 0.966392,
		-0.475166, 0.845411, 0.243920,
		-0.878686, -0.470448, -0.081171,
		33.801266, 28.701672, 46.561646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035297, 29.262730, 47.290989>,  <34.416348, 29.030985, 46.618465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035297, 29.262730, 47.290989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.832794, 28.941122, 47.166245>,  <33.711292, 28.748158, 47.091396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.832794, 28.941122, 47.166245>,  <34.035297, 29.262730, 47.290989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832794, 28.941122, 47.166245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033678, -0.342924, 0.938759,
		-0.861724, 0.485757, 0.146530,
		-0.506258, -0.804017, -0.311865,
		33.680916, 28.699917, 47.072685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367863, 29.236998, 47.698883>,  <34.035297, 29.262730, 47.290989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367863, 29.236998, 47.698883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378757, 28.860430, 47.564426>,  <33.385296, 28.634489, 47.483753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378757, 28.860430, 47.564426>,  <33.367863, 29.236998, 47.698883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378757, 28.860430, 47.564426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478024, -0.307588, 0.822729,
		-0.877925, 0.138274, -0.458398,
		0.027236, -0.941419, -0.336137,
		33.386929, 28.578005, 47.463585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694012, 28.941072, 47.904106>,  <33.367863, 29.236998, 47.698883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694012, 28.941072, 47.904106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932091, 28.627979, 47.831364>,  <33.074940, 28.440125, 47.787720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932091, 28.627979, 47.831364>,  <32.694012, 28.941072, 47.904106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932091, 28.627979, 47.831364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296671, -0.424358, 0.855515,
		-0.746810, -0.455249, -0.484791,
		0.595198, -0.782731, -0.181856,
		33.110649, 28.393160, 47.776806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372631, 28.271036, 47.758358>,  <32.694012, 28.941072, 47.904106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372631, 28.271036, 47.758358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.722973, 28.200563, 47.938065>,  <32.933178, 28.158279, 48.045887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.722973, 28.200563, 47.938065>,  <32.372631, 28.271036, 47.758358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722973, 28.200563, 47.938065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468992, -0.530080, 0.706443,
		0.113683, -0.829443, -0.546901,
		0.875855, -0.176181, 0.449263,
		32.985729, 28.147709, 48.072842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238689, 27.795700, 48.170040>,  <32.372631, 28.271036, 47.758358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238689, 27.795700, 48.170040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.605309, 27.871548, 48.310890>,  <32.825279, 27.917055, 48.395401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.605309, 27.871548, 48.310890>,  <32.238689, 27.795700, 48.170040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605309, 27.871548, 48.310890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310277, -0.218382, 0.925223,
		0.252336, -0.957264, -0.141323,
		0.916545, 0.189617, 0.352123,
		32.880272, 27.928432, 48.416527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429764, 27.309446, 48.737389>,  <32.238689, 27.795700, 48.170040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429764, 27.309446, 48.737389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.693401, 27.599669, 48.816544>,  <32.851585, 27.773802, 48.864037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.693401, 27.599669, 48.816544>,  <32.429764, 27.309446, 48.737389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693401, 27.599669, 48.816544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250769, -0.036048, 0.967375,
		0.709020, -0.687217, 0.158188,
		0.659095, 0.725557, 0.197892,
		32.891129, 27.817335, 48.875912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826981, 27.129940, 49.275681>,  <32.429764, 27.309446, 48.737389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826981, 27.129940, 49.275681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896160, 27.523703, 49.262836>,  <32.937668, 27.759960, 49.255131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896160, 27.523703, 49.262836>,  <32.826981, 27.129940, 49.275681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896160, 27.523703, 49.262836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149658, 0.058484, 0.987007,
		0.973495, -0.165894, 0.157439,
		0.172946, 0.984408, -0.032107,
		32.948044, 27.819025, 49.253204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277473, 27.300383, 49.858986>,  <32.826981, 27.129940, 49.275681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277473, 27.300383, 49.858986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.067871, 27.615820, 49.730274>,  <32.942108, 27.805082, 49.653049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.067871, 27.615820, 49.730274>,  <33.277473, 27.300383, 49.858986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067871, 27.615820, 49.730274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135067, 0.296077, 0.945566,
		0.840937, 0.538942, -0.048633,
		-0.524005, 0.788593, -0.321776,
		32.910671, 27.852398, 49.633743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554104, 27.796505, 50.344734>,  <33.277473, 27.300383, 49.858986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554104, 27.796505, 50.344734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222115, 27.938072, 50.172279>,  <33.022919, 28.023012, 50.068806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.222115, 27.938072, 50.172279>,  <33.554104, 27.796505, 50.344734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222115, 27.938072, 50.172279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248346, 0.457637, 0.853752,
		0.499463, 0.815666, -0.291934,
		-0.829977, 0.353917, -0.431140,
		32.973122, 28.044247, 50.042938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647041, 28.533508, 50.532867>,  <33.554104, 27.796505, 50.344734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647041, 28.533508, 50.532867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262524, 28.455528, 50.454983>,  <33.031815, 28.408741, 50.408253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262524, 28.455528, 50.454983>,  <33.647041, 28.533508, 50.532867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262524, 28.455528, 50.454983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265786, 0.469809, 0.841806,
		-0.072633, 0.860973, -0.503439,
		-0.961292, -0.194950, -0.194711,
		32.974136, 28.397043, 50.396568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253113, 29.178698, 50.669518>,  <33.647041, 28.533508, 50.532867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253113, 29.178698, 50.669518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.986488, 28.881018, 50.686741>,  <32.826511, 28.702410, 50.697075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.986488, 28.881018, 50.686741>,  <33.253113, 29.178698, 50.669518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986488, 28.881018, 50.686741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470872, 0.465125, 0.749626,
		-0.577901, 0.479398, -0.660460,
		-0.666566, -0.744202, 0.043061,
		32.786518, 28.657757, 50.699657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561127, 29.517960, 50.651608>,  <33.253113, 29.178698, 50.669518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561127, 29.517960, 50.651608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524433, 29.152666, 50.810398>,  <32.502419, 28.933491, 50.905674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524433, 29.152666, 50.810398>,  <32.561127, 29.517960, 50.651608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524433, 29.152666, 50.810398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527515, 0.382693, 0.758468,
		-0.844579, -0.139837, -0.516849,
		-0.091733, -0.913232, 0.396980,
		32.496914, 28.878696, 50.929493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865957, 29.323280, 50.530380>,  <32.561127, 29.517960, 50.651608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865957, 29.323280, 50.530380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.602766, 29.570986, 50.701763>,  <31.444851, 29.719608, 50.804592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.602766, 29.570986, 50.701763>,  <31.865957, 29.323280, 50.530380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602766, 29.570986, 50.701763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258985, 0.348178, -0.900943,
		-0.707101, -0.703766, -0.068715,
		-0.657978, 0.619262, 0.428462,
		31.405373, 29.756763, 50.830303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224537, 29.201843, 50.222565>,  <31.865957, 29.323280, 50.530380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224537, 29.201843, 50.222565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.177046, 29.571232, 50.368500>,  <31.148550, 29.792866, 50.456059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.177046, 29.571232, 50.368500>,  <31.224537, 29.201843, 50.222565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177046, 29.571232, 50.368500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343816, 0.306468, -0.887619,
		-0.931501, -0.230822, 0.281118,
		-0.118729, 0.923471, 0.364835,
		31.141428, 29.848272, 50.477951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494177, 29.443039, 49.966045>,  <31.224537, 29.201843, 50.222565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494177, 29.443039, 49.966045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.713728, 29.755997, 50.083748>,  <30.845459, 29.943771, 50.154369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.713728, 29.755997, 50.083748>,  <30.494177, 29.443039, 49.966045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713728, 29.755997, 50.083748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204364, 0.466943, -0.860349,
		-0.810535, 0.412092, 0.416189,
		0.548879, 0.782397, 0.294256,
		30.878391, 29.990715, 50.172024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178303, 30.004469, 49.775955>,  <30.494177, 29.443039, 49.966045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178303, 30.004469, 49.775955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.543543, 30.162220, 49.817364>,  <30.762686, 30.256870, 49.842209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.543543, 30.162220, 49.817364>,  <30.178303, 30.004469, 49.775955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543543, 30.162220, 49.817364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074781, 0.411554, -0.908312,
		-0.400823, 0.821637, 0.405281,
		0.913098, 0.394380, 0.103518,
		30.817472, 30.280535, 49.848419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155773, 30.673456, 49.522442>,  <30.178303, 30.004469, 49.775955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155773, 30.673456, 49.522442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.553297, 30.630295, 49.533035>,  <30.791811, 30.604399, 49.539391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.553297, 30.630295, 49.533035>,  <30.155773, 30.673456, 49.522442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553297, 30.630295, 49.533035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065573, 0.377238, -0.923792,
		0.089690, 0.919809, 0.381977,
		0.993809, -0.107902, 0.026480,
		30.851440, 30.597923, 49.540977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617579, 31.302635, 49.418083>,  <30.155773, 30.673456, 49.522442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617579, 31.302635, 49.418083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874205, 31.012527, 49.318180>,  <31.028181, 30.838463, 49.258236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874205, 31.012527, 49.318180>,  <30.617579, 31.302635, 49.418083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874205, 31.012527, 49.318180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121032, 0.417239, -0.900701,
		0.757459, 0.547630, 0.355467,
		0.641566, -0.725267, -0.249760,
		31.066675, 30.794947, 49.243252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275898, 31.637648, 49.090702>,  <30.617579, 31.302635, 49.418083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275898, 31.637648, 49.090702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.277769, 31.256901, 48.968113>,  <31.278893, 31.028452, 48.894562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.277769, 31.256901, 48.968113>,  <31.275898, 31.637648, 49.090702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277769, 31.256901, 48.968113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106574, 0.305201, -0.946305,
		0.994294, -0.028233, 0.102873,
		0.004680, -0.951869, -0.306469,
		31.279173, 30.971340, 48.876171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070099, 31.945053, 49.330139>,  <31.275898, 31.637648, 49.090702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070099, 31.945053, 49.330139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224842, 32.313629, 49.315815>,  <32.317688, 32.534775, 49.307220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224842, 32.313629, 49.315815>,  <32.070099, 31.945053, 49.330139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224842, 32.313629, 49.315815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223771, -0.056131, 0.973024,
		0.894575, -0.384441, -0.227907,
		0.386863, 0.921442, -0.035813,
		32.340900, 32.590061, 49.305073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689991, 31.948214, 49.684921>,  <32.070099, 31.945053, 49.330139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689991, 31.948214, 49.684921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.533470, 32.315987, 49.700550>,  <32.439556, 32.536652, 49.709927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.533470, 32.315987, 49.700550>,  <32.689991, 31.948214, 49.684921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533470, 32.315987, 49.700550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157426, 0.025046, 0.987213,
		0.906697, 0.392449, -0.154543,
		-0.391302, 0.919432, 0.039072,
		32.416080, 32.591816, 49.712273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044846, 32.217850, 50.313416>,  <32.689991, 31.948214, 49.684921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044846, 32.217850, 50.313416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.787075, 32.519814, 50.264717>,  <32.632412, 32.700993, 50.235497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.787075, 32.519814, 50.264717>,  <33.044846, 32.217850, 50.313416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787075, 32.519814, 50.264717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046678, 0.197758, 0.979139,
		0.763239, 0.625301, -0.162679,
		-0.644428, 0.754911, -0.121749,
		32.593746, 32.746288, 50.228191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288689, 32.893230, 50.585701>,  <33.044846, 32.217850, 50.313416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288689, 32.893230, 50.585701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888859, 32.897739, 50.596432>,  <32.648960, 32.900444, 50.602871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888859, 32.897739, 50.596432>,  <33.288689, 32.893230, 50.585701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888859, 32.897739, 50.596432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028662, 0.222170, 0.974587,
		0.005021, 0.974943, -0.222399,
		-0.999577, 0.011268, 0.026828,
		32.588985, 32.901119, 50.604481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109715, 33.430565, 50.828331>,  <33.288689, 32.893230, 50.585701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109715, 33.430565, 50.828331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.765141, 33.233681, 50.878399>,  <32.558395, 33.115551, 50.908440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.765141, 33.233681, 50.878399>,  <33.109715, 33.430565, 50.828331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765141, 33.233681, 50.878399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013273, 0.268187, 0.963276,
		-0.507698, 0.828136, -0.237558,
		-0.861433, -0.492207, 0.125166,
		32.506710, 33.086018, 50.915947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738941, 33.815464, 51.292248>,  <33.109715, 33.430565, 50.828331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738941, 33.815464, 51.292248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.559765, 33.459724, 51.328938>,  <32.452259, 33.246281, 51.350952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.559765, 33.459724, 51.328938>,  <32.738941, 33.815464, 51.292248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559765, 33.459724, 51.328938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085528, 0.059496, 0.994558,
		-0.889965, 0.453345, 0.049414,
		-0.447938, -0.889347, 0.091723,
		32.425385, 33.192921, 51.356453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272026, 33.885612, 51.836132>,  <32.738941, 33.815464, 51.292248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272026, 33.885612, 51.836132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.331272, 33.493484, 51.783932>,  <32.366821, 33.258209, 51.752613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.331272, 33.493484, 51.783932>,  <32.272026, 33.885612, 51.836132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331272, 33.493484, 51.783932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181738, -0.102729, 0.977966,
		-0.972128, -0.168573, 0.162946,
		0.148120, -0.980321, -0.130502,
		32.375710, 33.199387, 51.744781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890776, 33.529804, 52.300076>,  <32.272026, 33.885612, 51.836132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890776, 33.529804, 52.300076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.208527, 33.298859, 52.224590>,  <32.399178, 33.160290, 52.179298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.208527, 33.298859, 52.224590>,  <31.890776, 33.529804, 52.300076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208527, 33.298859, 52.224590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231236, 0.000152, 0.972898,
		-0.561692, -0.816484, 0.133629,
		0.794376, -0.577368, -0.188715,
		32.446838, 33.125648, 52.167976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863977, 33.041317, 52.793980>,  <31.890776, 33.529804, 52.300076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863977, 33.041317, 52.793980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.236645, 33.056911, 52.649494>,  <32.460247, 33.066269, 52.562805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.236645, 33.056911, 52.649494>,  <31.863977, 33.041317, 52.793980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236645, 33.056911, 52.649494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352039, 0.148823, 0.924078,
		0.089777, -0.988095, 0.124931,
		0.931670, 0.038981, -0.361209,
		32.516144, 33.068607, 52.541130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.399773, 35.154533, 36.591759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675190, 35.002888, 36.839043>,  <36.840439, 34.911900, 36.987411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675190, 35.002888, 36.839043>,  <36.399773, 35.154533, 36.591759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675190, 35.002888, 36.839043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683111, -0.052872, 0.728399,
		-0.243465, -0.923836, -0.295386,
		0.688538, -0.379120, 0.618209,
		36.881752, 34.889153, 37.024506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167973, 34.519878, 36.929729>,  <36.399773, 35.154533, 36.591759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167973, 34.519878, 36.929729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443054, 34.667526, 37.179787>,  <36.608105, 34.756115, 37.329823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443054, 34.667526, 37.179787>,  <36.167973, 34.519878, 36.929729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443054, 34.667526, 37.179787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546748, -0.303177, 0.780481,
		0.477623, -0.878539, -0.006679,
		0.687708, 0.369124, 0.625144,
		36.649368, 34.778263, 37.367329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097839, 34.052925, 37.551762>,  <36.167973, 34.519878, 36.929729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097839, 34.052925, 37.551762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267220, 34.394207, 37.673565>,  <36.368847, 34.598976, 37.746647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267220, 34.394207, 37.673565>,  <36.097839, 34.052925, 37.551762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267220, 34.394207, 37.673565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503944, -0.057479, 0.861822,
		0.752818, -0.518391, 0.405630,
		0.423446, 0.853210, 0.304511,
		36.394253, 34.650169, 37.764919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434898, 33.901825, 38.173889>,  <36.097839, 34.052925, 37.551762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434898, 33.901825, 38.173889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382614, 34.298370, 38.169643>,  <36.351242, 34.536297, 38.167095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382614, 34.298370, 38.169643>,  <36.434898, 33.901825, 38.173889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382614, 34.298370, 38.169643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502124, -0.056968, 0.862917,
		0.854860, 0.118120, 0.505234,
		-0.130710, 0.991364, -0.010611,
		36.343403, 34.595779, 38.166462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709663, 34.130302, 38.881363>,  <36.434898, 33.901825, 38.173889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709663, 34.130302, 38.881363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466621, 34.410530, 38.731686>,  <36.320797, 34.578667, 38.641880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466621, 34.410530, 38.731686>,  <36.709663, 34.130302, 38.881363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466621, 34.410530, 38.731686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508040, 0.019324, 0.861117,
		0.610499, 0.713327, 0.344173,
		-0.607607, 0.700564, -0.374196,
		36.284340, 34.620701, 38.619427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670509, 34.625050, 39.464302>,  <36.709663, 34.130302, 38.881363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670509, 34.625050, 39.464302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360916, 34.692577, 39.220188>,  <36.175159, 34.733093, 39.073719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360916, 34.692577, 39.220188>,  <36.670509, 34.625050, 39.464302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360916, 34.692577, 39.220188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590584, 0.155178, 0.791916,
		0.228398, 0.973354, -0.020400,
		-0.773980, 0.168824, -0.610289,
		36.128723, 34.743225, 39.037102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244526, 35.207462, 39.813282>,  <36.670509, 34.625050, 39.464302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244526, 35.207462, 39.813282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000416, 35.059566, 39.533035>,  <35.853951, 34.970829, 39.364887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000416, 35.059566, 39.533035>,  <36.244526, 35.207462, 39.813282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000416, 35.059566, 39.533035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716523, -0.119577, 0.687238,
		-0.337874, 0.921409, -0.191951,
		-0.610275, -0.369737, -0.700613,
		35.817333, 34.948647, 39.322853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616581, 35.624317, 39.903980>,  <36.244526, 35.207462, 39.813282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616581, 35.624317, 39.903980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508156, 35.294285, 39.705681>,  <35.443100, 35.096264, 39.586700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508156, 35.294285, 39.705681>,  <35.616581, 35.624317, 39.903980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508156, 35.294285, 39.705681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703555, -0.181664, 0.687029,
		-0.656915, 0.535011, -0.531250,
		-0.271058, -0.825083, -0.495747,
		35.426838, 35.046761, 39.556957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916447, 35.713856, 39.711258>,  <35.616581, 35.624317, 39.903980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916447, 35.713856, 39.711258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007420, 35.325233, 39.737633>,  <35.062004, 35.092060, 39.753460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007420, 35.325233, 39.737633>,  <34.916447, 35.713856, 39.711258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007420, 35.325233, 39.737633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635940, -0.096901, 0.765630,
		-0.737466, -0.216061, -0.639892,
		0.227430, -0.971559, 0.065941,
		35.075649, 35.033764, 39.757416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170414, 35.406925, 39.831356>,  <34.916447, 35.713856, 39.711258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170414, 35.406925, 39.831356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460312, 35.165260, 39.963860>,  <34.634251, 35.020264, 40.043362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460312, 35.165260, 39.963860>,  <34.170414, 35.406925, 39.831356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460312, 35.165260, 39.963860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584956, -0.285463, 0.759169,
		-0.364100, -0.743975, -0.560297,
		0.724747, -0.604162, 0.331256,
		34.677734, 34.984013, 40.063236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879013, 34.853203, 40.154007>,  <34.170414, 35.406925, 39.831356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879013, 34.853203, 40.154007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236954, 34.781498, 40.317524>,  <34.451717, 34.738476, 40.415634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236954, 34.781498, 40.317524>,  <33.879013, 34.853203, 40.154007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236954, 34.781498, 40.317524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444856, -0.282735, 0.849802,
		-0.036759, -0.942298, -0.332751,
		0.894847, -0.179264, 0.408794,
		34.505409, 34.727718, 40.440163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750713, 34.310459, 40.612206>,  <33.879013, 34.853203, 40.154007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750713, 34.310459, 40.612206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100731, 34.443047, 40.753307>,  <34.310741, 34.522598, 40.837967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100731, 34.443047, 40.753307>,  <33.750713, 34.310459, 40.612206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100731, 34.443047, 40.753307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254322, -0.305232, 0.917689,
		0.411854, -0.892728, -0.182791,
		0.875041, 0.331467, 0.352751,
		34.363243, 34.542488, 40.859131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623108, 33.519470, 40.659508>,  <33.750713, 34.310459, 40.612206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623108, 33.519470, 40.659508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260612, 33.367733, 40.734158>,  <33.043114, 33.276691, 40.778946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260612, 33.367733, 40.734158>,  <33.623108, 33.519470, 40.659508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260612, 33.367733, 40.734158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209769, 0.020221, -0.977542,
		0.367054, -0.925033, -0.097900,
		-0.906239, -0.379347, 0.186621,
		32.988739, 33.253929, 40.790142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591091, 32.866154, 40.301868>,  <33.623108, 33.519470, 40.659508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591091, 32.866154, 40.301868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220631, 33.004539, 40.361935>,  <32.998356, 33.087570, 40.397972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220631, 33.004539, 40.361935>,  <33.591091, 32.866154, 40.301868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220631, 33.004539, 40.361935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188409, -0.079502, -0.978867,
		-0.326719, -0.934872, 0.138815,
		-0.926151, 0.345969, 0.150163,
		32.942783, 33.108330, 40.406982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137711, 32.381977, 39.867134>,  <33.591091, 32.866154, 40.301868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137711, 32.381977, 39.867134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960411, 32.738010, 39.909611>,  <32.854031, 32.951630, 39.935097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960411, 32.738010, 39.909611>,  <33.137711, 32.381977, 39.867134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960411, 32.738010, 39.909611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084983, 0.076205, -0.993464,
		-0.892362, -0.449374, 0.041865,
		-0.443247, 0.890088, 0.106191,
		32.827438, 33.005035, 39.941467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696831, 32.374557, 39.353020>,  <33.137711, 32.381977, 39.867134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696831, 32.374557, 39.353020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693768, 32.755936, 39.473606>,  <32.691929, 32.984764, 39.545959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693768, 32.755936, 39.473606>,  <32.696831, 32.374557, 39.353020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693768, 32.755936, 39.473606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070556, 0.300209, -0.951260,
		-0.997478, -0.028554, 0.064973,
		-0.007657, 0.953446, 0.301467,
		32.691471, 33.041969, 39.564045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961805, 32.781460, 39.259609>,  <32.696831, 32.374557, 39.353020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961805, 32.781460, 39.259609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262440, 33.045315, 39.259369>,  <32.442822, 33.203629, 39.259224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262440, 33.045315, 39.259369>,  <31.961805, 32.781460, 39.259609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262440, 33.045315, 39.259369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146222, 0.165720, -0.975272,
		-0.643225, 0.733088, 0.221006,
		0.751586, 0.659635, -0.000599,
		32.487915, 33.243206, 39.259190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745947, 33.369164, 38.818077>,  <31.961805, 32.781460, 39.259609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745947, 33.369164, 38.818077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139439, 33.437145, 38.841385>,  <32.375534, 33.477936, 38.855370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139439, 33.437145, 38.841385>,  <31.745947, 33.369164, 38.818077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139439, 33.437145, 38.841385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011956, 0.385503, -0.922629,
		-0.179269, 0.906919, 0.381262,
		0.983727, 0.169957, 0.058266,
		32.434555, 33.488132, 38.858864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737076, 34.050392, 38.580399>,  <31.745947, 33.369164, 38.818077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737076, 34.050392, 38.580399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105263, 33.898609, 38.542976>,  <32.326176, 33.807541, 38.520523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105263, 33.898609, 38.542976>,  <31.737076, 34.050392, 38.580399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105263, 33.898609, 38.542976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051509, 0.355072, -0.933419,
		0.387410, 0.854363, 0.346378,
		0.920467, -0.379457, -0.093551,
		32.381401, 33.784771, 38.514912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129562, 34.592419, 38.369045>,  <31.737076, 34.050392, 38.580399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129562, 34.592419, 38.369045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307301, 34.253529, 38.252579>,  <32.413944, 34.050194, 38.182701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307301, 34.253529, 38.252579>,  <32.129562, 34.592419, 38.369045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307301, 34.253529, 38.252579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195364, 0.408829, -0.891455,
		0.874295, 0.339229, 0.347176,
		0.444343, -0.847221, -0.291164,
		32.440605, 33.999363, 38.165230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465679, 34.849060, 37.844940>,  <32.129562, 34.592419, 38.369045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465679, 34.849060, 37.844940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496971, 34.455582, 37.780159>,  <32.515747, 34.219494, 37.741291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496971, 34.455582, 37.780159>,  <32.465679, 34.849060, 37.844940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496971, 34.455582, 37.780159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127522, 0.170988, -0.976986,
		0.988746, 0.055778, 0.138819,
		0.078231, -0.983693, -0.161951,
		32.520439, 34.160473, 37.731575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032673, 34.748329, 37.329079>,  <32.465679, 34.849060, 37.844940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032673, 34.748329, 37.329079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829586, 34.404655, 37.303669>,  <32.707733, 34.198452, 37.288422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829586, 34.404655, 37.303669>,  <33.032673, 34.748329, 37.329079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829586, 34.404655, 37.303669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067217, 0.034007, -0.997158,
		0.858899, -0.510542, 0.040485,
		-0.507714, -0.859180, -0.063526,
		32.677273, 34.146900, 37.284611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235237, 34.417118, 36.749104>,  <33.032673, 34.748329, 37.329079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235237, 34.417118, 36.749104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901123, 34.206051, 36.810890>,  <32.700653, 34.079411, 36.847961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901123, 34.206051, 36.810890>,  <33.235237, 34.417118, 36.749104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901123, 34.206051, 36.810890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190740, 0.014611, -0.981532,
		0.515669, -0.849323, -0.112853,
		-0.835286, -0.527671, 0.154466,
		32.650536, 34.047749, 36.857231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225857, 33.791897, 36.304905>,  <33.235237, 34.417118, 36.749104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225857, 33.791897, 36.304905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844425, 33.863712, 36.401615>,  <32.615566, 33.906803, 36.459641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844425, 33.863712, 36.401615>,  <33.225857, 33.791897, 36.304905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844425, 33.863712, 36.401615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248597, -0.016197, -0.968472,
		-0.169965, -0.983617, 0.060079,
		-0.953578, 0.179542, 0.241771,
		32.558353, 33.917576, 36.474148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883678, 33.307446, 36.065056>,  <33.225857, 33.791897, 36.304905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883678, 33.307446, 36.065056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624439, 33.610359, 36.097286>,  <32.468895, 33.792107, 36.116623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624439, 33.610359, 36.097286>,  <32.883678, 33.307446, 36.065056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624439, 33.610359, 36.097286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137781, -0.012538, -0.990383,
		-0.748988, -0.652969, 0.112465,
		-0.648100, 0.757280, 0.080576,
		32.430008, 33.837543, 36.121460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393063, 33.135761, 35.581211>,  <32.883678, 33.307446, 36.065056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393063, 33.135761, 35.581211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344673, 33.530510, 35.624031>,  <32.315639, 33.767357, 35.649723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344673, 33.530510, 35.624031>,  <32.393063, 33.135761, 35.581211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344673, 33.530510, 35.624031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164187, 0.086463, -0.982632,
		-0.978983, -0.136445, 0.151572,
		-0.120970, 0.986867, 0.107049,
		32.308380, 33.826569, 35.656147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036911, 32.559380, 36.043606>,  <32.393063, 33.135761, 35.581211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036911, 32.559380, 36.043606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340431, 32.603256, 35.786797>,  <32.522541, 32.629581, 35.632710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340431, 32.603256, 35.786797>,  <32.036911, 32.559380, 36.043606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340431, 32.603256, 35.786797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473228, -0.770140, 0.427715,
		-0.447529, -0.628373, -0.636290,
		0.758797, 0.109695, -0.642024,
		32.568069, 32.636166, 35.594189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096165, 31.920538, 35.619282>,  <32.036911, 32.559380, 36.043606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096165, 31.920538, 35.619282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454689, 32.096413, 35.642262>,  <32.669804, 32.201939, 35.656048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454689, 32.096413, 35.642262>,  <32.096165, 31.920538, 35.619282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454689, 32.096413, 35.642262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384890, -0.835770, 0.391596,
		0.220193, -0.328881, -0.918342,
		0.896312, 0.439687, 0.057447,
		32.723583, 32.228317, 35.659496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703022, 31.519417, 35.938972>,  <32.096165, 31.920538, 35.619282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703022, 31.519417, 35.938972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048283, 31.318733, 35.961826>,  <33.255440, 31.198322, 35.975540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048283, 31.318733, 35.961826>,  <32.703022, 31.519417, 35.938972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048283, 31.318733, 35.961826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161753, -0.167525, 0.972508,
		-0.478343, -0.848660, -0.225752,
		0.863147, -0.501709, 0.057138,
		33.307228, 31.168221, 35.978970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557690, 30.851894, 36.263859>,  <32.703022, 31.519417, 35.938972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557690, 30.851894, 36.263859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937527, 30.965670, 36.316574>,  <33.165428, 31.033934, 36.348202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937527, 30.965670, 36.316574>,  <32.557690, 30.851894, 36.263859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937527, 30.965670, 36.316574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073351, -0.207124, 0.975561,
		0.304781, -0.936053, -0.175820,
		0.949594, 0.284436, 0.131788,
		33.222404, 31.051001, 36.356110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875874, 30.357119, 36.683563>,  <32.557690, 30.851894, 36.263859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875874, 30.357119, 36.683563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102318, 30.681402, 36.743252>,  <33.238186, 30.875973, 36.779064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102318, 30.681402, 36.743252>,  <32.875874, 30.357119, 36.683563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102318, 30.681402, 36.743252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040569, -0.153397, 0.987332,
		0.823330, -0.564992, -0.053950,
		0.566111, 0.810711, 0.149217,
		33.272152, 30.924616, 36.788017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402000, 30.107519, 37.162823>,  <32.875874, 30.357119, 36.683563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402000, 30.107519, 37.162823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369808, 30.501432, 37.224430>,  <33.350494, 30.737782, 37.261395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369808, 30.501432, 37.224430>,  <33.402000, 30.107519, 37.162823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369808, 30.501432, 37.224430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230578, -0.131933, 0.964068,
		0.969720, 0.113102, -0.216452,
		-0.080481, 0.984785, 0.154017,
		33.345665, 30.796867, 37.270634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021751, 30.283474, 37.481453>,  <33.402000, 30.107519, 37.162823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021751, 30.283474, 37.481453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762844, 30.581875, 37.544090>,  <33.607498, 30.760916, 37.581673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762844, 30.581875, 37.544090>,  <34.021751, 30.283474, 37.481453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762844, 30.581875, 37.544090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073786, -0.143147, 0.986947,
		0.758679, 0.650378, 0.037611,
		-0.647273, 0.746001, 0.156591,
		33.568661, 30.805676, 37.591068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334225, 30.726042, 38.031101>,  <34.021751, 30.283474, 37.481453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334225, 30.726042, 38.031101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946251, 30.821627, 38.049507>,  <33.713467, 30.878979, 38.060551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946251, 30.821627, 38.049507>,  <34.334225, 30.726042, 38.031101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946251, 30.821627, 38.049507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023848, -0.094842, 0.995207,
		0.242183, 0.966386, 0.086292,
		-0.969937, 0.238964, 0.046016,
		33.655270, 30.893316, 38.063313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273113, 31.268427, 38.552425>,  <34.334225, 30.726042, 38.031101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273113, 31.268427, 38.552425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904472, 31.119616, 38.508156>,  <33.683289, 31.030329, 38.481594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904472, 31.119616, 38.508156>,  <34.273113, 31.268427, 38.552425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904472, 31.119616, 38.508156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117880, -0.003388, 0.993022,
		-0.369808, 0.928215, -0.040732,
		-0.921600, -0.372029, -0.110671,
		33.627991, 31.008007, 38.474953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888340, 31.607857, 39.030640>,  <34.273113, 31.268427, 38.552425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888340, 31.607857, 39.030640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687965, 31.272564, 38.944450>,  <33.567741, 31.071388, 38.892738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687965, 31.272564, 38.944450>,  <33.888340, 31.607857, 39.030640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687965, 31.272564, 38.944450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130142, -0.173179, 0.976254,
		-0.855642, 0.517086, -0.022337,
		-0.500939, -0.838231, -0.215473,
		33.537685, 31.021095, 38.879807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260345, 31.769550, 39.456646>,  <33.888340, 31.607857, 39.030640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260345, 31.769550, 39.456646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295029, 31.385126, 39.351692>,  <33.315838, 31.154472, 39.288719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295029, 31.385126, 39.351692>,  <33.260345, 31.769550, 39.456646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295029, 31.385126, 39.351692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158467, -0.273326, 0.948779,
		-0.983549, -0.040692, -0.175997,
		0.086712, -0.961060, -0.262382,
		33.321041, 31.096807, 39.272976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620037, 31.466602, 39.766270>,  <33.260345, 31.769550, 39.456646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620037, 31.466602, 39.766270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908474, 31.195099, 39.710678>,  <33.081535, 31.032196, 39.677322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908474, 31.195099, 39.710678>,  <32.620037, 31.466602, 39.766270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908474, 31.195099, 39.710678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143086, -0.342157, 0.928685,
		-0.677905, -0.649779, -0.343847,
		0.721090, -0.678760, -0.138976,
		33.124802, 30.991470, 39.668987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284573, 30.821865, 40.033127>,  <32.620037, 31.466602, 39.766270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284573, 30.821865, 40.033127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682652, 30.790215, 40.056206>,  <32.921497, 30.771225, 40.070053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682652, 30.790215, 40.056206>,  <32.284573, 30.821865, 40.033127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682652, 30.790215, 40.056206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083890, -0.384929, 0.919126,
		-0.050516, -0.919548, -0.389717,
		0.995194, -0.079124, 0.057696,
		32.981209, 30.766478, 40.073513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369411, 30.197475, 40.298058>,  <32.284573, 30.821865, 40.033127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369411, 30.197475, 40.298058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727192, 30.362122, 40.367950>,  <32.941860, 30.460909, 40.409885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727192, 30.362122, 40.367950>,  <32.369411, 30.197475, 40.298058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727192, 30.362122, 40.367950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056237, -0.491195, 0.869232,
		0.443616, -0.767659, -0.462498,
		0.894451, 0.411615, 0.174732,
		32.995525, 30.485605, 40.420368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772076, 29.616299, 40.605824>,  <32.369411, 30.197475, 40.298058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772076, 29.616299, 40.605824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991360, 29.939692, 40.691448>,  <33.122929, 30.133728, 40.742825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991360, 29.939692, 40.691448>,  <32.772076, 29.616299, 40.605824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991360, 29.939692, 40.691448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282727, -0.420034, 0.862344,
		0.787106, -0.412220, -0.458845,
		0.548206, 0.808484, 0.214065,
		33.155823, 30.182238, 40.755669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371769, 29.398701, 40.877354>,  <32.772076, 29.616299, 40.605824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371769, 29.398701, 40.877354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325214, 29.772793, 41.011101>,  <33.297283, 29.997248, 41.091347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325214, 29.772793, 41.011101>,  <33.371769, 29.398701, 40.877354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325214, 29.772793, 41.011101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294299, -0.289059, 0.910952,
		0.948600, 0.204425, -0.241595,
		-0.116387, 0.935230, 0.334364,
		33.290298, 30.053362, 41.111408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949833, 29.538271, 41.400333>,  <33.371769, 29.398701, 40.877354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949833, 29.538271, 41.400333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680466, 29.819424, 41.491951>,  <33.518845, 29.988115, 41.546921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680466, 29.819424, 41.491951>,  <33.949833, 29.538271, 41.400333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680466, 29.819424, 41.491951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132289, -0.190248, 0.972782,
		0.727327, 0.685392, 0.035133,
		-0.673421, 0.702883, 0.229043,
		33.478439, 30.030289, 41.560665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246113, 29.953224, 41.896679>,  <33.949833, 29.538271, 41.400333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246113, 29.953224, 41.896679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857368, 30.029400, 41.952141>,  <33.624123, 30.075106, 41.985416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857368, 30.029400, 41.952141>,  <34.246113, 29.953224, 41.896679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857368, 30.029400, 41.952141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121082, -0.101059, 0.987485,
		0.202067, 0.976484, 0.075156,
		-0.971858, 0.190438, 0.138655,
		33.565811, 30.086531, 41.993736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187023, 30.282110, 42.592415>,  <34.246113, 29.953224, 41.896679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187023, 30.282110, 42.592415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804382, 30.197657, 42.512074>,  <33.574799, 30.146984, 42.463867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804382, 30.197657, 42.512074>,  <34.187023, 30.282110, 42.592415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804382, 30.197657, 42.512074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121199, -0.338547, 0.933112,
		-0.265011, 0.916956, 0.298264,
		-0.956598, -0.211135, -0.200852,
		33.517403, 30.134315, 42.451817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782524, 30.726641, 43.030121>,  <34.187023, 30.282110, 42.592415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782524, 30.726641, 43.030121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581741, 30.391384, 42.944744>,  <33.461273, 30.190229, 42.893520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581741, 30.391384, 42.944744>,  <33.782524, 30.726641, 43.030121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581741, 30.391384, 42.944744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051381, -0.275243, 0.960001,
		-0.863365, 0.470912, 0.181225,
		-0.501957, -0.838143, -0.213439,
		33.431156, 30.139942, 42.880711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302589, 30.729067, 43.519711>,  <33.782524, 30.726641, 43.030121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302589, 30.729067, 43.519711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311562, 30.349108, 43.395008>,  <33.316944, 30.121132, 43.320187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311562, 30.349108, 43.395008>,  <33.302589, 30.729067, 43.519711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311562, 30.349108, 43.395008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041813, -0.312457, 0.949011,
		-0.998874, -0.008253, -0.046727,
		0.022433, -0.949896, -0.311760,
		33.318291, 30.064138, 43.301479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887569, 30.329155, 43.963184>,  <33.302589, 30.729067, 43.519711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887569, 30.329155, 43.963184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086838, 30.027193, 43.792564>,  <33.206398, 29.846016, 43.690193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086838, 30.027193, 43.792564>,  <32.887569, 30.329155, 43.963184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086838, 30.027193, 43.792564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128673, -0.422124, 0.897360,
		-0.857476, -0.501926, -0.113156,
		0.498174, -0.754905, -0.426546,
		33.236290, 29.800722, 43.664600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467690, 29.664595, 44.025379>,  <32.887569, 30.329155, 43.963184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467690, 29.664595, 44.025379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852024, 29.575962, 43.958817>,  <33.082626, 29.522783, 43.918877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852024, 29.575962, 43.958817>,  <32.467690, 29.664595, 44.025379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852024, 29.575962, 43.958817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026951, -0.672395, 0.739701,
		-0.275796, -0.706248, -0.652035,
		0.960838, -0.221579, -0.166410,
		33.140274, 29.509489, 43.908894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460030, 28.993649, 44.020420>,  <32.467690, 29.664595, 44.025379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460030, 28.993649, 44.020420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826813, 29.105774, 44.133987>,  <33.046883, 29.173050, 44.202126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826813, 29.105774, 44.133987>,  <32.460030, 28.993649, 44.020420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826813, 29.105774, 44.133987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043497, -0.777597, 0.627257,
		0.396601, -0.562820, -0.725218,
		0.916960, 0.280316, 0.283915,
		33.101902, 29.189869, 44.219162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809757, 28.347679, 44.290497>,  <32.460030, 28.993649, 44.020420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809757, 28.347679, 44.290497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016422, 28.651981, 44.447628>,  <33.140423, 28.834562, 44.541908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016422, 28.651981, 44.447628>,  <32.809757, 28.347679, 44.290497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016422, 28.651981, 44.447628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191742, -0.549963, 0.812881,
		0.834443, -0.344663, -0.430014,
		0.516661, 0.760755, 0.392827,
		33.171421, 28.880207, 44.565475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994938, 28.004330, 44.814182>,  <32.809757, 28.347679, 44.290497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994938, 28.004330, 44.814182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116463, 28.375973, 44.898521>,  <33.189377, 28.598959, 44.949123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116463, 28.375973, 44.898521>,  <32.994938, 28.004330, 44.814182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116463, 28.375973, 44.898521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212125, -0.281720, 0.935755,
		0.928816, -0.239571, -0.282677,
		0.303815, 0.929107, 0.210847,
		33.207607, 28.654705, 44.961777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633179, 27.934481, 45.237305>,  <32.994938, 28.004330, 44.814182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633179, 27.934481, 45.237305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471928, 28.284718, 45.343761>,  <33.375179, 28.494860, 45.407635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471928, 28.284718, 45.343761>,  <33.633179, 27.934481, 45.237305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471928, 28.284718, 45.343761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217561, -0.190790, 0.957218,
		0.888909, 0.443779, -0.113582,
		-0.403123, 0.875591, 0.266144,
		33.350990, 28.547396, 45.423603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088104, 28.064209, 45.749500>,  <33.633179, 27.934481, 45.237305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088104, 28.064209, 45.749500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798378, 28.337471, 45.786732>,  <33.624542, 28.501429, 45.809071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798378, 28.337471, 45.786732>,  <34.088104, 28.064209, 45.749500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798378, 28.337471, 45.786732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184751, 0.062254, 0.980812,
		0.664250, 0.727617, -0.171305,
		-0.724319, 0.683153, 0.093076,
		33.581081, 28.542418, 45.814655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787140, 28.463343, 45.526344>,  <34.088104, 28.064209, 45.749500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787140, 28.463343, 45.526344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178802, 28.482801, 45.605217>,  <35.413799, 28.494476, 45.652542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178802, 28.482801, 45.605217>,  <34.787140, 28.463343, 45.526344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178802, 28.482801, 45.605217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176814, 0.273463, -0.945492,
		-0.099919, 0.960652, 0.259162,
		0.979159, 0.048649, 0.197180,
		35.472549, 28.497396, 45.664371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977699, 29.041410, 45.303864>,  <34.787140, 28.463343, 45.526344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977699, 29.041410, 45.303864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315338, 28.828701, 45.331329>,  <35.517921, 28.701075, 45.347809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315338, 28.828701, 45.331329>,  <34.977699, 29.041410, 45.303864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315338, 28.828701, 45.331329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213778, 0.216326, -0.952629,
		0.491729, 0.818791, 0.296282,
		0.844098, -0.531774, 0.068666,
		35.568569, 28.669168, 45.351929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527946, 29.415817, 45.083160>,  <34.977699, 29.041410, 45.303864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527946, 29.415817, 45.083160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702805, 29.057724, 45.048611>,  <35.807720, 28.842867, 45.027882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702805, 29.057724, 45.048611>,  <35.527946, 29.415817, 45.083160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702805, 29.057724, 45.048611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262022, 0.218633, -0.939970,
		0.860377, 0.388272, 0.330145,
		0.437145, -0.895234, -0.086371,
		35.833946, 28.789154, 45.022701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293331, 29.544195, 44.902283>,  <35.527946, 29.415817, 45.083160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293331, 29.544195, 44.902283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202354, 29.173220, 44.783535>,  <36.147766, 28.950634, 44.712288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202354, 29.173220, 44.783535>,  <36.293331, 29.544195, 44.902283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202354, 29.173220, 44.783535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308685, 0.220466, -0.925261,
		0.923570, -0.302085, 0.236142,
		-0.227446, -0.927437, -0.296865,
		36.134121, 28.894989, 44.694477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917946, 29.271660, 44.702106>,  <36.293331, 29.544195, 44.902283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917946, 29.271660, 44.702106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634087, 29.060812, 44.515110>,  <36.463772, 28.934303, 44.402912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634087, 29.060812, 44.515110>,  <36.917946, 29.271660, 44.702106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634087, 29.060812, 44.515110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350362, 0.311648, -0.883245,
		0.611269, -0.790582, -0.036477,
		-0.709646, -0.527121, -0.467490,
		36.421192, 28.902676, 44.374863>
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
