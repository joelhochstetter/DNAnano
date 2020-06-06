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
	<24.023760, 35.164421, 34.790115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282181, 35.048550, 35.072590>,  <24.437233, 34.979027, 35.242077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282181, 35.048550, 35.072590>,  <24.023760, 35.164421, 34.790115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282181, 35.048550, 35.072590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696865, -0.153654, -0.700550,
		0.311442, 0.944710, 0.102598,
		0.646052, -0.289678, 0.706189,
		24.475996, 34.961647, 35.284447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.574110, 35.604073, 34.786030>,  <24.023760, 35.164421, 34.790115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.574110, 35.604073, 34.786030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704615, 35.260860, 34.944691>,  <24.782917, 35.054932, 35.039886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704615, 35.260860, 34.944691>,  <24.574110, 35.604073, 34.786030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704615, 35.260860, 34.944691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667822, -0.087752, -0.739130,
		0.669005, 0.506044, 0.544382,
		0.326262, -0.858032, 0.396654,
		24.802494, 35.003452, 35.063686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283632, 35.548962, 34.812397>,  <24.574110, 35.604073, 34.786030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283632, 35.548962, 34.812397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133303, 35.178364, 34.804836>,  <25.043104, 34.956005, 34.800301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133303, 35.178364, 34.804836>,  <25.283632, 35.548962, 34.812397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133303, 35.178364, 34.804836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675270, -0.259837, -0.690286,
		0.634638, -0.272188, 0.723290,
		-0.375826, -0.926498, -0.018898,
		25.020555, 34.900414, 34.799168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680950, 35.222328, 34.428066>,  <25.283632, 35.548962, 34.812397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680950, 35.222328, 34.428066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464348, 34.897518, 34.515137>,  <25.334387, 34.702633, 34.567379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464348, 34.897518, 34.515137>,  <25.680950, 35.222328, 34.428066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464348, 34.897518, 34.515137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453165, -0.500026, -0.737980,
		0.708104, -0.300977, 0.638750,
		-0.541507, -0.812026, 0.217679,
		25.301895, 34.653912, 34.580441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054941, 34.603630, 34.630016>,  <25.680950, 35.222328, 34.428066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054941, 34.603630, 34.630016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732924, 34.529190, 34.404709>,  <25.539713, 34.484528, 34.269524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732924, 34.529190, 34.404709>,  <26.054941, 34.603630, 34.630016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732924, 34.529190, 34.404709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570619, -0.502496, -0.649532,
		-0.162165, -0.844314, 0.510721,
		-0.805044, -0.186096, -0.563269,
		25.491409, 34.473362, 34.235729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057302, 33.872280, 34.524601>,  <26.054941, 34.603630, 34.630016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057302, 33.872280, 34.524601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901236, 34.140129, 34.271816>,  <25.807594, 34.300838, 34.120144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901236, 34.140129, 34.271816>,  <26.057302, 33.872280, 34.524601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901236, 34.140129, 34.271816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593384, -0.341950, -0.728674,
		-0.704033, -0.659304, -0.263923,
		-0.390169, 0.669618, -0.631965,
		25.784185, 34.341015, 34.082226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674171, 33.546280, 33.825089>,  <26.057302, 33.872280, 34.524601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674171, 33.546280, 33.825089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837551, 33.904789, 33.755955>,  <25.935579, 34.119892, 33.714474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837551, 33.904789, 33.755955>,  <25.674171, 33.546280, 33.825089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837551, 33.904789, 33.755955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606506, -0.407991, -0.682418,
		-0.682145, 0.173909, -0.710235,
		0.408448, 0.896270, -0.172832,
		25.960085, 34.173672, 33.704105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577698, 33.849880, 33.063854>,  <25.674171, 33.546280, 33.825089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577698, 33.849880, 33.063854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910160, 33.936432, 33.268738>,  <26.109638, 33.988365, 33.391666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910160, 33.936432, 33.268738>,  <25.577698, 33.849880, 33.063854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910160, 33.936432, 33.268738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548951, -0.465916, -0.693956,
		0.088485, 0.857963, -0.506034,
		0.831158, 0.216383, 0.512206,
		26.159508, 34.001347, 33.422401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053869, 34.172184, 32.585953>,  <25.577698, 33.849880, 33.063854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053869, 34.172184, 32.585953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264437, 34.002689, 32.880798>,  <26.390778, 33.900993, 33.057705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264437, 34.002689, 32.880798>,  <26.053869, 34.172184, 32.585953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264437, 34.002689, 32.880798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606009, -0.421092, -0.674859,
		0.596352, 0.801954, 0.035117,
		0.526419, -0.423735, 0.737111,
		26.422361, 33.875568, 33.101933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741642, 34.353260, 32.425140>,  <26.053869, 34.172184, 32.585953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741642, 34.353260, 32.425140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711254, 34.023727, 32.649826>,  <26.693022, 33.826008, 32.784637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711254, 34.023727, 32.649826>,  <26.741642, 34.353260, 32.425140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711254, 34.023727, 32.649826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399594, -0.541282, -0.739823,
		0.913539, 0.168255, 0.370320,
		-0.075969, -0.823835, 0.561716,
		26.688463, 33.776577, 32.818340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447573, 33.930321, 32.360756>,  <26.741642, 34.353260, 32.425140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447573, 33.930321, 32.360756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146034, 33.697453, 32.482605>,  <26.965111, 33.557732, 32.555714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146034, 33.697453, 32.482605>,  <27.447573, 33.930321, 32.360756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146034, 33.697453, 32.482605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372362, -0.760516, -0.531942,
		0.541352, -0.287572, 0.790089,
		-0.753847, -0.582167, 0.304626,
		26.919880, 33.522804, 32.573994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800205, 33.376263, 32.524837>,  <27.447573, 33.930321, 32.360756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800205, 33.376263, 32.524837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420816, 33.257153, 32.481522>,  <27.193182, 33.185684, 32.455532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420816, 33.257153, 32.481522>,  <27.800205, 33.376263, 32.524837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420816, 33.257153, 32.481522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291435, -0.685727, -0.666966,
		0.124351, -0.664159, 0.737177,
		-0.948474, -0.297777, -0.108289,
		27.136274, 33.167820, 32.449036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865601, 32.682327, 32.429836>,  <27.800205, 33.376263, 32.524837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865601, 32.682327, 32.429836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502438, 32.728996, 32.268791>,  <27.284540, 32.756996, 32.172165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502438, 32.728996, 32.268791>,  <27.865601, 32.682327, 32.429836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502438, 32.728996, 32.268791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217653, -0.689641, -0.690668,
		-0.358236, -0.714691, 0.600736,
		-0.907907, 0.116670, -0.402609,
		27.230066, 32.763996, 32.148010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575787, 32.015041, 32.225296>,  <27.865601, 32.682327, 32.429836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575787, 32.015041, 32.225296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337578, 32.257050, 32.013897>,  <27.194653, 32.402252, 31.887058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337578, 32.257050, 32.013897>,  <27.575787, 32.015041, 32.225296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337578, 32.257050, 32.013897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077116, -0.611781, -0.787259,
		-0.799628, -0.509587, 0.317674,
		-0.595524, 0.605017, -0.528494,
		27.158920, 32.438553, 31.855349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087179, 31.628954, 31.894125>,  <27.575787, 32.015041, 32.225296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087179, 31.628954, 31.894125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135838, 31.963705, 31.680643>,  <27.165033, 32.164555, 31.552555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135838, 31.963705, 31.680643>,  <27.087179, 31.628954, 31.894125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135838, 31.963705, 31.680643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314648, -0.542478, -0.778919,
		-0.941381, -0.073174, -0.329313,
		0.121648, 0.836877, -0.533702,
		27.172333, 32.214767, 31.520533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923866, 31.423414, 31.277681>,  <27.087179, 31.628954, 31.894125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923866, 31.423414, 31.277681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067776, 31.781523, 31.172567>,  <27.154121, 31.996387, 31.109499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067776, 31.781523, 31.172567>,  <26.923866, 31.423414, 31.277681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067776, 31.781523, 31.172567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239115, -0.360705, -0.901507,
		-0.901879, 0.261504, -0.343845,
		0.359775, 0.895269, -0.262783,
		27.175709, 32.050102, 31.093733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604309, 31.611937, 30.645811>,  <26.923866, 31.423414, 31.277681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604309, 31.611937, 30.645811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941433, 31.825794, 30.670561>,  <27.143707, 31.954109, 30.685410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941433, 31.825794, 30.670561>,  <26.604309, 31.611937, 30.645811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941433, 31.825794, 30.670561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350008, -0.457130, -0.817634,
		-0.408859, 0.710766, -0.572404,
		0.842810, 0.534643, 0.061872,
		27.194277, 31.986187, 30.689123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682493, 31.868050, 30.015709>,  <26.604309, 31.611937, 30.645811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682493, 31.868050, 30.015709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050877, 31.895189, 30.169191>,  <27.271908, 31.911472, 30.261280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050877, 31.895189, 30.169191>,  <26.682493, 31.868050, 30.015709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050877, 31.895189, 30.169191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346029, -0.595165, -0.725288,
		0.179158, 0.800734, -0.571601,
		0.920960, 0.067850, 0.383706,
		27.327164, 31.915545, 30.284304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113153, 32.121601, 29.539053>,  <26.682493, 31.868050, 30.015709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113153, 32.121601, 29.539053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350246, 31.904696, 29.777254>,  <27.492502, 31.774553, 29.920174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350246, 31.904696, 29.777254>,  <27.113153, 32.121601, 29.539053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350246, 31.904696, 29.777254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285527, -0.549884, -0.784921,
		0.753088, 0.635280, -0.171104,
		0.592733, -0.542260, 0.595501,
		27.528067, 31.742018, 29.955904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701010, 32.074146, 29.196495>,  <27.113153, 32.121601, 29.539053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701010, 32.074146, 29.196495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718512, 31.755795, 29.438046>,  <27.729013, 31.564783, 29.582975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718512, 31.755795, 29.438046>,  <27.701010, 32.074146, 29.196495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718512, 31.755795, 29.438046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500727, -0.505579, -0.702610,
		0.864498, 0.333119, 0.376397,
		0.043754, -0.795878, 0.603874,
		27.731638, 31.517031, 29.619207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257105, 31.896620, 28.937571>,  <27.701010, 32.074146, 29.196495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257105, 31.896620, 28.937571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201965, 31.603876, 29.204517>,  <28.168882, 31.428230, 29.364685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201965, 31.603876, 29.204517>,  <28.257105, 31.896620, 28.937571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201965, 31.603876, 29.204517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508819, -0.630419, -0.586238,
		0.849766, 0.258757, 0.459286,
		-0.137849, -0.731858, 0.667369,
		28.160610, 31.384319, 29.404728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962385, 31.591053, 29.287975>,  <28.257105, 31.896620, 28.937571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962385, 31.591053, 29.287975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650055, 31.341671, 29.271887>,  <28.462658, 31.192041, 29.262234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650055, 31.341671, 29.271887>,  <28.962385, 31.591053, 29.287975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650055, 31.341671, 29.271887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503711, -0.590153, -0.630869,
		0.369581, -0.512857, 0.774846,
		-0.780824, -0.623456, -0.040222,
		28.415808, 31.154634, 29.259821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352930, 30.953953, 29.381828>,  <28.962385, 31.591053, 29.287975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352930, 30.953953, 29.381828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003391, 30.874146, 29.204477>,  <28.793669, 30.826262, 29.098066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003391, 30.874146, 29.204477>,  <29.352930, 30.953953, 29.381828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003391, 30.874146, 29.204477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408885, -0.794983, -0.448123,
		-0.263070, -0.572882, 0.776273,
		-0.873846, -0.199518, -0.443379,
		28.741238, 30.814289, 29.071463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281002, 30.220425, 29.445244>,  <29.352930, 30.953953, 29.381828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281002, 30.220425, 29.445244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024984, 30.304585, 29.149656>,  <28.871374, 30.355080, 28.972303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024984, 30.304585, 29.149656>,  <29.281002, 30.220425, 29.445244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024984, 30.304585, 29.149656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324528, -0.797744, -0.508218,
		-0.696436, -0.565099, 0.442313,
		-0.640046, 0.210398, -0.738968,
		28.832972, 30.367704, 28.927965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022026, 29.567196, 29.335693>,  <29.281002, 30.220425, 29.445244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022026, 29.567196, 29.335693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960230, 29.796881, 29.014093>,  <28.923151, 29.934692, 28.821135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960230, 29.796881, 29.014093>,  <29.022026, 29.567196, 29.335693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960230, 29.796881, 29.014093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401176, -0.707203, -0.582170,
		-0.902879, -0.412486, -0.121103,
		-0.154493, 0.574212, -0.803998,
		28.913881, 29.969145, 28.772894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726917, 29.006243, 28.730818>,  <29.022026, 29.567196, 29.335693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726917, 29.006243, 28.730818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862602, 29.362833, 28.610676>,  <28.944014, 29.576786, 28.538591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862602, 29.362833, 28.610676>,  <28.726917, 29.006243, 28.730818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862602, 29.362833, 28.610676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432276, -0.431292, -0.791912,
		-0.835508, 0.138789, -0.531662,
		0.339210, 0.891473, -0.300353,
		28.964365, 29.630276, 28.520571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567081, 29.101816, 28.019684>,  <28.726917, 29.006243, 28.730818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567081, 29.101816, 28.019684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878279, 29.335089, 28.113171>,  <29.064997, 29.475052, 28.169262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878279, 29.335089, 28.113171>,  <28.567081, 29.101816, 28.019684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878279, 29.335089, 28.113171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437093, -0.235200, -0.868119,
		-0.451302, 0.777547, -0.437889,
		0.777995, 0.583182, 0.233715,
		29.111677, 29.510044, 28.183285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678226, 29.410988, 27.387726>,  <28.567081, 29.101816, 28.019684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678226, 29.410988, 27.387726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981710, 29.375463, 27.645864>,  <29.163801, 29.354149, 27.800749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981710, 29.375463, 27.645864>,  <28.678226, 29.410988, 27.387726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981710, 29.375463, 27.645864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550605, -0.441997, -0.708148,
		0.348132, 0.892610, -0.286448,
		0.758709, -0.088809, 0.645348,
		29.209324, 29.348822, 27.839470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332188, 29.668989, 27.092247>,  <28.678226, 29.410988, 27.387726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332188, 29.668989, 27.092247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410921, 29.397364, 27.375126>,  <29.458160, 29.234388, 27.544853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410921, 29.397364, 27.375126>,  <29.332188, 29.668989, 27.092247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410921, 29.397364, 27.375126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814612, -0.288116, -0.503385,
		0.545586, 0.675173, 0.496464,
		0.196833, -0.679066, 0.707196,
		29.469971, 29.193644, 27.587284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026043, 29.736349, 27.221954>,  <29.332188, 29.668989, 27.092247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026043, 29.736349, 27.221954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914625, 29.371712, 27.342890>,  <29.847775, 29.152929, 27.415451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914625, 29.371712, 27.342890>,  <30.026043, 29.736349, 27.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914625, 29.371712, 27.342890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830073, -0.386849, -0.401656,
		0.483107, 0.139084, 0.864444,
		-0.278545, -0.911594, 0.302339,
		29.831062, 29.098234, 27.433592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675207, 29.315912, 27.535620>,  <30.026043, 29.736349, 27.221954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675207, 29.315912, 27.535620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408257, 29.036678, 27.431862>,  <30.248087, 28.869137, 27.369606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408257, 29.036678, 27.431862>,  <30.675207, 29.315912, 27.535620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408257, 29.036678, 27.431862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744072, -0.610480, -0.271425,
		0.031122, -0.374151, 0.926846,
		-0.667374, -0.698087, -0.259396,
		30.208044, 28.827251, 27.354044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965090, 28.677223, 27.714561>,  <30.675207, 29.315912, 27.535620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965090, 28.677223, 27.714561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665541, 28.578182, 27.468674>,  <30.485811, 28.518757, 27.321140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665541, 28.578182, 27.468674>,  <30.965090, 28.677223, 27.714561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665541, 28.578182, 27.468674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552292, -0.745848, -0.372402,
		-0.366279, -0.618387, 0.695297,
		-0.748874, -0.247605, -0.614719,
		30.440878, 28.503901, 27.284258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318026, 28.159901, 27.556520>,  <30.965090, 28.677223, 27.714561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318026, 28.159901, 27.556520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557085, 27.839239, 27.561741>,  <31.700520, 27.646843, 27.564873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557085, 27.839239, 27.561741>,  <31.318026, 28.159901, 27.556520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557085, 27.839239, 27.561741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149158, 0.127164, 0.980602,
		-0.787762, -0.584108, 0.195572,
		0.597647, -0.801653, 0.013051,
		31.736380, 27.598743, 27.565657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130344, 27.611586, 28.132599>,  <31.318026, 28.159901, 27.556520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130344, 27.611586, 28.132599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519222, 27.665703, 28.056147>,  <31.752550, 27.698174, 28.010275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519222, 27.665703, 28.056147>,  <31.130344, 27.611586, 28.132599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519222, 27.665703, 28.056147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152879, 0.251550, 0.955694,
		0.177375, -0.958342, 0.223873,
		0.972197, 0.135291, -0.191129,
		31.810881, 27.706291, 27.998808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675642, 27.182331, 28.635168>,  <31.130344, 27.611586, 28.132599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675642, 27.182331, 28.635168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797638, 27.531866, 28.483702>,  <31.870836, 27.741587, 28.392822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797638, 27.531866, 28.483702>,  <31.675642, 27.182331, 28.635168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797638, 27.531866, 28.483702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016809, 0.402488, 0.915271,
		0.952207, -0.272785, 0.137444,
		0.304992, 0.873837, -0.378666,
		31.889135, 27.794018, 28.370102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268490, 27.398582, 29.094036>,  <31.675642, 27.182331, 28.635168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268490, 27.398582, 29.094036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088703, 27.710630, 28.919960>,  <31.980831, 27.897860, 28.815514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088703, 27.710630, 28.919960>,  <32.268490, 27.398582, 29.094036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088703, 27.710630, 28.919960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069721, 0.455050, 0.887732,
		0.890572, 0.429348, -0.150140,
		-0.449467, 0.780121, -0.435190,
		31.953863, 27.944666, 28.789404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570126, 27.950203, 29.341888>,  <32.268490, 27.398582, 29.094036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570126, 27.950203, 29.341888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218750, 28.087320, 29.208719>,  <32.007923, 28.169590, 29.128817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218750, 28.087320, 29.208719>,  <32.570126, 27.950203, 29.341888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218750, 28.087320, 29.208719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160349, 0.444857, 0.881130,
		0.450149, 0.827403, -0.335813,
		-0.878439, 0.342793, -0.332925,
		31.955219, 28.190159, 29.108841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550583, 28.591566, 29.565237>,  <32.570126, 27.950203, 29.341888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550583, 28.591566, 29.565237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172379, 28.513615, 29.460907>,  <31.945456, 28.466845, 29.398308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172379, 28.513615, 29.460907>,  <32.550583, 28.591566, 29.565237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172379, 28.513615, 29.460907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324949, 0.614944, 0.718507,
		0.020373, 0.764112, -0.644762,
		-0.945512, -0.194877, -0.260826,
		31.888725, 28.455153, 29.382660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168365, 29.208546, 29.413282>,  <32.550583, 28.591566, 29.565237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168365, 29.208546, 29.413282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875443, 28.954876, 29.512512>,  <31.699688, 28.802673, 29.572050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875443, 28.954876, 29.512512>,  <32.168365, 29.208546, 29.413282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875443, 28.954876, 29.512512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384451, 0.685712, 0.618059,
		-0.562067, 0.357238, -0.745964,
		-0.732310, -0.634177, 0.248075,
		31.655750, 28.764624, 29.586935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640715, 29.615295, 29.525208>,  <32.168365, 29.208546, 29.413282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640715, 29.615295, 29.525208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504726, 29.301628, 29.732861>,  <31.423134, 29.113428, 29.857452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504726, 29.301628, 29.732861>,  <31.640715, 29.615295, 29.525208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504726, 29.301628, 29.732861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512249, 0.617346, 0.597063,
		-0.788682, -0.062939, -0.611572,
		-0.339973, -0.784170, 0.519130,
		31.402735, 29.066378, 29.888599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896498, 29.721870, 29.653652>,  <31.640715, 29.615295, 29.525208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896498, 29.721870, 29.653652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996294, 29.426088, 29.903759>,  <31.056171, 29.248619, 30.053823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996294, 29.426088, 29.903759>,  <30.896498, 29.721870, 29.653652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996294, 29.426088, 29.903759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604782, 0.385300, 0.696981,
		-0.756303, -0.552039, -0.351082,
		0.249489, -0.739457, 0.625267,
		31.071140, 29.204250, 30.091339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333462, 29.478195, 29.934420>,  <30.896498, 29.721870, 29.653652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333462, 29.478195, 29.934420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598478, 29.376398, 30.216208>,  <30.757488, 29.315321, 30.385281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598478, 29.376398, 30.216208>,  <30.333462, 29.478195, 29.934420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598478, 29.376398, 30.216208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621367, 0.338449, 0.706651,
		-0.418263, -0.905917, 0.066103,
		0.662540, -0.254492, 0.704468,
		30.797241, 29.300051, 30.427547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941395, 29.116714, 30.489153>,  <30.333462, 29.478195, 29.934420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941395, 29.116714, 30.489153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282913, 29.264498, 30.635868>,  <30.487823, 29.353168, 30.723898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282913, 29.264498, 30.635868>,  <29.941395, 29.116714, 30.489153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282913, 29.264498, 30.635868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498841, 0.378973, 0.779447,
		0.148971, -0.848457, 0.507867,
		0.853795, 0.369459, 0.366789,
		30.539051, 29.375336, 30.745905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973108, 28.931871, 31.286068>,  <29.941395, 29.116714, 30.489153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973108, 28.931871, 31.286068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211622, 29.246191, 31.220388>,  <30.354731, 29.434784, 31.180981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211622, 29.246191, 31.220388>,  <29.973108, 28.931871, 31.286068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211622, 29.246191, 31.220388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478287, 0.512026, 0.713491,
		0.644736, -0.346910, 0.681152,
		0.596285, 0.785801, -0.164199,
		30.390509, 29.481932, 31.171129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222164, 29.258595, 32.012268>,  <29.973108, 28.931871, 31.286068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222164, 29.258595, 32.012268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357098, 29.554779, 31.779743>,  <30.438059, 29.732489, 31.640228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357098, 29.554779, 31.779743>,  <30.222164, 29.258595, 32.012268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357098, 29.554779, 31.779743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336290, 0.671549, 0.660251,
		0.879269, -0.027236, 0.475546,
		0.337335, 0.740459, -0.581313,
		30.458298, 29.776917, 31.605349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441843, 29.691496, 32.452553>,  <30.222164, 29.258595, 32.012268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441843, 29.691496, 32.452553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425085, 29.936956, 32.137165>,  <30.415030, 30.084232, 31.947933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425085, 29.936956, 32.137165>,  <30.441843, 29.691496, 32.452553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425085, 29.936956, 32.137165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336952, 0.734248, 0.589358,
		0.940589, 0.290368, 0.176007,
		-0.041898, 0.613650, -0.788466,
		30.412516, 30.121052, 31.900625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778999, 30.248781, 32.717136>,  <30.441843, 29.691496, 32.452553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778999, 30.248781, 32.717136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564396, 30.356861, 32.397346>,  <30.435635, 30.421709, 32.205475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564396, 30.356861, 32.397346>,  <30.778999, 30.248781, 32.717136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564396, 30.356861, 32.397346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475460, 0.685903, 0.550886,
		0.697207, 0.675671, -0.239523,
		-0.536507, 0.270198, -0.799471,
		30.403444, 30.437920, 32.157505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826500, 30.912355, 32.802757>,  <30.778999, 30.248781, 32.717136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826500, 30.912355, 32.802757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530968, 30.829758, 32.546165>,  <30.353649, 30.780199, 32.392212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530968, 30.829758, 32.546165>,  <30.826500, 30.912355, 32.802757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530968, 30.829758, 32.546165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541608, 0.748362, 0.382904,
		0.400988, 0.630329, -0.664750,
		-0.738829, -0.206494, -0.641476,
		30.309319, 30.767809, 32.353722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653782, 31.572586, 32.531452>,  <30.826500, 30.912355, 32.802757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653782, 31.572586, 32.531452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342533, 31.323191, 32.501019>,  <30.155785, 31.173553, 32.482758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342533, 31.323191, 32.501019>,  <30.653782, 31.572586, 32.531452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342533, 31.323191, 32.501019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497631, 0.538023, 0.680364,
		-0.383261, 0.567270, -0.728914,
		-0.778122, -0.623487, -0.076088,
		30.109097, 31.136145, 32.478191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130169, 32.025330, 32.583778>,  <30.653782, 31.572586, 32.531452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130169, 32.025330, 32.583778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932827, 31.681314, 32.635818>,  <29.814421, 31.474905, 32.667042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932827, 31.681314, 32.635818>,  <30.130169, 32.025330, 32.583778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932827, 31.681314, 32.635818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695746, 0.479951, 0.534401,
		-0.522050, 0.173132, -0.835158,
		-0.493357, -0.860042, 0.130102,
		29.784821, 31.423302, 32.674850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406870, 32.164158, 32.419079>,  <30.130169, 32.025330, 32.583778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406870, 32.164158, 32.419079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393717, 31.835548, 32.646770>,  <29.385826, 31.638384, 32.783386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393717, 31.835548, 32.646770>,  <29.406870, 32.164158, 32.419079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393717, 31.835548, 32.646770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623060, 0.462172, 0.631025,
		-0.781482, -0.333914, -0.527055,
		-0.032882, -0.821522, 0.569228,
		29.383852, 31.589092, 32.817539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732269, 31.803537, 32.399696>,  <29.406870, 32.164158, 32.419079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732269, 31.803537, 32.399696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940407, 31.753880, 32.737648>,  <29.065290, 31.724085, 32.940422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940407, 31.753880, 32.737648>,  <28.732269, 31.803537, 32.399696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940407, 31.753880, 32.737648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679582, 0.538921, 0.497727,
		-0.517116, -0.833158, 0.196059,
		0.520345, -0.124144, 0.844884,
		29.096510, 31.716637, 32.991112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356510, 32.112190, 32.869675>,  <28.732269, 31.803537, 32.399696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356510, 32.112190, 32.869675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656904, 32.039265, 33.123535>,  <28.837141, 31.995510, 33.275852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656904, 32.039265, 33.123535>,  <28.356510, 32.112190, 32.869675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656904, 32.039265, 33.123535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393830, 0.647805, 0.652109,
		-0.530021, -0.739669, 0.414690,
		0.750984, -0.182314, 0.634654,
		28.882198, 31.984570, 33.313931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063362, 32.149849, 33.535210>,  <28.356510, 32.112190, 32.869675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063362, 32.149849, 33.535210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450991, 32.184628, 33.627590>,  <28.683569, 32.205494, 33.683018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450991, 32.184628, 33.627590>,  <28.063362, 32.149849, 33.535210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450991, 32.184628, 33.627590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228542, 0.669241, 0.707026,
		-0.093090, -0.737941, 0.668414,
		0.969073, 0.086944, 0.230951,
		28.741713, 32.210712, 33.696877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150673, 32.118019, 34.298748>,  <28.063362, 32.149849, 33.535210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150673, 32.118019, 34.298748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454397, 32.322746, 34.138000>,  <28.636631, 32.445583, 34.041553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454397, 32.322746, 34.138000>,  <28.150673, 32.118019, 34.298748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454397, 32.322746, 34.138000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065765, 0.674755, 0.735105,
		0.647398, -0.531743, 0.546008,
		0.759309, 0.511814, -0.401865,
		28.682190, 32.476292, 34.017441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594137, 32.283890, 34.848835>,  <28.150673, 32.118019, 34.298748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594137, 32.283890, 34.848835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692812, 32.536152, 34.554512>,  <28.752016, 32.687508, 34.377918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692812, 32.536152, 34.554512>,  <28.594137, 32.283890, 34.848835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692812, 32.536152, 34.554512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049570, 0.766495, 0.640335,
		0.967827, -0.121487, 0.220345,
		0.246686, 0.630656, -0.735812,
		28.766817, 32.725349, 34.333767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059980, 32.751083, 35.190372>,  <28.594137, 32.283890, 34.848835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059980, 32.751083, 35.190372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983210, 32.951145, 34.852615>,  <28.937147, 33.071182, 34.649960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983210, 32.951145, 34.852615>,  <29.059980, 32.751083, 35.190372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983210, 32.951145, 34.852615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127457, 0.840402, 0.526763,
		0.973097, 0.208725, -0.097548,
		-0.191928, 0.500159, -0.844396,
		28.925631, 33.101192, 34.599297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411264, 33.346733, 35.166996>,  <29.059980, 32.751083, 35.190372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411264, 33.346733, 35.166996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119432, 33.458801, 34.917446>,  <28.944334, 33.526043, 34.767715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119432, 33.458801, 34.917446>,  <29.411264, 33.346733, 35.166996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119432, 33.458801, 34.917446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038821, 0.893798, 0.446787,
		0.682795, 0.350185, -0.641218,
		-0.729578, 0.280172, -0.623875,
		28.900558, 33.542854, 34.730282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695351, 33.910339, 34.763325>,  <29.411264, 33.346733, 35.166996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695351, 33.910339, 34.763325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305418, 33.881840, 34.847824>,  <29.071459, 33.864742, 34.898525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305418, 33.881840, 34.847824>,  <29.695351, 33.910339, 34.763325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305418, 33.881840, 34.847824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039472, 0.877432, 0.478075,
		-0.219417, 0.474381, -0.852537,
		-0.974832, -0.071247, 0.211248,
		29.012968, 33.860466, 34.911198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097351, 34.017593, 34.115070>,  <29.695351, 33.910339, 34.763325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097351, 34.017593, 34.115070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963482, 34.392838, 34.079426>,  <29.883160, 34.617985, 34.058037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963482, 34.392838, 34.079426>,  <30.097351, 34.017593, 34.115070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963482, 34.392838, 34.079426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568427, 0.276400, 0.774915,
		0.751587, 0.208689, -0.625752,
		-0.334674, 0.938111, -0.089115,
		29.863079, 34.674271, 34.052692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568501, 34.634350, 33.805023>,  <30.097351, 34.017593, 34.115070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568501, 34.634350, 33.805023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291885, 34.736820, 34.075176>,  <30.125916, 34.798302, 34.237270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291885, 34.736820, 34.075176>,  <30.568501, 34.634350, 33.805023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291885, 34.736820, 34.075176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717785, 0.348545, 0.602746,
		-0.080990, 0.901603, -0.424914,
		-0.691539, 0.256181, 0.675385,
		30.084423, 34.813675, 34.277790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633268, 35.372719, 34.020466>,  <30.568501, 34.634350, 33.805023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633268, 35.372719, 34.020466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493168, 35.129635, 34.305565>,  <30.409107, 34.983784, 34.476624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493168, 35.129635, 34.305565>,  <30.633268, 35.372719, 34.020466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493168, 35.129635, 34.305565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664250, 0.375340, 0.646446,
		-0.660377, 0.699859, 0.272212,
		-0.350249, -0.607714, 0.712747,
		30.388094, 34.947319, 34.519390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611584, 35.806683, 34.673080>,  <30.633268, 35.372719, 34.020466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611584, 35.806683, 34.673080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610273, 35.422089, 34.783024>,  <30.609488, 35.191334, 34.848988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610273, 35.422089, 34.783024>,  <30.611584, 35.806683, 34.673080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610273, 35.422089, 34.783024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649244, 0.207003, 0.731869,
		-0.760573, 0.180846, 0.623556,
		-0.003278, -0.961480, 0.274854,
		30.609289, 35.133644, 34.865479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599394, 35.752285, 35.403938>,  <30.611584, 35.806683, 34.673080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599394, 35.752285, 35.403938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763195, 35.399792, 35.309509>,  <30.861475, 35.188293, 35.252850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763195, 35.399792, 35.309509>,  <30.599394, 35.752285, 35.403938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763195, 35.399792, 35.309509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504154, 0.002923, 0.863609,
		-0.760353, -0.472669, 0.445475,
		0.409504, -0.881235, -0.236075,
		30.886045, 35.135422, 35.238686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437592, 35.282108, 35.940289>,  <30.599394, 35.752285, 35.403938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437592, 35.282108, 35.940289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754662, 35.134403, 35.746250>,  <30.944902, 35.045780, 35.629829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754662, 35.134403, 35.746250>,  <30.437592, 35.282108, 35.940289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754662, 35.134403, 35.746250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470769, -0.134819, 0.871895,
		-0.387359, -0.919493, 0.066971,
		0.792672, -0.369264, -0.485092,
		30.992464, 35.023624, 35.600723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552113, 34.676319, 36.131474>,  <30.437592, 35.282108, 35.940289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552113, 34.676319, 36.131474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893942, 34.868729, 36.053169>,  <31.099039, 34.984173, 36.006187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893942, 34.868729, 36.053169>,  <30.552113, 34.676319, 36.131474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893942, 34.868729, 36.053169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251835, -0.054178, 0.966253,
		0.454185, -0.875032, -0.167438,
		0.854573, 0.481024, -0.195756,
		31.150314, 35.013035, 35.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023474, 34.272541, 36.568321>,  <30.552113, 34.676319, 36.131474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023474, 34.272541, 36.568321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209984, 34.607594, 36.454510>,  <31.321890, 34.808624, 36.386223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209984, 34.607594, 36.454510>,  <31.023474, 34.272541, 36.568321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209984, 34.607594, 36.454510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626040, -0.085191, 0.775123,
		0.625030, -0.539547, -0.564115,
		0.466273, 0.837634, -0.284531,
		31.349865, 34.858883, 36.369152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714642, 34.117729, 36.587120>,  <31.023474, 34.272541, 36.568321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714642, 34.117729, 36.587120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712954, 34.514801, 36.635395>,  <31.711941, 34.753044, 36.664360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712954, 34.514801, 36.635395>,  <31.714642, 34.117729, 36.587120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712954, 34.514801, 36.635395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629886, -0.091100, 0.771326,
		0.776676, 0.079279, -0.624891,
		-0.004222, 0.992681, 0.120692,
		31.711687, 34.812607, 36.671604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426655, 34.324337, 36.665676>,  <31.714642, 34.117729, 36.587120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426655, 34.324337, 36.665676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204224, 34.627491, 36.802135>,  <32.070766, 34.809383, 36.884010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204224, 34.627491, 36.802135>,  <32.426655, 34.324337, 36.665676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204224, 34.627491, 36.802135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660379, 0.153674, 0.735040,
		0.504654, 0.634025, -0.585949,
		-0.556079, 0.757890, 0.341144,
		32.037399, 34.854858, 36.904480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845440, 34.795479, 36.919788>,  <32.426655, 34.324337, 36.665676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845440, 34.795479, 36.919788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513973, 34.896034, 37.119839>,  <32.315094, 34.956367, 37.239868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513973, 34.896034, 37.119839>,  <32.845440, 34.795479, 36.919788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513973, 34.896034, 37.119839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526482, 0.046624, 0.848907,
		0.190084, 0.966764, -0.170985,
		-0.828664, 0.251384, 0.500122,
		32.265373, 34.971451, 37.269875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066143, 35.288452, 37.423382>,  <32.845440, 34.795479, 36.919788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066143, 35.288452, 37.423382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711224, 35.172394, 37.566780>,  <32.498272, 35.102757, 37.652817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711224, 35.172394, 37.566780>,  <33.066143, 35.288452, 37.423382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711224, 35.172394, 37.566780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370403, 0.014797, 0.928753,
		-0.274782, 0.956867, 0.094343,
		-0.887297, -0.290150, 0.358493,
		32.445034, 35.085350, 37.674328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920635, 35.810814, 37.943344>,  <33.066143, 35.288452, 37.423382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920635, 35.810814, 37.943344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709827, 35.482498, 38.031487>,  <32.583344, 35.285511, 38.084370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709827, 35.482498, 38.031487>,  <32.920635, 35.810814, 37.943344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709827, 35.482498, 38.031487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321344, 0.047572, 0.945767,
		-0.786756, 0.569250, 0.238683,
		-0.527023, -0.820787, 0.220353,
		32.551720, 35.236263, 38.097591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778614, 35.868961, 38.606213>,  <32.920635, 35.810814, 37.943344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778614, 35.868961, 38.606213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668663, 35.485622, 38.575180>,  <32.602692, 35.255619, 38.556561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668663, 35.485622, 38.575180>,  <32.778614, 35.868961, 38.606213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668663, 35.485622, 38.575180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231461, -0.144277, 0.962086,
		-0.933205, 0.246493, 0.261477,
		-0.274873, -0.958345, -0.077586,
		32.586201, 35.198120, 38.551903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440884, 35.680725, 39.235756>,  <32.778614, 35.868961, 38.606213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440884, 35.680725, 39.235756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570873, 35.333168, 39.086403>,  <32.648869, 35.124634, 38.996792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570873, 35.333168, 39.086403>,  <32.440884, 35.680725, 39.235756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570873, 35.333168, 39.086403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254750, -0.299795, 0.919361,
		-0.910765, -0.393892, 0.123924,
		0.324977, -0.868891, -0.373387,
		32.668365, 35.072502, 38.974388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032982, 35.031075, 39.636612>,  <32.440884, 35.680725, 39.235756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032982, 35.031075, 39.636612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366512, 34.873745, 39.481682>,  <32.566631, 34.779346, 39.388721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366512, 34.873745, 39.481682>,  <32.032982, 35.031075, 39.636612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366512, 34.873745, 39.481682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266147, -0.328277, 0.906311,
		-0.483628, -0.858794, -0.169044,
		0.833828, -0.393327, -0.387330,
		32.616661, 34.755749, 39.365482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109550, 34.298237, 39.903675>,  <32.032982, 35.031075, 39.636612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109550, 34.298237, 39.903675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466602, 34.448109, 39.803413>,  <32.680832, 34.538033, 39.743256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466602, 34.448109, 39.803413>,  <32.109550, 34.298237, 39.903675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466602, 34.448109, 39.803413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340750, -0.196776, 0.919330,
		0.295135, -0.906030, -0.303322,
		0.892628, 0.374684, -0.250655,
		32.734390, 34.560513, 39.728218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581902, 33.804810, 40.151630>,  <32.109550, 34.298237, 39.903675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581902, 33.804810, 40.151630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837963, 34.108566, 40.105110>,  <32.991600, 34.290821, 40.077198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837963, 34.108566, 40.105110>,  <32.581902, 33.804810, 40.151630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837963, 34.108566, 40.105110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604468, -0.404439, 0.686329,
		0.474156, -0.509657, -0.717932,
		0.640152, 0.759394, -0.116304,
		33.030010, 34.336384, 40.070221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270798, 33.531624, 40.172157>,  <32.581902, 33.804810, 40.151630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270798, 33.531624, 40.172157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320122, 33.922115, 40.243458>,  <33.349716, 34.156410, 40.286240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320122, 33.922115, 40.243458>,  <33.270798, 33.531624, 40.172157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320122, 33.922115, 40.243458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500954, -0.216295, 0.838010,
		0.856644, -0.014038, -0.515717,
		0.123311, 0.976227, 0.178256,
		33.357117, 34.214985, 40.296936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895401, 33.623726, 40.455601>,  <33.270798, 33.531624, 40.172157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895401, 33.623726, 40.455601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694786, 33.954674, 40.556736>,  <33.574417, 34.153240, 40.617416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694786, 33.954674, 40.556736>,  <33.895401, 33.623726, 40.455601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694786, 33.954674, 40.556736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266817, -0.130079, 0.954928,
		0.822963, 0.546394, -0.155516,
		-0.501538, 0.827365, 0.252837,
		33.544323, 34.202885, 40.632587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299049, 34.145153, 40.812756>,  <33.895401, 33.623726, 40.455601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299049, 34.145153, 40.812756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930454, 34.228848, 40.943649>,  <33.709297, 34.279064, 41.022186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930454, 34.228848, 40.943649>,  <34.299049, 34.145153, 40.812756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930454, 34.228848, 40.943649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317391, -0.080009, 0.944914,
		0.223896, 0.974586, 0.007316,
		-0.921485, 0.209241, 0.327238,
		33.654011, 34.291618, 41.041821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414207, 34.481544, 41.468178>,  <34.299049, 34.145153, 40.812756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414207, 34.481544, 41.468178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020615, 34.419662, 41.503597>,  <33.784458, 34.382534, 41.524849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020615, 34.419662, 41.503597>,  <34.414207, 34.481544, 41.468178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020615, 34.419662, 41.503597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095912, -0.040791, 0.994554,
		-0.150247, 0.987119, 0.054976,
		-0.983985, -0.154702, 0.088548,
		33.725418, 34.373253, 41.530163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137703, 34.797840, 42.088013>,  <34.414207, 34.481544, 41.468178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137703, 34.797840, 42.088013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865753, 34.509022, 42.036762>,  <33.702583, 34.335732, 42.006012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865753, 34.509022, 42.036762>,  <34.137703, 34.797840, 42.088013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865753, 34.509022, 42.036762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096637, -0.261414, 0.960377,
		-0.726930, 0.640557, 0.247505,
		-0.679878, -0.722045, -0.128128,
		33.661789, 34.292408, 41.998325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705036, 34.853916, 42.671818>,  <34.137703, 34.797840, 42.088013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705036, 34.853916, 42.671818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636902, 34.478783, 42.550850>,  <33.596020, 34.253704, 42.478268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636902, 34.478783, 42.550850>,  <33.705036, 34.853916, 42.671818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636902, 34.478783, 42.550850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001428, -0.306674, 0.951814,
		-0.985385, 0.162559, 0.050898,
		-0.170335, -0.937830, -0.302424,
		33.585800, 34.197433, 42.460121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094841, 34.629684, 42.985386>,  <33.705036, 34.853916, 42.671818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094841, 34.629684, 42.985386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301102, 34.296043, 42.907017>,  <33.424858, 34.095860, 42.859993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301102, 34.296043, 42.907017>,  <33.094841, 34.629684, 42.985386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301102, 34.296043, 42.907017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002464, -0.227228, 0.973838,
		-0.856798, -0.502639, -0.115115,
		0.515646, -0.834099, -0.195927,
		33.455795, 34.045815, 42.848240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735123, 34.194984, 43.408939>,  <33.094841, 34.629684, 42.985386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735123, 34.194984, 43.408939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086842, 34.021336, 43.330578>,  <33.297871, 33.917145, 43.283562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086842, 34.021336, 43.330578>,  <32.735123, 34.194984, 43.408939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086842, 34.021336, 43.330578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037804, -0.346412, 0.937320,
		-0.474776, -0.831586, -0.288187,
		0.879294, -0.434123, -0.195905,
		33.350632, 33.891098, 43.271805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660591, 33.521538, 43.705624>,  <32.735123, 34.194984, 43.408939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660591, 33.521538, 43.705624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055294, 33.545746, 43.645416>,  <33.292114, 33.560272, 43.609291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055294, 33.545746, 43.645416>,  <32.660591, 33.521538, 43.705624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055294, 33.545746, 43.645416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159465, -0.532288, 0.831409,
		-0.029800, -0.844397, -0.534888,
		0.986753, 0.060520, -0.150514,
		33.351318, 33.563900, 43.600262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952629, 32.852821, 43.741470>,  <32.660591, 33.521538, 43.705624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952629, 32.852821, 43.741470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253742, 33.098648, 43.835808>,  <33.434410, 33.246143, 43.892410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253742, 33.098648, 43.835808>,  <32.952629, 32.852821, 43.741470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253742, 33.098648, 43.835808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119180, -0.479608, 0.869352,
		0.647390, -0.626325, -0.434285,
		0.752783, 0.614567, 0.235848,
		33.479576, 33.283020, 43.906563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525105, 32.391247, 44.121956>,  <32.952629, 32.852821, 43.741470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525105, 32.391247, 44.121956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590382, 32.776024, 44.209621>,  <33.629547, 33.006889, 44.262222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590382, 32.776024, 44.209621>,  <33.525105, 32.391247, 44.121956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590382, 32.776024, 44.209621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173968, -0.190603, 0.966129,
		0.971136, -0.195790, 0.136243,
		0.163190, 0.961944, 0.219163,
		33.639339, 33.064606, 44.275372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063148, 32.436703, 44.566738>,  <33.525105, 32.391247, 44.121956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063148, 32.436703, 44.566738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883869, 32.789860, 44.622761>,  <33.776302, 33.001755, 44.656372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883869, 32.789860, 44.622761>,  <34.063148, 32.436703, 44.566738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883869, 32.789860, 44.622761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048089, -0.180255, 0.982444,
		0.892641, 0.433592, 0.123247,
		-0.448195, 0.882897, 0.140052,
		33.749409, 33.054729, 44.664776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390148, 32.709488, 45.267586>,  <34.063148, 32.436703, 44.566738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390148, 32.709488, 45.267586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050972, 32.916595, 45.222130>,  <33.847466, 33.040859, 45.194855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050972, 32.916595, 45.222130>,  <34.390148, 32.709488, 45.267586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050972, 32.916595, 45.222130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130051, 0.004639, 0.991496,
		0.513891, 0.855509, 0.063402,
		-0.847940, 0.517767, -0.113644,
		33.796589, 33.071926, 45.188038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318989, 33.242947, 45.804863>,  <34.390148, 32.709488, 45.267586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318989, 33.242947, 45.804863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941513, 33.184467, 45.686150>,  <33.715027, 33.149380, 45.614922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941513, 33.184467, 45.686150>,  <34.318989, 33.242947, 45.804863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941513, 33.184467, 45.686150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312423, 0.098684, 0.944803,
		-0.108838, 0.984321, -0.138801,
		-0.943688, -0.146195, -0.296784,
		33.658405, 33.140610, 45.597115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959801, 33.705738, 46.144028>,  <34.318989, 33.242947, 45.804863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959801, 33.705738, 46.144028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675125, 33.445145, 46.038902>,  <33.504322, 33.288788, 45.975826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675125, 33.445145, 46.038902>,  <33.959801, 33.705738, 46.144028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675125, 33.445145, 46.038902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353038, 0.008241, 0.935573,
		-0.607343, 0.758619, -0.235863,
		-0.711687, -0.651483, -0.262816,
		33.461620, 33.249699, 45.960056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325111, 34.090004, 46.269222>,  <33.959801, 33.705738, 46.144028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325111, 34.090004, 46.269222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247562, 33.697739, 46.258537>,  <33.201035, 33.462379, 46.252125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247562, 33.697739, 46.258537>,  <33.325111, 34.090004, 46.269222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247562, 33.697739, 46.258537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594621, 0.095807, 0.798277,
		-0.780281, 0.170650, -0.601697,
		-0.193872, -0.980663, -0.026716,
		33.189400, 33.403542, 46.250523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679516, 34.125408, 46.449749>,  <33.325111, 34.090004, 46.269222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679516, 34.125408, 46.449749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768871, 33.743065, 46.526093>,  <32.822483, 33.513657, 46.571899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768871, 33.743065, 46.526093>,  <32.679516, 34.125408, 46.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768871, 33.743065, 46.526093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558698, 0.034882, 0.828637,
		-0.798720, -0.291739, -0.526246,
		0.223389, -0.955862, 0.190855,
		32.835888, 33.456306, 46.583347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078228, 33.771980, 46.637657>,  <32.679516, 34.125408, 46.449749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078228, 33.771980, 46.637657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378281, 33.572720, 46.811623>,  <32.558311, 33.453163, 46.916000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378281, 33.572720, 46.811623>,  <32.078228, 33.771980, 46.637657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378281, 33.572720, 46.811623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541799, -0.085886, 0.836109,
		-0.379156, -0.862826, -0.334324,
		0.750130, -0.498152, 0.434914,
		32.603321, 33.423275, 46.942097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732376, 33.216045, 46.931496>,  <32.078228, 33.771980, 46.637657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732376, 33.216045, 46.931496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083260, 33.225147, 47.123322>,  <32.293789, 33.230610, 47.238419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083260, 33.225147, 47.123322>,  <31.732376, 33.216045, 46.931496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083260, 33.225147, 47.123322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466615, -0.194721, 0.862760,
		0.113017, -0.980595, -0.160191,
		0.877210, 0.022759, 0.479567,
		32.346424, 33.231976, 47.267193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744410, 32.639015, 47.342915>,  <31.732376, 33.216045, 46.931496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744410, 32.639015, 47.342915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022923, 32.878403, 47.501423>,  <32.190029, 33.022034, 47.596527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022923, 32.878403, 47.501423>,  <31.744410, 32.639015, 47.342915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022923, 32.878403, 47.501423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345330, -0.204675, 0.915890,
		0.629235, -0.774563, 0.064156,
		0.696284, 0.598465, 0.396269,
		32.231808, 33.057941, 47.620304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071377, 32.244274, 47.800327>,  <31.744410, 32.639015, 47.342915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071377, 32.244274, 47.800327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168602, 32.611897, 47.924431>,  <32.226936, 32.832470, 47.998894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168602, 32.611897, 47.924431>,  <32.071377, 32.244274, 47.800327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168602, 32.611897, 47.924431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359424, -0.211748, 0.908833,
		0.900963, -0.332420, 0.278861,
		0.243066, 0.919054, 0.310257,
		32.241524, 32.887611, 48.017509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544609, 32.274010, 48.444946>,  <32.071377, 32.244274, 47.800327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544609, 32.274010, 48.444946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354668, 32.625950, 48.437168>,  <32.240704, 32.837116, 48.432503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354668, 32.625950, 48.437168>,  <32.544609, 32.274010, 48.444946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354668, 32.625950, 48.437168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501624, -0.252438, 0.827435,
		0.723113, 0.402659, 0.561225,
		-0.474849, 0.879853, -0.019442,
		32.212212, 32.889904, 48.431335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407848, 32.372223, 49.134499>,  <32.544609, 32.274010, 48.444946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407848, 32.372223, 49.134499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180607, 32.661434, 48.977276>,  <32.044262, 32.834961, 48.882942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180607, 32.661434, 48.977276>,  <32.407848, 32.372223, 49.134499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180607, 32.661434, 48.977276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618074, -0.059510, 0.783864,
		0.543362, 0.688255, 0.480690,
		-0.568104, 0.723024, -0.393057,
		32.010174, 32.878342, 48.859360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262165, 32.812073, 49.672234>,  <32.407848, 32.372223, 49.134499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262165, 32.812073, 49.672234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967901, 32.876205, 49.408993>,  <31.791344, 32.914684, 49.251049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967901, 32.876205, 49.408993>,  <32.262165, 32.812073, 49.672234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967901, 32.876205, 49.408993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666666, 0.000532, 0.745357,
		0.119855, 0.987063, 0.106497,
		-0.735657, 0.160332, -0.658105,
		31.747204, 32.924305, 49.211563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803724, 33.352158, 49.984222>,  <32.262165, 32.812073, 49.672234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803724, 33.352158, 49.984222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577551, 33.156326, 49.718712>,  <31.441847, 33.038826, 49.559406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577551, 33.156326, 49.718712>,  <31.803724, 33.352158, 49.984222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577551, 33.156326, 49.718712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755339, -0.015868, 0.655142,
		-0.331278, 0.871813, -0.360827,
		-0.565436, -0.489581, -0.663772,
		31.407921, 33.009453, 49.519581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122610, 33.649059, 50.030514>,  <31.803724, 33.352158, 49.984222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122610, 33.649059, 50.030514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056206, 33.298645, 49.849403>,  <31.016363, 33.088398, 49.740738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056206, 33.298645, 49.849403>,  <31.122610, 33.649059, 50.030514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056206, 33.298645, 49.849403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810404, -0.140413, 0.568797,
		-0.561860, 0.461360, -0.686629,
		-0.166009, -0.876031, -0.452780,
		31.006403, 33.035835, 49.713570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456591, 33.663925, 49.919460>,  <31.122610, 33.649059, 50.030514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456591, 33.663925, 49.919460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539425, 33.274090, 49.885300>,  <30.589125, 33.040188, 49.864803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539425, 33.274090, 49.885300>,  <30.456591, 33.663925, 49.919460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539425, 33.274090, 49.885300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786472, -0.217759, 0.577964,
		-0.581874, -0.052523, -0.811581,
		0.207085, -0.974588, -0.085400,
		30.601551, 32.981712, 49.859680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838772, 33.273090, 49.707443>,  <30.456591, 33.663925, 49.919460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838772, 33.273090, 49.707443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089119, 33.061779, 49.936951>,  <30.239326, 32.934990, 50.074654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089119, 33.061779, 49.936951>,  <29.838772, 33.273090, 49.707443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089119, 33.061779, 49.936951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764635, -0.270647, 0.584879,
		-0.153694, -0.804777, -0.573334,
		0.625868, -0.528284, 0.573764,
		30.276880, 32.903294, 50.109081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657879, 32.606766, 49.658207>,  <29.838772, 33.273090, 49.707443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657879, 32.606766, 49.658207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800070, 32.696297, 50.021202>,  <29.885386, 32.750015, 50.238998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800070, 32.696297, 50.021202>,  <29.657879, 32.606766, 49.658207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800070, 32.696297, 50.021202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856758, -0.310080, 0.412088,
		0.373632, -0.923986, 0.081542,
		0.355479, 0.223831, 0.907488,
		29.906713, 32.763447, 50.293449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643171, 31.962990, 50.048630>,  <29.657879, 32.606766, 49.658207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643171, 31.962990, 50.048630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662355, 32.274509, 50.298805>,  <29.673866, 32.461422, 50.448910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662355, 32.274509, 50.298805>,  <29.643171, 31.962990, 50.048630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662355, 32.274509, 50.298805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745473, -0.388847, 0.541358,
		0.664808, -0.492212, 0.561923,
		0.047960, 0.778798, 0.625440,
		29.676743, 32.508148, 50.486439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018835, 31.656670, 49.951889>,  <29.643171, 31.962990, 50.048630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018835, 31.656670, 49.951889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307257, 31.417610, 50.092117>,  <29.480310, 31.274176, 50.176254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307257, 31.417610, 50.092117>,  <29.018835, 31.656670, 49.951889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307257, 31.417610, 50.092117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692835, -0.616256, 0.374444,
		-0.007746, -0.512880, -0.858425,
		0.721055, -0.597647, 0.350568,
		29.523573, 31.238316, 50.197289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191355, 31.318090, 50.677914>,  <29.018835, 31.656670, 49.951889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191355, 31.318090, 50.677914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422806, 31.577585, 50.875633>,  <29.561676, 31.733282, 50.994263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422806, 31.577585, 50.875633>,  <29.191355, 31.318090, 50.677914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422806, 31.577585, 50.875633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105591, -0.541372, 0.834127,
		0.808727, -0.534843, -0.244753,
		0.578629, 0.648737, 0.494296,
		29.596395, 31.772205, 51.023922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763138, 31.038651, 51.092800>,  <29.191355, 31.318090, 50.677914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763138, 31.038651, 51.092800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707363, 31.381275, 51.291538>,  <29.673899, 31.586849, 51.410782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707363, 31.381275, 51.291538>,  <29.763138, 31.038651, 51.092800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707363, 31.381275, 51.291538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096407, -0.511110, 0.854092,
		0.985527, 0.071193, 0.153846,
		-0.139437, 0.856562, 0.496849,
		29.665531, 31.638245, 51.440594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162357, 31.247131, 51.664989>,  <29.763138, 31.038651, 51.092800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162357, 31.247131, 51.664989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299509, 30.939651, 51.880966>,  <30.381800, 30.755163, 52.010551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299509, 30.939651, 51.880966>,  <30.162357, 31.247131, 51.664989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299509, 30.939651, 51.880966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601266, -0.262030, -0.754864,
		0.721743, 0.583476, 0.372347,
		0.342879, -0.768697, 0.539943,
		30.402372, 30.709042, 52.042950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869234, 31.360865, 51.481316>,  <30.162357, 31.247131, 51.664989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869234, 31.360865, 51.481316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804756, 30.988518, 51.612465>,  <30.766069, 30.765110, 51.691154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804756, 30.988518, 51.612465>,  <30.869234, 31.360865, 51.481316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804756, 30.988518, 51.612465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718190, -0.338507, -0.607961,
		0.676920, 0.137479, 0.723104,
		-0.161194, -0.930867, 0.327878,
		30.756397, 30.709257, 51.710827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421200, 31.068266, 51.930103>,  <30.869234, 31.360865, 51.481316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421200, 31.068266, 51.930103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230101, 30.766829, 51.749504>,  <31.115440, 30.585966, 51.641144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230101, 30.766829, 51.749504>,  <31.421200, 31.068266, 51.930103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230101, 30.766829, 51.749504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798668, -0.158521, -0.580517,
		0.365903, -0.637939, 0.677606,
		-0.477750, -0.753595, -0.451498,
		31.086775, 30.540751, 51.614056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985630, 30.571640, 51.777149>,  <31.421200, 31.068266, 51.930103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985630, 30.571640, 51.777149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672245, 30.471905, 51.549458>,  <31.484215, 30.412064, 51.412842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672245, 30.471905, 51.549458>,  <31.985630, 30.571640, 51.777149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672245, 30.471905, 51.549458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620789, -0.272111, -0.735240,
		0.028431, -0.929401, 0.367975,
		-0.783462, -0.249338, -0.569225,
		31.437206, 30.397102, 51.378689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282139, 30.169031, 51.142399>,  <31.985630, 30.571640, 51.777149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282139, 30.169031, 51.142399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909916, 30.199379, 50.999123>,  <31.686583, 30.217588, 50.913155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909916, 30.199379, 50.999123>,  <32.282139, 30.169031, 51.142399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909916, 30.199379, 50.999123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362809, 0.059393, -0.929969,
		-0.049286, -0.995347, -0.082796,
		-0.930559, 0.075873, -0.358193,
		31.630749, 30.222139, 50.891666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112576, 29.625034, 50.640236>,  <32.282139, 30.169031, 51.142399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112576, 29.625034, 50.640236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891212, 29.952087, 50.576714>,  <31.758394, 30.148319, 50.538601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891212, 29.952087, 50.576714>,  <32.112576, 29.625034, 50.640236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891212, 29.952087, 50.576714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015891, -0.200989, -0.979465,
		-0.832760, -0.539517, 0.124222,
		-0.553406, 0.817634, -0.158802,
		31.725191, 30.197378, 50.529072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603292, 29.449022, 50.212749>,  <32.112576, 29.625034, 50.640236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603292, 29.449022, 50.212749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610346, 29.847113, 50.174347>,  <31.614578, 30.085966, 50.151306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610346, 29.847113, 50.174347>,  <31.603292, 29.449022, 50.212749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610346, 29.847113, 50.174347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098530, -0.097287, -0.990367,
		-0.994978, 0.008002, -0.099775,
		0.017632, 0.995224, -0.096010,
		31.615635, 30.145679, 50.145542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266027, 29.580811, 49.666111>,  <31.603292, 29.449022, 50.212749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266027, 29.580811, 49.666111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490400, 29.908909, 49.710922>,  <31.625025, 30.105768, 49.737808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490400, 29.908909, 49.710922>,  <31.266027, 29.580811, 49.666111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490400, 29.908909, 49.710922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116484, 0.055782, -0.991625,
		-0.819626, 0.569284, -0.064255,
		0.560932, 0.820246, 0.112033,
		31.658680, 30.154984, 49.744534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956640, 30.066923, 49.309196>,  <31.266027, 29.580811, 49.666111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956640, 30.066923, 49.309196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343416, 30.159391, 49.352261>,  <31.575481, 30.214872, 49.378098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343416, 30.159391, 49.352261>,  <30.956640, 30.066923, 49.309196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343416, 30.159391, 49.352261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108870, 0.007552, -0.994027,
		-0.230603, 0.972884, -0.017865,
		0.966938, 0.231171, 0.107659,
		31.633497, 30.228743, 49.384560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076941, 30.698612, 48.896629>,  <30.956640, 30.066923, 49.309196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076941, 30.698612, 48.896629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426016, 30.522970, 48.982048>,  <31.635460, 30.417585, 49.033298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426016, 30.522970, 48.982048>,  <31.076941, 30.698612, 48.896629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426016, 30.522970, 48.982048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271218, 0.072241, -0.959803,
		0.406028, 0.895526, 0.182138,
		0.872687, -0.439106, 0.213551,
		31.687822, 30.391239, 49.046112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599934, 31.189898, 48.649376>,  <31.076941, 30.698612, 48.896629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599934, 31.189898, 48.649376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790565, 30.838360, 48.658386>,  <31.904945, 30.627438, 48.663792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790565, 30.838360, 48.658386>,  <31.599934, 31.189898, 48.649376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790565, 30.838360, 48.658386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401433, 0.194751, -0.894943,
		0.782127, 0.435555, 0.445611,
		0.476580, -0.878842, 0.022526,
		31.933540, 30.574707, 48.665142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099361, 31.301266, 48.324562>,  <31.599934, 31.189898, 48.649376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099361, 31.301266, 48.324562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097214, 30.901484, 48.311558>,  <32.095924, 30.661613, 48.303753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097214, 30.901484, 48.311558>,  <32.099361, 31.301266, 48.324562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097214, 30.901484, 48.311558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354172, 0.028506, -0.934746,
		0.935165, -0.016537, 0.353826,
		-0.005371, -0.999457, -0.032515,
		32.095604, 30.601646, 48.301804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648212, 31.124840, 47.795868>,  <32.099361, 31.301266, 48.324562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648212, 31.124840, 47.795868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458706, 30.773911, 47.826458>,  <32.345001, 30.563353, 47.844814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458706, 30.773911, 47.826458>,  <32.648212, 31.124840, 47.795868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458706, 30.773911, 47.826458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359446, -0.271924, -0.892668,
		0.803953, -0.395429, 0.444179,
		-0.473770, -0.877321, 0.076478,
		32.316574, 30.510714, 47.849400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120930, 30.686771, 47.568878>,  <32.648212, 31.124840, 47.795868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120930, 30.686771, 47.568878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778252, 30.480783, 47.556995>,  <32.572643, 30.357191, 47.549866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778252, 30.480783, 47.556995>,  <33.120930, 30.686771, 47.568878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778252, 30.480783, 47.556995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296052, -0.443720, -0.845852,
		0.422409, -0.733430, 0.532590,
		-0.856694, -0.514970, -0.029703,
		32.521244, 30.326292, 47.548084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297798, 29.993254, 47.246956>,  <33.120930, 30.686771, 47.568878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297798, 29.993254, 47.246956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912323, 30.088165, 47.197952>,  <32.681038, 30.145113, 47.168552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912323, 30.088165, 47.197952>,  <33.297798, 29.993254, 47.246956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912323, 30.088165, 47.197952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063457, -0.242133, -0.968166,
		-0.259384, -0.940783, 0.218284,
		-0.963687, 0.237275, -0.122504,
		32.623219, 30.159349, 47.161201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101124, 29.596195, 46.630665>,  <33.297798, 29.993254, 47.246956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101124, 29.596195, 46.630665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813896, 29.870409, 46.678696>,  <32.641560, 30.034937, 46.707512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813896, 29.870409, 46.678696>,  <33.101124, 29.596195, 46.630665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813896, 29.870409, 46.678696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077282, 0.092922, -0.992670,
		-0.691666, -0.722087, -0.013745,
		-0.718071, 0.685534, 0.120075,
		32.598476, 30.076069, 46.714718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475956, 29.312235, 46.213646>,  <33.101124, 29.596195, 46.630665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475956, 29.312235, 46.213646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493259, 29.708069, 46.268562>,  <32.503643, 29.945570, 46.301514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493259, 29.708069, 46.268562>,  <32.475956, 29.312235, 46.213646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493259, 29.708069, 46.268562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000678, 0.137449, -0.990508,
		-0.999064, 0.042755, 0.006617,
		0.043259, 0.989585, 0.137291,
		32.506237, 30.004944, 46.309750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047604, 29.497753, 45.682884>,  <32.475956, 29.312235, 46.213646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047604, 29.497753, 45.682884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185329, 29.858929, 45.785759>,  <32.267963, 30.075634, 45.847485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185329, 29.858929, 45.785759>,  <32.047604, 29.497753, 45.682884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185329, 29.858929, 45.785759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073961, 0.299177, -0.951327,
		-0.935937, 0.308532, 0.169792,
		0.344313, 0.902941, 0.257192,
		32.288624, 30.129810, 45.862915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548330, 30.028900, 45.530113>,  <32.047604, 29.497753, 45.682884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548330, 30.028900, 45.530113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903849, 30.211765, 45.543045>,  <32.117161, 30.321484, 45.550804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903849, 30.211765, 45.543045>,  <31.548330, 30.028900, 45.530113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903849, 30.211765, 45.543045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027476, 0.123567, -0.991956,
		-0.457481, 0.880757, 0.122387,
		0.888795, 0.457163, 0.032329,
		32.170486, 30.348915, 45.552742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491261, 30.661970, 45.072144>,  <31.548330, 30.028900, 45.530113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491261, 30.661970, 45.072144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882385, 30.591948, 45.118176>,  <32.117062, 30.549934, 45.145794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882385, 30.591948, 45.118176>,  <31.491261, 30.661970, 45.072144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882385, 30.591948, 45.118176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138943, 0.130806, -0.981623,
		0.156785, 0.975831, 0.152226,
		0.977810, -0.175055, 0.115076,
		32.175728, 30.539431, 45.152699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711702, 31.157757, 44.682171>,  <31.491261, 30.661970, 45.072144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711702, 31.157757, 44.682171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017525, 30.901903, 44.713966>,  <32.201019, 30.748390, 44.733044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017525, 30.901903, 44.713966>,  <31.711702, 31.157757, 44.682171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017525, 30.901903, 44.713966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275061, 0.212246, -0.937706,
		0.582918, 0.738795, 0.338213,
		0.764557, -0.639636, 0.079492,
		32.246891, 30.710012, 44.737816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297527, 31.449343, 44.375229>,  <31.711702, 31.157757, 44.682171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297527, 31.449343, 44.375229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430122, 31.072012, 44.368843>,  <32.509678, 30.845613, 44.365009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430122, 31.072012, 44.368843>,  <32.297527, 31.449343, 44.375229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430122, 31.072012, 44.368843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295772, 0.119978, -0.947694,
		0.895899, 0.309425, 0.318780,
		0.331487, -0.943325, -0.015968,
		32.529568, 30.789015, 44.364052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972569, 31.508251, 44.116802>,  <32.297527, 31.449343, 44.375229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972569, 31.508251, 44.116802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816860, 31.148230, 44.038452>,  <32.723434, 30.932217, 43.991440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816860, 31.148230, 44.038452>,  <32.972569, 31.508251, 44.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816860, 31.148230, 44.038452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170271, 0.138676, -0.975590,
		0.905248, -0.413123, 0.099270,
		-0.389273, -0.900054, -0.195879,
		32.700077, 30.878214, 43.979687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257412, 31.360912, 43.510063>,  <32.972569, 31.508251, 44.116802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257412, 31.360912, 43.510063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006832, 31.049133, 43.511940>,  <32.856483, 30.862066, 43.513065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006832, 31.049133, 43.511940>,  <33.257412, 31.360912, 43.510063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006832, 31.049133, 43.511940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148213, -0.125024, -0.981021,
		0.765243, -0.613863, 0.193846,
		-0.626447, -0.779449, 0.004691,
		32.818897, 30.815298, 43.513348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614056, 30.952597, 43.110199>,  <33.257412, 31.360912, 43.510063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614056, 30.952597, 43.110199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225285, 30.859118, 43.099289>,  <32.992023, 30.803030, 43.092743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225285, 30.859118, 43.099289>,  <33.614056, 30.952597, 43.110199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225285, 30.859118, 43.099289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079152, -0.215588, -0.973271,
		0.221569, -0.948108, 0.228033,
		-0.971927, -0.233696, -0.027277,
		32.933708, 30.789009, 43.091106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651974, 30.451553, 42.647800>,  <33.614056, 30.952597, 43.110199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651974, 30.451553, 42.647800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278030, 30.593409, 42.654301>,  <33.053665, 30.678522, 42.658203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278030, 30.593409, 42.654301>,  <33.651974, 30.451553, 42.647800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278030, 30.593409, 42.654301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024638, -0.019136, -0.999513,
		-0.354154, -0.934808, 0.026627,
		-0.934862, 0.354638, 0.016254,
		32.997570, 30.699800, 42.659176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193630, 30.016581, 42.171040>,  <33.651974, 30.451553, 42.647800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193630, 30.016581, 42.171040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020481, 30.374680, 42.213276>,  <32.916592, 30.589539, 42.238617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020481, 30.374680, 42.213276>,  <33.193630, 30.016581, 42.171040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020481, 30.374680, 42.213276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262653, -0.013210, -0.964800,
		-0.862341, -0.445372, 0.240858,
		-0.432876, 0.895249, 0.105586,
		32.890617, 30.643253, 42.244953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666367, 30.034695, 41.763428>,  <33.193630, 30.016581, 42.171040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666367, 30.034695, 41.763428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682850, 30.429396, 41.826199>,  <32.692741, 30.666216, 41.863861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682850, 30.429396, 41.826199>,  <32.666367, 30.034695, 41.763428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682850, 30.429396, 41.826199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147307, 0.161343, -0.975843,
		-0.988232, 0.017099, 0.152004,
		0.041210, 0.986750, 0.156925,
		32.695213, 30.725420, 41.873276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217560, 30.312969, 41.233582>,  <32.666367, 30.034695, 41.763428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217560, 30.312969, 41.233582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428162, 30.624636, 41.369637>,  <32.554523, 30.811636, 41.451271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428162, 30.624636, 41.369637>,  <32.217560, 30.312969, 41.233582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428162, 30.624636, 41.369637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039963, 0.422318, -0.905566,
		-0.849233, 0.463191, 0.253490,
		0.526503, 0.779167, 0.340136,
		32.586113, 30.858385, 41.471676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836046, 30.768305, 41.067413>,  <32.217560, 30.312969, 41.233582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836046, 30.768305, 41.067413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206852, 30.912642, 41.108276>,  <32.429337, 30.999245, 41.132793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206852, 30.912642, 41.108276>,  <31.836046, 30.768305, 41.067413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206852, 30.912642, 41.108276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033003, 0.192851, -0.980673,
		-0.373570, 0.912470, 0.166867,
		0.927015, 0.360843, 0.102158,
		32.484955, 31.020895, 41.138924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861654, 31.538807, 40.913670>,  <31.836046, 30.768305, 41.067413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861654, 31.538807, 40.913670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198723, 31.345486, 40.818741>,  <32.400963, 31.229494, 40.761784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198723, 31.345486, 40.818741>,  <31.861654, 31.538807, 40.913670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198723, 31.345486, 40.818741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052012, 0.365644, -0.929300,
		0.535908, 0.795440, 0.282981,
		0.842673, -0.483301, -0.237324,
		32.451523, 31.200495, 40.747543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288589, 31.941317, 40.603298>,  <31.861654, 31.538807, 40.913670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288589, 31.941317, 40.603298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428658, 31.594450, 40.461647>,  <32.512699, 31.386330, 40.376656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428658, 31.594450, 40.461647>,  <32.288589, 31.941317, 40.603298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428658, 31.594450, 40.461647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173632, 0.431607, -0.885194,
		0.920453, 0.248479, 0.301702,
		0.350169, -0.867164, -0.354130,
		32.533707, 31.334301, 40.355408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682224, 32.190933, 40.008835>,  <32.288589, 31.941317, 40.603298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682224, 32.190933, 40.008835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640011, 31.794197, 39.980206>,  <32.614681, 31.556156, 39.963028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640011, 31.794197, 39.980206>,  <32.682224, 32.190933, 40.008835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640011, 31.794197, 39.980206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188123, 0.050761, -0.980833,
		0.976459, -0.116975, 0.181231,
		-0.105533, -0.991837, -0.071571,
		32.608353, 31.496647, 39.958733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147102, 32.009159, 39.430786>,  <32.682224, 32.190933, 40.008835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147102, 32.009159, 39.430786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913933, 31.687712, 39.478779>,  <32.774029, 31.494843, 39.507572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913933, 31.687712, 39.478779>,  <33.147102, 32.009159, 39.430786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913933, 31.687712, 39.478779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094745, -0.213883, -0.972254,
		0.806982, -0.555385, 0.200817,
		-0.582926, -0.803618, 0.119980,
		32.739056, 31.446627, 39.514774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385254, 31.449549, 39.028378>,  <33.147102, 32.009159, 39.430786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385254, 31.449549, 39.028378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998009, 31.362005, 39.077126>,  <32.765659, 31.309479, 39.106373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998009, 31.362005, 39.077126>,  <33.385254, 31.449549, 39.028378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998009, 31.362005, 39.077126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070950, -0.227005, -0.971306,
		0.240244, -0.948983, 0.204239,
		-0.968116, -0.218859, 0.121866,
		32.707573, 31.296347, 39.113686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327785, 31.094013, 38.411640>,  <33.385254, 31.449549, 39.028378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327785, 31.094013, 38.411640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959095, 31.165327, 38.549416>,  <32.737881, 31.208115, 38.632080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959095, 31.165327, 38.549416>,  <33.327785, 31.094013, 38.411640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959095, 31.165327, 38.549416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348626, 0.008283, -0.937225,
		-0.169944, -0.983944, 0.054519,
		-0.921726, 0.178283, 0.344436,
		32.682579, 31.218811, 38.652748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848961, 30.766167, 37.926010>,  <33.327785, 31.094013, 38.411640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848961, 30.766167, 37.926010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646183, 31.048035, 38.124584>,  <32.524517, 31.217155, 38.243729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646183, 31.048035, 38.124584>,  <32.848961, 30.766167, 37.926010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646183, 31.048035, 38.124584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444301, 0.279908, -0.851027,
		-0.738651, -0.651989, 0.171189,
		-0.506943, 0.704671, 0.496434,
		32.494099, 31.259436, 38.273514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118862, 30.706509, 37.679100>,  <32.848961, 30.766167, 37.926010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118862, 30.706509, 37.679100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187939, 31.067341, 37.837307>,  <32.229385, 31.283840, 37.932232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187939, 31.067341, 37.837307>,  <32.118862, 30.706509, 37.679100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187939, 31.067341, 37.837307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388828, 0.431369, -0.814084,
		-0.904981, -0.013201, 0.425248,
		0.172692, 0.902079, 0.395514,
		32.239746, 31.337965, 37.955963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649794, 31.085806, 37.347248>,  <32.118862, 30.706509, 37.679100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649794, 31.085806, 37.347248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875158, 31.376326, 37.504757>,  <32.010376, 31.550636, 37.599262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875158, 31.376326, 37.504757>,  <31.649794, 31.085806, 37.347248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875158, 31.376326, 37.504757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197512, 0.581212, -0.789419,
		-0.802219, 0.366993, 0.470914,
		0.563412, 0.726298, 0.393774,
		32.044182, 31.594215, 37.622890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266119, 31.699389, 37.238182>,  <31.649794, 31.085806, 37.347248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266119, 31.699389, 37.238182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650497, 31.801746, 37.280334>,  <31.881124, 31.863161, 37.305626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650497, 31.801746, 37.280334>,  <31.266119, 31.699389, 37.238182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650497, 31.801746, 37.280334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088003, 0.643566, -0.760314,
		-0.262378, 0.721346, 0.640951,
		0.960944, 0.255896, 0.105377,
		31.938780, 31.878515, 37.311947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413404, 32.411209, 36.886475>,  <31.266119, 31.699389, 37.238182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413404, 32.411209, 36.886475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795769, 32.295280, 36.905373>,  <32.025188, 32.225723, 36.916710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795769, 32.295280, 36.905373>,  <31.413404, 32.411209, 36.886475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795769, 32.295280, 36.905373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192271, 0.496140, -0.846686,
		0.221953, 0.818441, 0.529991,
		0.955913, -0.289826, 0.047243,
		32.082542, 32.208332, 36.919544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730930, 32.990761, 36.764809>,  <31.413404, 32.411209, 36.886475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730930, 32.990761, 36.764809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045448, 32.749783, 36.709961>,  <32.234161, 32.605198, 36.677052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045448, 32.749783, 36.709961>,  <31.730930, 32.990761, 36.764809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045448, 32.749783, 36.709961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258056, 0.521867, -0.813057,
		0.561376, 0.603920, 0.565807,
		0.786297, -0.602441, -0.137118,
		32.281338, 32.569050, 36.668827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272942, 33.398449, 36.627472>,  <31.730930, 32.990761, 36.764809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272942, 33.398449, 36.627472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344292, 33.041046, 36.462635>,  <32.387104, 32.826603, 36.363731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344292, 33.041046, 36.462635>,  <32.272942, 33.398449, 36.627472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344292, 33.041046, 36.462635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088516, 0.431687, -0.897670,
		0.979973, 0.123647, 0.156093,
		0.178377, -0.893509, -0.412097,
		32.397804, 32.772995, 36.339005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931007, 33.435287, 36.203560>,  <32.272942, 33.398449, 36.627472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931007, 33.435287, 36.203560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728138, 33.124298, 36.054798>,  <32.606415, 32.937706, 35.965542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728138, 33.124298, 36.054798>,  <32.931007, 33.435287, 36.203560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728138, 33.124298, 36.054798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158177, 0.340219, -0.926947,
		0.847204, -0.528950, -0.049572,
		-0.507174, -0.777472, -0.371902,
		32.575985, 32.891056, 35.943226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269150, 32.953884, 35.663918>,  <32.931007, 33.435287, 36.203560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269150, 32.953884, 35.663918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882240, 33.025311, 35.591805>,  <32.650097, 33.068165, 35.548534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882240, 33.025311, 35.591805>,  <33.269150, 32.953884, 35.663918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882240, 33.025311, 35.591805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253736, 0.687379, -0.680535,
		0.002405, -0.704006, -0.710190,
		-0.967270, 0.178564, -0.180285,
		32.592060, 33.078880, 35.537720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509899, 32.441113, 36.130653>,  <33.269150, 32.953884, 35.663918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509899, 32.441113, 36.130653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860725, 32.566929, 35.985428>,  <34.071220, 32.642418, 35.898293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860725, 32.566929, 35.985428>,  <33.509899, 32.441113, 36.130653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860725, 32.566929, 35.985428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474200, -0.446206, 0.758969,
		0.076725, -0.837833, -0.540508,
		0.877068, 0.314541, -0.363066,
		34.123844, 32.661289, 35.876507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952656, 31.793581, 35.942799>,  <33.509899, 32.441113, 36.130653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952656, 31.793581, 35.942799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190609, 32.102104, 36.033306>,  <34.333382, 32.287216, 36.087612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190609, 32.102104, 36.033306>,  <33.952656, 31.793581, 35.942799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190609, 32.102104, 36.033306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445357, -0.550612, 0.706034,
		0.669158, -0.319235, -0.671056,
		0.594882, 0.771308, 0.226273,
		34.369072, 32.333496, 36.101189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689953, 31.614983, 35.824459>,  <33.952656, 31.793581, 35.942799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689953, 31.614983, 35.824459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684231, 31.923468, 36.079025>,  <34.680798, 32.108559, 36.231766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684231, 31.923468, 36.079025>,  <34.689953, 31.614983, 35.824459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684231, 31.923468, 36.079025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500787, -0.545374, 0.672146,
		0.865453, 0.328321, -0.378414,
		-0.014302, 0.771215, 0.636414,
		34.679939, 32.154831, 36.269951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297779, 31.479589, 36.051830>,  <34.689953, 31.614983, 35.824459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297779, 31.479589, 36.051830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186180, 31.762344, 36.311821>,  <35.119221, 31.931997, 36.467815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186180, 31.762344, 36.311821>,  <35.297779, 31.479589, 36.051830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186180, 31.762344, 36.311821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494989, -0.474143, 0.728131,
		0.822888, 0.524879, -0.217616,
		-0.278999, 0.706888, 0.649976,
		35.102482, 31.974411, 36.506813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898907, 31.715349, 36.403904>,  <35.297779, 31.479589, 36.051830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898907, 31.715349, 36.403904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585793, 31.817606, 36.630848>,  <35.397926, 31.878960, 36.767014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585793, 31.817606, 36.630848>,  <35.898907, 31.715349, 36.403904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585793, 31.817606, 36.630848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412736, -0.469048, 0.780797,
		0.465724, 0.845364, 0.261650,
		-0.782784, 0.255644, 0.567359,
		35.350956, 31.894299, 36.801056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093636, 32.055855, 37.010010>,  <35.898907, 31.715349, 36.403904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093636, 32.055855, 37.010010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728233, 31.946257, 37.130295>,  <35.508991, 31.880497, 37.202465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728233, 31.946257, 37.130295>,  <36.093636, 32.055855, 37.010010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728233, 31.946257, 37.130295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371404, -0.260055, 0.891308,
		-0.166017, 0.925903, 0.339327,
		-0.913508, -0.273999, 0.300710,
		35.454182, 31.864058, 37.220509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124828, 32.155109, 37.672016>,  <36.093636, 32.055855, 37.010010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124828, 32.155109, 37.672016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801914, 31.919243, 37.662296>,  <35.608166, 31.777723, 37.656464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801914, 31.919243, 37.662296>,  <36.124828, 32.155109, 37.672016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801914, 31.919243, 37.662296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134856, -0.224389, 0.965124,
		-0.574553, 0.775849, 0.260665,
		-0.807281, -0.589667, -0.024295,
		35.559731, 31.742342, 37.655006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702450, 32.396275, 38.209087>,  <36.124828, 32.155109, 37.672016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702450, 32.396275, 38.209087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587566, 32.021164, 38.131016>,  <35.518639, 31.796099, 38.084175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587566, 32.021164, 38.131016>,  <35.702450, 32.396275, 38.209087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587566, 32.021164, 38.131016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043101, -0.216205, 0.975396,
		-0.956899, 0.271726, 0.102514,
		-0.287204, -0.937774, -0.195175,
		35.501404, 31.739832, 38.072464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086723, 32.208862, 38.634010>,  <35.702450, 32.396275, 38.209087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086723, 32.208862, 38.634010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257305, 31.863632, 38.525753>,  <35.359653, 31.656496, 38.460800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257305, 31.863632, 38.525753>,  <35.086723, 32.208862, 38.634010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257305, 31.863632, 38.525753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131397, -0.236930, 0.962600,
		-0.894916, -0.446063, 0.012366,
		0.426451, -0.863071, -0.270644,
		35.385239, 31.604712, 38.444561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855949, 31.715015, 39.129578>,  <35.086723, 32.208862, 38.634010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855949, 31.715015, 39.129578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176144, 31.540092, 38.965630>,  <35.368259, 31.435139, 38.867260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176144, 31.540092, 38.965630>,  <34.855949, 31.715015, 39.129578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176144, 31.540092, 38.965630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144646, -0.522680, 0.840169,
		-0.581641, -0.731825, -0.355141,
		0.800482, -0.437307, -0.409867,
		35.416290, 31.408901, 38.842670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879807, 31.112143, 39.385582>,  <34.855949, 31.715015, 39.129578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879807, 31.112143, 39.385582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249817, 31.145700, 39.237370>,  <35.471821, 31.165834, 39.148441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249817, 31.145700, 39.237370>,  <34.879807, 31.112143, 39.385582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249817, 31.145700, 39.237370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364377, -0.471971, 0.802791,
		-0.107532, -0.877613, -0.467153,
		0.925023, 0.083894, -0.370534,
		35.527325, 31.170868, 39.126209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158073, 30.432745, 39.396873>,  <34.879807, 31.112143, 39.385582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158073, 30.432745, 39.396873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456776, 30.698013, 39.417122>,  <35.635998, 30.857174, 39.429272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456776, 30.698013, 39.417122>,  <35.158073, 30.432745, 39.396873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456776, 30.698013, 39.417122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333400, -0.439109, 0.834283,
		0.575501, -0.606126, -0.549008,
		0.746755, 0.663170, 0.050625,
		35.680801, 30.896965, 39.432308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724098, 30.104498, 39.787304>,  <35.158073, 30.432745, 39.396873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724098, 30.104498, 39.787304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836384, 30.487535, 39.813271>,  <35.903755, 30.717358, 39.828850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836384, 30.487535, 39.813271>,  <35.724098, 30.104498, 39.787304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836384, 30.487535, 39.813271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189388, -0.121572, 0.974347,
		0.940922, -0.261214, -0.215484,
		0.280710, 0.957595, 0.064919,
		35.920597, 30.774815, 39.832745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307991, 30.133369, 40.244171>,  <35.724098, 30.104498, 39.787304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307991, 30.133369, 40.244171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119602, 30.486198, 40.239540>,  <36.006569, 30.697895, 40.236763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119602, 30.486198, 40.239540>,  <36.307991, 30.133369, 40.244171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119602, 30.486198, 40.239540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073618, 0.052380, 0.995910,
		0.879071, 0.468193, -0.089606,
		-0.470972, 0.882072, -0.011578,
		35.978310, 30.750820, 40.236065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624485, 30.544630, 40.793011>,  <36.307991, 30.133369, 40.244171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624485, 30.544630, 40.793011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278973, 30.742268, 40.753494>,  <36.071667, 30.860849, 40.729782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278973, 30.742268, 40.753494>,  <36.624485, 30.544630, 40.793011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278973, 30.742268, 40.753494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039815, 0.128525, 0.990907,
		0.502297, 0.859857, -0.091345,
		-0.863778, 0.494093, -0.098793,
		36.019840, 30.890495, 40.723858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671349, 31.197378, 41.076763>,  <36.624485, 30.544630, 40.793011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671349, 31.197378, 41.076763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277596, 31.127098, 41.081184>,  <36.041344, 31.084930, 41.083836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277596, 31.127098, 41.081184>,  <36.671349, 31.197378, 41.076763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277596, 31.127098, 41.081184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039159, 0.279738, 0.959277,
		-0.171635, 0.943863, -0.282250,
		-0.984382, -0.175698, 0.011052,
		35.982281, 31.074389, 41.084499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359818, 31.615438, 41.539341>,  <36.671349, 31.197378, 41.076763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359818, 31.615438, 41.539341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068359, 31.344614, 41.498028>,  <35.893486, 31.182119, 41.473240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068359, 31.344614, 41.498028>,  <36.359818, 31.615438, 41.539341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068359, 31.344614, 41.498028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292980, 0.171821, 0.940553,
		-0.619067, 0.715586, -0.323562,
		-0.728642, -0.677063, -0.103284,
		35.849766, 31.141495, 41.467041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777824, 31.897879, 41.869965>,  <36.359818, 31.615438, 41.539341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777824, 31.897879, 41.869965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703259, 31.506351, 41.836105>,  <35.658520, 31.271435, 41.815788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703259, 31.506351, 41.836105>,  <35.777824, 31.897879, 41.869965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703259, 31.506351, 41.836105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284354, -0.028721, 0.958289,
		-0.940421, 0.202714, -0.272976,
		-0.186418, -0.978817, -0.084652,
		35.647331, 31.212706, 41.810711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118164, 31.824041, 42.009109>,  <35.777824, 31.897879, 41.869965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118164, 31.824041, 42.009109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300472, 31.474560, 42.077129>,  <35.409859, 31.264872, 42.117943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300472, 31.474560, 42.077129>,  <35.118164, 31.824041, 42.009109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300472, 31.474560, 42.077129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219307, 0.074930, 0.972774,
		-0.862657, -0.480656, -0.157458,
		0.455772, -0.873702, 0.170051,
		35.437202, 31.212450, 42.128143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761742, 31.538439, 42.538551>,  <35.118164, 31.824041, 42.009109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761742, 31.538439, 42.538551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069180, 31.282549, 42.537056>,  <35.253643, 31.129015, 42.536160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069180, 31.282549, 42.537056>,  <34.761742, 31.538439, 42.538551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069180, 31.282549, 42.537056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196446, -0.241570, 0.950291,
		-0.608827, -0.729655, -0.311341,
		0.768595, -0.639725, -0.003737,
		35.299759, 31.090631, 42.535934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525089, 30.922531, 42.808033>,  <34.761742, 31.538439, 42.538551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525089, 30.922531, 42.808033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922409, 30.918398, 42.854092>,  <35.160801, 30.915918, 42.881725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922409, 30.918398, 42.854092>,  <34.525089, 30.922531, 42.808033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922409, 30.918398, 42.854092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113009, -0.296811, 0.948226,
		0.024380, -0.954880, -0.295989,
		0.993295, -0.010332, 0.115147,
		35.220398, 30.915298, 42.888634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625671, 30.377180, 43.293381>,  <34.525089, 30.922531, 42.808033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625671, 30.377180, 43.293381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899136, 30.666357, 43.333305>,  <35.063213, 30.839863, 43.357258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899136, 30.666357, 43.333305>,  <34.625671, 30.377180, 43.293381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899136, 30.666357, 43.333305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186140, 0.040493, 0.981688,
		0.705665, -0.689719, 0.162252,
		0.683659, 0.722944, 0.099809,
		35.104233, 30.883240, 43.363247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158092, 30.189217, 43.740105>,  <34.625671, 30.377180, 43.293381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158092, 30.189217, 43.740105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176441, 30.587862, 43.767410>,  <35.187450, 30.827049, 43.783794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176441, 30.587862, 43.767410>,  <35.158092, 30.189217, 43.740105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176441, 30.587862, 43.767410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017342, -0.069119, 0.997458,
		0.998797, -0.044569, -0.020454,
		0.045869, 0.996612, 0.068263,
		35.190201, 30.886847, 43.787888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656940, 30.424595, 44.229012>,  <35.158092, 30.189217, 43.740105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656940, 30.424595, 44.229012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449669, 30.766342, 44.213272>,  <35.325306, 30.971390, 44.203827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449669, 30.766342, 44.213272>,  <35.656940, 30.424595, 44.229012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449669, 30.766342, 44.213272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068689, 0.087435, 0.993799,
		0.852512, 0.512259, -0.103992,
		-0.518175, 0.854368, -0.039353,
		35.294216, 31.022654, 44.201466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925831, 30.765152, 44.797455>,  <35.656940, 30.424595, 44.229012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925831, 30.765152, 44.797455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583080, 30.955881, 44.719063>,  <35.377430, 31.070318, 44.672028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583080, 30.955881, 44.719063>,  <35.925831, 30.765152, 44.797455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583080, 30.955881, 44.719063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189482, 0.062252, 0.979909,
		0.479441, 0.876794, 0.037007,
		-0.856874, 0.476821, -0.195983,
		35.326019, 31.098927, 44.660267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970646, 31.494799, 45.067287>,  <35.925831, 30.765152, 44.797455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970646, 31.494799, 45.067287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581085, 31.407804, 45.041290>,  <35.347351, 31.355608, 45.025692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581085, 31.407804, 45.041290>,  <35.970646, 31.494799, 45.067287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581085, 31.407804, 45.041290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112294, 0.212810, 0.970619,
		-0.197267, 0.952581, -0.231678,
		-0.973897, -0.217487, -0.064989,
		35.288918, 31.342558, 45.021793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589382, 32.083393, 45.167892>,  <35.970646, 31.494799, 45.067287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589382, 32.083393, 45.167892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358078, 31.772648, 45.267574>,  <35.219296, 31.586201, 45.327381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358078, 31.772648, 45.267574>,  <35.589382, 32.083393, 45.167892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358078, 31.772648, 45.267574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213179, 0.438714, 0.872975,
		-0.787507, 0.451684, -0.419302,
		-0.578263, -0.776860, 0.249201,
		35.184601, 31.539591, 45.342335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070393, 32.363113, 45.529568>,  <35.589382, 32.083393, 45.167892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070393, 32.363113, 45.529568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026070, 31.982843, 45.645458>,  <34.999477, 31.754683, 45.714993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026070, 31.982843, 45.645458>,  <35.070393, 32.363113, 45.529568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026070, 31.982843, 45.645458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129207, 0.302831, 0.944245,
		-0.985407, 0.067193, -0.156389,
		-0.110806, -0.950672, 0.289730,
		34.992828, 31.697641, 45.732376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516190, 32.459789, 46.066177>,  <35.070393, 32.363113, 45.529568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516190, 32.459789, 46.066177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653828, 32.087223, 46.113609>,  <34.736412, 31.863684, 46.142067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653828, 32.087223, 46.113609>,  <34.516190, 32.459789, 46.066177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653828, 32.087223, 46.113609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182876, 0.057389, 0.981459,
		-0.920953, -0.359402, -0.150587,
		0.344096, -0.931417, 0.118579,
		34.757057, 31.807798, 46.149181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075340, 32.205315, 46.383011>,  <34.516190, 32.459789, 46.066177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075340, 32.205315, 46.383011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355366, 31.938910, 46.486038>,  <34.523380, 31.779066, 46.547855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355366, 31.938910, 46.486038>,  <34.075340, 32.205315, 46.383011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355366, 31.938910, 46.486038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205734, 0.157291, 0.965885,
		-0.683804, -0.729170, -0.026908,
		0.700061, -0.666011, 0.257571,
		34.565384, 31.739107, 46.563309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802513, 31.626036, 46.865723>,  <34.075340, 32.205315, 46.383011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802513, 31.626036, 46.865723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198994, 31.635094, 46.917877>,  <34.436882, 31.640528, 46.949169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198994, 31.635094, 46.917877>,  <33.802513, 31.626036, 46.865723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198994, 31.635094, 46.917877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131759, 0.076961, 0.988290,
		0.012342, -0.996777, 0.079267,
		0.991205, 0.022641, 0.130385,
		34.496357, 31.641888, 46.956993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039818, 31.111135, 47.362175>,  <33.802513, 31.626036, 46.865723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039818, 31.111135, 47.362175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328934, 31.387560, 47.361233>,  <34.502403, 31.553413, 47.360668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328934, 31.387560, 47.361233>,  <34.039818, 31.111135, 47.362175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328934, 31.387560, 47.361233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006575, 0.010288, 0.999925,
		0.691033, -0.722724, 0.011979,
		0.722793, 0.691060, -0.002357,
		34.545773, 31.594877, 47.360527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346165, 30.910292, 47.939926>,  <34.039818, 31.111135, 47.362175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346165, 30.910292, 47.939926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514816, 31.265472, 47.866417>,  <34.616005, 31.478580, 47.822311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514816, 31.265472, 47.866417>,  <34.346165, 30.910292, 47.939926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514816, 31.265472, 47.866417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244233, 0.083972, 0.966074,
		0.873260, -0.452204, -0.181463,
		0.421625, 0.887953, -0.183773,
		34.641304, 31.531858, 47.811287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993839, 30.903214, 48.398216>,  <34.346165, 30.910292, 47.939926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993839, 30.903214, 48.398216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893986, 31.279129, 48.304852>,  <34.834076, 31.504679, 48.248833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893986, 31.279129, 48.304852>,  <34.993839, 30.903214, 48.398216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893986, 31.279129, 48.304852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255021, 0.296336, 0.920407,
		0.934157, 0.170237, -0.313640,
		-0.249630, 0.939790, -0.233410,
		34.819096, 31.561066, 48.234829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510227, 31.366516, 48.612976>,  <34.993839, 30.903214, 48.398216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510227, 31.366516, 48.612976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178577, 31.588739, 48.587975>,  <34.979588, 31.722075, 48.572971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178577, 31.588739, 48.587975>,  <35.510227, 31.366516, 48.612976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178577, 31.588739, 48.587975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175475, 0.364760, 0.914417,
		0.530814, 0.747196, -0.399918,
		-0.829123, 0.555561, -0.062506,
		34.929840, 31.755407, 48.569221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632645, 32.054489, 48.830967>,  <35.510227, 31.366516, 48.612976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632645, 32.054489, 48.830967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236488, 32.042698, 48.885014>,  <34.998795, 32.035625, 48.917442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236488, 32.042698, 48.885014>,  <35.632645, 32.054489, 48.830967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236488, 32.042698, 48.885014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112373, 0.397952, 0.910498,
		-0.080608, 0.916933, -0.390815,
		-0.990391, -0.029476, 0.135117,
		34.939369, 32.033855, 48.925549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426083, 32.695473, 49.145329>,  <35.632645, 32.054489, 48.830967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426083, 32.695473, 49.145329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130741, 32.439369, 49.230091>,  <34.953537, 32.285706, 49.280949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130741, 32.439369, 49.230091>,  <35.426083, 32.695473, 49.145329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130741, 32.439369, 49.230091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072896, 0.388136, 0.918715,
		-0.670467, 0.662885, -0.333252,
		-0.738349, -0.640261, 0.211911,
		34.909237, 32.247292, 49.293663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868183, 33.115810, 49.428223>,  <35.426083, 32.695473, 49.145329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868183, 33.115810, 49.428223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843140, 32.736217, 49.551842>,  <34.828114, 32.508461, 49.626015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843140, 32.736217, 49.551842>,  <34.868183, 33.115810, 49.428223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843140, 32.736217, 49.551842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150539, 0.297136, 0.942894,
		-0.986619, 0.105561, 0.124255,
		-0.062612, -0.948982, 0.309051,
		34.824356, 32.451523, 49.644558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117290, 33.289227, 49.670273>,  <34.868183, 33.115810, 49.428223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117290, 33.289227, 49.670273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280594, 33.647339, 49.741592>,  <34.378574, 33.862206, 49.784386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280594, 33.647339, 49.741592>,  <34.117290, 33.289227, 49.670273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280594, 33.647339, 49.741592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256641, 0.074878, -0.963602,
		-0.876050, 0.439155, -0.199198,
		0.408255, 0.895285, 0.178302,
		34.403072, 33.915924, 49.795082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771660, 33.719482, 49.218380>,  <34.117290, 33.289227, 49.670273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771660, 33.719482, 49.218380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112701, 33.904041, 49.316498>,  <34.317326, 34.014778, 49.375370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112701, 33.904041, 49.316498>,  <33.771660, 33.719482, 49.218380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112701, 33.904041, 49.316498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128254, 0.270292, -0.954198,
		-0.506570, 0.845016, 0.171276,
		0.852607, 0.461401, 0.245298,
		34.368484, 34.042461, 49.390087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778641, 34.308220, 48.840221>,  <33.771660, 33.719482, 49.218380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778641, 34.308220, 48.840221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165226, 34.299030, 48.942524>,  <34.397179, 34.293514, 49.003906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165226, 34.299030, 48.942524>,  <33.778641, 34.308220, 48.840221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165226, 34.299030, 48.942524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256789, 0.083848, -0.962824,
		0.000677, 0.996214, 0.086936,
		0.966467, -0.022976, 0.255759,
		34.455166, 34.292137, 49.019253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148155, 34.947067, 48.678692>,  <33.778641, 34.308220, 48.840221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148155, 34.947067, 48.678692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447697, 34.682076, 48.686146>,  <34.627422, 34.523083, 48.690617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447697, 34.682076, 48.686146>,  <34.148155, 34.947067, 48.678692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447697, 34.682076, 48.686146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288913, 0.301020, -0.908799,
		0.596449, 0.685938, 0.416817,
		0.748851, -0.662477, 0.018633,
		34.672352, 34.483334, 48.691734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500309, 35.243652, 48.247658>,  <34.148155, 34.947067, 48.678692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500309, 35.243652, 48.247658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689804, 34.892036, 48.269077>,  <34.803501, 34.681068, 48.281929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689804, 34.892036, 48.269077>,  <34.500309, 35.243652, 48.247658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689804, 34.892036, 48.269077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415216, 0.169316, -0.893828,
		0.776640, 0.445675, 0.445201,
		0.473737, -0.879037, 0.053553,
		34.831924, 34.628326, 48.285145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242699, 35.364315, 48.113235>,  <34.500309, 35.243652, 48.247658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242699, 35.364315, 48.113235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226749, 34.970097, 48.047371>,  <35.217178, 34.733566, 48.007851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226749, 34.970097, 48.047371>,  <35.242699, 35.364315, 48.113235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226749, 34.970097, 48.047371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529985, 0.118842, -0.839638,
		0.847069, -0.120746, 0.517585,
		-0.039872, -0.985544, -0.164661,
		35.214787, 34.674435, 47.997974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917419, 35.202423, 47.749016>,  <35.242699, 35.364315, 48.113235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917419, 35.202423, 47.749016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674557, 34.889496, 47.693386>,  <35.528839, 34.701740, 47.660007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674557, 34.889496, 47.693386>,  <35.917419, 35.202423, 47.749016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674557, 34.889496, 47.693386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466758, -0.209508, -0.859211,
		0.643042, -0.586584, 0.492357,
		-0.607152, -0.782321, -0.139070,
		35.492413, 34.654800, 47.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305790, 34.606853, 47.614433>,  <35.917419, 35.202423, 47.749016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305790, 34.606853, 47.614433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943447, 34.528744, 47.464073>,  <35.726044, 34.481876, 47.373859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943447, 34.528744, 47.464073>,  <36.305790, 34.606853, 47.614433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943447, 34.528744, 47.464073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419923, -0.297426, -0.857440,
		0.055635, -0.934561, 0.351425,
		-0.905853, -0.195275, -0.375897,
		35.671692, 34.470161, 47.351303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355396, 33.975243, 47.284439>,  <36.305790, 34.606853, 47.614433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355396, 33.975243, 47.284439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016361, 34.130795, 47.140011>,  <35.812939, 34.224125, 47.053352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016361, 34.130795, 47.140011>,  <36.355396, 33.975243, 47.284439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016361, 34.130795, 47.140011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239519, -0.326810, -0.914235,
		-0.473526, -0.861377, 0.183857,
		-0.847587, 0.388877, -0.361069,
		35.762085, 34.247456, 47.031689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972149, 33.411766, 46.946064>,  <36.355396, 33.975243, 47.284439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972149, 33.411766, 46.946064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881092, 33.772068, 46.798103>,  <35.826458, 33.988247, 46.709328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881092, 33.772068, 46.798103>,  <35.972149, 33.411766, 46.946064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881092, 33.772068, 46.798103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169632, -0.337382, -0.925958,
		-0.958856, -0.273531, -0.075995,
		-0.227639, 0.900752, -0.369900,
		35.812801, 34.042294, 46.687134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661797, 33.294601, 46.334629>,  <35.972149, 33.411766, 46.946064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661797, 33.294601, 46.334629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701344, 33.689430, 46.284176>,  <35.725071, 33.926327, 46.253902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701344, 33.689430, 46.284176>,  <35.661797, 33.294601, 46.334629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701344, 33.689430, 46.284176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008715, -0.127609, -0.991786,
		-0.995063, 0.096952, -0.021219,
		0.098863, 0.987074, -0.126134,
		35.731003, 33.985554, 46.246334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127567, 33.584431, 45.789330>,  <35.661797, 33.294601, 46.334629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127567, 33.584431, 45.789330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447704, 33.823669, 45.772663>,  <35.639786, 33.967213, 45.762665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447704, 33.823669, 45.772663>,  <35.127567, 33.584431, 45.789330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447704, 33.823669, 45.772663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117661, -0.224831, -0.967268,
		-0.587887, 0.769241, -0.250314,
		0.800340, 0.598096, -0.041666,
		35.687805, 34.003098, 45.760162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087414, 33.907742, 45.232533>,  <35.127567, 33.584431, 45.789330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087414, 33.907742, 45.232533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475029, 33.970936, 45.308430>,  <35.707600, 34.008850, 45.353966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475029, 33.970936, 45.308430>,  <35.087414, 33.907742, 45.232533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475029, 33.970936, 45.308430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201757, -0.063714, -0.977361,
		-0.142316, 0.985384, -0.093616,
		0.969041, 0.157982, 0.189741,
		35.765739, 34.018330, 45.365353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290482, 34.393501, 44.777321>,  <35.087414, 33.907742, 45.232533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290482, 34.393501, 44.777321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634808, 34.223698, 44.889599>,  <35.841404, 34.121815, 44.956966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634808, 34.223698, 44.889599>,  <35.290482, 34.393501, 44.777321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634808, 34.223698, 44.889599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306606, -0.007616, -0.951806,
		0.406188, 0.905392, 0.123601,
		0.860816, -0.424509, 0.280692,
		35.893051, 34.096344, 44.973808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787613, 34.750263, 44.353653>,  <35.290482, 34.393501, 44.777321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787613, 34.750263, 44.353653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906097, 34.389305, 44.478832>,  <35.977188, 34.172729, 44.553940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906097, 34.389305, 44.478832>,  <35.787613, 34.750263, 44.353653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906097, 34.389305, 44.478832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259568, -0.239259, -0.935617,
		0.919174, 0.358375, 0.163361,
		0.296216, -0.902398, 0.312944,
		35.994961, 34.118587, 44.572716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525513, 34.638157, 44.108433>,  <35.787613, 34.750263, 44.353653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525513, 34.638157, 44.108433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395893, 34.270695, 44.198826>,  <36.318119, 34.050217, 44.253063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395893, 34.270695, 44.198826>,  <36.525513, 34.638157, 44.108433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395893, 34.270695, 44.198826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302261, -0.326893, -0.895421,
		0.896453, -0.221858, 0.383603,
		-0.324053, -0.918651, 0.225985,
		36.298676, 33.995098, 44.266621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116589, 34.193924, 44.177326>,  <36.525513, 34.638157, 44.108433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116589, 34.193924, 44.177326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787960, 33.987556, 44.080284>,  <36.590782, 33.863735, 44.022060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787960, 33.987556, 44.080284>,  <37.116589, 34.193924, 44.177326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787960, 33.987556, 44.080284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451637, -0.329271, -0.829219,
		0.347925, -0.790829, 0.503526,
		-0.821567, -0.515917, -0.242606,
		36.541489, 33.832783, 44.007504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361042, 33.457542, 43.924007>,  <37.116589, 34.193924, 44.177326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361042, 33.457542, 43.924007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988350, 33.512093, 43.789379>,  <36.764736, 33.544823, 43.708603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988350, 33.512093, 43.789379>,  <37.361042, 33.457542, 43.924007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988350, 33.512093, 43.789379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249967, -0.431467, -0.866806,
		-0.263426, -0.891762, 0.367923,
		-0.931731, 0.136371, -0.336570,
		36.708832, 33.553005, 43.688408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170879, 32.776752, 43.702545>,  <37.361042, 33.457542, 43.924007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170879, 32.776752, 43.702545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919891, 33.033031, 43.525558>,  <36.769299, 33.186798, 43.419365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919891, 33.033031, 43.525558>,  <37.170879, 32.776752, 43.702545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919891, 33.033031, 43.525558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210629, -0.407407, -0.888625,
		-0.749609, -0.650786, 0.120686,
		-0.627473, 0.640701, -0.442470,
		36.731651, 33.225243, 43.392818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982548, 32.383980, 43.127293>,  <37.170879, 32.776752, 43.702545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982548, 32.383980, 43.127293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836193, 32.739925, 43.018280>,  <36.748379, 32.953491, 42.952873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836193, 32.739925, 43.018280>,  <36.982548, 32.383980, 43.127293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836193, 32.739925, 43.018280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155248, -0.230374, -0.960638,
		-0.917618, -0.393797, -0.053858,
		-0.365889, 0.889861, -0.272532,
		36.726425, 33.006882, 42.936520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470139, 32.210106, 42.667618>,  <36.982548, 32.383980, 43.127293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470139, 32.210106, 42.667618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582493, 32.590973, 42.619492>,  <36.649906, 32.819492, 42.590614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582493, 32.590973, 42.619492>,  <36.470139, 32.210106, 42.667618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582493, 32.590973, 42.619492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079442, -0.147998, -0.985792,
		-0.956446, 0.267341, -0.117214,
		0.280890, 0.952168, -0.120314,
		36.666759, 32.876625, 42.583397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929592, 32.570011, 42.200390>,  <36.470139, 32.210106, 42.667618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929592, 32.570011, 42.200390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275730, 32.768497, 42.172226>,  <36.483414, 32.887589, 42.155327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275730, 32.768497, 42.172226>,  <35.929592, 32.570011, 42.200390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275730, 32.768497, 42.172226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074250, -0.265862, -0.961147,
		-0.495653, 0.826492, -0.266905,
		0.865341, 0.496214, -0.070409,
		36.535332, 32.917362, 42.151104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756264, 32.854740, 41.503235>,  <35.929592, 32.570011, 42.200390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756264, 32.854740, 41.503235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146599, 32.898140, 41.579094>,  <36.380798, 32.924179, 41.624611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146599, 32.898140, 41.579094>,  <35.756264, 32.854740, 41.503235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146599, 32.898140, 41.579094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183509, 0.064094, -0.980926,
		-0.118585, 0.992028, 0.042635,
		0.975839, 0.108499, 0.189647,
		36.439350, 32.930691, 41.635986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945457, 33.370209, 40.988075>,  <35.756264, 32.854740, 41.503235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945457, 33.370209, 40.988075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272144, 33.182419, 41.122280>,  <36.468155, 33.069744, 41.202801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272144, 33.182419, 41.122280>,  <35.945457, 33.370209, 40.988075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272144, 33.182419, 41.122280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302542, -0.146723, -0.941775,
		0.491365, 0.870671, 0.022204,
		0.816718, -0.469472, 0.335510,
		36.517159, 33.041576, 41.222935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579636, 33.760422, 40.770454>,  <35.945457, 33.370209, 40.988075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579636, 33.760422, 40.770454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701275, 33.384537, 40.833008>,  <36.774258, 33.159004, 40.870541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701275, 33.384537, 40.833008>,  <36.579636, 33.760422, 40.770454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701275, 33.384537, 40.833008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646260, 0.082886, -0.758602,
		0.699909, 0.331756, 0.632507,
		0.304097, -0.939717, 0.156388,
		36.792503, 33.102623, 40.879925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244652, 33.802101, 40.818123>,  <36.579636, 33.760422, 40.770454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244652, 33.802101, 40.818123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168079, 33.425480, 40.707245>,  <37.122135, 33.199509, 40.640720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168079, 33.425480, 40.707245>,  <37.244652, 33.802101, 40.818123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168079, 33.425480, 40.707245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750578, 0.041543, -0.659475,
		0.632444, -0.334300, 0.698754,
		-0.191434, -0.941551, -0.277192,
		37.110649, 33.143013, 40.624088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938385, 33.682278, 40.738316>,  <37.244652, 33.802101, 40.818123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938385, 33.682278, 40.738316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744057, 33.387108, 40.550934>,  <37.627460, 33.210007, 40.438503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744057, 33.387108, 40.550934>,  <37.938385, 33.682278, 40.738316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744057, 33.387108, 40.550934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802400, -0.163988, -0.573814,
		0.346608, -0.654659, 0.671777,
		-0.485816, -0.737922, -0.468459,
		37.598312, 33.165730, 40.410397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441391, 33.215202, 40.579762>,  <37.938385, 33.682278, 40.738316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441391, 33.215202, 40.579762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137390, 33.102386, 40.345547>,  <37.954990, 33.034698, 40.205017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137390, 33.102386, 40.345547>,  <38.441391, 33.215202, 40.579762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137390, 33.102386, 40.345547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646171, -0.231266, -0.727309,
		0.069713, -0.931113, 0.358006,
		-0.760002, -0.282036, -0.585536,
		37.909389, 33.017776, 40.169888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644474, 32.557522, 40.173744>,  <38.441391, 33.215202, 40.579762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644474, 32.557522, 40.173744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354507, 32.743927, 39.970837>,  <38.180527, 32.855770, 39.849091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354507, 32.743927, 39.970837>,  <38.644474, 32.557522, 40.173744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354507, 32.743927, 39.970837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554663, -0.041780, -0.831025,
		-0.408466, -0.883789, -0.228195,
		-0.724917, 0.466017, -0.507271,
		38.137032, 32.883732, 39.818657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614899, 32.171345, 39.578808>,  <38.644474, 32.557522, 40.173744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614899, 32.171345, 39.578808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420937, 32.511467, 39.496979>,  <38.304562, 32.715542, 39.447884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420937, 32.511467, 39.496979>,  <38.614899, 32.171345, 39.578808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420937, 32.511467, 39.496979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559092, 0.121518, -0.820152,
		-0.672522, -0.512066, -0.534324,
		-0.484902, 0.850307, -0.204569,
		38.275467, 32.766560, 39.435608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527519, 32.196648, 38.741917>,  <38.614899, 32.171345, 39.578808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527519, 32.196648, 38.741917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512192, 32.562424, 38.903076>,  <38.502995, 32.781891, 38.999771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512192, 32.562424, 38.903076>,  <38.527519, 32.196648, 38.741917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512192, 32.562424, 38.903076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569139, 0.351382, -0.743379,
		-0.821348, 0.200821, -0.533909,
		-0.038320, 0.914441, 0.402902,
		38.500694, 32.836758, 39.023945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676197, 32.503662, 38.133568>,  <38.527519, 32.196648, 38.741917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676197, 32.503662, 38.133568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710953, 32.805393, 38.393856>,  <38.731804, 32.986431, 38.550030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710953, 32.805393, 38.393856>,  <38.676197, 32.503662, 38.133568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710953, 32.805393, 38.393856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651178, 0.451332, -0.610136,
		-0.753935, 0.476750, -0.451987,
		0.086887, 0.754327, 0.650724,
		38.737019, 33.031693, 38.589073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834129, 33.122711, 37.857166>,  <38.676197, 32.503662, 38.133568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834129, 33.122711, 37.857166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971684, 33.254410, 38.208923>,  <39.054218, 33.333427, 38.419979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971684, 33.254410, 38.208923>,  <38.834129, 33.122711, 37.857166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971684, 33.254410, 38.208923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532010, 0.703390, -0.471390,
		-0.773761, 0.629954, 0.066728,
		0.343890, 0.329243, 0.879397,
		39.074852, 33.353184, 38.472744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694550, 33.850136, 37.961330>,  <38.834129, 33.122711, 37.857166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694550, 33.850136, 37.961330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999996, 33.749542, 38.199200>,  <39.183266, 33.689186, 38.341923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999996, 33.749542, 38.199200>,  <38.694550, 33.850136, 37.961330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999996, 33.749542, 38.199200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541418, 0.751217, -0.377544,
		-0.351784, 0.610268, 0.709803,
		0.763619, -0.251486, 0.594677,
		39.229080, 33.674095, 38.377602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930740, 34.460442, 38.255909>,  <38.694550, 33.850136, 37.961330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930740, 34.460442, 38.255909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238834, 34.207142, 38.286198>,  <39.423691, 34.055161, 38.304371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238834, 34.207142, 38.286198>,  <38.930740, 34.460442, 38.255909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238834, 34.207142, 38.286198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619075, 0.713845, -0.327369,
		0.153254, 0.299028, 0.941857,
		0.770233, -0.633251, 0.075721,
		39.469906, 34.017166, 38.308914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380352, 34.779358, 38.623127>,  <38.930740, 34.460442, 38.255909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380352, 34.779358, 38.623127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600437, 34.495361, 38.447323>,  <39.732491, 34.324963, 38.341839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600437, 34.495361, 38.447323>,  <39.380352, 34.779358, 38.623127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600437, 34.495361, 38.447323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525357, 0.703459, -0.478691,
		0.649047, 0.032482, 0.760054,
		0.550216, -0.709993, -0.439513,
		39.765503, 34.282364, 38.315468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018398, 34.967789, 38.723846>,  <39.380352, 34.779358, 38.623127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018398, 34.967789, 38.723846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060768, 34.726410, 38.407711>,  <40.086189, 34.581581, 38.218029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060768, 34.726410, 38.407711>,  <40.018398, 34.967789, 38.723846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060768, 34.726410, 38.407711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651602, 0.642504, -0.403241,
		0.751128, -0.472269, 0.461268,
		0.105928, -0.603449, -0.790334,
		40.092548, 34.545376, 38.170612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705101, 35.023331, 38.769341>,  <40.018398, 34.967789, 38.723846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705101, 35.023331, 38.769341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589306, 34.899773, 38.406952>,  <40.519829, 34.825638, 38.189518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589306, 34.899773, 38.406952>,  <40.705101, 35.023331, 38.769341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589306, 34.899773, 38.406952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714448, 0.560152, -0.419278,
		0.636992, -0.768645, 0.058529,
		-0.289490, -0.308893, -0.905970,
		40.502460, 34.807106, 38.135162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260464, 34.776970, 38.320713>,  <40.705101, 35.023331, 38.769341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260464, 34.776970, 38.320713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989693, 34.895603, 38.051254>,  <40.827229, 34.966782, 37.889580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989693, 34.895603, 38.051254>,  <41.260464, 34.776970, 38.320713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989693, 34.895603, 38.051254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691016, 0.571283, -0.442869,
		0.253497, -0.765294, -0.591662,
		-0.676932, 0.296582, -0.673649,
		40.786613, 34.984577, 37.849159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634087, 34.756767, 37.692570>,  <41.260464, 34.776970, 38.320713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634087, 34.756767, 37.692570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314716, 34.992836, 37.644871>,  <41.123096, 35.134476, 37.616249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314716, 34.992836, 37.644871>,  <41.634087, 34.756767, 37.692570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314716, 34.992836, 37.644871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587395, 0.719995, -0.369559,
		-0.132244, -0.365110, -0.921523,
		-0.798422, 0.590170, -0.119249,
		41.075188, 35.169888, 37.609097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630749, 35.054802, 37.043282>,  <41.634087, 34.756767, 37.692570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630749, 35.054802, 37.043282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427322, 35.291599, 37.293373>,  <41.305267, 35.433678, 37.443428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427322, 35.291599, 37.293373>,  <41.630749, 35.054802, 37.043282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427322, 35.291599, 37.293373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383087, 0.805882, -0.451441,
		-0.771108, 0.009929, -0.636628,
		-0.508564, 0.591993, 0.625225,
		41.274754, 35.469196, 37.480942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948055, 35.456482, 36.875484>,  <41.630749, 35.054802, 37.043282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948055, 35.456482, 36.875484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163445, 35.654102, 37.148529>,  <41.292679, 35.772675, 37.312355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163445, 35.654102, 37.148529>,  <40.948055, 35.456482, 36.875484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163445, 35.654102, 37.148529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255487, 0.676230, -0.690970,
		-0.802976, 0.546469, 0.237910,
		0.538475, 0.494049, 0.682612,
		41.324986, 35.802319, 37.353313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730392, 36.145466, 36.990231>,  <40.948055, 35.456482, 36.875484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730392, 36.145466, 36.990231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123253, 36.123417, 37.062160>,  <41.358971, 36.110188, 37.105320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123253, 36.123417, 37.062160>,  <40.730392, 36.145466, 36.990231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123253, 36.123417, 37.062160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150478, 0.803873, -0.575451,
		-0.112836, 0.592241, 0.797821,
		0.982153, -0.055123, 0.179825,
		41.417900, 36.106880, 37.116108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082775, 36.684589, 37.407719>,  <40.730392, 36.145466, 36.990231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082775, 36.684589, 37.407719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325882, 36.540905, 37.124428>,  <41.471745, 36.454693, 36.954453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325882, 36.540905, 37.124428>,  <41.082775, 36.684589, 37.407719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325882, 36.540905, 37.124428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134844, 0.925576, -0.353732,
		0.782582, 0.119487, 0.610973,
		0.607769, -0.359210, -0.708227,
		41.508213, 36.433144, 36.911961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762363, 37.003929, 37.307198>,  <41.082775, 36.684589, 37.407719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762363, 37.003929, 37.307198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697498, 36.873478, 36.934673>,  <41.658577, 36.795208, 36.711159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697498, 36.873478, 36.934673>,  <41.762363, 37.003929, 37.307198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697498, 36.873478, 36.934673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221543, 0.907679, -0.356424,
		0.961572, -0.264126, -0.074945,
		-0.162166, -0.326124, -0.931314,
		41.648849, 36.775642, 36.655281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402943, 36.952393, 36.883076>,  <41.762363, 37.003929, 37.307198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402943, 36.952393, 36.883076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076954, 37.039635, 36.668320>,  <41.881359, 37.091980, 36.539467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076954, 37.039635, 36.668320>,  <42.402943, 36.952393, 36.883076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076954, 37.039635, 36.668320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262516, 0.964905, -0.006504,
		0.516626, -0.146243, -0.843629,
		-0.814974, 0.218106, -0.536887,
		41.832462, 37.105068, 36.507256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175480, 36.226337, 36.531612>,  <42.402943, 36.952393, 36.883076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175480, 36.226337, 36.531612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239067, 36.608818, 36.433304>,  <42.277222, 36.838306, 36.374317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239067, 36.608818, 36.433304>,  <42.175480, 36.226337, 36.531612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239067, 36.608818, 36.433304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555153, 0.119280, 0.823151,
		0.816415, -0.267299, -0.511877,
		0.158970, 0.956203, -0.245774,
		42.286758, 36.895679, 36.359573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255978, 35.788063, 37.069324>,  <42.175480, 36.226337, 36.531612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255978, 35.788063, 37.069324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571926, 35.795067, 36.824116>,  <42.761494, 35.799267, 36.676991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571926, 35.795067, 36.824116>,  <42.255978, 35.788063, 37.069324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571926, 35.795067, 36.824116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230339, 0.917940, 0.323003,
		0.568373, -0.396334, 0.721022,
		0.789871, 0.017506, -0.613023,
		42.808887, 35.800320, 36.640209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815475, 35.896488, 37.505634>,  <42.255978, 35.788063, 37.069324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815475, 35.896488, 37.505634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980305, 36.008202, 37.158718>,  <43.079201, 36.075230, 36.950569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980305, 36.008202, 37.158718>,  <42.815475, 35.896488, 37.505634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980305, 36.008202, 37.158718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473248, 0.747798, 0.465656,
		0.778612, -0.602326, 0.175971,
		0.412067, 0.279288, -0.867294,
		43.103924, 36.091988, 36.898529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561043, 36.073578, 37.625996>,  <42.815475, 35.896488, 37.505634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561043, 36.073578, 37.625996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468456, 36.255016, 37.281746>,  <43.412903, 36.363880, 37.075195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468456, 36.255016, 37.281746>,  <43.561043, 36.073578, 37.625996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468456, 36.255016, 37.281746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464474, 0.828837, 0.311919,
		0.854802, -0.327537, -0.402533,
		-0.231469, 0.453595, -0.860624,
		43.399017, 36.391094, 37.023560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161922, 36.431492, 37.354996>,  <43.561043, 36.073578, 37.625996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161922, 36.431492, 37.354996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875057, 36.632164, 37.161503>,  <43.702938, 36.752567, 37.045406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875057, 36.632164, 37.161503>,  <44.161922, 36.431492, 37.354996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875057, 36.632164, 37.161503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468683, 0.860895, 0.197979,
		0.515762, -0.084732, -0.852532,
		-0.717166, 0.501677, -0.483729,
		43.659908, 36.782665, 37.016384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514233, 36.866890, 36.944885>,  <44.161922, 36.431492, 37.354996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514233, 36.866890, 36.944885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149479, 37.030930, 36.938221>,  <43.930626, 37.129353, 36.934223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149479, 37.030930, 36.938221>,  <44.514233, 36.866890, 36.944885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149479, 37.030930, 36.938221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409317, 0.911646, 0.036894,
		0.030322, 0.026823, -0.999180,
		-0.911888, 0.410100, -0.016664,
		43.875912, 37.153961, 36.933224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475212, 37.450432, 36.494873>,  <44.514233, 36.866890, 36.944885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475212, 37.450432, 36.494873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170540, 37.525440, 36.742962>,  <43.987736, 37.570446, 36.891815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170540, 37.525440, 36.742962>,  <44.475212, 37.450432, 36.494873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170540, 37.525440, 36.742962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306206, 0.947749, 0.089495,
		-0.571036, 0.258083, -0.779302,
		-0.761680, 0.187522, 0.620226,
		43.942036, 37.581696, 36.929031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201935, 38.091110, 36.256447>,  <44.475212, 37.450432, 36.494873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201935, 38.091110, 36.256447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040298, 38.061409, 36.621128>,  <43.943317, 38.043587, 36.839935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040298, 38.061409, 36.621128>,  <44.201935, 38.091110, 36.256447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040298, 38.061409, 36.621128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129293, 0.982056, 0.137292,
		-0.905535, 0.173355, -0.387241,
		-0.404092, -0.074255, 0.911699,
		43.919071, 38.039131, 36.894638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677673, 38.542030, 36.233212>,  <44.201935, 38.091110, 36.256447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677673, 38.542030, 36.233212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776302, 38.470261, 36.614159>,  <43.835480, 38.427200, 36.842728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776302, 38.470261, 36.614159>,  <43.677673, 38.542030, 36.233212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776302, 38.470261, 36.614159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059952, 0.983654, 0.169798,
		-0.967269, 0.015230, 0.253294,
		0.246568, -0.179426, 0.952371,
		43.850273, 38.416431, 36.899872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291847, 39.148376, 36.582756>,  <43.677673, 38.542030, 36.233212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291847, 39.148376, 36.582756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571201, 39.021385, 36.839336>,  <43.738815, 38.945190, 36.993286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571201, 39.021385, 36.839336>,  <43.291847, 39.148376, 36.582756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571201, 39.021385, 36.839336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078805, 0.924898, 0.371959,
		-0.711367, -0.209222, 0.670957,
		0.698389, -0.317474, 0.641454,
		43.780720, 38.926144, 37.031773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197712, 39.567081, 37.209084>,  <43.291847, 39.148376, 36.582756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197712, 39.567081, 37.209084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539913, 39.390717, 37.317680>,  <43.745235, 39.284897, 37.382839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539913, 39.390717, 37.317680>,  <43.197712, 39.567081, 37.209084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539913, 39.390717, 37.317680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249913, 0.810806, 0.529280,
		-0.453498, -0.384949, 0.803837,
		0.855501, -0.440917, 0.271495,
		43.796562, 39.258442, 37.399128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280426, 39.691551, 37.991009>,  <43.197712, 39.567081, 37.209084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280426, 39.691551, 37.991009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620529, 39.652878, 37.784042>,  <43.824589, 39.629673, 37.659863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620529, 39.652878, 37.784042>,  <43.280426, 39.691551, 37.991009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620529, 39.652878, 37.784042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306329, 0.890270, 0.337019,
		0.428055, -0.445051, 0.786574,
		0.850254, -0.096688, -0.517416,
		43.875607, 39.623871, 37.628819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716770, 39.934807, 38.465481>,  <43.280426, 39.691551, 37.991009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716770, 39.934807, 38.465481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915276, 39.959545, 38.119095>,  <44.034378, 39.974388, 37.911263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915276, 39.959545, 38.119095>,  <43.716770, 39.934807, 38.465481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915276, 39.959545, 38.119095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301915, 0.922910, 0.238926,
		0.813986, -0.380018, 0.439333,
		0.496260, 0.061841, -0.865968,
		44.064152, 39.978096, 37.859303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327496, 40.145077, 38.690464>,  <43.716770, 39.934807, 38.465481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327496, 40.145077, 38.690464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301029, 40.239208, 38.302601>,  <44.285149, 40.295689, 38.069881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301029, 40.239208, 38.302601>,  <44.327496, 40.145077, 38.690464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301029, 40.239208, 38.302601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351640, 0.914944, 0.198057,
		0.933794, -0.327868, -0.143286,
		-0.066162, 0.235330, -0.969661,
		44.281181, 40.309807, 38.011703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878418, 40.605068, 38.566376>,  <44.327496, 40.145077, 38.690464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878418, 40.605068, 38.566376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634861, 40.644703, 38.251560>,  <44.488728, 40.668484, 38.062672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634861, 40.644703, 38.251560>,  <44.878418, 40.605068, 38.566376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634861, 40.644703, 38.251560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196359, 0.980117, -0.028521,
		0.768562, -0.171908, -0.616246,
		-0.608896, 0.099085, -0.787037,
		44.452190, 40.674427, 38.015450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290016, 41.018169, 38.217045>,  <44.878418, 40.605068, 38.566376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290016, 41.018169, 38.217045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926365, 41.052570, 38.054031>,  <44.708172, 41.073212, 37.956223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.926365, 41.052570, 38.054031>,  <45.290016, 41.018169, 38.217045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926365, 41.052570, 38.054031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152547, 0.979215, -0.133669,
		0.387571, -0.183691, -0.903353,
		-0.909131, 0.085998, -0.407536,
		44.653625, 41.078369, 37.931770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352219, 41.535915, 37.689816>,  <45.290016, 41.018169, 38.217045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352219, 41.535915, 37.689816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961056, 41.527565, 37.773010>,  <44.726357, 41.522552, 37.822926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961056, 41.527565, 37.773010>,  <45.352219, 41.535915, 37.689816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961056, 41.527565, 37.773010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052069, 0.987966, -0.145644,
		-0.202441, -0.153256, -0.967228,
		-0.977909, -0.020878, 0.207984,
		44.667683, 41.521301, 37.835407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024670, 41.923069, 37.112759>,  <45.352219, 41.535915, 37.689816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024670, 41.923069, 37.112759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771469, 41.926163, 37.422401>,  <44.619549, 41.928017, 37.608189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771469, 41.926163, 37.422401>,  <45.024670, 41.923069, 37.112759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771469, 41.926163, 37.422401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209498, 0.960928, -0.180908,
		-0.745264, -0.276690, -0.606650,
		-0.633003, 0.007732, 0.774111,
		44.581570, 41.928482, 37.654636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435818, 42.215649, 36.814758>,  <45.024670, 41.923069, 37.112759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435818, 42.215649, 36.814758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414520, 42.268204, 37.210716>,  <44.401741, 42.299736, 37.448292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414520, 42.268204, 37.210716>,  <44.435818, 42.215649, 36.814758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414520, 42.268204, 37.210716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210387, 0.967579, -0.139746,
		-0.976167, -0.215703, -0.023876,
		-0.053246, 0.131392, 0.989899,
		44.398548, 42.307621, 37.507687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944630, 42.745300, 36.893173>,  <44.435818, 42.215649, 36.814758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944630, 42.745300, 36.893173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151672, 42.747120, 37.235416>,  <44.275898, 42.748211, 37.440762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151672, 42.747120, 37.235416>,  <43.944630, 42.745300, 36.893173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151672, 42.747120, 37.235416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039806, 0.999031, 0.018764,
		-0.854695, -0.043771, 0.517282,
		0.517603, 0.004553, 0.855609,
		44.306953, 42.748486, 37.492100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577496, 43.225441, 37.351810>,  <43.944630, 42.745300, 36.893173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577496, 43.225441, 37.351810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944908, 43.181389, 37.503685>,  <44.165356, 43.154957, 37.594810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944908, 43.181389, 37.503685>,  <43.577496, 43.225441, 37.351810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944908, 43.181389, 37.503685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105854, 0.993860, 0.032205,
		-0.380905, 0.010610, 0.924554,
		0.918535, -0.110135, 0.379689,
		44.220470, 43.148350, 37.617592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648033, 43.576244, 38.143978>,  <43.577496, 43.225441, 37.351810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648033, 43.576244, 38.143978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973679, 43.558430, 37.912376>,  <44.169064, 43.547741, 37.773415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973679, 43.558430, 37.912376>,  <43.648033, 43.576244, 38.143978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973679, 43.558430, 37.912376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149033, 0.979685, 0.134192,
		0.561262, -0.195537, 0.804208,
		0.814110, -0.044536, -0.579001,
		44.217911, 43.545071, 37.738678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154072, 43.975422, 38.524216>,  <43.648033, 43.576244, 38.143978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154072, 43.975422, 38.524216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196472, 43.969078, 38.126518>,  <44.221912, 43.965271, 37.887901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196472, 43.969078, 38.126518>,  <44.154072, 43.975422, 38.524216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196472, 43.969078, 38.126518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088119, 0.995789, -0.025282,
		0.990454, 0.090291, 0.104155,
		0.105999, -0.015863, -0.994240,
		44.228271, 43.964317, 37.828247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509243, 44.639343, 38.153576>,  <44.154072, 43.975422, 38.524216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509243, 44.639343, 38.153576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156498, 44.512768, 38.013752>,  <43.944851, 44.436821, 37.929859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156498, 44.512768, 38.013752>,  <44.509243, 44.639343, 38.153576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156498, 44.512768, 38.013752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438668, 0.822454, 0.362131,
		0.172903, 0.472689, -0.864101,
		-0.881859, -0.316440, -0.349558,
		43.891941, 44.417835, 37.908886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239655, 45.067326, 37.583397>,  <44.509243, 44.639343, 38.153576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239655, 45.067326, 37.583397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921906, 44.906410, 37.765442>,  <43.731255, 44.809860, 37.874668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921906, 44.906410, 37.765442>,  <44.239655, 45.067326, 37.583397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921906, 44.906410, 37.765442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252793, 0.900233, 0.354507,
		-0.552323, 0.166563, -0.816821,
		-0.794377, -0.402289, 0.455114,
		43.683594, 44.785725, 37.901978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037594, 45.501328, 37.078609>,  <44.239655, 45.067326, 37.583397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037594, 45.501328, 37.078609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788597, 45.343300, 37.348846>,  <43.639198, 45.248486, 37.510986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788597, 45.343300, 37.348846>,  <44.037594, 45.501328, 37.078609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788597, 45.343300, 37.348846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083465, 0.891827, 0.444610,
		-0.778159, 0.220380, -0.588133,
		-0.622496, -0.395066, 0.675589,
		43.601849, 45.224781, 37.551525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217171, 45.900524, 36.530518>,  <44.037594, 45.501328, 37.078609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217171, 45.900524, 36.530518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411968, 45.976128, 36.189434>,  <44.528847, 46.021488, 35.984783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411968, 45.976128, 36.189434>,  <44.217171, 45.900524, 36.530518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411968, 45.976128, 36.189434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196652, -0.974964, -0.103791,
		-0.850977, -0.117141, -0.511973,
		0.486997, 0.189005, -0.852708,
		44.558067, 46.032829, 35.933620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983101, 45.393524, 35.932842>,  <44.217171, 45.900524, 36.530518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983101, 45.393524, 35.932842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347313, 45.554909, 35.896721>,  <44.565842, 45.651741, 35.875046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347313, 45.554909, 35.896721>,  <43.983101, 45.393524, 35.932842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347313, 45.554909, 35.896721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386978, -0.908557, -0.157388,
		-0.145548, 0.108360, -0.983399,
		0.910529, 0.403462, -0.090306,
		44.620472, 45.675949, 35.869629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378418, 45.199127, 35.294308>,  <43.983101, 45.393524, 35.932842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378418, 45.199127, 35.294308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639271, 45.274689, 35.587982>,  <44.795784, 45.320026, 35.764187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639271, 45.274689, 35.587982>,  <44.378418, 45.199127, 35.294308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639271, 45.274689, 35.587982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432303, -0.888229, -0.155446,
		0.622764, 0.418764, -0.660910,
		0.652134, 0.188907, 0.734190,
		44.834911, 45.331360, 35.808239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067997, 45.072666, 34.974796>,  <44.378418, 45.199127, 35.294308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067997, 45.072666, 34.974796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035221, 44.962856, 35.358028>,  <45.015556, 44.896969, 35.587967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035221, 44.962856, 35.358028>,  <45.067997, 45.072666, 34.974796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035221, 44.962856, 35.358028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311405, -0.920236, -0.237049,
		0.946738, 0.278927, 0.160897,
		-0.081944, -0.274527, 0.958081,
		45.010639, 44.880497, 35.645454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686089, 44.784416, 35.264622>,  <45.067997, 45.072666, 34.974796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686089, 44.784416, 35.264622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363884, 44.606026, 35.420704>,  <45.170563, 44.498993, 35.514355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363884, 44.606026, 35.420704>,  <45.686089, 44.784416, 35.264622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363884, 44.606026, 35.420704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221436, -0.837317, -0.499866,
		0.549653, -0.316242, 0.773222,
		-0.805511, -0.445972, 0.390207,
		45.122231, 44.472233, 35.537766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699440, 44.108158, 35.037792>,  <45.686089, 44.784416, 35.264622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699440, 44.108158, 35.037792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364445, 44.071747, 35.253323>,  <45.163448, 44.049900, 35.382641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364445, 44.071747, 35.253323>,  <45.699440, 44.108158, 35.037792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364445, 44.071747, 35.253323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083709, -0.953021, -0.291107,
		0.540007, -0.288903, 0.790524,
		-0.837488, -0.091026, 0.538822,
		45.113197, 44.044437, 35.414970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698860, 43.525482, 35.511200>,  <45.699440, 44.108158, 35.037792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698860, 43.525482, 35.511200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307465, 43.585247, 35.454288>,  <45.072628, 43.621105, 35.420139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307465, 43.585247, 35.454288>,  <45.698860, 43.525482, 35.511200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307465, 43.585247, 35.454288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118850, -0.971887, -0.203249,
		-0.168650, -0.181965, 0.968734,
		-0.978485, 0.149411, -0.142282,
		45.013920, 43.630070, 35.411602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287632, 43.118713, 35.988815>,  <45.698860, 43.525482, 35.511200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287632, 43.118713, 35.988815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031731, 43.187157, 35.689098>,  <44.878189, 43.228222, 35.509270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031731, 43.187157, 35.689098>,  <45.287632, 43.118713, 35.988815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031731, 43.187157, 35.689098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242690, -0.969999, -0.014299,
		-0.729258, 0.172698, 0.662086,
		-0.639753, 0.171109, -0.749291,
		44.839806, 43.238491, 35.464310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705753, 42.820858, 36.226185>,  <45.287632, 43.118713, 35.988815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705753, 42.820858, 36.226185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668922, 42.845585, 35.828651>,  <44.646824, 42.860420, 35.590134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668922, 42.845585, 35.828651>,  <44.705753, 42.820858, 36.226185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668922, 42.845585, 35.828651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249214, -0.967737, -0.037102,
		-0.964061, 0.244261, 0.104511,
		-0.092077, 0.061814, -0.993832,
		44.641300, 42.864128, 35.530502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170025, 42.434692, 36.034977>,  <44.705753, 42.820858, 36.226185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170025, 42.434692, 36.034977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341618, 42.446606, 35.673847>,  <44.444572, 42.453754, 35.457169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341618, 42.446606, 35.673847>,  <44.170025, 42.434692, 36.034977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341618, 42.446606, 35.673847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168427, -0.979292, -0.112338,
		-0.887470, 0.200251, -0.415085,
		0.428985, 0.029785, -0.902820,
		44.470314, 42.455540, 35.403000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718666, 41.964561, 35.600834>,  <44.170025, 42.434692, 36.034977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718666, 41.964561, 35.600834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053604, 41.986469, 35.383266>,  <44.254566, 41.999615, 35.252724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053604, 41.986469, 35.383266>,  <43.718666, 41.964561, 35.600834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053604, 41.986469, 35.383266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000285, -0.995012, -0.099752,
		-0.546673, 0.083372, -0.833186,
		0.837346, 0.054770, -0.543922,
		44.304810, 42.002899, 35.220089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570095, 41.529381, 35.075676>,  <43.718666, 41.964561, 35.600834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570095, 41.529381, 35.075676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968048, 41.550713, 35.041348>,  <44.206821, 41.563511, 35.020748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968048, 41.550713, 35.041348>,  <43.570095, 41.529381, 35.075676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968048, 41.550713, 35.041348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038338, -0.985100, -0.167653,
		-0.093486, 0.163505, -0.982103,
		0.994882, 0.053326, -0.085825,
		44.266514, 41.566711, 35.015598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853073, 41.143803, 34.379112>,  <43.570095, 41.529381, 35.075676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853073, 41.143803, 34.379112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128063, 41.178001, 34.667576>,  <44.293056, 41.198521, 34.840652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128063, 41.178001, 34.667576>,  <43.853073, 41.143803, 34.379112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128063, 41.178001, 34.667576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313463, -0.930707, -0.188480,
		0.655071, 0.355632, -0.666639,
		0.687475, 0.085499, 0.721157,
		44.334305, 41.203651, 34.883923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402714, 40.674095, 34.189491>,  <43.853073, 41.143803, 34.379112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402714, 40.674095, 34.189491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511101, 40.757298, 34.565430>,  <44.576134, 40.807220, 34.790993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511101, 40.757298, 34.565430>,  <44.402714, 40.674095, 34.189491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511101, 40.757298, 34.565430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538863, -0.841825, 0.030950,
		0.797623, 0.498061, -0.340194,
		0.270969, 0.208005, 0.939846,
		44.592392, 40.819698, 34.847382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144112, 40.711266, 34.171749>,  <44.402714, 40.674095, 34.189491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144112, 40.711266, 34.171749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.015469, 40.614151, 34.537838>,  <44.938282, 40.555882, 34.757492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.015469, 40.614151, 34.537838>,  <45.144112, 40.711266, 34.171749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015469, 40.614151, 34.537838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627967, -0.778109, 0.014251,
		0.708681, 0.579311, 0.402703,
		-0.321603, -0.242785, 0.915220,
		44.918987, 40.541317, 34.812405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703838, 40.425507, 34.445545>,  <45.144112, 40.711266, 34.171749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703838, 40.425507, 34.445545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431202, 40.320843, 34.718887>,  <45.267620, 40.258045, 34.882893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431202, 40.320843, 34.718887>,  <45.703838, 40.425507, 34.445545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431202, 40.320843, 34.718887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529914, -0.820511, 0.214367,
		0.504607, 0.508229, 0.697907,
		-0.681588, -0.261660, 0.683353,
		45.226727, 40.242344, 34.923893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058914, 40.136654, 34.973186>,  <45.703838, 40.425507, 34.445545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058914, 40.136654, 34.973186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695381, 39.970371, 34.959278>,  <45.477261, 39.870602, 34.950932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695381, 39.970371, 34.959278>,  <46.058914, 40.136654, 34.973186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695381, 39.970371, 34.959278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416966, -0.907777, -0.045626,
		-0.012600, -0.055965, 0.998353,
		-0.908835, -0.415704, -0.034773,
		45.422729, 39.845661, 34.948845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151371, 39.472057, 35.219143>,  <46.058914, 40.136654, 34.973186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151371, 39.472057, 35.219143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774429, 39.450569, 35.087029>,  <45.548264, 39.437675, 35.007759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774429, 39.450569, 35.087029>,  <46.151371, 39.472057, 35.219143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774429, 39.450569, 35.087029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012043, -0.980946, 0.193909,
		-0.334413, 0.186708, 0.923747,
		-0.942350, -0.053721, -0.330289,
		45.491726, 39.434452, 34.987942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818340, 39.018105, 35.662048>,  <46.151371, 39.472057, 35.219143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818340, 39.018105, 35.662048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596760, 39.030209, 35.329250>,  <45.463810, 39.037472, 35.129570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596760, 39.030209, 35.329250>,  <45.818340, 39.018105, 35.662048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596760, 39.030209, 35.329250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150122, -0.986589, 0.064073,
		-0.818902, 0.160395, 0.551066,
		-0.553952, 0.030258, -0.831998,
		45.430573, 39.039288, 35.079651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239128, 38.719894, 35.917923>,  <45.818340, 39.018105, 35.662048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239128, 38.719894, 35.917923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239193, 38.692631, 35.518852>,  <45.239231, 38.676273, 35.279411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239193, 38.692631, 35.518852>,  <45.239128, 38.719894, 35.917923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239193, 38.692631, 35.518852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233530, -0.970091, 0.066237,
		-0.972350, 0.232976, -0.016078,
		0.000165, -0.068161, -0.997674,
		45.239243, 38.672184, 35.219551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659103, 38.316071, 35.740330>,  <45.239128, 38.719894, 35.917923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659103, 38.316071, 35.740330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918392, 38.285793, 35.437256>,  <45.073967, 38.267628, 35.255413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918392, 38.285793, 35.437256>,  <44.659103, 38.316071, 35.740330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918392, 38.285793, 35.437256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160847, -0.986205, -0.039091,
		-0.744269, 0.147210, -0.651454,
		0.648222, -0.075690, -0.757680,
		45.112858, 38.263084, 35.209953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311546, 37.840153, 35.200985>,  <44.659103, 38.316071, 35.740330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311546, 37.840153, 35.200985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696625, 37.838306, 35.092762>,  <44.927670, 37.837200, 35.027828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696625, 37.838306, 35.092762>,  <44.311546, 37.840153, 35.200985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696625, 37.838306, 35.092762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009250, -0.998709, 0.049944,
		-0.270438, -0.050584, -0.961408,
		0.962693, -0.004613, -0.270556,
		44.985432, 37.836922, 35.011597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418083, 37.424290, 34.643467>,  <44.311546, 37.840153, 35.200985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418083, 37.424290, 34.643467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783649, 37.432682, 34.805614>,  <45.002987, 37.437717, 34.902905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783649, 37.432682, 34.805614>,  <44.418083, 37.424290, 34.643467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783649, 37.432682, 34.805614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067638, -0.992572, -0.101126,
		0.400237, 0.119839, -0.908542,
		0.913912, 0.020978, 0.405370,
		45.057823, 37.438976, 34.927227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876198, 37.074612, 34.132484>,  <44.418083, 37.424290, 34.643467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876198, 37.074612, 34.132484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063408, 37.054108, 34.485374>,  <45.175735, 37.041805, 34.697109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063408, 37.054108, 34.485374>,  <44.876198, 37.074612, 34.132484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063408, 37.054108, 34.485374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144061, -0.980536, -0.133400,
		0.871894, 0.189529, -0.451531,
		0.468025, -0.051263, 0.882227,
		45.203815, 37.038731, 34.750042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376617, 36.704998, 34.028309>,  <44.876198, 37.074612, 34.132484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376617, 36.704998, 34.028309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318409, 36.660526, 34.421543>,  <45.283485, 36.633842, 34.657486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318409, 36.660526, 34.421543>,  <45.376617, 36.704998, 34.028309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318409, 36.660526, 34.421543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116138, -0.988716, -0.094624,
		0.982516, 0.100405, 0.156787,
		-0.145517, -0.111179, 0.983089,
		45.274754, 36.627174, 34.716469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831745, 36.106773, 34.234421>,  <45.376617, 36.704998, 34.028309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831745, 36.106773, 34.234421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581768, 36.171684, 34.539867>,  <45.431782, 36.210632, 34.723137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581768, 36.171684, 34.539867>,  <45.831745, 36.106773, 34.234421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581768, 36.171684, 34.539867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200884, -0.978646, 0.043569,
		0.754381, -0.126170, 0.644198,
		-0.624945, 0.162276, 0.763617,
		45.394283, 36.220367, 34.768951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021568, 35.609726, 34.827354>,  <45.831745, 36.106773, 34.234421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021568, 35.609726, 34.827354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635883, 35.706165, 34.871464>,  <45.404472, 35.764030, 34.897930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635883, 35.706165, 34.871464>,  <46.021568, 35.609726, 34.827354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635883, 35.706165, 34.871464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230460, -0.967832, 0.100943,
		0.131060, 0.071918, 0.988762,
		-0.964216, 0.241100, 0.110270,
		45.346619, 35.778496, 34.904545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.603058, 36.107735, 34.861275>,  <46.021568, 35.609726, 34.827354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.603058, 36.107735, 34.861275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753319, 35.755188, 34.746677>,  <46.843475, 35.543659, 34.677921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753319, 35.755188, 34.746677>,  <46.603058, 36.107735, 34.861275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.753319, 35.755188, 34.746677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906538, 0.413682, -0.084003,
		0.192553, -0.228157, 0.954394,
		0.375649, -0.881369, -0.286489,
		46.866013, 35.490776, 34.660732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.279873, 35.965847, 35.215668>,  <46.603058, 36.107735, 34.861275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.279873, 35.965847, 35.215668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.295822, 35.826073, 34.841225>,  <47.305393, 35.742207, 34.616558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.295822, 35.826073, 34.841225>,  <47.279873, 35.965847, 35.215668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.295822, 35.826073, 34.841225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786101, 0.589292, -0.186493,
		0.616810, -0.728441, 0.298192,
		0.039873, -0.349440, -0.936110,
		47.307785, 35.721241, 34.560390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.981129, 35.581047, 35.007118>,  <47.279873, 35.965847, 35.215668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.981129, 35.581047, 35.007118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785976, 35.766140, 34.711052>,  <47.668884, 35.877197, 34.533413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785976, 35.766140, 34.711052>,  <47.981129, 35.581047, 35.007118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.785976, 35.766140, 34.711052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766021, 0.633533, -0.108851,
		0.418553, -0.620092, -0.663551,
		-0.487879, 0.462734, -0.740170,
		47.639614, 35.904961, 34.489002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.903099, 34.871998, 34.652702>,  <47.981129, 35.581047, 35.007118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.903099, 34.871998, 34.652702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697601, 35.016605, 34.963924>,  <47.574303, 35.103371, 35.150658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697601, 35.016605, 34.963924>,  <47.903099, 34.871998, 34.652702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.697601, 35.016605, 34.963924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221538, 0.932029, -0.286780,
		-0.828847, 0.025037, -0.558915,
		-0.513745, 0.361518, 0.778056,
		47.543476, 35.125061, 35.197342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.685230, 37.722122, 44.401947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.371616, 37.479183, 44.350681>,  <34.183449, 37.333420, 44.319923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.371616, 37.479183, 44.350681>,  <34.685230, 37.722122, 44.401947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371616, 37.479183, 44.350681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263870, -0.139221, -0.954458,
		0.561841, -0.782145, 0.269414,
		-0.784033, -0.607344, -0.128164,
		34.136406, 37.296982, 44.312233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895191, 36.997715, 44.036572>,  <34.685230, 37.722122, 44.401947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895191, 36.997715, 44.036572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.510841, 37.059887, 43.944862>,  <34.280231, 37.097191, 43.889835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.510841, 37.059887, 43.944862>,  <34.895191, 36.997715, 44.036572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510841, 37.059887, 43.944862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174625, -0.302615, -0.936979,
		-0.215014, -0.940355, 0.263633,
		-0.960872, 0.155427, -0.229276,
		34.222580, 37.106514, 43.876080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707970, 36.394825, 43.753639>,  <34.895191, 36.997715, 44.036572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707970, 36.394825, 43.753639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421192, 36.653561, 43.649647>,  <34.249126, 36.808800, 43.587254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421192, 36.653561, 43.649647>,  <34.707970, 36.394825, 43.753639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421192, 36.653561, 43.649647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080118, -0.294007, -0.952440,
		-0.692509, -0.703678, 0.158964,
		-0.716947, 0.646837, -0.259979,
		34.206108, 36.847610, 43.571651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217182, 35.942055, 43.305889>,  <34.707970, 36.394825, 43.753639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217182, 35.942055, 43.305889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146442, 36.329388, 43.235390>,  <34.103996, 36.561787, 43.193089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146442, 36.329388, 43.235390>,  <34.217182, 35.942055, 43.305889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146442, 36.329388, 43.235390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126781, -0.199996, -0.971559,
		-0.976038, -0.149477, 0.158136,
		-0.176852, 0.968328, -0.176253,
		34.093388, 36.619884, 43.182514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597359, 35.965561, 42.860004>,  <34.217182, 35.942055, 43.305889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597359, 35.965561, 42.860004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.793869, 36.311859, 42.821774>,  <33.911777, 36.519638, 42.798836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.793869, 36.311859, 42.821774>,  <33.597359, 35.965561, 42.860004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793869, 36.311859, 42.821774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150652, -0.023615, -0.988305,
		-0.857875, 0.499931, 0.118825,
		0.491278, 0.865744, -0.095574,
		33.941254, 36.571583, 42.793102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254997, 36.371220, 42.308559>,  <33.597359, 35.965561, 42.860004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254997, 36.371220, 42.308559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630127, 36.506134, 42.341358>,  <33.855206, 36.587082, 42.361038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.630127, 36.506134, 42.341358>,  <33.254997, 36.371220, 42.308559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630127, 36.506134, 42.341358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140284, -0.152220, -0.978340,
		-0.317500, 0.929014, -0.190072,
		0.937824, 0.337287, 0.081996,
		33.911476, 36.607319, 42.365955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312782, 36.842522, 41.735447>,  <33.254997, 36.371220, 42.308559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312782, 36.842522, 41.735447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693665, 36.780682, 41.840828>,  <33.922192, 36.743576, 41.904057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693665, 36.780682, 41.840828>,  <33.312782, 36.842522, 41.735447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693665, 36.780682, 41.840828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250788, -0.096757, -0.963194,
		0.174403, 0.983228, -0.053360,
		0.952202, -0.154601, 0.263457,
		33.979324, 36.734303, 41.919865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712399, 37.332836, 41.441746>,  <33.312782, 36.842522, 41.735447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712399, 37.332836, 41.441746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.950306, 37.017277, 41.503563>,  <34.093052, 36.827942, 41.540653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.950306, 37.017277, 41.503563>,  <33.712399, 37.332836, 41.441746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950306, 37.017277, 41.503563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229195, -0.017853, -0.973217,
		0.770532, 0.614259, 0.170194,
		0.594769, -0.788902, 0.154542,
		34.128738, 36.780605, 41.549927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299873, 37.585938, 41.059330>,  <33.712399, 37.332836, 41.441746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299873, 37.585938, 41.059330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358528, 37.195061, 41.120762>,  <34.393723, 36.960533, 41.157623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358528, 37.195061, 41.120762>,  <34.299873, 37.585938, 41.059330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358528, 37.195061, 41.120762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437449, -0.075194, -0.896094,
		0.887207, 0.198585, 0.416447,
		0.146636, -0.977195, 0.153583,
		34.402519, 36.901901, 41.166836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948914, 37.525188, 40.691093>,  <34.299873, 37.585938, 41.059330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948914, 37.525188, 40.691093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799320, 37.160191, 40.757412>,  <34.709564, 36.941193, 40.797203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799320, 37.160191, 40.757412>,  <34.948914, 37.525188, 40.691093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799320, 37.160191, 40.757412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457150, -0.336919, -0.823103,
		0.806938, -0.232033, 0.543149,
		-0.373984, -0.912494, 0.165799,
		34.687126, 36.886444, 40.807152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475521, 37.199505, 40.725960>,  <34.948914, 37.525188, 40.691093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475521, 37.199505, 40.725960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194920, 36.930374, 40.631989>,  <35.026558, 36.768894, 40.575607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194920, 36.930374, 40.631989>,  <35.475521, 37.199505, 40.725960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194920, 36.930374, 40.631989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395784, -0.093671, -0.913554,
		0.592659, -0.733844, 0.332006,
		-0.701506, -0.672829, -0.234929,
		34.984467, 36.728527, 40.561508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787048, 36.560318, 40.587132>,  <35.475521, 37.199505, 40.725960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787048, 36.560318, 40.587132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441856, 36.486629, 40.398952>,  <35.234741, 36.442417, 40.286045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441856, 36.486629, 40.398952>,  <35.787048, 36.560318, 40.587132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441856, 36.486629, 40.398952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504502, -0.264092, -0.822030,
		0.027193, -0.946741, 0.320846,
		-0.862982, -0.184220, -0.470451,
		35.182961, 36.431362, 40.257816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785141, 35.879677, 40.246487>,  <35.787048, 36.560318, 40.587132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785141, 35.879677, 40.246487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516479, 36.098824, 40.046997>,  <35.355282, 36.230312, 39.927303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516479, 36.098824, 40.046997>,  <35.785141, 35.879677, 40.246487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516479, 36.098824, 40.046997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483585, -0.185784, -0.855354,
		-0.561273, -0.815677, -0.140157,
		-0.671653, 0.547865, -0.498724,
		35.314983, 36.263184, 39.897381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762211, 35.576469, 39.637897>,  <35.785141, 35.879677, 40.246487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762211, 35.576469, 39.637897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601585, 35.934772, 39.561619>,  <35.505211, 36.149754, 39.515850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601585, 35.934772, 39.561619>,  <35.762211, 35.576469, 39.637897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601585, 35.934772, 39.561619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423483, -0.003010, -0.905899,
		-0.812038, -0.444538, -0.378128,
		-0.401568, 0.895755, -0.190698,
		35.481113, 36.203499, 39.504410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370579, 35.574432, 39.074364>,  <35.762211, 35.576469, 39.637897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370579, 35.574432, 39.074364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454098, 35.965572, 39.080090>,  <35.504211, 36.200256, 39.083527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454098, 35.965572, 39.080090>,  <35.370579, 35.574432, 39.074364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454098, 35.965572, 39.080090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401638, -0.072395, -0.912933,
		-0.891678, 0.196373, -0.407859,
		0.208802, 0.977853, 0.014318,
		35.516739, 36.258930, 39.084385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393627, 35.773079, 38.378124>,  <35.370579, 35.574432, 39.074364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393627, 35.773079, 38.378124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561722, 36.096592, 38.542698>,  <35.662579, 36.290699, 38.641441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561722, 36.096592, 38.542698>,  <35.393627, 35.773079, 38.378124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561722, 36.096592, 38.542698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438265, 0.216113, -0.872478,
		-0.794559, 0.546964, -0.263641,
		0.420238, 0.808780, 0.411430,
		35.687794, 36.339226, 38.666126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372322, 36.405617, 37.860432>,  <35.393627, 35.773079, 38.378124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372322, 36.405617, 37.860432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660767, 36.503944, 38.119530>,  <35.833832, 36.562939, 38.274990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660767, 36.503944, 38.119530>,  <35.372322, 36.405617, 37.860432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660767, 36.503944, 38.119530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582164, 0.291898, -0.758868,
		-0.375619, 0.924321, 0.067384,
		0.721107, 0.245817, 0.647749,
		35.877098, 36.577690, 38.313854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683380, 37.080223, 37.645672>,  <35.372322, 36.405617, 37.860432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683380, 37.080223, 37.645672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937378, 36.891556, 37.890396>,  <36.089775, 36.778355, 38.037231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937378, 36.891556, 37.890396>,  <35.683380, 37.080223, 37.645672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937378, 36.891556, 37.890396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718451, 0.069491, -0.692098,
		0.283924, 0.879034, 0.382996,
		0.634992, -0.471667, 0.611813,
		36.127876, 36.750057, 38.073940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254444, 37.527840, 37.618774>,  <35.683380, 37.080223, 37.645672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254444, 37.527840, 37.618774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390045, 37.166790, 37.724869>,  <36.471405, 36.950161, 37.788525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390045, 37.166790, 37.724869>,  <36.254444, 37.527840, 37.618774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390045, 37.166790, 37.724869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731038, 0.075272, -0.678173,
		0.592169, 0.423801, 0.685368,
		0.338999, -0.902622, 0.265241,
		36.491745, 36.896004, 37.804440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978405, 37.607971, 37.590790>,  <36.254444, 37.527840, 37.618774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978405, 37.607971, 37.590790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903847, 37.214993, 37.588093>,  <36.859112, 36.979206, 37.586475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903847, 37.214993, 37.588093>,  <36.978405, 37.607971, 37.590790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903847, 37.214993, 37.588093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717315, -0.131398, -0.684247,
		0.671354, -0.132380, 0.729219,
		-0.186398, -0.982451, -0.006743,
		36.847927, 36.920258, 37.586071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583908, 37.348034, 37.427784>,  <36.978405, 37.607971, 37.590790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583908, 37.348034, 37.427784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.332195, 37.045517, 37.356201>,  <37.181168, 36.864006, 37.313251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.332195, 37.045517, 37.356201>,  <37.583908, 37.348034, 37.427784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332195, 37.045517, 37.356201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470154, -0.187103, -0.862524,
		0.618837, -0.626909, 0.473314,
		-0.629283, -0.756292, -0.178958,
		37.143410, 36.818630, 37.302513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914246, 36.718357, 37.392776>,  <37.583908, 37.348034, 37.427784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914246, 36.718357, 37.392776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597652, 36.754673, 37.151009>,  <37.407696, 36.776463, 37.005947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597652, 36.754673, 37.151009>,  <37.914246, 36.718357, 37.392776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597652, 36.754673, 37.151009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592264, -0.130298, -0.795139,
		-0.150950, -0.987309, 0.049352,
		-0.791478, 0.090797, -0.604416,
		37.360210, 36.781910, 36.969685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632336, 36.909706, 37.705406>,  <37.914246, 36.718357, 37.392776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632336, 36.909706, 37.705406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.014111, 37.012363, 37.766308>,  <39.243176, 37.073956, 37.802849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.014111, 37.012363, 37.766308>,  <38.632336, 36.909706, 37.705406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014111, 37.012363, 37.766308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173430, 0.061869, 0.982901,
		0.242834, -0.964524, 0.103560,
		0.954439, 0.256642, 0.152253,
		39.300442, 37.089355, 37.811985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850986, 36.502968, 38.245071>,  <38.632336, 36.909706, 37.705406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850986, 36.502968, 38.245071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084229, 36.827927, 38.244942>,  <39.224174, 37.022903, 38.244862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084229, 36.827927, 38.244942>,  <38.850986, 36.502968, 38.245071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084229, 36.827927, 38.244942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119014, 0.085822, 0.989176,
		0.803634, -0.576752, 0.146730,
		0.583102, 0.812399, -0.000328,
		39.259159, 37.071648, 38.244843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259430, 36.434559, 38.891659>,  <38.850986, 36.502968, 38.245071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259430, 36.434559, 38.891659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283363, 36.823597, 38.801788>,  <39.297726, 37.057018, 38.747868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283363, 36.823597, 38.801788>,  <39.259430, 36.434559, 38.891659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283363, 36.823597, 38.801788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020264, 0.223849, 0.974413,
		0.998003, -0.062857, -0.006314,
		0.059835, 0.972595, -0.224675,
		39.301315, 37.115376, 38.734386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663231, 36.708351, 39.405823>,  <39.259430, 36.434559, 38.891659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663231, 36.708351, 39.405823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.482742, 37.015324, 39.223637>,  <39.374451, 37.199509, 39.114326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.482742, 37.015324, 39.223637>,  <39.663231, 36.708351, 39.405823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482742, 37.015324, 39.223637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104168, 0.461591, 0.880956,
		0.886314, 0.444947, -0.128336,
		-0.451217, 0.767434, -0.455464,
		39.347378, 37.245556, 39.086998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065849, 37.205944, 39.676838>,  <39.663231, 36.708351, 39.405823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065849, 37.205944, 39.676838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712395, 37.349052, 39.556049>,  <39.500320, 37.434917, 39.483578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712395, 37.349052, 39.556049>,  <40.065849, 37.205944, 39.676838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712395, 37.349052, 39.556049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153097, 0.388714, 0.908550,
		0.442436, 0.849057, -0.288707,
		-0.883635, 0.357775, -0.301969,
		39.447304, 37.456387, 39.465458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019176, 37.766060, 40.098797>,  <40.065849, 37.205944, 39.676838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019176, 37.766060, 40.098797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640858, 37.720890, 39.976994>,  <39.413868, 37.693790, 39.903912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640858, 37.720890, 39.976994>,  <40.019176, 37.766060, 40.098797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640858, 37.720890, 39.976994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322197, 0.208418, 0.923445,
		-0.040812, 0.971499, -0.233504,
		-0.945792, -0.112922, -0.304508,
		39.357121, 37.687012, 39.885643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670128, 38.404896, 40.283848>,  <40.019176, 37.766060, 40.098797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670128, 38.404896, 40.283848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.398788, 38.112366, 40.255520>,  <39.235985, 37.936848, 40.238522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.398788, 38.112366, 40.255520>,  <39.670128, 38.404896, 40.283848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398788, 38.112366, 40.255520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359719, 0.246517, 0.899907,
		-0.640664, 0.635922, -0.430295,
		-0.678346, -0.731322, -0.070819,
		39.195286, 37.892967, 40.234276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108521, 38.720654, 40.660221>,  <39.670128, 38.404896, 40.283848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108521, 38.720654, 40.660221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960728, 38.351894, 40.613609>,  <38.872051, 38.130638, 40.585644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960728, 38.351894, 40.613609>,  <39.108521, 38.720654, 40.660221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960728, 38.351894, 40.613609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568511, 0.125072, 0.813112,
		-0.735036, 0.366679, -0.570324,
		-0.369483, -0.921902, -0.116529,
		38.849884, 38.075325, 40.578651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458408, 38.788521, 40.638538>,  <39.108521, 38.720654, 40.660221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458408, 38.788521, 40.638538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533478, 38.418785, 40.771431>,  <38.578518, 38.196945, 40.851166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533478, 38.418785, 40.771431>,  <38.458408, 38.788521, 40.638538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533478, 38.418785, 40.771431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598175, 0.160730, 0.785081,
		-0.779080, -0.346071, -0.522752,
		0.187673, -0.924338, 0.332233,
		38.589779, 38.141483, 40.871101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802559, 38.563206, 40.836422>,  <38.458408, 38.788521, 40.638538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802559, 38.563206, 40.836422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.076675, 38.349449, 41.034332>,  <38.241146, 38.221195, 41.153080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.076675, 38.349449, 41.034332>,  <37.802559, 38.563206, 40.836422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076675, 38.349449, 41.034332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577342, 0.015471, 0.816356,
		-0.443910, -0.845094, -0.297926,
		0.685288, -0.534394, 0.494776,
		38.282261, 38.189133, 41.182766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392502, 38.126835, 41.170807>,  <37.802559, 38.563206, 40.836422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392502, 38.126835, 41.170807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741631, 38.101223, 41.364338>,  <37.951107, 38.085854, 41.480457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741631, 38.101223, 41.364338>,  <37.392502, 38.126835, 41.170807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741631, 38.101223, 41.364338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487440, -0.065130, 0.870724,
		-0.024245, -0.995820, -0.088060,
		0.872820, -0.064035, 0.483823,
		38.003475, 38.082012, 41.509483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219566, 37.656509, 41.627243>,  <37.392502, 38.126835, 41.170807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219566, 37.656509, 41.627243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545563, 37.847038, 41.759247>,  <37.741161, 37.961357, 41.838451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545563, 37.847038, 41.759247>,  <37.219566, 37.656509, 41.627243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545563, 37.847038, 41.759247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388935, 0.027467, 0.920856,
		0.429563, -0.878840, 0.207645,
		0.814988, 0.476326, 0.330013,
		37.790058, 37.989937, 41.858250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542107, 37.291241, 42.108742>,  <37.219566, 37.656509, 41.627243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542107, 37.291241, 42.108742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653957, 37.669678, 42.174110>,  <37.721069, 37.896740, 42.213333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653957, 37.669678, 42.174110>,  <37.542107, 37.291241, 42.108742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653957, 37.669678, 42.174110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333280, -0.063981, 0.940654,
		0.900407, -0.317500, 0.297425,
		0.279628, 0.946097, 0.163425,
		37.737846, 37.953506, 42.223137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917652, 37.228313, 42.851673>,  <37.542107, 37.291241, 42.108742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917652, 37.228313, 42.851673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871685, 37.623432, 42.809620>,  <37.844105, 37.860504, 42.784389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871685, 37.623432, 42.809620>,  <37.917652, 37.228313, 42.851673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871685, 37.623432, 42.809620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369848, 0.055681, 0.927422,
		0.921958, 0.145459, 0.358936,
		-0.114916, 0.987796, -0.105133,
		37.837212, 37.919769, 42.778080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226952, 37.607647, 43.516357>,  <37.917652, 37.228313, 42.851673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226952, 37.607647, 43.516357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954716, 37.830982, 43.326599>,  <37.791374, 37.964985, 43.212746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954716, 37.830982, 43.326599>,  <38.226952, 37.607647, 43.516357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954716, 37.830982, 43.326599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510320, 0.103336, 0.853754,
		0.525706, 0.823152, 0.214602,
		-0.680593, 0.558339, -0.474395,
		37.750538, 37.998486, 43.184280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193840, 38.254017, 43.893719>,  <38.226952, 37.607647, 43.516357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193840, 38.254017, 43.893719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854877, 38.183147, 43.693512>,  <37.651501, 38.140625, 43.573387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854877, 38.183147, 43.693512>,  <38.193840, 38.254017, 43.893719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854877, 38.183147, 43.693512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514409, 0.040481, 0.856589,
		-0.131504, 0.983347, -0.125444,
		-0.847402, -0.177174, -0.500519,
		37.600658, 38.129993, 43.543358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788979, 38.748936, 44.184986>,  <38.193840, 38.254017, 43.893719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788979, 38.748936, 44.184986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.552235, 38.469704, 44.023796>,  <37.410187, 38.302166, 43.927082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.552235, 38.469704, 44.023796>,  <37.788979, 38.748936, 44.184986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552235, 38.469704, 44.023796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578325, 0.019531, 0.815572,
		-0.561462, 0.715757, -0.415275,
		-0.591862, -0.698077, -0.402975,
		37.374676, 38.260281, 43.902905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123283, 38.979202, 44.296597>,  <37.788979, 38.748936, 44.184986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123283, 38.979202, 44.296597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043499, 38.597015, 44.209599>,  <36.995628, 38.367702, 44.157402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043499, 38.597015, 44.209599>,  <37.123283, 38.979202, 44.296597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043499, 38.597015, 44.209599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587198, -0.061145, 0.807130,
		-0.784483, 0.288703, -0.548851,
		-0.199461, -0.955464, -0.217493,
		36.983662, 38.310375, 44.144352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.363316, 38.931911, 44.185047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475388, 38.555264, 44.259724>,  <36.542629, 38.329277, 44.304531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475388, 38.555264, 44.259724>,  <36.363316, 38.931911, 44.185047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475388, 38.555264, 44.259724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512154, 0.017865, 0.858708,
		-0.811910, -0.336210, -0.477248,
		0.280181, -0.941618, 0.186696,
		36.559441, 38.272778, 44.315731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725647, 38.546204, 44.429165>,  <36.363316, 38.931911, 44.185047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725647, 38.546204, 44.429165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050663, 38.360249, 44.569824>,  <36.245674, 38.248676, 44.654221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050663, 38.360249, 44.569824>,  <35.725647, 38.546204, 44.429165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050663, 38.360249, 44.569824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482198, -0.197122, 0.853597,
		-0.327510, -0.863146, -0.384339,
		0.812540, -0.464889, 0.351648,
		36.294426, 38.220783, 44.675320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453201, 37.919983, 44.696289>,  <35.725647, 38.546204, 44.429165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453201, 37.919983, 44.696289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808521, 37.971485, 44.872623>,  <36.021713, 38.002388, 44.978424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808521, 37.971485, 44.872623>,  <35.453201, 37.919983, 44.696289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808521, 37.971485, 44.872623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394228, -0.278627, 0.875758,
		0.235587, -0.951730, -0.196747,
		0.888303, 0.128754, 0.440839,
		36.075012, 38.010113, 45.004875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631134, 37.212757, 44.960979>,  <35.453201, 37.919983, 44.696289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631134, 37.212757, 44.960979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848427, 37.477161, 45.168041>,  <35.978802, 37.635803, 45.292278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848427, 37.477161, 45.168041>,  <35.631134, 37.212757, 44.960979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848427, 37.477161, 45.168041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291305, -0.429862, 0.854611,
		0.787428, -0.615044, -0.040957,
		0.543230, 0.661014, 0.517651,
		36.011395, 37.675465, 45.323338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928043, 36.789879, 45.538784>,  <35.631134, 37.212757, 44.960979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928043, 36.789879, 45.538784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990940, 37.163345, 45.667500>,  <36.028679, 37.387424, 45.744728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990940, 37.163345, 45.667500>,  <35.928043, 36.789879, 45.538784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990940, 37.163345, 45.667500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283160, -0.269540, 0.920417,
		0.946095, -0.235845, 0.221994,
		0.157240, 0.933662, 0.321792,
		36.038113, 37.443443, 45.764038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335949, 36.753613, 46.252838>,  <35.928043, 36.789879, 45.538784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335949, 36.753613, 46.252838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180649, 37.121048, 46.223286>,  <36.087467, 37.341507, 46.205555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180649, 37.121048, 46.223286>,  <36.335949, 36.753613, 46.252838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180649, 37.121048, 46.223286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450051, -0.119035, 0.885034,
		0.804186, 0.376867, 0.459626,
		-0.388252, 0.918587, -0.073883,
		36.064175, 37.396626, 46.201122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400681, 37.124901, 47.012138>,  <36.335949, 36.753613, 46.252838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400681, 37.124901, 47.012138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111519, 37.347404, 46.848198>,  <35.938023, 37.480907, 46.749832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111519, 37.347404, 46.848198>,  <36.400681, 37.124901, 47.012138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111519, 37.347404, 46.848198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399066, 0.148102, 0.904882,
		0.564051, 0.817704, 0.114921,
		-0.722906, 0.556261, -0.409855,
		35.894646, 37.514282, 46.725243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275162, 37.858162, 47.357651>,  <36.400681, 37.124901, 47.012138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275162, 37.858162, 47.357651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.928143, 37.785400, 47.172493>,  <35.719933, 37.741745, 47.061398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.928143, 37.785400, 47.172493>,  <36.275162, 37.858162, 47.357651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928143, 37.785400, 47.172493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475711, 0.031936, 0.879021,
		-0.145114, 0.982798, -0.114239,
		-0.867549, -0.181903, -0.462894,
		35.667877, 37.730831, 47.033627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828255, 38.326454, 47.539146>,  <36.275162, 37.858162, 47.357651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828255, 38.326454, 47.539146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.601635, 38.017300, 47.424843>,  <35.465664, 37.831806, 47.356258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.601635, 38.017300, 47.424843>,  <35.828255, 38.326454, 47.539146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601635, 38.017300, 47.424843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451295, 0.000876, 0.892374,
		-0.689456, 0.634540, -0.349298,
		-0.566553, -0.772889, -0.285761,
		35.431667, 37.785435, 47.339115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279408, 38.425690, 47.850479>,  <35.828255, 38.326454, 47.539146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279408, 38.425690, 47.850479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231422, 38.042046, 47.747944>,  <35.202629, 37.811859, 47.686420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231422, 38.042046, 47.747944>,  <35.279408, 38.425690, 47.850479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231422, 38.042046, 47.747944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565090, -0.146329, 0.811949,
		-0.816261, 0.242262, -0.524430,
		-0.119965, -0.959113, -0.256342,
		35.195435, 37.754311, 47.671040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670193, 38.396294, 48.088375>,  <35.279408, 38.425690, 47.850479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670193, 38.396294, 48.088375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.806061, 38.021988, 48.050499>,  <34.887581, 37.797405, 48.027775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.806061, 38.021988, 48.050499>,  <34.670193, 38.396294, 48.088375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806061, 38.021988, 48.050499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379619, -0.228509, 0.896478,
		-0.860532, -0.268560, -0.432852,
		0.339669, -0.935767, -0.094689,
		34.907963, 37.741257, 48.022091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180676, 38.046715, 48.449116>,  <34.670193, 38.396294, 48.088375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180676, 38.046715, 48.449116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480610, 37.783424, 48.422348>,  <34.660572, 37.625450, 48.406288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480610, 37.783424, 48.422348>,  <34.180676, 38.046715, 48.449116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480610, 37.783424, 48.422348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242446, -0.367474, 0.897877,
		-0.615603, -0.657035, -0.435130,
		0.749836, -0.658231, -0.066922,
		34.705559, 37.585957, 48.402271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891682, 37.389774, 48.612919>,  <34.180676, 38.046715, 48.449116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891682, 37.389774, 48.612919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283298, 37.365116, 48.690556>,  <34.518269, 37.350323, 48.737137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283298, 37.365116, 48.690556>,  <33.891682, 37.389774, 48.612919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283298, 37.365116, 48.690556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197398, -0.521600, 0.830041,
		0.050073, -0.850960, -0.522838,
		0.979043, -0.061645, 0.194096,
		34.577011, 37.346622, 48.748783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069931, 36.690788, 48.710487>,  <33.891682, 37.389774, 48.612919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069931, 36.690788, 48.710487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350140, 36.907063, 48.896790>,  <34.518265, 37.036827, 49.008572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350140, 36.907063, 48.896790>,  <34.069931, 36.690788, 48.710487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350140, 36.907063, 48.896790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132143, -0.543085, 0.829215,
		0.701288, -0.642430, -0.308995,
		0.700523, 0.540687, 0.465752,
		34.560295, 37.069267, 49.036514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415531, 36.313263, 49.205727>,  <34.069931, 36.690788, 48.710487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415531, 36.313263, 49.205727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513744, 36.666752, 49.365101>,  <34.572674, 36.878845, 49.460728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513744, 36.666752, 49.365101>,  <34.415531, 36.313263, 49.205727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513744, 36.666752, 49.365101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265934, -0.333846, 0.904337,
		0.932198, -0.328002, 0.153042,
		0.245532, 0.883720, 0.398437,
		34.587402, 36.931870, 49.484631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721920, 36.183773, 49.909409>,  <34.415531, 36.313263, 49.205727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721920, 36.183773, 49.909409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654675, 36.577732, 49.925961>,  <34.614326, 36.814106, 49.935894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654675, 36.577732, 49.925961>,  <34.721920, 36.183773, 49.909409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654675, 36.577732, 49.925961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218274, -0.078130, 0.972755,
		0.961298, 0.154504, 0.228113,
		-0.168117, 0.984898, 0.041382,
		34.604240, 36.873203, 49.938374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117348, 36.398418, 50.547192>,  <34.721920, 36.183773, 49.909409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117348, 36.398418, 50.547192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867886, 36.701042, 50.468521>,  <34.718208, 36.882614, 50.421318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867886, 36.701042, 50.468521>,  <35.117348, 36.398418, 50.547192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867886, 36.701042, 50.468521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184541, 0.102000, 0.977518,
		0.759608, 0.645926, 0.076003,
		-0.623651, 0.756556, -0.196679,
		34.680790, 36.928009, 50.409519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349728, 36.890263, 50.978527>,  <35.117348, 36.398418, 50.547192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349728, 36.890263, 50.978527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974136, 36.996864, 50.891529>,  <34.748783, 37.060825, 50.839333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974136, 36.996864, 50.891529>,  <35.349728, 36.890263, 50.978527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974136, 36.996864, 50.891529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248106, -0.086749, 0.964841,
		0.238265, 0.959922, 0.147576,
		-0.938975, 0.266502, -0.217493,
		34.692444, 37.076817, 50.826283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157955, 37.337040, 51.482697>,  <35.349728, 36.890263, 50.978527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157955, 37.337040, 51.482697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800358, 37.220055, 51.346905>,  <34.585800, 37.149864, 51.265430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800358, 37.220055, 51.346905>,  <35.157955, 37.337040, 51.482697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800358, 37.220055, 51.346905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277993, -0.232175, 0.932102,
		-0.351426, 0.927663, 0.126259,
		-0.893991, -0.292466, -0.339476,
		34.532162, 37.132317, 51.245064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780621, 37.668758, 51.971027>,  <35.157955, 37.337040, 51.482697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780621, 37.668758, 51.971027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.559002, 37.382477, 51.800949>,  <34.426029, 37.210709, 51.698902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.559002, 37.382477, 51.800949>,  <34.780621, 37.668758, 51.971027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559002, 37.382477, 51.800949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439486, -0.182317, 0.879553,
		-0.707021, 0.674185, -0.213530,
		-0.554051, -0.715706, -0.425197,
		34.392788, 37.167767, 51.673389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175873, 37.766556, 52.293095>,  <34.780621, 37.668758, 51.971027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175873, 37.766556, 52.293095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185646, 37.398743, 52.136196>,  <34.191509, 37.178055, 52.042057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185646, 37.398743, 52.136196>,  <34.175873, 37.766556, 52.293095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185646, 37.398743, 52.136196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476318, -0.355673, 0.804126,
		-0.878933, 0.167185, -0.446682,
		0.024435, -0.919536, -0.392246,
		34.192978, 37.122883, 52.018524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528015, 37.492027, 52.563217>,  <34.175873, 37.766556, 52.293095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528015, 37.492027, 52.563217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751110, 37.172985, 52.471336>,  <33.884968, 36.981560, 52.416206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751110, 37.172985, 52.471336>,  <33.528015, 37.492027, 52.563217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751110, 37.172985, 52.471336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390738, -0.496465, 0.775142,
		-0.732294, -0.342570, -0.588550,
		0.557735, -0.797601, -0.229704,
		33.918430, 36.933704, 52.402424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993977, 37.025475, 52.367523>,  <33.528015, 37.492027, 52.563217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993977, 37.025475, 52.367523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.338753, 36.911144, 52.535027>,  <33.545620, 36.842548, 52.635529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.338753, 36.911144, 52.535027>,  <32.993977, 37.025475, 52.367523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338753, 36.911144, 52.535027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504369, -0.399314, 0.765611,
		-0.051613, -0.871122, -0.488346,
		0.861944, -0.285823, 0.418757,
		33.597336, 36.825397, 52.660652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312885, 36.673489, 52.115162>,  <32.993977, 37.025475, 52.367523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312885, 36.673489, 52.115162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104851, 36.339176, 52.185566>,  <31.980030, 36.138588, 52.227806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104851, 36.339176, 52.185566>,  <32.312885, 36.673489, 52.115162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104851, 36.339176, 52.185566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138838, -0.120601, -0.982944,
		0.842752, -0.535655, -0.053315,
		-0.520089, -0.835781, 0.176006,
		31.948824, 36.088444, 52.238369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661514, 36.076378, 51.898079>,  <32.312885, 36.673489, 52.115162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661514, 36.076378, 51.898079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267296, 36.023659, 51.855503>,  <32.030766, 35.992027, 51.829960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267296, 36.023659, 51.855503>,  <32.661514, 36.076378, 51.898079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267296, 36.023659, 51.855503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124703, -0.139154, -0.982387,
		0.114664, -0.981461, 0.153578,
		-0.985546, -0.131796, -0.106436,
		31.971632, 35.984119, 51.823574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684719, 35.531254, 51.376560>,  <32.661514, 36.076378, 51.898079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684719, 35.531254, 51.376560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308224, 35.666355, 51.376625>,  <32.082329, 35.747414, 51.376663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308224, 35.666355, 51.376625>,  <32.684719, 35.531254, 51.376560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308224, 35.666355, 51.376625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095534, -0.265785, -0.959287,
		-0.323963, -0.902929, 0.282433,
		-0.941234, 0.337755, 0.000156,
		32.025852, 35.767681, 51.376671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279854, 34.981113, 50.986767>,  <32.684719, 35.531254, 51.376560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279854, 34.981113, 50.986767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065563, 35.318710, 50.976418>,  <31.936989, 35.521267, 50.970207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065563, 35.318710, 50.976418>,  <32.279854, 34.981113, 50.986767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065563, 35.318710, 50.976418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053769, -0.064682, -0.996456,
		-0.842676, -0.532439, 0.080033,
		-0.535729, 0.843994, -0.025877,
		31.904844, 35.571907, 50.968655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740385, 34.902740, 50.546368>,  <32.279854, 34.981113, 50.986767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740385, 34.902740, 50.546368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750265, 35.302601, 50.549976>,  <31.756193, 35.542519, 50.552143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750265, 35.302601, 50.549976>,  <31.740385, 34.902740, 50.546368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750265, 35.302601, 50.549976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088146, 0.011170, -0.996045,
		-0.995801, 0.023809, 0.088391,
		0.024702, 0.999654, 0.009024,
		31.757675, 35.602497, 50.552685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194677, 35.101547, 50.067982>,  <31.740385, 34.902740, 50.546368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194677, 35.101547, 50.067982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451275, 35.402786, 50.126408>,  <31.605234, 35.583530, 50.161461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451275, 35.402786, 50.126408>,  <31.194677, 35.101547, 50.067982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451275, 35.402786, 50.126408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056481, 0.143516, -0.988035,
		-0.765046, 0.642068, 0.049529,
		0.641493, 0.753095, 0.146061,
		31.643723, 35.628716, 50.170227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893482, 35.581829, 49.606243>,  <31.194677, 35.101547, 50.067982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893482, 35.581829, 49.606243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274763, 35.673882, 49.684673>,  <31.503532, 35.729115, 49.731731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274763, 35.673882, 49.684673>,  <30.893482, 35.581829, 49.606243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274763, 35.673882, 49.684673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181159, 0.084452, -0.979821,
		-0.242048, 0.969488, 0.038809,
		0.953202, 0.230134, 0.196073,
		31.560724, 35.742920, 49.743496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075045, 36.202160, 49.179050>,  <30.893482, 35.581829, 49.606243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075045, 36.202160, 49.179050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409111, 36.003525, 49.273624>,  <31.609550, 35.884342, 49.330368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409111, 36.003525, 49.273624>,  <31.075045, 36.202160, 49.179050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409111, 36.003525, 49.273624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296829, 0.045050, -0.953868,
		0.463026, 0.866817, 0.185026,
		0.835164, -0.496587, 0.236437,
		31.659660, 35.854549, 49.344555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501114, 36.611626, 48.837200>,  <31.075045, 36.202160, 49.179050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501114, 36.611626, 48.837200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.707579, 36.272701, 48.887222>,  <31.831457, 36.069347, 48.917236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.707579, 36.272701, 48.887222>,  <31.501114, 36.611626, 48.837200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707579, 36.272701, 48.887222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418900, 0.122393, -0.899746,
		0.747061, 0.516798, 0.418114,
		0.516162, -0.847313, 0.125051,
		31.862427, 36.018509, 48.924736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008831, 36.700100, 48.461449>,  <31.501114, 36.611626, 48.837200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008831, 36.700100, 48.461449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.071796, 36.307983, 48.509205>,  <32.109573, 36.072716, 48.537861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.071796, 36.307983, 48.509205>,  <32.008831, 36.700100, 48.461449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071796, 36.307983, 48.509205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643821, 0.010195, -0.765108,
		0.748810, 0.197305, 0.632735,
		0.157411, -0.980289, 0.119395,
		32.119019, 36.013897, 48.545025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725769, 36.474243, 48.608711>,  <32.008831, 36.700100, 48.461449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725769, 36.474243, 48.608711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.543587, 36.185738, 48.399967>,  <32.434277, 36.012634, 48.274719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.543587, 36.185738, 48.399967>,  <32.725769, 36.474243, 48.608711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543587, 36.185738, 48.399967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576181, 0.208047, -0.790400,
		0.678657, -0.660681, 0.320821,
		-0.455457, -0.721261, -0.521864,
		32.406948, 35.969360, 48.243408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253239, 36.195919, 48.213684>,  <32.725769, 36.474243, 48.608711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253239, 36.195919, 48.213684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932594, 36.033741, 48.037941>,  <32.740208, 35.936432, 47.932495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932594, 36.033741, 48.037941>,  <33.253239, 36.195919, 48.213684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932594, 36.033741, 48.037941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405064, 0.172179, -0.897930,
		0.439713, -0.897756, 0.026213,
		-0.801608, -0.405450, -0.439358,
		32.692112, 35.912106, 47.906136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505199, 35.831608, 47.652538>,  <33.253239, 36.195919, 48.213684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505199, 35.831608, 47.652538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123661, 35.886032, 47.545448>,  <32.894737, 35.918686, 47.481194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123661, 35.886032, 47.545448>,  <33.505199, 35.831608, 47.652538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123661, 35.886032, 47.545448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298488, 0.331441, -0.895015,
		-0.033041, -0.933614, -0.356754,
		-0.953842, 0.136059, -0.267721,
		32.837509, 35.926849, 47.465134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451374, 35.417076, 47.006084>,  <33.505199, 35.831608, 47.652538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451374, 35.417076, 47.006084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154037, 35.683830, 47.026909>,  <32.975636, 35.843884, 47.039402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154037, 35.683830, 47.026909>,  <33.451374, 35.417076, 47.006084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154037, 35.683830, 47.026909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206581, 0.302893, -0.930366,
		-0.636219, -0.680820, -0.362918,
		-0.743337, 0.666888, 0.052062,
		32.931038, 35.883896, 47.042526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165188, 35.409245, 46.326248>,  <33.451374, 35.417076, 47.006084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165188, 35.409245, 46.326248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068241, 35.764503, 46.482426>,  <33.010075, 35.977661, 46.576134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068241, 35.764503, 46.482426>,  <33.165188, 35.409245, 46.326248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068241, 35.764503, 46.482426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294695, 0.450823, -0.842564,
		-0.924345, -0.089145, -0.370997,
		-0.242364, 0.888151, 0.390446,
		32.995533, 36.030949, 46.599560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825382, 35.801559, 45.762951>,  <33.165188, 35.409245, 46.326248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825382, 35.801559, 45.762951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966785, 36.069496, 46.024132>,  <33.051628, 36.230259, 46.180840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966785, 36.069496, 46.024132>,  <32.825382, 35.801559, 45.762951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966785, 36.069496, 46.024132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264948, 0.597739, -0.756644,
		-0.897124, 0.440481, 0.033835,
		0.353511, 0.669839, 0.652951,
		33.072838, 36.270447, 46.220016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368561, 36.442600, 45.543442>,  <32.825382, 35.801559, 45.762951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368561, 36.442600, 45.543442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703312, 36.539803, 45.739635>,  <32.904163, 36.598122, 45.857353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703312, 36.539803, 45.739635>,  <32.368561, 36.442600, 45.543442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703312, 36.539803, 45.739635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257244, 0.616349, -0.744271,
		-0.483171, 0.749042, 0.453301,
		0.836882, 0.243001, 0.490488,
		32.954376, 36.612701, 45.886784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526360, 37.232983, 45.398537>,  <32.368561, 36.442600, 45.543442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526360, 37.232983, 45.398537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.874149, 37.087490, 45.532230>,  <33.082825, 37.000195, 45.612446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.874149, 37.087490, 45.532230>,  <32.526360, 37.232983, 45.398537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874149, 37.087490, 45.532230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466008, 0.379530, -0.799245,
		0.163857, 0.850681, 0.499493,
		0.869475, -0.363729, 0.334236,
		33.134991, 36.978371, 45.632500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860165, 37.800644, 45.341156>,  <32.526360, 37.232983, 45.398537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860165, 37.800644, 45.341156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134098, 37.510479, 45.313492>,  <33.298458, 37.336380, 45.296894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134098, 37.510479, 45.313492>,  <32.860165, 37.800644, 45.341156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134098, 37.510479, 45.313492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449919, 0.495575, -0.742952,
		0.573221, 0.477680, 0.665762,
		0.684829, -0.725415, -0.069156,
		33.339546, 37.292854, 45.292744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380165, 38.124954, 45.030315>,  <32.860165, 37.800644, 45.341156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380165, 38.124954, 45.030315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498627, 37.745316, 44.987400>,  <33.569702, 37.517532, 44.961651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498627, 37.745316, 44.987400>,  <33.380165, 38.124954, 45.030315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498627, 37.745316, 44.987400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483333, 0.245796, -0.840223,
		0.823822, 0.196980, 0.531523,
		0.296153, -0.949096, -0.107285,
		33.587471, 37.460587, 44.955215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079494, 38.057652, 44.907585>,  <33.380165, 38.124954, 45.030315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079494, 38.057652, 44.907585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926281, 37.714478, 44.770622>,  <33.834354, 37.508575, 44.688446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926281, 37.714478, 44.770622>,  <34.079494, 38.057652, 44.907585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926281, 37.714478, 44.770622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376487, 0.193498, -0.905989,
		0.843531, -0.475934, 0.248884,
		-0.383033, -0.857931, -0.342404,
		33.811371, 37.457100, 44.667900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.331497, 43.007252, 37.315845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136368, 43.256691, 37.560192>,  <45.019291, 43.406353, 37.706799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136368, 43.256691, 37.560192>,  <45.331497, 43.007252, 37.315845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136368, 43.256691, 37.560192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441746, -0.779908, 0.443400,
		0.752922, -0.053548, 0.655927,
		-0.487820, 0.623599, 0.610865,
		44.990021, 43.443771, 37.743450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511017, 42.987129, 38.050674>,  <45.331497, 43.007252, 37.315845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511017, 42.987129, 38.050674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.132774, 43.044994, 37.934128>,  <44.905827, 43.079712, 37.864201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.132774, 43.044994, 37.934128>,  <45.511017, 42.987129, 38.050674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132774, 43.044994, 37.934128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232563, -0.926899, 0.294573,
		-0.227455, 0.346312, 0.910128,
		-0.945610, 0.144660, -0.291367,
		44.849091, 43.088390, 37.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017132, 42.782368, 38.607319>,  <45.511017, 42.987129, 38.050674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017132, 42.782368, 38.607319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.783627, 42.765591, 38.282982>,  <44.643524, 42.755524, 38.088379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.783627, 42.765591, 38.282982>,  <45.017132, 42.782368, 38.607319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783627, 42.765591, 38.282982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248658, -0.941441, 0.227724,
		-0.772908, 0.334559, 0.539150,
		-0.583766, -0.041946, -0.810838,
		44.608498, 42.753006, 38.039730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456161, 42.391960, 38.751278>,  <45.017132, 42.782368, 38.607319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456161, 42.391960, 38.751278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389236, 42.388245, 38.356934>,  <44.349083, 42.386017, 38.120327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389236, 42.388245, 38.356934>,  <44.456161, 42.391960, 38.751278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389236, 42.388245, 38.356934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246267, -0.967864, 0.050914,
		-0.954652, 0.251303, 0.159647,
		-0.167311, -0.009289, -0.985860,
		44.339043, 42.385456, 38.061176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765434, 41.985538, 38.656040>,  <44.456161, 42.391960, 38.751278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765434, 41.985538, 38.656040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990917, 41.976200, 38.325783>,  <44.126209, 41.970596, 38.127628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990917, 41.976200, 38.325783>,  <43.765434, 41.985538, 38.656040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990917, 41.976200, 38.325783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202033, -0.973134, -0.110419,
		-0.800884, 0.229052, -0.553282,
		0.563709, -0.023348, -0.825643,
		44.160030, 41.969196, 38.078091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393085, 41.645863, 38.071537>,  <43.765434, 41.985538, 38.656040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393085, 41.645863, 38.071537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784870, 41.601910, 38.003906>,  <44.019939, 41.575539, 37.963329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784870, 41.601910, 38.003906>,  <43.393085, 41.645863, 38.071537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784870, 41.601910, 38.003906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145684, -0.965338, -0.216560,
		-0.139417, 0.236743, -0.961517,
		0.979459, -0.109885, -0.169074,
		44.078709, 41.568943, 37.953182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529278, 41.344467, 37.402641>,  <43.393085, 41.645863, 38.071537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529278, 41.344467, 37.402641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.872734, 41.268143, 37.592934>,  <44.078808, 41.222347, 37.707111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.872734, 41.268143, 37.592934>,  <43.529278, 41.344467, 37.402641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872734, 41.268143, 37.592934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044381, -0.896969, -0.439859,
		0.510648, 0.398796, -0.761708,
		0.858643, -0.190808, 0.475735,
		44.130325, 41.210899, 37.735653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651680, 40.835060, 37.048424>,  <43.529278, 41.344467, 37.402641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651680, 40.835060, 37.048424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.914566, 40.800610, 37.347931>,  <44.072300, 40.779938, 37.527634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.914566, 40.800610, 37.347931>,  <43.651680, 40.835060, 37.048424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914566, 40.800610, 37.347931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260075, -0.906515, -0.332554,
		0.707408, 0.413295, -0.573377,
		0.657217, -0.086130, 0.748764,
		44.111732, 40.774769, 37.572559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353466, 40.582676, 36.826706>,  <43.651680, 40.835060, 37.048424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353466, 40.582676, 36.826706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283760, 40.476116, 37.205898>,  <44.241936, 40.412182, 37.433414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283760, 40.476116, 37.205898>,  <44.353466, 40.582676, 36.826706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283760, 40.476116, 37.205898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210385, -0.950552, -0.228448,
		0.961962, 0.159631, 0.221690,
		-0.174260, -0.266399, 0.947979,
		44.231483, 40.396198, 37.490292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886028, 40.081329, 36.854546>,  <44.353466, 40.582676, 36.826706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886028, 40.081329, 36.854546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627121, 40.031487, 37.155350>,  <44.471775, 40.001579, 37.335831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627121, 40.031487, 37.155350>,  <44.886028, 40.081329, 36.854546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627121, 40.031487, 37.155350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098109, -0.991961, -0.079924,
		0.755923, 0.022047, 0.654290,
		-0.647268, -0.124608, 0.752009,
		44.432941, 39.994102, 37.380951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034130, 39.402088, 37.058208>,  <44.886028, 40.081329, 36.854546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034130, 39.402088, 37.058208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685738, 39.458363, 37.246506>,  <44.476704, 39.492126, 37.359486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685738, 39.458363, 37.246506>,  <45.034130, 39.402088, 37.058208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685738, 39.458363, 37.246506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219284, -0.968715, -0.116214,
		0.439667, -0.204447, 0.874583,
		-0.870981, 0.140686, 0.470744,
		44.424442, 39.500568, 37.387730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021969, 38.728176, 37.383591>,  <45.034130, 39.402088, 37.058208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021969, 38.728176, 37.383591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660458, 38.896408, 37.415348>,  <44.443550, 38.997349, 37.434402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660458, 38.896408, 37.415348>,  <45.021969, 38.728176, 37.383591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660458, 38.896408, 37.415348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427514, -0.878115, -0.214817,
		-0.020629, -0.228089, 0.973422,
		-0.903774, 0.420582, 0.079396,
		44.389324, 39.022583, 37.439167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724236, 38.440468, 37.876873>,  <45.021969, 38.728176, 37.383591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724236, 38.440468, 37.876873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436413, 38.575523, 37.634140>,  <44.263721, 38.656559, 37.488503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436413, 38.575523, 37.634140>,  <44.724236, 38.440468, 37.876873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436413, 38.575523, 37.634140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383713, -0.921641, -0.057816,
		-0.578800, 0.191247, 0.792727,
		-0.719552, 0.337643, -0.606829,
		44.220547, 38.676815, 37.452091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188980, 38.164658, 38.142628>,  <44.724236, 38.440468, 37.876873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188980, 38.164658, 38.142628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.074177, 38.256248, 37.770565>,  <44.005295, 38.311203, 37.547325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.074177, 38.256248, 37.770565>,  <44.188980, 38.164658, 38.142628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074177, 38.256248, 37.770565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414889, -0.904925, -0.094753,
		-0.863420, 0.358718, 0.354720,
		-0.287005, 0.228981, -0.930159,
		43.988075, 38.324944, 37.491516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513859, 37.946110, 38.126019>,  <44.188980, 38.164658, 38.142628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513859, 37.946110, 38.126019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.627274, 37.996296, 37.745731>,  <43.695324, 38.026409, 37.517559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.627274, 37.996296, 37.745731>,  <43.513859, 37.946110, 38.126019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627274, 37.996296, 37.745731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435737, -0.866292, -0.244277,
		-0.854248, 0.483525, -0.190955,
		0.283537, 0.125468, -0.950718,
		43.712334, 38.033936, 37.460514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914001, 37.864841, 37.687107>,  <43.513859, 37.946110, 38.126019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914001, 37.864841, 37.687107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.238899, 37.773457, 37.472420>,  <43.433838, 37.718624, 37.343605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.238899, 37.773457, 37.472420>,  <42.914001, 37.864841, 37.687107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238899, 37.773457, 37.472420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461983, -0.813711, -0.352769,
		-0.356141, 0.534489, -0.766476,
		0.812241, -0.228463, -0.536721,
		43.482571, 37.704918, 37.311405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676746, 37.679394, 36.978130>,  <42.914001, 37.864841, 37.687107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676746, 37.679394, 36.978130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041718, 37.516010, 36.988182>,  <43.260700, 37.417980, 36.994213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041718, 37.516010, 36.988182>,  <42.676746, 37.679394, 36.978130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041718, 37.516010, 36.988182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353117, -0.816858, -0.456127,
		0.206836, 0.407310, -0.889560,
		0.912429, -0.408462, 0.025127,
		43.315445, 37.393471, 36.995720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701996, 37.377766, 36.395458>,  <42.676746, 37.679394, 36.978130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701996, 37.377766, 36.395458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.004559, 37.177883, 36.564285>,  <43.186096, 37.057953, 36.665581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.004559, 37.177883, 36.564285>,  <42.701996, 37.377766, 36.395458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004559, 37.177883, 36.564285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274153, -0.828048, -0.489057,
		0.593876, 0.254216, -0.763339,
		0.756407, -0.499711, 0.422063,
		43.231480, 37.027969, 36.690903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156513, 36.922787, 35.877144>,  <42.701996, 37.377766, 36.395458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156513, 36.922787, 35.877144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244862, 36.743565, 36.223660>,  <43.297871, 36.636032, 36.431568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244862, 36.743565, 36.223660>,  <43.156513, 36.922787, 35.877144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244862, 36.743565, 36.223660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100570, -0.893957, -0.436722,
		0.970105, 0.009335, -0.242507,
		0.220868, -0.448055, 0.866293,
		43.311123, 36.609146, 36.483547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622292, 36.406998, 35.745010>,  <43.156513, 36.922787, 35.877144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622292, 36.406998, 35.745010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.455517, 36.295887, 36.091190>,  <43.355450, 36.229221, 36.298897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.455517, 36.295887, 36.091190>,  <43.622292, 36.406998, 35.745010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455517, 36.295887, 36.091190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144663, -0.919741, -0.364896,
		0.897348, -0.277339, 0.343294,
		-0.416941, -0.277777, 0.865448,
		43.330433, 36.212555, 36.350826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886353, 35.845772, 35.859158>,  <43.622292, 36.406998, 35.745010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886353, 35.845772, 35.859158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553841, 35.831097, 36.081013>,  <43.354332, 35.822292, 36.214127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553841, 35.831097, 36.081013>,  <43.886353, 35.845772, 35.859158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553841, 35.831097, 36.081013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142689, -0.950299, -0.276715,
		0.537228, -0.309169, 0.784730,
		-0.831280, -0.036687, 0.554643,
		43.304459, 35.820091, 36.247406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092602, 36.071251, 35.211235>,  <43.886353, 35.845772, 35.859158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092602, 36.071251, 35.211235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476021, 35.995308, 35.126255>,  <44.706074, 35.949741, 35.075268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476021, 35.995308, 35.126255>,  <44.092602, 36.071251, 35.211235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476021, 35.995308, 35.126255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251424, 0.914411, 0.317235,
		0.134040, -0.357501, 0.924244,
		0.958551, -0.189855, -0.212452,
		44.763588, 35.938351, 35.062519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596378, 36.263115, 35.800522>,  <44.092602, 36.071251, 35.211235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596378, 36.263115, 35.800522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824158, 36.264782, 35.471714>,  <44.960827, 36.265781, 35.274429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824158, 36.264782, 35.471714>,  <44.596378, 36.263115, 35.800522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824158, 36.264782, 35.471714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209660, 0.966178, 0.150144,
		0.794839, -0.257844, 0.549316,
		0.569450, 0.004171, -0.822015,
		44.994991, 36.266033, 35.225109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062656, 36.757141, 35.950577>,  <44.596378, 36.263115, 35.800522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062656, 36.757141, 35.950577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136837, 36.704449, 35.561062>,  <45.181347, 36.672832, 35.327354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136837, 36.704449, 35.561062>,  <45.062656, 36.757141, 35.950577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136837, 36.704449, 35.561062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261600, 0.961831, -0.080294,
		0.947192, -0.239851, 0.212836,
		0.185453, -0.131732, -0.973783,
		45.192474, 36.664928, 35.268929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819714, 36.930946, 35.867752>,  <45.062656, 36.757141, 35.950577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819714, 36.930946, 35.867752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611897, 36.965126, 35.527687>,  <45.487206, 36.985634, 35.323647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611897, 36.965126, 35.527687>,  <45.819714, 36.930946, 35.867752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611897, 36.965126, 35.527687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156630, 0.987651, 0.003556,
		0.839968, -0.131314, -0.526507,
		-0.519538, 0.085454, -0.850163,
		45.456036, 36.990761, 35.272636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175381, 37.346542, 35.535244>,  <45.819714, 36.930946, 35.867752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175381, 37.346542, 35.535244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827911, 37.387600, 35.341389>,  <45.619431, 37.412235, 35.225075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827911, 37.387600, 35.341389>,  <46.175381, 37.346542, 35.535244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827911, 37.387600, 35.341389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207353, 0.963815, -0.167525,
		0.449903, -0.246015, -0.858524,
		-0.868672, 0.102647, -0.484636,
		45.567310, 37.418396, 35.195999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267414, 37.778767, 34.892262>,  <46.175381, 37.346542, 35.535244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267414, 37.778767, 34.892262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.868713, 37.799351, 34.917038>,  <45.629494, 37.811703, 34.931904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.868713, 37.799351, 34.917038>,  <46.267414, 37.778767, 34.892262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868713, 37.799351, 34.917038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044487, 0.993030, -0.109139,
		-0.067122, -0.106029, -0.992095,
		-0.996752, 0.051461, 0.061937,
		45.569687, 37.814789, 34.935619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048161, 38.210201, 34.309631>,  <46.267414, 37.778767, 34.892262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048161, 38.210201, 34.309631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746063, 38.214077, 34.571781>,  <45.564804, 38.216404, 34.729069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746063, 38.214077, 34.571781>,  <46.048161, 38.210201, 34.309631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746063, 38.214077, 34.571781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121787, 0.980404, -0.154841,
		-0.644030, -0.196759, -0.739264,
		-0.755244, 0.009689, 0.655372,
		45.519489, 38.216984, 34.768394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525040, 38.613667, 33.945843>,  <46.048161, 38.210201, 34.309631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525040, 38.613667, 33.945843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418377, 38.621220, 34.331284>,  <45.354378, 38.625751, 34.562550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418377, 38.621220, 34.331284>,  <45.525040, 38.613667, 33.945843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418377, 38.621220, 34.331284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134263, 0.989331, -0.056545,
		-0.954394, -0.144454, -0.261276,
		-0.266656, 0.018886, 0.963607,
		45.338379, 38.626884, 34.620365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832672, 38.989182, 33.950333>,  <45.525040, 38.613667, 33.945843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832672, 38.989182, 33.950333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032528, 39.005516, 34.296440>,  <45.152443, 39.015316, 34.504105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032528, 39.005516, 34.296440>,  <44.832672, 38.989182, 33.950333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032528, 39.005516, 34.296440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223022, 0.971279, 0.082939,
		-0.837029, -0.234414, 0.494401,
		0.499643, 0.040840, 0.865268,
		45.182423, 39.017769, 34.556019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370480, 39.168297, 34.414543>,  <44.832672, 38.989182, 33.950333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370480, 39.168297, 34.414543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.715122, 39.264210, 34.593487>,  <44.921909, 39.321758, 34.700855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.715122, 39.264210, 34.593487>,  <44.370480, 39.168297, 34.414543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715122, 39.264210, 34.593487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402914, 0.859131, 0.315524,
		-0.308686, -0.452107, 0.836847,
		0.861611, 0.239779, 0.447362,
		44.973606, 39.336143, 34.727695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182453, 39.401543, 35.054035>,  <44.370480, 39.168297, 34.414543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182453, 39.401543, 35.054035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549335, 39.549023, 34.993649>,  <44.769466, 39.637512, 34.957417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549335, 39.549023, 34.993649>,  <44.182453, 39.401543, 35.054035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549335, 39.549023, 34.993649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287803, 0.875184, 0.388873,
		0.275505, -0.313227, 0.908838,
		0.917206, 0.368703, -0.150970,
		44.824497, 39.659634, 34.948357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189541, 39.919415, 35.640079>,  <44.182453, 39.401543, 35.054035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189541, 39.919415, 35.640079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518932, 39.995434, 35.426254>,  <44.716568, 40.041046, 35.297958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518932, 39.995434, 35.426254>,  <44.189541, 39.919415, 35.640079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518932, 39.995434, 35.426254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216344, 0.976220, 0.013793,
		0.524476, 0.104292, 0.845013,
		0.823480, 0.190047, -0.534567,
		44.765976, 40.052448, 35.265884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477001, 40.380650, 36.028316>,  <44.189541, 39.919415, 35.640079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477001, 40.380650, 36.028316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.613762, 40.407829, 35.653404>,  <44.695816, 40.424137, 35.428459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.613762, 40.407829, 35.653404>,  <44.477001, 40.380650, 36.028316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613762, 40.407829, 35.653404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283191, 0.958467, -0.033813,
		0.896051, 0.276989, 0.346943,
		0.341899, 0.067953, -0.937276,
		44.716331, 40.428215, 35.372223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829460, 40.935276, 36.117599>,  <44.477001, 40.380650, 36.028316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829460, 40.935276, 36.117599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.771706, 40.899811, 35.723385>,  <44.737053, 40.878532, 35.486855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.771706, 40.899811, 35.723385>,  <44.829460, 40.935276, 36.117599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771706, 40.899811, 35.723385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029474, 0.995921, -0.085278,
		0.989082, 0.016735, -0.146414,
		-0.144390, -0.088662, -0.985541,
		44.728390, 40.873211, 35.427723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261299, 41.396503, 35.735283>,  <44.829460, 40.935276, 36.117599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261299, 41.396503, 35.735283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978432, 41.312401, 35.465260>,  <44.808712, 41.261940, 35.303246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978432, 41.312401, 35.465260>,  <45.261299, 41.396503, 35.735283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978432, 41.312401, 35.465260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040408, 0.965219, -0.258300,
		0.705893, -0.155383, -0.691065,
		-0.707165, -0.210257, -0.675063,
		44.766281, 41.249325, 35.262741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527470, 41.572418, 35.112598>,  <45.261299, 41.396503, 35.735283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527470, 41.572418, 35.112598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.128029, 41.592823, 35.106972>,  <44.888367, 41.605064, 35.103596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.128029, 41.592823, 35.106972>,  <45.527470, 41.572418, 35.112598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128029, 41.592823, 35.106972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052267, 0.992320, -0.112116,
		0.008236, -0.112694, -0.993596,
		-0.998599, 0.051009, -0.014063,
		44.828449, 41.608124, 35.102753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433792, 42.109684, 34.598793>,  <45.527470, 41.572418, 35.112598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433792, 42.109684, 34.598793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089687, 42.072723, 34.799358>,  <44.883224, 42.050545, 34.919697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089687, 42.072723, 34.799358>,  <45.433792, 42.109684, 34.598793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089687, 42.072723, 34.799358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096167, 0.995195, 0.018410,
		-0.500709, -0.032382, -0.865010,
		-0.860258, -0.092403, 0.501417,
		44.831612, 42.045002, 34.949783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894093, 42.451923, 34.199577>,  <45.433792, 42.109684, 34.598793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894093, 42.451923, 34.199577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.790386, 42.461582, 34.585781>,  <44.728165, 42.467377, 34.817501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.790386, 42.461582, 34.585781>,  <44.894093, 42.451923, 34.199577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790386, 42.461582, 34.585781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133697, 0.989165, -0.060642,
		-0.956508, -0.144807, -0.253225,
		-0.259263, 0.024149, 0.965505,
		44.712608, 42.468826, 34.875431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444206, 43.042671, 34.219173>,  <44.894093, 42.451923, 34.199577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444206, 43.042671, 34.219173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484856, 42.970089, 34.610428>,  <44.509247, 42.926540, 34.845181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484856, 42.970089, 34.610428>,  <44.444206, 43.042671, 34.219173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484856, 42.970089, 34.610428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228680, 0.952633, 0.200488,
		-0.968183, -0.244054, 0.055313,
		0.101623, -0.181460, 0.978134,
		44.515343, 42.915649, 34.903870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952782, 43.445450, 34.573235>,  <44.444206, 43.042671, 34.219173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952782, 43.445450, 34.573235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236443, 43.359760, 34.841923>,  <44.406639, 43.308346, 35.003136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236443, 43.359760, 34.841923>,  <43.952782, 43.445450, 34.573235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236443, 43.359760, 34.841923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043279, 0.937698, 0.344745,
		-0.703724, -0.273548, 0.655700,
		0.709154, -0.214227, 0.671720,
		44.449188, 43.295490, 35.043438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807743, 43.928818, 35.063423>,  <43.952782, 43.445450, 34.573235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807743, 43.928818, 35.063423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169327, 43.812061, 35.188427>,  <44.386276, 43.742008, 35.263428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169327, 43.812061, 35.188427>,  <43.807743, 43.928818, 35.063423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169327, 43.812061, 35.188427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188947, 0.928232, 0.320443,
		-0.383614, -0.230620, 0.894234,
		0.903958, -0.291890, 0.312507,
		44.440514, 43.724495, 35.282181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.722111, 38.818264, 42.262852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444149, 38.560295, 42.135616>,  <38.277370, 38.405514, 42.059277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444149, 38.560295, 42.135616>,  <38.722111, 38.818264, 42.262852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444149, 38.560295, 42.135616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574804, -0.232373, -0.784604,
		0.432093, -0.728065, 0.532181,
		-0.694907, -0.644921, -0.318088,
		38.235676, 38.366817, 42.040192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111008, 38.050533, 42.144855>,  <38.722111, 38.818264, 42.262852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111008, 38.050533, 42.144855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768959, 38.058693, 41.937649>,  <38.563728, 38.063587, 41.813324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768959, 38.058693, 41.937649>,  <39.111008, 38.050533, 42.144855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768959, 38.058693, 41.937649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494929, -0.265273, -0.827451,
		-0.154296, -0.963958, 0.216746,
		-0.855125, 0.020399, -0.518021,
		38.512421, 38.064812, 41.782242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051804, 37.377636, 41.766964>,  <39.111008, 38.050533, 42.144855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051804, 37.377636, 41.766964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810143, 37.625401, 41.566437>,  <38.665146, 37.774059, 41.446121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810143, 37.625401, 41.566437>,  <39.051804, 37.377636, 41.766964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810143, 37.625401, 41.566437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350990, -0.357955, -0.865260,
		-0.715406, -0.698708, -0.001150,
		-0.604152, 0.619416, -0.501323,
		38.628899, 37.811226, 41.416039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867622, 36.980335, 41.248142>,  <39.051804, 37.377636, 41.766964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867622, 36.980335, 41.248142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769779, 37.350140, 41.131222>,  <38.711075, 37.572021, 41.061069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769779, 37.350140, 41.131222>,  <38.867622, 36.980335, 41.248142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769779, 37.350140, 41.131222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289139, -0.218196, -0.932089,
		-0.925509, -0.312509, -0.213942,
		-0.244605, 0.924515, -0.292301,
		38.696396, 37.627495, 41.043533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480324, 36.880348, 40.741718>,  <38.867622, 36.980335, 41.248142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480324, 36.880348, 40.741718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602859, 37.257439, 40.688927>,  <38.676380, 37.483692, 40.657253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602859, 37.257439, 40.688927>,  <38.480324, 36.880348, 40.741718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602859, 37.257439, 40.688927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126227, -0.177646, -0.975965,
		-0.943516, 0.282318, -0.173418,
		0.306339, 0.942729, -0.131975,
		38.694759, 37.540257, 40.649334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107140, 37.222843, 40.191841>,  <38.480324, 36.880348, 40.741718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107140, 37.222843, 40.191841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471733, 37.386574, 40.208111>,  <38.690487, 37.484810, 40.217873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471733, 37.386574, 40.208111>,  <38.107140, 37.222843, 40.191841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471733, 37.386574, 40.208111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124095, -0.179358, -0.975926,
		-0.392175, 0.894586, -0.214277,
		0.911482, 0.409324, 0.040673,
		38.745178, 37.509373, 40.220314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144535, 37.384464, 39.542339>,  <38.107140, 37.222843, 40.191841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144535, 37.384464, 39.542339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519291, 37.493229, 39.630245>,  <38.744144, 37.558487, 39.682991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519291, 37.493229, 39.630245>,  <38.144535, 37.384464, 39.542339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519291, 37.493229, 39.630245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270318, -0.164733, -0.948573,
		-0.221722, 0.948119, -0.227839,
		0.936893, 0.271908, 0.219768,
		38.800358, 37.574802, 39.696175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346561, 37.975792, 39.077629>,  <38.144535, 37.384464, 39.542339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346561, 37.975792, 39.077629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697887, 37.827450, 39.198315>,  <38.908684, 37.738445, 39.270725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697887, 37.827450, 39.198315>,  <38.346561, 37.975792, 39.077629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697887, 37.827450, 39.198315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329092, 0.011207, -0.944231,
		0.346790, 0.928624, 0.131888,
		0.878314, -0.370854, 0.301717,
		38.961380, 37.716194, 39.288830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714645, 38.291637, 38.584541>,  <38.346561, 37.975792, 39.077629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714645, 38.291637, 38.584541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923656, 37.991829, 38.747116>,  <39.049061, 37.811943, 38.844662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923656, 37.991829, 38.747116>,  <38.714645, 38.291637, 38.584541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923656, 37.991829, 38.747116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486998, -0.128917, -0.863837,
		0.699859, 0.649308, 0.297652,
		0.522524, -0.749519, 0.406436,
		39.080414, 37.766972, 38.869045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474174, 38.381435, 38.410946>,  <38.714645, 38.291637, 38.584541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474174, 38.381435, 38.410946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438889, 37.993774, 38.502991>,  <39.417717, 37.761177, 38.558216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438889, 37.993774, 38.502991>,  <39.474174, 38.381435, 38.410946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438889, 37.993774, 38.502991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417088, -0.245727, -0.875017,
		0.904575, 0.018786, 0.425901,
		-0.088217, -0.969157, 0.230114,
		39.412422, 37.703026, 38.572025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071789, 38.082016, 38.113148>,  <39.474174, 38.381435, 38.410946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071789, 38.082016, 38.113148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832130, 37.774979, 38.204208>,  <39.688335, 37.590755, 38.258842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832130, 37.774979, 38.204208>,  <40.071789, 38.082016, 38.113148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832130, 37.774979, 38.204208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301090, -0.479477, -0.824285,
		0.741868, -0.425325, 0.518392,
		-0.599146, -0.767594, 0.227647,
		39.652386, 37.544701, 38.272503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449039, 37.527615, 38.293766>,  <40.071789, 38.082016, 38.113148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449039, 37.527615, 38.293766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110828, 37.390102, 38.130352>,  <39.907902, 37.307594, 38.032303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110828, 37.390102, 38.130352>,  <40.449039, 37.527615, 38.293766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110828, 37.390102, 38.130352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529232, -0.438269, -0.726522,
		0.070712, -0.830504, 0.552506,
		-0.845525, -0.343777, -0.408538,
		39.857170, 37.286968, 38.007790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439335, 36.771568, 38.163933>,  <40.449039, 37.527615, 38.293766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439335, 36.771568, 38.163933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171192, 36.928596, 37.912056>,  <40.010307, 37.022816, 37.760929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171192, 36.928596, 37.912056>,  <40.439335, 36.771568, 38.163933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171192, 36.928596, 37.912056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418618, -0.500594, -0.757737,
		-0.612687, -0.771552, 0.171236,
		-0.670353, 0.392573, -0.629693,
		39.970085, 37.046368, 37.723148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146023, 36.191284, 37.789932>,  <40.439335, 36.771568, 38.163933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146023, 36.191284, 37.789932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134995, 36.520481, 37.562981>,  <40.128376, 36.717999, 37.426811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134995, 36.520481, 37.562981>,  <40.146023, 36.191284, 37.789932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134995, 36.520481, 37.562981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428995, -0.502926, -0.750353,
		-0.902886, -0.264091, -0.339194,
		-0.027572, 0.822996, -0.567378,
		40.126724, 36.767380, 37.392769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090145, 35.798702, 37.207016>,  <40.146023, 36.191284, 37.789932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090145, 35.798702, 37.207016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412167, 35.577194, 37.292080>,  <40.605381, 35.444290, 37.343121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412167, 35.577194, 37.292080>,  <40.090145, 35.798702, 37.207016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412167, 35.577194, 37.292080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590902, -0.780137, 0.205477,
		0.052120, -0.291085, -0.955276,
		0.805058, -0.553766, 0.212663,
		40.653683, 35.411064, 37.355881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835155, 35.171154, 37.032028>,  <40.090145, 35.798702, 37.207016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835155, 35.171154, 37.032028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141109, 35.102776, 37.280457>,  <40.324684, 35.061749, 37.429512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141109, 35.102776, 37.280457>,  <39.835155, 35.171154, 37.032028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141109, 35.102776, 37.280457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454677, -0.826244, 0.332551,
		0.456307, -0.536749, -0.709707,
		0.764887, -0.170942, 0.621068,
		40.370575, 35.051495, 37.466778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033680, 34.471443, 36.964787>,  <39.835155, 35.171154, 37.032028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033680, 34.471443, 36.964787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185024, 34.552700, 37.326023>,  <40.275829, 34.601452, 37.542767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185024, 34.552700, 37.326023>,  <40.033680, 34.471443, 36.964787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185024, 34.552700, 37.326023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327060, -0.883358, 0.335723,
		0.865955, -0.422390, -0.267786,
		0.378357, 0.203139, 0.903095,
		40.298531, 34.613640, 37.596951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337318, 33.853691, 37.159801>,  <40.033680, 34.471443, 36.964787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337318, 33.853691, 37.159801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250858, 34.063690, 37.489082>,  <40.198982, 34.189690, 37.686649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250858, 34.063690, 37.489082>,  <40.337318, 33.853691, 37.159801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250858, 34.063690, 37.489082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356314, -0.827394, 0.434119,
		0.909022, -0.199483, 0.365905,
		-0.216148, 0.525001, 0.823198,
		40.186012, 34.221191, 37.736042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472210, 33.352184, 37.638016>,  <40.337318, 33.853691, 37.159801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472210, 33.352184, 37.638016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262451, 33.632343, 37.831696>,  <40.136597, 33.800438, 37.947903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262451, 33.632343, 37.831696>,  <40.472210, 33.352184, 37.638016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262451, 33.632343, 37.831696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431612, -0.708838, 0.557907,
		0.733975, 0.083580, 0.674014,
		-0.524397, 0.700402, 0.484196,
		40.105133, 33.842464, 37.976955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577579, 33.304703, 38.499531>,  <40.472210, 33.352184, 37.638016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577579, 33.304703, 38.499531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227367, 33.471272, 38.401524>,  <40.017239, 33.571213, 38.342720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227367, 33.471272, 38.401524>,  <40.577579, 33.304703, 38.499531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227367, 33.471272, 38.401524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451521, -0.524692, 0.721684,
		0.171967, 0.742489, 0.647409,
		-0.875532, 0.416425, -0.245020,
		39.964706, 33.596199, 38.328018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198246, 33.171909, 39.101116>,  <40.577579, 33.304703, 38.499531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198246, 33.171909, 39.101116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925503, 33.345203, 38.865364>,  <39.761856, 33.449181, 38.723911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925503, 33.345203, 38.865364>,  <40.198246, 33.171909, 39.101116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925503, 33.345203, 38.865364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731304, -0.386054, 0.562277,
		0.016064, 0.814414, 0.580062,
		-0.681862, 0.433235, -0.589383,
		39.720943, 33.475174, 38.688549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807922, 33.579720, 39.503002>,  <40.198246, 33.171909, 39.101116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807922, 33.579720, 39.503002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567986, 33.499649, 39.193134>,  <39.424023, 33.451607, 39.007214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567986, 33.499649, 39.193134>,  <39.807922, 33.579720, 39.503002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567986, 33.499649, 39.193134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741038, -0.226137, 0.632238,
		-0.301739, 0.953306, -0.012689,
		-0.599847, -0.200174, -0.774670,
		39.388031, 33.439598, 38.960732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114605, 33.905468, 39.548389>,  <39.807922, 33.579720, 39.503002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114605, 33.905468, 39.548389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021202, 33.638367, 39.265667>,  <38.965160, 33.478104, 39.096035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021202, 33.638367, 39.265667>,  <39.114605, 33.905468, 39.548389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021202, 33.638367, 39.265667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889358, -0.147184, 0.432874,
		-0.393085, 0.729683, -0.559507,
		-0.233510, -0.667758, -0.706805,
		38.951149, 33.438038, 39.053627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382008, 34.048405, 39.373272>,  <39.114605, 33.905468, 39.548389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382008, 34.048405, 39.373272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423332, 33.662518, 39.276409>,  <38.448128, 33.430984, 39.218292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423332, 33.662518, 39.276409>,  <38.382008, 34.048405, 39.373272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423332, 33.662518, 39.276409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898029, -0.195138, 0.394290,
		-0.427634, 0.176728, -0.886508,
		0.103310, -0.964722, -0.242155,
		38.454327, 33.373100, 39.203762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735306, 33.891243, 39.063442>,  <38.382008, 34.048405, 39.373272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735306, 33.891243, 39.063442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916706, 33.558651, 39.191803>,  <38.025547, 33.359097, 39.268818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916706, 33.558651, 39.191803>,  <37.735306, 33.891243, 39.063442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916706, 33.558651, 39.191803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810762, -0.235348, 0.535982,
		-0.370137, -0.503239, -0.780865,
		0.453502, -0.831482, 0.320896,
		38.052757, 33.309208, 39.288071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174812, 33.429501, 39.143589>,  <37.735306, 33.891243, 39.063442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174812, 33.429501, 39.143589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462009, 33.235256, 39.343052>,  <37.634327, 33.118710, 39.462730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462009, 33.235256, 39.343052>,  <37.174812, 33.429501, 39.143589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462009, 33.235256, 39.343052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675984, -0.315726, 0.665855,
		-0.165907, -0.815167, -0.554956,
		0.717997, -0.485612, 0.498659,
		37.677410, 33.089573, 39.492649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967449, 32.729160, 39.358341>,  <37.174812, 33.429501, 39.143589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967449, 32.729160, 39.358341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253666, 32.828835, 39.619385>,  <37.425396, 32.888638, 39.776012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253666, 32.828835, 39.619385>,  <36.967449, 32.729160, 39.358341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253666, 32.828835, 39.619385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568751, -0.334625, 0.751364,
		0.405610, -0.908808, -0.097714,
		0.715544, 0.249186, 0.652613,
		37.468330, 32.903591, 39.815170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896496, 32.201885, 39.885075>,  <36.967449, 32.729160, 39.358341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896496, 32.201885, 39.885075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103764, 32.507626, 40.038574>,  <37.228123, 32.691071, 40.130672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103764, 32.507626, 40.038574>,  <36.896496, 32.201885, 39.885075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103764, 32.507626, 40.038574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494677, -0.098182, 0.863513,
		0.697708, -0.637277, 0.327235,
		0.518168, 0.764355, 0.383748,
		37.259212, 32.736931, 40.153698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715267, 31.693611, 39.401226>,  <36.896496, 32.201885, 39.885075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715267, 31.693611, 39.401226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412277, 31.432997, 39.417862>,  <36.230484, 31.276628, 39.427841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412277, 31.432997, 39.417862>,  <36.715267, 31.693611, 39.401226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412277, 31.432997, 39.417862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188881, 0.157728, -0.969250,
		0.624940, -0.742041, -0.242538,
		-0.757478, -0.651535, 0.041587,
		36.185036, 31.237535, 39.430340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754028, 31.251881, 38.733547>,  <36.715267, 31.693611, 39.401226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754028, 31.251881, 38.733547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374439, 31.219963, 38.855583>,  <36.146687, 31.200813, 38.928806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374439, 31.219963, 38.855583>,  <36.754028, 31.251881, 38.733547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374439, 31.219963, 38.855583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314577, 0.171656, -0.933582,
		0.022121, -0.981920, -0.187998,
		-0.948974, -0.079792, 0.305093,
		36.089748, 31.196024, 38.947109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393005, 30.682062, 38.301880>,  <36.754028, 31.251881, 38.733547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393005, 30.682062, 38.301880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111202, 30.915592, 38.463284>,  <35.942120, 31.055710, 38.560127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111202, 30.915592, 38.463284>,  <36.393005, 30.682062, 38.301880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111202, 30.915592, 38.463284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389251, 0.157544, -0.907559,
		-0.593427, -0.796447, 0.116264,
		-0.704505, 0.583826, 0.403509,
		35.899849, 31.090740, 38.584335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813282, 30.480671, 37.960342>,  <36.393005, 30.682062, 38.301880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813282, 30.480671, 37.960342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690380, 30.831499, 38.108040>,  <35.616638, 31.041996, 38.196659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690380, 30.831499, 38.108040>,  <35.813282, 30.480671, 37.960342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690380, 30.831499, 38.108040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486823, 0.188532, -0.852912,
		-0.817678, -0.441819, 0.369050,
		-0.307255, 0.877070, 0.369246,
		35.598202, 31.094620, 38.218815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084587, 30.474844, 37.858967>,  <35.813282, 30.480671, 37.960342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084587, 30.474844, 37.858967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224174, 30.843616, 37.926216>,  <35.307926, 31.064880, 37.966568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224174, 30.843616, 37.926216>,  <35.084587, 30.474844, 37.858967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224174, 30.843616, 37.926216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398380, 0.308327, -0.863845,
		-0.848243, 0.234473, 0.474875,
		0.348965, 0.921931, 0.168127,
		35.328865, 31.120195, 37.976654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602779, 30.967609, 37.702217>,  <35.084587, 30.474844, 37.858967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602779, 30.967609, 37.702217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929337, 31.190870, 37.642941>,  <35.125271, 31.324827, 37.607376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929337, 31.190870, 37.642941>,  <34.602779, 30.967609, 37.702217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929337, 31.190870, 37.642941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438097, 0.431411, -0.788641,
		-0.376253, 0.708766, 0.596728,
		0.816397, 0.558154, -0.148189,
		35.174255, 31.358316, 37.598484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292793, 31.456402, 37.475163>,  <34.602779, 30.967609, 37.702217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292793, 31.456402, 37.475163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669724, 31.579840, 37.423328>,  <34.895882, 31.653902, 37.392227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669724, 31.579840, 37.423328>,  <34.292793, 31.456402, 37.475163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669724, 31.579840, 37.423328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324594, 0.748187, -0.578667,
		-0.081618, 0.587355, 0.805203,
		0.942325, 0.308594, -0.129586,
		34.952419, 31.672419, 37.384453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287674, 32.164616, 37.623100>,  <34.292793, 31.456402, 37.475163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287674, 32.164616, 37.623100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613476, 32.078823, 37.407478>,  <34.808956, 32.027348, 37.278107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613476, 32.078823, 37.407478>,  <34.287674, 32.164616, 37.623100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613476, 32.078823, 37.407478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029693, 0.912523, -0.407946,
		0.579397, 0.348280, 0.736885,
		0.814504, -0.214482, -0.539055,
		34.857826, 32.014477, 37.245762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857231, 32.763695, 37.659771>,  <34.287674, 32.164616, 37.623100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857231, 32.763695, 37.659771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885445, 32.560299, 37.316502>,  <34.902374, 32.438263, 37.110538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885445, 32.560299, 37.316502>,  <34.857231, 32.763695, 37.659771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885445, 32.560299, 37.316502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113636, 0.850620, -0.513354,
		0.991015, 0.133729, 0.002216,
		0.070535, -0.508491, -0.858174,
		34.906605, 32.407753, 37.059048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753933, 33.215153, 37.011124>,  <34.857231, 32.763695, 37.659771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753933, 33.215153, 37.011124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728455, 32.882359, 36.790672>,  <34.713169, 32.682682, 36.658401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728455, 32.882359, 36.790672>,  <34.753933, 33.215153, 37.011124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728455, 32.882359, 36.790672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189372, 0.552291, -0.811857,
		0.979837, 0.052657, -0.192733,
		-0.063695, -0.831986, -0.551127,
		34.709347, 32.632763, 36.625336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155708, 33.362297, 36.355106>,  <34.753933, 33.215153, 37.011124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155708, 33.362297, 36.355106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906929, 33.057205, 36.284199>,  <34.757660, 32.874149, 36.241653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906929, 33.057205, 36.284199>,  <35.155708, 33.362297, 36.355106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906929, 33.057205, 36.284199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216349, 0.384949, -0.897222,
		0.752579, -0.519671, -0.404434,
		-0.621947, -0.762729, -0.177274,
		34.720345, 32.828388, 36.231018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367062, 33.081654, 35.701523>,  <35.155708, 33.362297, 36.355106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367062, 33.081654, 35.701523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986908, 32.959351, 35.724442>,  <34.758816, 32.885967, 35.738194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986908, 32.959351, 35.724442>,  <35.367062, 33.081654, 35.701523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986908, 32.959351, 35.724442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167542, 0.347920, -0.922432,
		0.262111, -0.886263, -0.381885,
		-0.950383, -0.305762, 0.057293,
		34.701794, 32.867622, 35.741631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.516724, 30.773258, 43.089611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.125538, 30.777012, 43.006184>,  <35.890827, 30.779264, 42.956127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.125538, 30.777012, 43.006184>,  <36.516724, 30.773258, 43.089611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125538, 30.777012, 43.006184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207668, -0.059236, -0.976404,
		-0.021515, -0.998200, 0.055982,
		-0.977962, 0.009382, -0.208568,
		35.832150, 30.779827, 42.943611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326683, 30.268890, 42.517471>,  <36.516724, 30.773258, 43.089611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326683, 30.268890, 42.517471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990601, 30.485594, 42.526875>,  <35.788952, 30.615616, 42.532516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990601, 30.485594, 42.526875>,  <36.326683, 30.268890, 42.517471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990601, 30.485594, 42.526875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048590, -0.032039, -0.998305,
		-0.540087, -0.839923, 0.053243,
		-0.840205, 0.541758, 0.023508,
		35.738541, 30.648121, 42.533928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710049, 29.941200, 42.242603>,  <36.326683, 30.268890, 42.517471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710049, 29.941200, 42.242603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.642216, 30.333950, 42.208748>,  <35.601517, 30.569599, 42.188435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.642216, 30.333950, 42.208748>,  <35.710049, 29.941200, 42.242603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642216, 30.333950, 42.208748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008950, -0.087410, -0.996132,
		-0.985475, -0.168171, 0.023611,
		-0.169584, 0.981875, -0.084635,
		35.591339, 30.628513, 42.183357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424316, 29.940912, 41.709007>,  <35.710049, 29.941200, 42.242603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424316, 29.940912, 41.709007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476917, 30.335787, 41.745155>,  <35.508476, 30.572712, 41.766842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476917, 30.335787, 41.745155>,  <35.424316, 29.940912, 41.709007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476917, 30.335787, 41.745155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180726, 0.113504, -0.976962,
		-0.974702, 0.112141, 0.193337,
		0.131502, 0.987188, 0.090366,
		35.516369, 30.631943, 41.772266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932713, 30.280886, 41.204563>,  <35.424316, 29.940912, 41.709007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932713, 30.280886, 41.204563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197937, 30.561546, 41.308899>,  <35.357071, 30.729942, 41.371502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.197937, 30.561546, 41.308899>,  <34.932713, 30.280886, 41.204563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197937, 30.561546, 41.308899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012472, 0.338048, -0.941046,
		-0.748462, 0.627224, 0.215395,
		0.663061, 0.701651, 0.260838,
		35.396854, 30.772041, 41.387150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710720, 30.878084, 40.893337>,  <34.932713, 30.280886, 41.204563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710720, 30.878084, 40.893337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097450, 30.954775, 40.960857>,  <35.329487, 31.000790, 41.001369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097450, 30.954775, 40.960857>,  <34.710720, 30.878084, 40.893337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097450, 30.954775, 40.960857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139781, 0.156011, -0.977815,
		-0.213807, 0.968969, 0.124036,
		0.966824, 0.191726, 0.168800,
		35.387497, 31.012293, 41.011497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865204, 31.418957, 40.523499>,  <34.710720, 30.878084, 40.893337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865204, 31.418957, 40.523499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.233963, 31.272587, 40.574425>,  <35.455219, 31.184765, 40.604980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.233963, 31.272587, 40.574425>,  <34.865204, 31.418957, 40.523499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233963, 31.272587, 40.574425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181427, 0.117371, -0.976375,
		0.342338, 0.923213, 0.174592,
		0.921894, -0.365926, 0.127315,
		35.510532, 31.162809, 40.612617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426655, 31.931126, 40.118126>,  <34.865204, 31.418957, 40.523499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426655, 31.931126, 40.118126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598957, 31.574913, 40.176643>,  <35.702339, 31.361185, 40.211754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598957, 31.574913, 40.176643>,  <35.426655, 31.931126, 40.118126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598957, 31.574913, 40.176643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335390, 0.007476, -0.942050,
		0.837832, 0.454857, 0.301897,
		0.430755, -0.890533, 0.146291,
		35.728184, 31.307753, 40.220531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217579, 31.989985, 40.083740>,  <35.426655, 31.931126, 40.118126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217579, 31.989985, 40.083740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059288, 31.634573, 39.990856>,  <35.964314, 31.421326, 39.935123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059288, 31.634573, 39.990856>,  <36.217579, 31.989985, 40.083740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059288, 31.634573, 39.990856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183301, 0.171347, -0.968009,
		0.899891, -0.425629, 0.095062,
		-0.395724, -0.888527, -0.232212,
		35.940571, 31.368015, 39.921192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853790, 31.886574, 40.524555>,  <36.217579, 31.989985, 40.083740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853790, 31.886574, 40.524555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.952732, 32.274136, 40.527096>,  <37.012096, 32.506672, 40.528618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.952732, 32.274136, 40.527096>,  <36.853790, 31.886574, 40.524555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952732, 32.274136, 40.527096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176073, 0.038506, 0.983624,
		0.952793, -0.244422, 0.180122,
		0.247355, 0.968904, 0.006347,
		37.026939, 32.564808, 40.528999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184738, 31.939289, 41.162033>,  <36.853790, 31.886574, 40.524555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184738, 31.939289, 41.162033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.104160, 32.313702, 41.046612>,  <37.055813, 32.538349, 40.977360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.104160, 32.313702, 41.046612>,  <37.184738, 31.939289, 41.162033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104160, 32.313702, 41.046612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035732, 0.301420, 0.952822,
		0.978848, 0.181630, -0.094165,
		-0.201444, 0.936032, -0.288554,
		37.043728, 32.594513, 40.960045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631001, 32.337669, 41.528221>,  <37.184738, 31.939289, 41.162033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631001, 32.337669, 41.528221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312210, 32.557899, 41.428864>,  <37.120937, 32.690037, 41.369251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312210, 32.557899, 41.428864>,  <37.631001, 32.337669, 41.528221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312210, 32.557899, 41.428864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025555, 0.441603, 0.896846,
		0.603471, 0.708417, -0.366017,
		-0.796975, 0.550574, -0.248391,
		37.073116, 32.723072, 41.354347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766472, 32.955490, 41.829437>,  <37.631001, 32.337669, 41.528221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766472, 32.955490, 41.829437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369423, 32.957825, 41.781002>,  <37.131191, 32.959225, 41.751942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369423, 32.957825, 41.781002>,  <37.766472, 32.955490, 41.829437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369423, 32.957825, 41.781002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106833, 0.430014, 0.896479,
		0.057299, 0.902803, -0.426220,
		-0.992625, 0.005833, -0.121088,
		37.071636, 32.959576, 41.744675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623085, 33.664906, 41.978352>,  <37.766472, 32.955490, 41.829437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623085, 33.664906, 41.978352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.310211, 33.421310, 42.030991>,  <37.122486, 33.275154, 42.062576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.310211, 33.421310, 42.030991>,  <37.623085, 33.664906, 41.978352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310211, 33.421310, 42.030991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168483, 0.410099, 0.896344,
		-0.599832, 0.678935, -0.423378,
		-0.782186, -0.608988, 0.131602,
		37.075554, 33.238613, 42.070473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033463, 34.092274, 42.067768>,  <37.623085, 33.664906, 41.978352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033463, 34.092274, 42.067768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947475, 33.742348, 42.241432>,  <36.895885, 33.532394, 42.345631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947475, 33.742348, 42.241432>,  <37.033463, 34.092274, 42.067768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947475, 33.742348, 42.241432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191447, 0.473672, 0.859641,
		-0.957673, 0.101675, -0.269304,
		-0.214965, -0.874813, 0.434157,
		36.882984, 33.479904, 42.371681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503651, 34.254311, 42.540462>,  <37.033463, 34.092274, 42.067768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503651, 34.254311, 42.540462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.549232, 33.873871, 42.655300>,  <36.576580, 33.645607, 42.724201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.549232, 33.873871, 42.655300>,  <36.503651, 34.254311, 42.540462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549232, 33.873871, 42.655300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346035, 0.232883, 0.908859,
		-0.931276, -0.202909, -0.302577,
		0.113950, -0.951101, 0.287092,
		36.583416, 33.588539, 42.741428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844994, 34.043667, 42.832222>,  <36.503651, 34.254311, 42.540462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844994, 34.043667, 42.832222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.119236, 33.798611, 42.989506>,  <36.283783, 33.651577, 43.083878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.119236, 33.798611, 42.989506>,  <35.844994, 34.043667, 42.832222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119236, 33.798611, 42.989506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465040, 0.046979, 0.884042,
		-0.560070, -0.788967, -0.252692,
		0.685609, -0.612637, 0.393213,
		36.324917, 33.614819, 43.107471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482704, 33.575138, 43.267132>,  <35.844994, 34.043667, 42.832222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482704, 33.575138, 43.267132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.858204, 33.591396, 43.404015>,  <36.083504, 33.601151, 43.486145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.858204, 33.591396, 43.404015>,  <35.482704, 33.575138, 43.267132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858204, 33.591396, 43.404015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342483, -0.000214, 0.939524,
		0.038263, -0.999173, 0.013720,
		0.938745, 0.040648, 0.342208,
		36.139828, 33.603592, 43.506676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408237, 33.127052, 43.835361>,  <35.482704, 33.575138, 43.267132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408237, 33.127052, 43.835361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.750256, 33.329090, 43.882301>,  <35.955467, 33.450314, 43.910465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.750256, 33.329090, 43.882301>,  <35.408237, 33.127052, 43.835361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750256, 33.329090, 43.882301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128658, -0.012586, 0.991609,
		0.502332, -0.862973, 0.054223,
		0.855050, 0.505093, 0.117350,
		36.006771, 33.480618, 43.917507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901787, 32.761753, 44.374962>,  <35.408237, 33.127052, 43.835361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901787, 32.761753, 44.374962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009258, 33.146259, 44.350349>,  <36.073742, 33.376961, 44.335583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009258, 33.146259, 44.350349>,  <35.901787, 32.761753, 44.374962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009258, 33.146259, 44.350349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145818, 0.103737, 0.983858,
		0.952130, -0.255365, 0.168041,
		0.268675, 0.961264, -0.061534,
		36.089859, 33.434639, 44.331890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478161, 32.934578, 44.945042>,  <35.901787, 32.761753, 44.374962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478161, 32.934578, 44.945042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340096, 33.291027, 44.827217>,  <36.257256, 33.504898, 44.756523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340096, 33.291027, 44.827217>,  <36.478161, 32.934578, 44.945042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340096, 33.291027, 44.827217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042525, 0.298674, 0.953407,
		0.937580, 0.341605, -0.065195,
		-0.345161, 0.891123, -0.294558,
		36.236546, 33.558365, 44.738850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951168, 33.375908, 45.281033>,  <36.478161, 32.934578, 44.945042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951168, 33.375908, 45.281033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641754, 33.606613, 45.175976>,  <36.456104, 33.745037, 45.112942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641754, 33.606613, 45.175976>,  <36.951168, 33.375908, 45.281033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641754, 33.606613, 45.175976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072736, 0.330891, 0.940862,
		0.629564, 0.746895, -0.214004,
		-0.773537, 0.576766, -0.262643,
		36.409695, 33.779644, 45.097183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022957, 33.987984, 45.587185>,  <36.951168, 33.375908, 45.281033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022957, 33.987984, 45.587185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626877, 33.996090, 45.531902>,  <36.389229, 34.000954, 45.498734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626877, 33.996090, 45.531902>,  <37.022957, 33.987984, 45.587185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626877, 33.996090, 45.531902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103143, 0.561136, 0.821272,
		0.094196, 0.827475, -0.553545,
		-0.990196, 0.020267, -0.138205,
		36.329819, 34.002171, 45.490440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.473003, 32.975487, 45.098404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829342, 33.043659, 45.266857>,  <33.043144, 33.084564, 45.367928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829342, 33.043659, 45.266857>,  <32.473003, 32.975487, 45.098404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829342, 33.043659, 45.266857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339644, 0.365799, -0.866506,
		-0.301732, 0.914955, 0.267983,
		0.890842, 0.170434, 0.421133,
		33.096596, 33.094788, 45.393196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668285, 33.657284, 44.980503>,  <32.473003, 32.975487, 45.098404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668285, 33.657284, 44.980503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.024761, 33.488384, 45.046825>,  <33.238647, 33.387043, 45.086620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.024761, 33.488384, 45.046825>,  <32.668285, 33.657284, 44.980503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024761, 33.488384, 45.046825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318741, 0.322783, -0.891187,
		0.322783, 0.847064, 0.422249,
		0.891187, -0.422249, 0.165805,
		33.292118, 33.361710, 45.096565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311138, 34.192387, 44.950043>,  <32.668285, 33.657284, 44.980503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311138, 34.192387, 44.950043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.400681, 33.813744, 44.857243>,  <33.454407, 33.586559, 44.801563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.400681, 33.813744, 44.857243>,  <33.311138, 34.192387, 44.950043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400681, 33.813744, 44.857243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376598, 0.303565, -0.875227,
		0.898923, 0.108556, 0.424445,
		0.223858, -0.946606, -0.232000,
		33.467838, 33.529762, 44.787643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911877, 34.309013, 44.495491>,  <33.311138, 34.192387, 44.950043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911877, 34.309013, 44.495491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820713, 33.926605, 44.421638>,  <33.766014, 33.697163, 44.377327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820713, 33.926605, 44.421638>,  <33.911877, 34.309013, 44.495491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820713, 33.926605, 44.421638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193054, 0.141484, -0.970934,
		0.954351, -0.256932, 0.152317,
		-0.227914, -0.956017, -0.184627,
		33.752338, 33.639801, 44.366249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508648, 34.038376, 44.097530>,  <33.911877, 34.309013, 44.495491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508648, 34.038376, 44.097530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179100, 33.819530, 44.038330>,  <33.981369, 33.688225, 44.002811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179100, 33.819530, 44.038330>,  <34.508648, 34.038376, 44.097530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179100, 33.819530, 44.038330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159796, 0.026308, -0.986800,
		0.543781, -0.836647, 0.065751,
		-0.823873, -0.547110, -0.147999,
		33.931938, 33.655399, 43.993931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616993, 33.649349, 43.452335>,  <34.508648, 34.038376, 44.097530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616993, 33.649349, 43.452335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.219440, 33.617481, 43.482933>,  <33.980907, 33.598362, 43.501293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.219440, 33.617481, 43.482933>,  <34.616993, 33.649349, 43.452335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219440, 33.617481, 43.482933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085195, 0.112209, -0.990026,
		0.070285, -0.990486, -0.118310,
		-0.993882, -0.079664, 0.076498,
		33.921276, 33.593578, 43.505882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441326, 33.303257, 42.871330>,  <34.616993, 33.649349, 43.452335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441326, 33.303257, 42.871330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109955, 33.480213, 43.008732>,  <33.911133, 33.586388, 43.091175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109955, 33.480213, 43.008732>,  <34.441326, 33.303257, 42.871330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109955, 33.480213, 43.008732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282310, 0.199886, -0.938268,
		-0.483747, -0.874261, -0.040699,
		-0.828426, 0.442395, 0.343507,
		33.861427, 33.612930, 43.111782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946285, 32.944923, 42.522675>,  <34.441326, 33.303257, 42.871330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946285, 32.944923, 42.522675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821968, 33.314400, 42.612293>,  <33.747375, 33.536087, 42.666065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821968, 33.314400, 42.612293>,  <33.946285, 32.944923, 42.522675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821968, 33.314400, 42.612293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156760, 0.182681, -0.970595,
		-0.937460, -0.336780, 0.088021,
		-0.310797, 0.923692, 0.224050,
		33.728729, 33.591507, 42.679508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318073, 32.986706, 42.045544>,  <33.946285, 32.944923, 42.522675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318073, 32.986706, 42.045544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408077, 33.357929, 42.164257>,  <33.462082, 33.580662, 42.235485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408077, 33.357929, 42.164257>,  <33.318073, 32.986706, 42.045544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408077, 33.357929, 42.164257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315336, 0.357566, -0.879039,
		-0.921918, 0.104208, 0.373107,
		0.225013, 0.928056, 0.296786,
		33.475582, 33.636345, 42.253292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829567, 33.398788, 41.660122>,  <33.318073, 32.986706, 42.045544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829567, 33.398788, 41.660122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077934, 33.680908, 41.796944>,  <33.226955, 33.850182, 41.879036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077934, 33.680908, 41.796944>,  <32.829567, 33.398788, 41.660122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077934, 33.680908, 41.796944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202512, 0.565890, -0.799223,
		-0.757261, 0.426985, 0.494206,
		0.620923, 0.705303, 0.342056,
		33.264210, 33.892498, 41.899559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496639, 34.039047, 41.598152>,  <32.829567, 33.398788, 41.660122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496639, 34.039047, 41.598152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883434, 34.138920, 41.577744>,  <33.115509, 34.198845, 41.565498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883434, 34.138920, 41.577744>,  <32.496639, 34.039047, 41.598152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883434, 34.138920, 41.577744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170949, 0.487056, -0.856477,
		-0.188998, 0.836920, 0.513658,
		0.966983, 0.249682, -0.051018,
		33.173531, 34.213825, 41.562439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501919, 34.774696, 41.275146>,  <32.496639, 34.039047, 41.598152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501919, 34.774696, 41.275146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868465, 34.623940, 41.221146>,  <33.088394, 34.533485, 41.188744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868465, 34.623940, 41.221146>,  <32.501919, 34.774696, 41.275146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868465, 34.623940, 41.221146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043915, 0.429814, -0.901849,
		0.397929, 0.820494, 0.410418,
		0.916365, -0.376895, -0.135004,
		33.143375, 34.510872, 41.180645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048931, 35.347015, 40.963406>,  <32.501919, 34.774696, 41.275146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048931, 35.347015, 40.963406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195583, 34.981159, 40.895267>,  <33.283573, 34.761646, 40.854385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195583, 34.981159, 40.895267>,  <33.048931, 35.347015, 40.963406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195583, 34.981159, 40.895267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080396, 0.213551, -0.973618,
		0.926888, 0.343261, 0.151827,
		0.366628, -0.914641, -0.170341,
		33.305573, 34.706768, 40.844166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457493, 35.533550, 40.406834>,  <33.048931, 35.347015, 40.963406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457493, 35.533550, 40.406834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.442432, 35.134525, 40.383358>,  <33.433395, 34.895111, 40.369274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.442432, 35.134525, 40.383358>,  <33.457493, 35.533550, 40.406834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442432, 35.134525, 40.383358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199543, 0.065050, -0.977727,
		0.979165, -0.025106, -0.201506,
		-0.037655, -0.997566, -0.058685,
		33.431137, 34.835255, 40.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133522, 35.688599, 40.760731>,  <33.457493, 35.533550, 40.406834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133522, 35.688599, 40.760731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284275, 36.057476, 40.795391>,  <34.374729, 36.278805, 40.816185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284275, 36.057476, 40.795391>,  <34.133522, 35.688599, 40.760731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284275, 36.057476, 40.795391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215328, -0.003754, 0.976535,
		0.900884, -0.386699, 0.197160,
		0.376885, 0.922198, 0.086649,
		34.397339, 36.334137, 40.821384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537422, 35.629646, 41.416599>,  <34.133522, 35.688599, 40.760731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537422, 35.629646, 41.416599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.544979, 36.021912, 41.338684>,  <34.549515, 36.257271, 41.291935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.544979, 36.021912, 41.338684>,  <34.537422, 35.629646, 41.416599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544979, 36.021912, 41.338684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055379, 0.195553, 0.979128,
		0.998287, -0.007712, 0.058003,
		0.018894, 0.980663, -0.194791,
		34.550648, 36.316109, 41.280247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978195, 35.926205, 41.913033>,  <34.537422, 35.629646, 41.416599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978195, 35.926205, 41.913033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737686, 36.221554, 41.790859>,  <34.593384, 36.398762, 41.717556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737686, 36.221554, 41.790859>,  <34.978195, 35.926205, 41.913033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737686, 36.221554, 41.790859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179596, 0.247583, 0.952076,
		0.778603, 0.627307, -0.016255,
		-0.601268, 0.738369, -0.305431,
		34.557304, 36.443066, 41.699230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222839, 36.518402, 42.247448>,  <34.978195, 35.926205, 41.913033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222839, 36.518402, 42.247448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838818, 36.569016, 42.147614>,  <34.608406, 36.599384, 42.087711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838818, 36.569016, 42.147614>,  <35.222839, 36.518402, 42.247448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838818, 36.569016, 42.147614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159862, 0.484031, 0.860324,
		0.229671, 0.865853, -0.444465,
		-0.960050, 0.126538, -0.249585,
		34.550804, 36.606976, 42.072739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130394, 37.165600, 42.440033>,  <35.222839, 36.518402, 42.247448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130394, 37.165600, 42.440033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.766384, 37.000088, 42.429962>,  <34.547977, 36.900780, 42.423920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.766384, 37.000088, 42.429962>,  <35.130394, 37.165600, 42.440033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766384, 37.000088, 42.429962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139877, 0.249317, 0.958267,
		-0.390235, 0.875572, -0.284764,
		-0.910028, -0.413782, -0.025180,
		34.493374, 36.875954, 42.422409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698357, 37.663906, 42.663879>,  <35.130394, 37.165600, 42.440033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698357, 37.663906, 42.663879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487274, 37.324677, 42.683052>,  <34.360622, 37.121140, 42.694553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487274, 37.324677, 42.683052>,  <34.698357, 37.663906, 42.663879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487274, 37.324677, 42.683052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251744, 0.210036, 0.944727,
		-0.811263, 0.486476, -0.324335,
		-0.527709, -0.848072, 0.047928,
		34.328960, 37.070255, 42.697430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024918, 37.869717, 42.962456>,  <34.698357, 37.663906, 42.663879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024918, 37.869717, 42.962456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.031631, 37.473480, 43.016788>,  <34.035660, 37.235737, 43.049389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.031631, 37.473480, 43.016788>,  <34.024918, 37.869717, 42.962456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031631, 37.473480, 43.016788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467603, 0.112299, 0.876776,
		-0.883779, -0.078232, -0.461317,
		0.016787, -0.990590, 0.135829,
		34.036667, 37.176304, 43.057537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334789, 37.638657, 43.077419>,  <34.024918, 37.869717, 42.962456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334789, 37.638657, 43.077419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603542, 37.402828, 43.256741>,  <33.764793, 37.261330, 43.364334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603542, 37.402828, 43.256741>,  <33.334789, 37.638657, 43.077419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603542, 37.402828, 43.256741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436220, 0.174174, 0.882823,
		-0.598571, -0.788713, -0.140158,
		0.671882, -0.589572, 0.448308,
		33.805107, 37.225956, 43.391232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998737, 37.212746, 43.518551>,  <33.334789, 37.638657, 43.077419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998737, 37.212746, 43.518551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377899, 37.193172, 43.644466>,  <33.605396, 37.181427, 43.720016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377899, 37.193172, 43.644466>,  <32.998737, 37.212746, 43.518551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377899, 37.193172, 43.644466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310682, 0.076480, 0.947432,
		-0.070438, -0.995870, 0.057292,
		0.947900, -0.048935, 0.314786,
		33.662270, 37.178493, 43.738903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979279, 36.788090, 44.028961>,  <32.998737, 37.212746, 43.518551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979279, 36.788090, 44.028961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342018, 36.939190, 44.103722>,  <33.559662, 37.029850, 44.148579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342018, 36.939190, 44.103722>,  <32.979279, 36.788090, 44.028961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342018, 36.939190, 44.103722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154118, -0.115519, 0.981276,
		0.392273, -0.918671, -0.046539,
		0.906846, 0.377755, 0.186899,
		33.614071, 37.052517, 44.159790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304157, 36.278587, 44.358036>,  <32.979279, 36.788090, 44.028961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304157, 36.278587, 44.358036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.465137, 36.630928, 44.457748>,  <33.561726, 36.842331, 44.517574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.465137, 36.630928, 44.457748>,  <33.304157, 36.278587, 44.358036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465137, 36.630928, 44.457748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076876, -0.238827, 0.968014,
		0.912208, -0.408742, -0.028400,
		0.402451, 0.880847, 0.249283,
		33.585873, 36.895184, 44.532532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788914, 36.144112, 44.800888>,  <33.304157, 36.278587, 44.358036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788914, 36.144112, 44.800888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751274, 36.538593, 44.855370>,  <33.728691, 36.775280, 44.888058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751274, 36.538593, 44.855370>,  <33.788914, 36.144112, 44.800888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751274, 36.538593, 44.855370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092919, -0.144910, 0.985072,
		0.991217, 0.080042, 0.105273,
		-0.094102, 0.986202, 0.136200,
		33.723042, 36.834454, 44.896229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270191, 36.406479, 45.380043>,  <33.788914, 36.144112, 44.800888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270191, 36.406479, 45.380043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.984509, 36.685059, 45.352142>,  <33.813099, 36.852207, 45.335403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.984509, 36.685059, 45.352142>,  <34.270191, 36.406479, 45.380043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984509, 36.685059, 45.352142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121650, -0.025381, 0.992248,
		0.689282, 0.717155, 0.102851,
		-0.714207, 0.696451, -0.069747,
		33.770245, 36.893993, 45.331219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334232, 36.834557, 46.028580>,  <34.270191, 36.406479, 45.380043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334232, 36.834557, 46.028580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959972, 36.857502, 45.889282>,  <33.735416, 36.871269, 45.805702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959972, 36.857502, 45.889282>,  <34.334232, 36.834557, 46.028580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959972, 36.857502, 45.889282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350312, -0.271080, 0.896547,
		-0.042973, 0.960846, 0.273731,
		-0.935647, 0.057363, -0.348245,
		33.679279, 36.874710, 45.784809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585964, 37.475502, 46.377453>,  <34.334232, 36.834557, 46.028580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585964, 37.475502, 46.377453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927734, 37.549175, 46.571789>,  <35.132797, 37.593380, 46.688389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927734, 37.549175, 46.571789>,  <34.585964, 37.475502, 46.377453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927734, 37.549175, 46.571789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402838, 0.355734, -0.843312,
		-0.328149, 0.916260, 0.229753,
		0.854424, 0.184179, 0.485837,
		35.184063, 37.604427, 46.717541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912464, 38.085373, 46.082813>,  <34.585964, 37.475502, 46.377453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912464, 38.085373, 46.082813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219730, 37.907825, 46.267384>,  <35.404091, 37.801296, 46.378124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219730, 37.907825, 46.267384>,  <34.912464, 38.085373, 46.082813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219730, 37.907825, 46.267384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626018, 0.369557, -0.686680,
		0.134272, 0.816340, 0.561747,
		0.768161, -0.443866, 0.461423,
		35.450180, 37.774666, 46.405811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397472, 38.543411, 46.159451>,  <34.912464, 38.085373, 46.082813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397472, 38.543411, 46.159451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596657, 38.196636, 46.150928>,  <35.716167, 37.988571, 46.145817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596657, 38.196636, 46.150928>,  <35.397472, 38.543411, 46.159451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596657, 38.196636, 46.150928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537719, 0.327949, -0.776728,
		0.680361, 0.375327, 0.629475,
		0.497963, -0.866937, -0.021303,
		35.746044, 37.936554, 46.144539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178833, 38.658848, 46.186230>,  <35.397472, 38.543411, 46.159451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178833, 38.658848, 46.186230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.124973, 38.289211, 46.043159>,  <36.092659, 38.067429, 45.957317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.124973, 38.289211, 46.043159>,  <36.178833, 38.658848, 46.186230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124973, 38.289211, 46.043159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567342, 0.224045, -0.792418,
		0.812399, -0.309622, 0.494107,
		-0.134648, -0.924088, -0.357675,
		36.084579, 38.011986, 45.935856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855427, 38.475071, 46.015835>,  <36.178833, 38.658848, 46.186230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855427, 38.475071, 46.015835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615768, 38.225075, 45.815670>,  <36.471973, 38.075077, 45.695572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615768, 38.225075, 45.815670>,  <36.855427, 38.475071, 46.015835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615768, 38.225075, 45.815670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481980, 0.217519, -0.848752,
		0.639311, -0.749715, 0.170907,
		-0.599147, -0.624991, -0.500410,
		36.436024, 38.037579, 45.665546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228634, 38.104248, 45.554287>,  <36.855427, 38.475071, 46.015835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228634, 38.104248, 45.554287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.874012, 38.066483, 45.373135>,  <36.661240, 38.043823, 45.264442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.874012, 38.066483, 45.373135>,  <37.228634, 38.104248, 45.554287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874012, 38.066483, 45.373135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449460, 0.056012, -0.891543,
		0.109544, -0.993956, -0.007221,
		-0.886558, -0.094418, -0.452879,
		36.608044, 38.038158, 45.237270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282360, 37.516125, 45.098633>,  <37.228634, 38.104248, 45.554287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282360, 37.516125, 45.098633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986862, 37.746872, 44.959217>,  <36.809563, 37.885323, 44.875568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986862, 37.746872, 44.959217>,  <37.282360, 37.516125, 45.098633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986862, 37.746872, 44.959217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350305, -0.113155, -0.929775,
		-0.575799, -0.808960, -0.118489,
		-0.738743, 0.576871, -0.348537,
		36.765240, 37.919933, 44.854656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141514, 37.170807, 44.555355>,  <37.282360, 37.516125, 45.098633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141514, 37.170807, 44.555355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.941513, 37.507313, 44.473114>,  <36.821514, 37.709217, 44.423771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.941513, 37.507313, 44.473114>,  <37.141514, 37.170807, 44.555355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941513, 37.507313, 44.473114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287979, -0.062385, -0.955602,
		-0.816742, -0.537010, -0.211075,
		-0.500000, 0.841266, -0.205600,
		36.791512, 37.759693, 44.411434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767174, 37.061668, 43.908073>,  <37.141514, 37.170807, 44.555355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767174, 37.061668, 43.908073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811127, 37.454720, 43.967896>,  <36.837498, 37.690552, 44.003788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811127, 37.454720, 43.967896>,  <36.767174, 37.061668, 43.908073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811127, 37.454720, 43.967896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459319, 0.083240, -0.884362,
		-0.881449, 0.165870, -0.442194,
		0.109881, 0.982628, 0.149559,
		36.844090, 37.749508, 44.012764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489971, 37.498066, 43.308338>,  <36.767174, 37.061668, 43.908073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489971, 37.498066, 43.308338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753403, 37.729324, 43.501011>,  <36.911461, 37.868080, 43.616615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753403, 37.729324, 43.501011>,  <36.489971, 37.498066, 43.308338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753403, 37.729324, 43.501011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432704, 0.232744, -0.870975,
		-0.615658, 0.782035, -0.096885,
		0.658584, 0.578146, 0.481680,
		36.950977, 37.902767, 43.645515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486828, 38.164982, 42.913319>,  <36.489971, 37.498066, 43.308338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486828, 38.164982, 42.913319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832787, 38.172657, 43.113953>,  <37.040363, 38.177261, 43.234333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832787, 38.172657, 43.113953>,  <36.486828, 38.164982, 42.913319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832787, 38.172657, 43.113953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496167, 0.118575, -0.860092,
		-0.075978, 0.992760, 0.093035,
		0.864896, 0.019187, 0.501584,
		37.092255, 38.178413, 43.264427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819878, 38.749111, 42.721622>,  <36.486828, 38.164982, 42.913319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819878, 38.749111, 42.721622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.104248, 38.493950, 42.840050>,  <37.274872, 38.340851, 42.911106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.104248, 38.493950, 42.840050>,  <36.819878, 38.749111, 42.721622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104248, 38.493950, 42.840050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576569, 0.287638, -0.764744,
		0.402674, 0.714382, 0.572287,
		0.710931, -0.637905, 0.296066,
		37.317528, 38.302578, 42.928871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426231, 39.147564, 42.622818>,  <36.819878, 38.749111, 42.721622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426231, 39.147564, 42.622818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534885, 38.762623, 42.626537>,  <37.600079, 38.531658, 42.628769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534885, 38.762623, 42.626537>,  <37.426231, 39.147564, 42.622818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534885, 38.762623, 42.626537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562002, 0.150771, -0.813279,
		0.781262, 0.226138, 0.581800,
		0.271631, -0.962356, 0.009298,
		37.616375, 38.473915, 42.629326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060345, 39.150997, 42.376068>,  <37.426231, 39.147564, 42.622818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060345, 39.150997, 42.376068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001076, 38.755829, 42.357906>,  <37.965515, 38.518726, 42.347012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001076, 38.755829, 42.357906>,  <38.060345, 39.150997, 42.376068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001076, 38.755829, 42.357906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689124, -0.070209, -0.721235,
		0.709334, -0.138151, 0.691201,
		-0.148168, -0.987920, -0.045401,
		37.956627, 38.459454, 42.344288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.564713, 30.766813, 27.791523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.690212, 30.525702, 28.084976>,  <28.765512, 30.381035, 28.261047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.690212, 30.525702, 28.084976>,  <28.564713, 30.766813, 27.791523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690212, 30.525702, 28.084976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729518, 0.341520, 0.592594,
		-0.607755, -0.721123, -0.332589,
		0.313747, -0.602782, 0.733633,
		28.784336, 30.344868, 28.305065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918335, 30.622190, 28.029541>,  <28.564713, 30.766813, 27.791523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918335, 30.622190, 28.029541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.202795, 30.547920, 28.300772>,  <28.373470, 30.503357, 28.463511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.202795, 30.547920, 28.300772>,  <27.918335, 30.622190, 28.029541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202795, 30.547920, 28.300772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622488, 0.281986, 0.730064,
		-0.326765, -0.941280, 0.084952,
		0.711150, -0.185678, 0.678078,
		28.416140, 30.492216, 28.504194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513256, 30.415464, 28.631027>,  <27.918335, 30.622190, 28.029541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513256, 30.415464, 28.631027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871943, 30.519037, 28.774612>,  <28.087154, 30.581181, 28.860764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871943, 30.519037, 28.774612>,  <27.513256, 30.415464, 28.631027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871943, 30.519037, 28.774612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433292, 0.348062, 0.831331,
		0.090316, -0.901004, 0.424306,
		0.896717, 0.258930, 0.358962,
		28.140957, 30.596716, 28.882301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458572, 30.265150, 29.322571>,  <27.513256, 30.415464, 28.631027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458572, 30.265150, 29.322571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772253, 30.513348, 29.324232>,  <27.960461, 30.662266, 29.325230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.772253, 30.513348, 29.324232>,  <27.458572, 30.265150, 29.322571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772253, 30.513348, 29.324232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294693, 0.366534, 0.882502,
		0.546065, -0.693282, 0.470291,
		0.784200, 0.620494, 0.004154,
		28.007513, 30.699495, 29.325478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795427, 30.351004, 30.016817>,  <27.458572, 30.265150, 29.322571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795427, 30.351004, 30.016817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872633, 30.688410, 29.816328>,  <27.918957, 30.890854, 29.696035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872633, 30.688410, 29.816328>,  <27.795427, 30.351004, 30.016817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872633, 30.688410, 29.816328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177769, 0.532437, 0.827592,
		0.964958, -0.070636, 0.252720,
		0.193015, 0.843517, -0.501222,
		27.930538, 30.941465, 29.665962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062130, 30.714893, 30.577005>,  <27.795427, 30.351004, 30.016817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062130, 30.714893, 30.577005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966276, 30.955200, 30.271940>,  <27.908764, 31.099384, 30.088902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966276, 30.955200, 30.271940>,  <28.062130, 30.714893, 30.577005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966276, 30.955200, 30.271940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137685, 0.756584, 0.639237,
		0.961051, 0.258189, -0.098586,
		-0.239633, 0.600765, -0.762664,
		27.894386, 31.135429, 30.043140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461561, 31.351276, 30.721924>,  <28.062130, 30.714893, 30.577005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461561, 31.351276, 30.721924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176250, 31.466831, 30.466492>,  <28.005064, 31.536165, 30.313232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176250, 31.466831, 30.466492>,  <28.461561, 31.351276, 30.721924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176250, 31.466831, 30.466492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188874, 0.798173, 0.572055,
		0.674956, 0.528643, -0.514753,
		-0.713275, 0.288888, -0.638578,
		27.962269, 31.553497, 30.274918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552095, 32.002670, 30.660889>,  <28.461561, 31.351276, 30.721924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552095, 32.002670, 30.660889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168007, 31.969521, 30.554226>,  <27.937553, 31.949631, 30.490229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168007, 31.969521, 30.554226>,  <28.552095, 32.002670, 30.660889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168007, 31.969521, 30.554226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234738, 0.756755, 0.610099,
		0.151233, 0.648425, -0.746106,
		-0.960222, -0.082872, -0.266656,
		27.879940, 31.944658, 30.474230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366823, 32.605511, 30.704319>,  <28.552095, 32.002670, 30.660889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366823, 32.605511, 30.704319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009394, 32.426403, 30.691490>,  <27.794935, 32.318939, 30.683794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009394, 32.426403, 30.691490>,  <28.366823, 32.605511, 30.704319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009394, 32.426403, 30.691490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315579, 0.575752, 0.754268,
		-0.319273, 0.684115, -0.655783,
		-0.893574, -0.447768, -0.032070,
		27.741322, 32.292072, 30.681870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768824, 33.127716, 30.688450>,  <28.366823, 32.605511, 30.704319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768824, 33.127716, 30.688450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580153, 32.798389, 30.814726>,  <27.466949, 32.600792, 30.890491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580153, 32.798389, 30.814726>,  <27.768824, 33.127716, 30.688450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580153, 32.798389, 30.814726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484988, 0.541236, 0.686913,
		-0.736413, 0.170898, -0.654591,
		-0.471680, -0.823321, 0.315690,
		27.438648, 32.551392, 30.909433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083658, 33.239567, 30.759727>,  <27.768824, 33.127716, 30.688450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083658, 33.239567, 30.759727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112953, 32.914326, 30.990725>,  <27.130529, 32.719181, 31.129324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112953, 32.914326, 30.990725>,  <27.083658, 33.239567, 30.759727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112953, 32.914326, 30.990725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486483, 0.476361, 0.732403,
		-0.870615, -0.334579, -0.360674,
		0.073236, -0.813103, 0.577494,
		27.134924, 32.670395, 31.163973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547873, 33.333973, 31.218344>,  <27.083658, 33.239567, 30.759727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547873, 33.333973, 31.218344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.714773, 33.027977, 31.414583>,  <26.814915, 32.844379, 31.532328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.714773, 33.027977, 31.414583>,  <26.547873, 33.333973, 31.218344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714773, 33.027977, 31.414583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378662, 0.344398, 0.859072,
		-0.826144, -0.544222, -0.145972,
		0.417254, -0.764991, 0.490599,
		26.839949, 32.798481, 31.561764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046057, 32.977238, 31.653376>,  <26.547873, 33.333973, 31.218344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046057, 32.977238, 31.653376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401913, 32.899750, 31.818792>,  <26.615425, 32.853256, 31.918041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401913, 32.899750, 31.818792>,  <26.046057, 32.977238, 31.653376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401913, 32.899750, 31.818792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313916, 0.398260, 0.861885,
		-0.331664, -0.896582, 0.293494,
		0.889638, -0.193723, 0.413540,
		26.668804, 32.841633, 31.942854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905081, 32.755711, 32.301838>,  <26.046057, 32.977238, 31.653376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905081, 32.755711, 32.301838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.282211, 32.886280, 32.328758>,  <26.508490, 32.964622, 32.344910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.282211, 32.886280, 32.328758>,  <25.905081, 32.755711, 32.301838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282211, 32.886280, 32.328758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191778, 0.366183, 0.910566,
		0.272580, -0.871413, 0.407847,
		0.942826, 0.326418, 0.067304,
		26.565060, 32.984207, 32.348949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139395, 32.649910, 33.024918>,  <25.905081, 32.755711, 32.301838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139395, 32.649910, 33.024918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.398396, 32.921375, 32.886257>,  <26.553797, 33.084255, 32.803062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.398396, 32.921375, 32.886257>,  <26.139395, 32.649910, 33.024918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398396, 32.921375, 32.886257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174450, 0.574802, 0.799481,
		0.741828, -0.457192, 0.490577,
		0.647501, 0.678659, -0.346647,
		26.592646, 33.124973, 32.782265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563225, 32.745743, 33.614704>,  <26.139395, 32.649910, 33.024918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563225, 32.745743, 33.614704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.650145, 33.054295, 33.375450>,  <26.702295, 33.239426, 33.231899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.650145, 33.054295, 33.375450>,  <26.563225, 32.745743, 33.614704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650145, 33.054295, 33.375450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249354, 0.636309, 0.730023,
		0.943718, -0.009487, 0.330614,
		0.217298, 0.771376, -0.598131,
		26.715334, 33.285706, 33.196011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143099, 33.201424, 33.917793>,  <26.563225, 32.745743, 33.614704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143099, 33.201424, 33.917793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.871168, 33.388580, 33.691906>,  <26.708010, 33.500874, 33.556374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.871168, 33.388580, 33.691906>,  <27.143099, 33.201424, 33.917793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871168, 33.388580, 33.691906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336154, 0.485569, 0.806984,
		0.651795, 0.738442, -0.172818,
		-0.679826, 0.467895, -0.564722,
		26.667221, 33.528950, 33.522488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884884, 33.578602, 34.405296>,  <27.143099, 33.201424, 33.917793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884884, 33.578602, 34.405296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.655987, 33.684780, 34.094921>,  <26.518648, 33.748486, 33.908695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.655987, 33.684780, 34.094921>,  <26.884884, 33.578602, 34.405296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655987, 33.684780, 34.094921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515793, 0.619094, 0.592182,
		0.637569, 0.739095, -0.217358,
		-0.572244, 0.265445, -0.775935,
		26.484314, 33.764412, 33.862141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545729, 33.616619, 34.732170>,  <26.884884, 33.578602, 34.405296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545729, 33.616619, 34.732170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933746, 33.711716, 34.712196>,  <28.166557, 33.768772, 34.700214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933746, 33.711716, 34.712196>,  <27.545729, 33.616619, 34.732170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933746, 33.711716, 34.712196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106833, -0.602093, -0.791246,
		-0.218171, 0.762211, -0.609455,
		0.970045, 0.237737, -0.049930,
		28.224760, 33.783035, 34.697216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820992, 33.543549, 33.981083>,  <27.545729, 33.616619, 34.732170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820992, 33.543549, 33.981083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157751, 33.549870, 34.196846>,  <28.359806, 33.553661, 34.326302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157751, 33.549870, 34.196846>,  <27.820992, 33.543549, 33.981083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157751, 33.549870, 34.196846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483146, -0.467305, -0.740402,
		0.240369, 0.883955, -0.401056,
		0.841898, 0.015799, 0.539406,
		28.410320, 33.554607, 34.358669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413664, 33.628998, 33.515526>,  <27.820992, 33.543549, 33.981083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413664, 33.628998, 33.515526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572563, 33.485031, 33.853199>,  <28.667904, 33.398651, 34.055805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572563, 33.485031, 33.853199>,  <28.413664, 33.628998, 33.515526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572563, 33.485031, 33.853199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543781, -0.648688, -0.532453,
		0.739253, 0.670570, -0.061975,
		0.397249, -0.359917, 0.844188,
		28.691738, 33.377056, 34.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210035, 33.495823, 33.374565>,  <28.413664, 33.628998, 33.515526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210035, 33.495823, 33.374565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.077101, 33.255234, 33.665157>,  <28.997339, 33.110878, 33.839512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.077101, 33.255234, 33.665157>,  <29.210035, 33.495823, 33.374565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077101, 33.255234, 33.665157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493571, -0.767285, -0.409465,
		0.803704, 0.222491, 0.551868,
		-0.332337, -0.601475, 0.726485,
		28.977400, 33.074791, 33.883102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790560, 33.047440, 33.531696>,  <29.210035, 33.495823, 33.374565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790560, 33.047440, 33.531696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450947, 32.866394, 33.640717>,  <29.247179, 32.757767, 33.706127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450947, 32.866394, 33.640717>,  <29.790560, 33.047440, 33.531696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450947, 32.866394, 33.640717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326635, -0.855132, -0.402567,
		0.415271, -0.252769, 0.873875,
		-0.849035, -0.452613, 0.272548,
		29.196236, 32.730610, 33.722481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015038, 32.400627, 33.902813>,  <29.790560, 33.047440, 33.531696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015038, 32.400627, 33.902813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.623459, 32.343773, 33.844212>,  <29.388512, 32.309662, 33.809052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.623459, 32.343773, 33.844212>,  <30.015038, 32.400627, 33.902813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623459, 32.343773, 33.844212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183363, -0.927689, -0.325226,
		-0.089689, -0.345242, 0.934218,
		-0.978945, -0.142132, -0.146508,
		29.329775, 32.301132, 33.800259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822901, 31.767498, 34.192635>,  <30.015038, 32.400627, 33.902813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822901, 31.767498, 34.192635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538591, 31.830685, 33.918453>,  <29.368006, 31.868597, 33.753944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538591, 31.830685, 33.918453>,  <29.822901, 31.767498, 34.192635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538591, 31.830685, 33.918453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170736, -0.906574, -0.385970,
		-0.682386, -0.391369, 0.617398,
		-0.710773, 0.157968, -0.685454,
		29.325359, 31.878075, 33.712818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468891, 31.151190, 34.080730>,  <29.822901, 31.767498, 34.192635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468891, 31.151190, 34.080730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.390097, 31.355583, 33.746044>,  <29.342821, 31.478220, 33.545231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.390097, 31.355583, 33.746044>,  <29.468891, 31.151190, 34.080730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390097, 31.355583, 33.746044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400137, -0.737220, -0.544424,
		-0.895035, -0.442044, -0.059243,
		-0.196984, 0.510984, -0.836715,
		29.331001, 31.508879, 33.495029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315371, 30.579187, 33.545372>,  <29.468891, 31.151190, 34.080730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315371, 30.579187, 33.545372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.371441, 30.904057, 33.318844>,  <29.405083, 31.098978, 33.182926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.371441, 30.904057, 33.318844>,  <29.315371, 30.579187, 33.545372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371441, 30.904057, 33.318844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149206, -0.582767, -0.798824,
		-0.978820, 0.027476, -0.202871,
		0.140175, 0.812175, -0.566324,
		29.413494, 31.147709, 33.148945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007729, 30.441830, 32.940571>,  <29.315371, 30.579187, 33.545372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007729, 30.441830, 32.940571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.276226, 30.728745, 32.865810>,  <29.437325, 30.900892, 32.820953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.276226, 30.728745, 32.865810>,  <29.007729, 30.441830, 32.940571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276226, 30.728745, 32.865810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393094, -0.558246, -0.730642,
		-0.628418, 0.416967, -0.656680,
		0.671243, 0.717286, -0.186904,
		29.477598, 30.943930, 32.809738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019739, 30.339432, 32.276253>,  <29.007729, 30.441830, 32.940571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019739, 30.339432, 32.276253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.329863, 30.587038, 32.326393>,  <29.515938, 30.735601, 32.356480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.329863, 30.587038, 32.326393>,  <29.019739, 30.339432, 32.276253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329863, 30.587038, 32.326393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484553, -0.455687, -0.746698,
		-0.405096, 0.639663, -0.653245,
		0.775310, 0.619016, 0.125354,
		29.562456, 30.772743, 32.363998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143246, 30.692154, 31.631561>,  <29.019739, 30.339432, 32.276253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143246, 30.692154, 31.631561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481064, 30.681200, 31.845476>,  <29.683754, 30.674627, 31.973825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481064, 30.681200, 31.845476>,  <29.143246, 30.692154, 31.631561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481064, 30.681200, 31.845476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490320, -0.361897, -0.792854,
		0.215250, 0.931816, -0.292210,
		0.844544, -0.027385, 0.534786,
		29.734426, 30.672985, 32.005913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688395, 30.822212, 31.156340>,  <29.143246, 30.692154, 31.631561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688395, 30.822212, 31.156340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908724, 30.719725, 31.474068>,  <30.040920, 30.658232, 31.664705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908724, 30.719725, 31.474068>,  <29.688395, 30.822212, 31.156340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908724, 30.719725, 31.474068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693141, -0.389715, -0.606365,
		0.464920, 0.884576, -0.037069,
		0.550822, -0.256217, 0.794322,
		30.073971, 30.642859, 31.712364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395777, 30.978043, 30.957195>,  <29.688395, 30.822212, 31.156340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395777, 30.978043, 30.957195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373928, 30.688957, 31.232790>,  <30.360819, 30.515507, 31.398148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373928, 30.688957, 31.232790>,  <30.395777, 30.978043, 30.957195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373928, 30.688957, 31.232790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604090, -0.573332, -0.553502,
		0.795042, 0.385976, 0.467901,
		-0.054624, -0.722712, 0.688988,
		30.357540, 30.472143, 31.439486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962334, 30.661922, 30.849413>,  <30.395777, 30.978043, 30.957195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962334, 30.661922, 30.849413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.800940, 30.387634, 31.091730>,  <30.704103, 30.223061, 31.237120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.800940, 30.387634, 31.091730>,  <30.962334, 30.661922, 30.849413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800940, 30.387634, 31.091730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446517, -0.725456, -0.523771,
		0.798637, 0.059163, 0.598898,
		-0.403486, -0.685721, 0.605794,
		30.679893, 30.181917, 31.273468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439636, 30.242254, 31.131594>,  <30.962334, 30.661922, 30.849413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439636, 30.242254, 31.131594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111017, 30.014214, 31.128933>,  <30.913845, 29.877390, 31.127337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111017, 30.014214, 31.128933>,  <31.439636, 30.242254, 31.131594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111017, 30.014214, 31.128933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493490, -0.705212, -0.509061,
		0.285526, -0.421500, 0.860705,
		-0.821549, -0.570100, -0.006650,
		30.864553, 29.843184, 31.126938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749159, 29.640881, 31.219547>,  <31.439636, 30.242254, 31.131594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749159, 29.640881, 31.219547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.372803, 29.546890, 31.121965>,  <31.146990, 29.490496, 31.063416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.372803, 29.546890, 31.121965>,  <31.749159, 29.640881, 31.219547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372803, 29.546890, 31.121965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335443, -0.746279, -0.574931,
		-0.046963, -0.622780, 0.780987,
		-0.940889, -0.234976, -0.243955,
		31.090536, 29.476397, 31.048779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795757, 28.958521, 31.206316>,  <31.749159, 29.640881, 31.219547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795757, 28.958521, 31.206316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.474327, 29.053444, 30.987976>,  <31.281469, 29.110397, 30.856972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.474327, 29.053444, 30.987976>,  <31.795757, 28.958521, 31.206316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474327, 29.053444, 30.987976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272363, -0.668827, -0.691729,
		-0.529231, -0.704526, 0.472819,
		-0.803575, 0.237306, -0.545851,
		31.233255, 29.124636, 30.824221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417295, 28.325834, 31.022257>,  <31.795757, 28.958521, 31.206316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417295, 28.325834, 31.022257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328907, 28.608915, 30.753830>,  <31.275873, 28.778763, 30.592773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328907, 28.608915, 30.753830>,  <31.417295, 28.325834, 31.022257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328907, 28.608915, 30.753830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170682, -0.649396, -0.741048,
		-0.960229, -0.278288, 0.022706,
		-0.220970, 0.707701, -0.671068,
		31.262615, 28.821226, 30.552509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915674, 28.082014, 30.529800>,  <31.417295, 28.325834, 31.022257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915674, 28.082014, 30.529800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.077332, 28.379093, 30.316233>,  <31.174326, 28.557341, 30.188093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.077332, 28.379093, 30.316233>,  <30.915674, 28.082014, 30.529800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077332, 28.379093, 30.316233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100527, -0.616239, -0.781117,
		-0.909154, 0.262012, -0.323710,
		0.404145, 0.742698, -0.533917,
		31.198574, 28.601902, 30.156057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667458, 27.989630, 29.835161>,  <30.915674, 28.082014, 30.529800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667458, 27.989630, 29.835161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973206, 28.234863, 29.755295>,  <31.156654, 28.382004, 29.707375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973206, 28.234863, 29.755295>,  <30.667458, 27.989630, 29.835161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973206, 28.234863, 29.755295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197990, -0.517882, -0.832225,
		-0.613626, 0.596597, -0.517238,
		0.764371, 0.613083, -0.199665,
		31.202517, 28.418789, 29.695395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638180, 28.289474, 29.123808>,  <30.667458, 27.989630, 29.835161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638180, 28.289474, 29.123808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.027121, 28.342009, 29.201040>,  <31.260485, 28.373529, 29.247379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.027121, 28.342009, 29.201040>,  <30.638180, 28.289474, 29.123808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027121, 28.342009, 29.201040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232645, -0.473512, -0.849507,
		-0.020146, 0.870940, -0.490975,
		0.972353, 0.131337, 0.193081,
		31.318827, 28.381411, 29.258965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811089, 28.650465, 28.516407>,  <30.638180, 28.289474, 29.123808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811089, 28.650465, 28.516407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.154871, 28.547010, 28.692789>,  <31.361141, 28.484938, 28.798618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.154871, 28.547010, 28.692789>,  <30.811089, 28.650465, 28.516407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154871, 28.547010, 28.692789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364817, -0.293934, -0.883466,
		0.358107, 0.920168, -0.158268,
		0.859458, -0.258637, 0.440953,
		31.412708, 28.469419, 28.825075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367527, 28.998943, 28.221052>,  <30.811089, 28.650465, 28.516407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367527, 28.998943, 28.221052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526766, 28.663919, 28.370722>,  <31.622311, 28.462904, 28.460524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526766, 28.663919, 28.370722>,  <31.367527, 28.998943, 28.221052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526766, 28.663919, 28.370722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463787, -0.168155, -0.869842,
		0.791466, 0.519821, 0.321508,
		0.398099, -0.837562, 0.374175,
		31.646196, 28.412651, 28.482975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.667919, 34.870861, 45.857559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359539, 34.617798, 45.828220>,  <36.174511, 34.465958, 45.810619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359539, 34.617798, 45.828220>,  <36.667919, 34.870861, 45.857559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359539, 34.617798, 45.828220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375593, 0.358618, 0.854590,
		-0.514362, 0.686393, -0.514098,
		-0.770949, -0.632660, -0.073345,
		36.128254, 34.428001, 45.806217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052876, 35.227753, 46.169579>,  <36.667919, 34.870861, 45.857559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052876, 35.227753, 46.169579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974758, 34.835541, 46.177734>,  <35.927887, 34.600212, 46.182629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974758, 34.835541, 46.177734>,  <36.052876, 35.227753, 46.169579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974758, 34.835541, 46.177734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322603, 0.083858, 0.942812,
		-0.926168, 0.177547, -0.332700,
		-0.195293, -0.980533, 0.020389,
		35.916172, 34.541382, 46.183849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268681, 35.142281, 46.273823>,  <36.052876, 35.227753, 46.169579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268681, 35.142281, 46.273823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457905, 34.808403, 46.386600>,  <35.571442, 34.608074, 46.454269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457905, 34.808403, 46.386600>,  <35.268681, 35.142281, 46.273823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457905, 34.808403, 46.386600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598324, -0.069467, 0.798237,
		-0.646699, -0.546312, -0.532281,
		0.473063, -0.834696, 0.281947,
		35.599823, 34.557995, 46.471184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760002, 34.717102, 46.445801>,  <35.268681, 35.142281, 46.273823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760002, 34.717102, 46.445801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078285, 34.560047, 46.630276>,  <35.269253, 34.465816, 46.740959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078285, 34.560047, 46.630276>,  <34.760002, 34.717102, 46.445801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078285, 34.560047, 46.630276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541039, -0.118476, 0.832610,
		-0.272271, -0.912032, -0.306702,
		0.795704, -0.392633, 0.461187,
		35.316998, 34.442257, 46.768631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507889, 34.105026, 46.956783>,  <34.760002, 34.717102, 46.445801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507889, 34.105026, 46.956783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875622, 34.218788, 47.065548>,  <35.096264, 34.287045, 47.130806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875622, 34.218788, 47.065548>,  <34.507889, 34.105026, 46.956783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875622, 34.218788, 47.065548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222125, -0.195279, 0.955262,
		0.324778, -0.938606, -0.116354,
		0.919336, 0.284403, 0.271911,
		35.151424, 34.304108, 47.147121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652260, 33.709583, 47.495087>,  <34.507889, 34.105026, 46.956783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652260, 33.709583, 47.495087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896618, 34.024818, 47.525368>,  <35.043232, 34.213959, 47.543537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896618, 34.024818, 47.525368>,  <34.652260, 33.709583, 47.495087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896618, 34.024818, 47.525368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025528, -0.075965, 0.996784,
		0.791303, -0.610859, -0.026288,
		0.610891, 0.788087, 0.075706,
		35.079884, 34.261246, 47.548080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933949, 33.448383, 47.991810>,  <34.652260, 33.709583, 47.495087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933949, 33.448383, 47.991810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042160, 33.833141, 47.975941>,  <35.107086, 34.063995, 47.966419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042160, 33.833141, 47.975941>,  <34.933949, 33.448383, 47.991810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042160, 33.833141, 47.975941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082495, 0.064215, 0.994521,
		0.959172, -0.265772, 0.096723,
		0.270526, 0.961895, -0.039668,
		35.123318, 34.121712, 47.964039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391392, 33.456108, 48.465939>,  <34.933949, 33.448383, 47.991810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391392, 33.456108, 48.465939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215561, 33.809364, 48.400406>,  <35.110062, 34.021317, 48.361088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215561, 33.809364, 48.400406>,  <35.391392, 33.456108, 48.465939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215561, 33.809364, 48.400406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317312, 0.017949, 0.948151,
		0.840289, 0.468770, 0.272340,
		-0.439576, 0.883138, -0.163829,
		35.083687, 34.074306, 48.351257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652531, 33.686104, 49.031544>,  <35.391392, 33.456108, 48.465939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652531, 33.686104, 49.031544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384022, 33.951500, 48.899376>,  <35.222916, 34.110737, 48.820076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384022, 33.951500, 48.899376>,  <35.652531, 33.686104, 49.031544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384022, 33.951500, 48.899376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154218, 0.311002, 0.937814,
		0.724986, 0.680488, -0.106447,
		-0.671276, 0.663486, -0.330415,
		35.182640, 34.150547, 48.800251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697739, 34.289143, 49.324707>,  <35.652531, 33.686104, 49.031544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697739, 34.289143, 49.324707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307384, 34.302414, 49.238411>,  <35.073174, 34.310375, 49.186634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307384, 34.302414, 49.238411>,  <35.697739, 34.289143, 49.324707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307384, 34.302414, 49.238411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209356, 0.137421, 0.968135,
		0.061768, 0.989957, -0.127162,
		-0.975887, 0.033178, -0.215742,
		35.014618, 34.312366, 49.173687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459648, 34.796413, 49.829021>,  <35.697739, 34.289143, 49.324707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459648, 34.796413, 49.829021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126637, 34.612560, 49.705326>,  <34.926830, 34.502247, 49.631107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126637, 34.612560, 49.705326>,  <35.459648, 34.796413, 49.829021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126637, 34.612560, 49.705326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388618, 0.086740, 0.917307,
		-0.394800, 0.883863, -0.250835,
		-0.832532, -0.459632, -0.309240,
		34.876877, 34.474670, 49.612553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915276, 35.077560, 50.181168>,  <35.459648, 34.796413, 49.829021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915276, 35.077560, 50.181168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757992, 34.730911, 50.058292>,  <34.663624, 34.522923, 49.984570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757992, 34.730911, 50.058292>,  <34.915276, 35.077560, 50.181168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757992, 34.730911, 50.058292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404633, -0.136903, 0.904173,
		-0.825628, 0.479823, -0.296832,
		-0.393206, -0.866619, -0.307184,
		34.640030, 34.470924, 49.966137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074715, 35.198395, 51.041691>,  <34.915276, 35.077560, 50.181168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074715, 35.198395, 51.041691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756721, 35.269047, 51.273830>,  <34.565926, 35.311440, 51.413113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756721, 35.269047, 51.273830>,  <35.074715, 35.198395, 51.041691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756721, 35.269047, 51.273830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381508, -0.598236, 0.704674,
		0.471652, 0.781611, 0.408202,
		-0.794982, 0.176628, 0.580350,
		34.518227, 35.322037, 51.447937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311146, 35.558743, 51.751961>,  <35.074715, 35.198395, 51.041691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311146, 35.558743, 51.751961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970737, 35.348724, 51.748222>,  <34.766491, 35.222713, 51.745979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970737, 35.348724, 51.748222>,  <35.311146, 35.558743, 51.751961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970737, 35.348724, 51.748222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430884, -0.708351, 0.559086,
		-0.300166, 0.471768, 0.829057,
		-0.851022, -0.525047, -0.009346,
		34.715431, 35.191212, 51.745419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729721, 36.052048, 51.875237>,  <35.311146, 35.558743, 51.751961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729721, 36.052048, 51.875237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.433228, 36.277855, 52.020500>,  <34.255329, 36.413338, 52.107658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.433228, 36.277855, 52.020500>,  <34.729721, 36.052048, 51.875237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433228, 36.277855, 52.020500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179562, 0.354547, -0.917635,
		-0.646779, -0.745395, -0.161437,
		-0.741238, 0.564519, 0.363158,
		34.210857, 36.447212, 52.129448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106560, 35.938953, 51.441277>,  <34.729721, 36.052048, 51.875237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106560, 35.938953, 51.441277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107738, 36.295589, 51.622410>,  <34.108444, 36.509571, 51.731091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107738, 36.295589, 51.622410>,  <34.106560, 35.938953, 51.441277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107738, 36.295589, 51.622410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128079, 0.449438, -0.884082,
		-0.991759, -0.055391, 0.115519,
		0.002948, 0.891593, 0.452829,
		34.108624, 36.563068, 51.758259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504463, 36.288742, 51.234253>,  <34.106560, 35.938953, 51.441277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504463, 36.288742, 51.234253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778164, 36.557926, 51.346619>,  <33.942387, 36.719437, 51.414040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778164, 36.557926, 51.346619>,  <33.504463, 36.288742, 51.234253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778164, 36.557926, 51.346619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043543, 0.422235, -0.905440,
		-0.727943, 0.607318, 0.318219,
		0.684254, 0.672965, 0.280919,
		33.983440, 36.759815, 51.430893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500149, 36.662216, 50.644299>,  <33.504463, 36.288742, 51.234253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500149, 36.662216, 50.644299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793278, 36.846821, 50.844288>,  <33.969154, 36.957584, 50.964283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.793278, 36.846821, 50.844288>,  <33.500149, 36.662216, 50.644299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793278, 36.846821, 50.844288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098213, 0.655361, -0.748904,
		-0.673292, 0.597919, 0.434938,
		0.732825, 0.461514, 0.499973,
		34.013126, 36.985275, 50.994278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448166, 37.452839, 50.576275>,  <33.500149, 36.662216, 50.644299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448166, 37.452839, 50.576275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820301, 37.322212, 50.642986>,  <34.043583, 37.243835, 50.683014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820301, 37.322212, 50.642986>,  <33.448166, 37.452839, 50.576275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820301, 37.322212, 50.642986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318281, 0.493296, -0.809541,
		0.182100, 0.806233, 0.562875,
		0.930342, -0.326569, 0.166779,
		34.099403, 37.224243, 50.693020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837757, 37.973938, 50.356163>,  <33.448166, 37.452839, 50.576275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837757, 37.973938, 50.356163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060322, 37.641609, 50.351330>,  <34.193859, 37.442211, 50.348431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060322, 37.641609, 50.351330>,  <33.837757, 37.973938, 50.356163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060322, 37.641609, 50.351330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365880, 0.258036, -0.894175,
		0.746014, 0.493111, 0.447554,
		0.556413, -0.830818, -0.012078,
		34.227245, 37.392365, 50.347706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491100, 38.144558, 50.184559>,  <33.837757, 37.973938, 50.356163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491100, 38.144558, 50.184559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483814, 37.752304, 50.106556>,  <34.479443, 37.516953, 50.059753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483814, 37.752304, 50.106556>,  <34.491100, 38.144558, 50.184559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483814, 37.752304, 50.106556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504131, 0.159420, -0.848786,
		0.863435, -0.113773, 0.491463,
		-0.018220, -0.980633, -0.195005,
		34.478348, 37.458115, 50.048054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071304, 38.069069, 49.856644>,  <34.491100, 38.144558, 50.184559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071304, 38.069069, 49.856644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926655, 37.714230, 49.741901>,  <34.839867, 37.501328, 49.673058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926655, 37.714230, 49.741901>,  <35.071304, 38.069069, 49.856644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926655, 37.714230, 49.741901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382543, 0.139403, -0.913361,
		0.850230, -0.440024, 0.288943,
		-0.361621, -0.887100, -0.286852,
		34.818169, 37.448101, 49.655846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624958, 37.838398, 49.510429>,  <35.071304, 38.069069, 49.856644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624958, 37.838398, 49.510429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308929, 37.620975, 49.397053>,  <35.119312, 37.490524, 49.329029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308929, 37.620975, 49.397053>,  <35.624958, 37.838398, 49.510429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308929, 37.620975, 49.397053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327044, 0.017330, -0.944850,
		0.518489, -0.839196, 0.164073,
		-0.790071, -0.543553, -0.283440,
		35.071907, 37.457909, 49.312019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846230, 37.387375, 48.976978>,  <35.624958, 37.838398, 49.510429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846230, 37.387375, 48.976978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449966, 37.359581, 48.930054>,  <35.212208, 37.342907, 48.901897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449966, 37.359581, 48.930054>,  <35.846230, 37.387375, 48.976978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449966, 37.359581, 48.930054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117860, -0.003828, -0.993023,
		0.068548, -0.997576, 0.011981,
		-0.990662, -0.069481, -0.117312,
		35.152767, 37.338737, 48.894859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770088, 36.915112, 48.413479>,  <35.846230, 37.387375, 48.976978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770088, 36.915112, 48.413479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427769, 37.122021, 48.416256>,  <35.222378, 37.246166, 48.417923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427769, 37.122021, 48.416256>,  <35.770088, 36.915112, 48.413479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427769, 37.122021, 48.416256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028023, 0.059752, -0.997820,
		-0.516556, -0.853735, -0.065631,
		-0.855795, 0.517269, 0.006941,
		35.171032, 37.277203, 48.418339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322708, 36.435802, 47.943455>,  <35.770088, 36.915112, 48.413479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322708, 36.435802, 47.943455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192101, 36.813686, 47.955532>,  <35.113735, 37.040417, 47.962776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192101, 36.813686, 47.955532>,  <35.322708, 36.435802, 47.943455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192101, 36.813686, 47.955532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016326, 0.037573, -0.999161,
		-0.945049, -0.325755, -0.027692,
		-0.326522, 0.944708, 0.030190,
		35.094143, 37.097099, 47.964588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907463, 36.514221, 47.492668>,  <35.322708, 36.435802, 47.943455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907463, 36.514221, 47.492668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005524, 36.900639, 47.525322>,  <35.064362, 37.132488, 47.544914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005524, 36.900639, 47.525322>,  <34.907463, 36.514221, 47.492668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005524, 36.900639, 47.525322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359291, -0.012320, -0.933144,
		-0.900449, 0.258098, -0.350110,
		0.245156, 0.966040, 0.081639,
		35.079071, 37.190449, 47.549812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707039, 36.821964, 46.865768>,  <34.907463, 36.514221, 47.492668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707039, 36.821964, 46.865768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937771, 37.108662, 47.022507>,  <35.076210, 37.280682, 47.116550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937771, 37.108662, 47.022507>,  <34.707039, 36.821964, 46.865768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937771, 37.108662, 47.022507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276356, 0.280184, -0.919306,
		-0.768698, 0.638573, -0.036459,
		0.576829, 0.716744, 0.391850,
		35.110821, 37.323685, 47.140060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925068, 37.018154, 46.619511>,  <34.707039, 36.821964, 46.865768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925068, 37.018154, 46.619511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634811, 36.879704, 46.381641>,  <33.460659, 36.796631, 46.238918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634811, 36.879704, 46.381641>,  <33.925068, 37.018154, 46.619511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634811, 36.879704, 46.381641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470990, -0.380189, 0.796006,
		-0.501610, 0.857701, 0.112857,
		-0.725642, -0.346130, -0.594675,
		33.417118, 36.775864, 46.203239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326683, 37.330048, 46.942616>,  <33.925068, 37.018154, 46.619511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326683, 37.330048, 46.942616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223228, 37.008411, 46.728497>,  <33.161156, 36.815430, 46.600025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223228, 37.008411, 46.728497>,  <33.326683, 37.330048, 46.942616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223228, 37.008411, 46.728497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267236, -0.472966, 0.839576,
		-0.928274, 0.360196, -0.092556,
		-0.258636, -0.804091, -0.535299,
		33.145638, 36.767185, 46.567905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581364, 37.151821, 47.060360>,  <33.326683, 37.330048, 46.942616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581364, 37.151821, 47.060360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746468, 36.808826, 46.937489>,  <32.845528, 36.603031, 46.863766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746468, 36.808826, 46.937489>,  <32.581364, 37.151821, 47.060360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746468, 36.808826, 46.937489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448739, -0.484913, 0.750661,
		-0.792633, -0.171997, -0.584936,
		0.412755, -0.857482, -0.307176,
		32.870293, 36.551582, 46.845337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906994, 36.722122, 47.155842>,  <32.581364, 37.151821, 47.060360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906994, 36.722122, 47.155842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212826, 36.470181, 47.101147>,  <32.396324, 36.319016, 47.068329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212826, 36.470181, 47.101147>,  <31.906994, 36.722122, 47.155842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212826, 36.470181, 47.101147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272473, -0.508130, 0.817045,
		-0.584106, -0.587436, -0.560124,
		0.764578, -0.629860, -0.136741,
		32.442200, 36.281223, 47.060123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622976, 36.004471, 47.080154>,  <31.906994, 36.722122, 47.155842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622976, 36.004471, 47.080154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.005383, 35.964661, 47.190521>,  <32.234825, 35.940773, 47.256741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.005383, 35.964661, 47.190521>,  <31.622976, 36.004471, 47.080154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005383, 35.964661, 47.190521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280477, -0.585455, 0.760641,
		0.085831, -0.804573, -0.587619,
		0.956016, -0.099527, 0.275914,
		32.292187, 35.934803, 47.273296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747225, 35.234505, 47.284492>,  <31.622976, 36.004471, 47.080154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747225, 35.234505, 47.284492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028316, 35.455593, 47.463676>,  <32.196972, 35.588245, 47.571186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028316, 35.455593, 47.463676>,  <31.747225, 35.234505, 47.284492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028316, 35.455593, 47.463676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225240, -0.424408, 0.877009,
		0.674863, -0.717197, -0.173748,
		0.702728, 0.552726, 0.447959,
		32.239136, 35.621410, 47.598064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043457, 34.809162, 47.765980>,  <31.747225, 35.234505, 47.284492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043457, 34.809162, 47.765980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.112301, 35.178757, 47.902580>,  <32.153606, 35.400513, 47.984539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.112301, 35.178757, 47.902580>,  <32.043457, 34.809162, 47.765980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112301, 35.178757, 47.902580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244706, -0.295704, 0.923406,
		0.954201, -0.242491, 0.175213,
		0.172106, 0.923990, 0.341500,
		32.163933, 35.455956, 48.005032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537884, 34.233776, 48.146095>,  <32.043457, 34.809162, 47.765980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537884, 34.233776, 48.146095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464630, 33.840698, 48.135029>,  <32.420677, 33.604851, 48.128391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464630, 33.840698, 48.135029>,  <32.537884, 34.233776, 48.146095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464630, 33.840698, 48.135029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618624, -0.093327, -0.780124,
		0.764045, -0.159984, 0.625013,
		-0.183138, -0.982698, -0.027664,
		32.409687, 33.545887, 48.126728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124870, 33.744457, 48.292294>,  <32.537884, 34.233776, 48.146095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124870, 33.744457, 48.292294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865597, 33.548359, 48.059223>,  <32.710033, 33.430698, 47.919380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865597, 33.548359, 48.059223>,  <33.124870, 33.744457, 48.292294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865597, 33.548359, 48.059223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720050, -0.145630, -0.678469,
		0.247764, -0.859330, 0.447399,
		-0.648183, -0.490249, -0.582679,
		32.671143, 33.401283, 47.884418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450031, 33.223331, 47.870361>,  <33.124870, 33.744457, 48.292294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450031, 33.223331, 47.870361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111809, 33.212715, 47.657074>,  <32.908875, 33.206345, 47.529102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111809, 33.212715, 47.657074>,  <33.450031, 33.223331, 47.870361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111809, 33.212715, 47.657074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524511, -0.227598, -0.820419,
		-0.099580, -0.973393, 0.206372,
		-0.845560, -0.026547, -0.533219,
		32.858139, 33.204754, 47.497108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505463, 32.608620, 47.384190>,  <33.450031, 33.223331, 47.870361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505463, 32.608620, 47.384190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226303, 32.859303, 47.245518>,  <33.058807, 33.009712, 47.162315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226303, 32.859303, 47.245518>,  <33.505463, 32.608620, 47.384190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226303, 32.859303, 47.245518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299789, -0.183986, -0.936096,
		-0.650438, -0.757227, -0.059476,
		-0.697894, 0.626703, -0.346680,
		33.016933, 33.047314, 47.141514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040482, 32.263020, 46.859882>,  <33.505463, 32.608620, 47.384190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040482, 32.263020, 46.859882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011093, 32.652332, 46.772869>,  <32.993458, 32.885921, 46.720661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011093, 32.652332, 46.772869>,  <33.040482, 32.263020, 46.859882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011093, 32.652332, 46.772869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271831, -0.190319, -0.943338,
		-0.959536, -0.128442, -0.250586,
		-0.073473, 0.973284, -0.217532,
		32.989052, 32.944317, 46.707611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760254, 32.183651, 46.213062>,  <33.040482, 32.263020, 46.859882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760254, 32.183651, 46.213062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918003, 32.551014, 46.225639>,  <33.012653, 32.771431, 46.233185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918003, 32.551014, 46.225639>,  <32.760254, 32.183651, 46.213062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918003, 32.551014, 46.225639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109782, -0.013117, -0.993869,
		-0.912369, 0.395409, -0.105998,
		0.394375, 0.918412, 0.031441,
		33.036316, 32.826538, 46.235073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597416, 32.436405, 45.562756>,  <32.760254, 32.183651, 46.213062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597416, 32.436405, 45.562756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839245, 32.733093, 45.678928>,  <32.984341, 32.911106, 45.748631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839245, 32.733093, 45.678928>,  <32.597416, 32.436405, 45.562756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839245, 32.733093, 45.678928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275703, 0.147225, -0.949901,
		-0.747315, 0.654357, -0.115485,
		0.604572, 0.741715, 0.290432,
		33.020615, 32.955608, 45.766056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.170494, 30.937532, 49.708313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.408562, 30.651161, 49.562313>,  <34.551403, 30.479338, 49.474712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.408562, 30.651161, 49.562313>,  <34.170494, 30.937532, 49.708313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408562, 30.651161, 49.562313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170341, 0.331487, -0.927955,
		0.785343, 0.614460, 0.075337,
		0.595165, -0.715930, -0.364999,
		34.587112, 30.436382, 49.452812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871677, 31.556711, 49.576084>,  <34.170494, 30.937532, 49.708313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871677, 31.556711, 49.576084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.180885, 31.792622, 49.482616>,  <34.366409, 31.934168, 49.426537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.180885, 31.792622, 49.482616>,  <33.871677, 31.556711, 49.576084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180885, 31.792622, 49.482616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151522, -0.186021, -0.970792,
		-0.616019, 0.785848, -0.054434,
		0.773022, 0.589778, -0.233666,
		34.412792, 31.969555, 49.412518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642361, 32.182156, 49.108601>,  <33.871677, 31.556711, 49.576084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642361, 32.182156, 49.108601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.029915, 32.110527, 49.040264>,  <34.262447, 32.067551, 48.999264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.029915, 32.110527, 49.040264>,  <33.642361, 32.182156, 49.108601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029915, 32.110527, 49.040264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176327, -0.015072, -0.984216,
		0.173671, 0.983720, -0.046179,
		0.968890, -0.179073, -0.170838,
		34.320583, 32.056805, 48.989014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835308, 32.410149, 48.394592>,  <33.642361, 32.182156, 49.108601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835308, 32.410149, 48.394592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.168625, 32.200672, 48.465435>,  <34.368614, 32.074986, 48.507942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.168625, 32.200672, 48.465435>,  <33.835308, 32.410149, 48.394592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168625, 32.200672, 48.465435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121352, -0.139276, -0.982790,
		0.539347, 0.840445, -0.052506,
		0.833294, -0.523693, 0.177108,
		34.418613, 32.043564, 48.518566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371883, 32.781025, 47.956364>,  <33.835308, 32.410149, 48.394592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371883, 32.781025, 47.956364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.494789, 32.410057, 48.041676>,  <34.568531, 32.187477, 48.092861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.494789, 32.410057, 48.041676>,  <34.371883, 32.781025, 47.956364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494789, 32.410057, 48.041676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404677, -0.075505, -0.911337,
		0.861293, 0.366330, 0.352105,
		0.307264, -0.927417, 0.213277,
		34.586967, 32.131832, 48.105659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040867, 32.757275, 47.646519>,  <34.371883, 32.781025, 47.956364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040867, 32.757275, 47.646519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.886330, 32.391235, 47.692711>,  <34.793610, 32.171612, 47.720425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.886330, 32.391235, 47.692711>,  <35.040867, 32.757275, 47.646519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886330, 32.391235, 47.692711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247143, -0.223324, -0.942893,
		0.888629, -0.335739, 0.312440,
		-0.386341, -0.915099, 0.115477,
		34.770428, 32.116707, 47.727352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507141, 32.498245, 47.272057>,  <35.040867, 32.757275, 47.646519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507141, 32.498245, 47.272057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.231640, 32.210274, 47.306282>,  <35.066338, 32.037491, 47.326817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.231640, 32.210274, 47.306282>,  <35.507141, 32.498245, 47.272057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231640, 32.210274, 47.306282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242856, -0.340305, -0.908413,
		0.683108, -0.604895, 0.409225,
		-0.688756, -0.719927, 0.085563,
		35.025013, 31.994295, 47.331951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790165, 31.790272, 47.049004>,  <35.507141, 32.498245, 47.272057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790165, 31.790272, 47.049004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.399239, 31.709143, 47.024612>,  <35.164684, 31.660465, 47.009979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.399239, 31.709143, 47.024612>,  <35.790165, 31.790272, 47.049004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399239, 31.709143, 47.024612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132448, -0.360634, -0.923255,
		0.165267, -0.910388, 0.379317,
		-0.977315, -0.202824, -0.060978,
		35.106045, 31.648296, 47.006317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670246, 31.055931, 46.861340>,  <35.790165, 31.790272, 47.049004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670246, 31.055931, 46.861340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358139, 31.286781, 46.764912>,  <35.170876, 31.425291, 46.707054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358139, 31.286781, 46.764912>,  <35.670246, 31.055931, 46.861340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358139, 31.286781, 46.764912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083438, -0.285940, -0.954608,
		-0.619862, -0.764959, 0.174954,
		-0.780262, 0.577127, -0.241069,
		35.124062, 31.459919, 46.692593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324203, 30.633493, 46.407597>,  <35.670246, 31.055931, 46.861340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324203, 30.633493, 46.407597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.146301, 30.984406, 46.335403>,  <35.039558, 31.194952, 46.292088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.146301, 30.984406, 46.335403>,  <35.324203, 30.633493, 46.407597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146301, 30.984406, 46.335403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215859, -0.300560, -0.929015,
		-0.869251, -0.374226, 0.323044,
		-0.444756, 0.877279, -0.180482,
		35.012875, 31.247589, 46.281258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733185, 30.503107, 46.155125>,  <35.324203, 30.633493, 46.407597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733185, 30.503107, 46.155125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.811142, 30.866213, 46.006538>,  <34.857914, 31.084076, 45.917389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.811142, 30.866213, 46.006538>,  <34.733185, 30.503107, 46.155125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811142, 30.866213, 46.006538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146290, -0.347587, -0.926165,
		-0.969854, 0.234841, 0.065056,
		0.194889, 0.907762, -0.371464,
		34.869610, 31.138542, 45.895100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164516, 30.729813, 45.735313>,  <34.733185, 30.503107, 46.155125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164516, 30.729813, 45.735313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476139, 30.943838, 45.604610>,  <34.663113, 31.072252, 45.526188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476139, 30.943838, 45.604610>,  <34.164516, 30.729813, 45.735313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476139, 30.943838, 45.604610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271219, -0.182271, -0.945102,
		-0.565248, 0.824915, 0.003118,
		0.779061, 0.535062, -0.326761,
		34.709858, 31.104357, 45.506580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340343, 30.847420, 45.730309>,  <34.164516, 30.729813, 45.735313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340343, 30.847420, 45.730309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967365, 30.718513, 45.664959>,  <32.743580, 30.641171, 45.625748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967365, 30.718513, 45.664959>,  <33.340343, 30.847420, 45.730309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967365, 30.718513, 45.664959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177523, 0.014789, 0.984006,
		-0.314695, 0.946534, -0.070999,
		-0.932445, -0.322265, -0.163378,
		32.687634, 30.621834, 45.615944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882870, 31.261545, 46.178265>,  <33.340343, 30.847420, 45.730309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882870, 31.261545, 46.178265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716927, 30.912319, 46.075771>,  <32.617363, 30.702784, 46.014275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716927, 30.912319, 46.075771>,  <32.882870, 31.261545, 46.178265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716927, 30.912319, 46.075771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395273, -0.080726, 0.915009,
		-0.819546, 0.480878, -0.311609,
		-0.414853, -0.873063, -0.256237,
		32.592472, 30.650400, 45.998901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241497, 31.263725, 46.246387>,  <32.882870, 31.261545, 46.178265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241497, 31.263725, 46.246387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.302349, 30.869219, 46.272106>,  <32.338860, 30.632515, 46.287537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.302349, 30.869219, 46.272106>,  <32.241497, 31.263725, 46.246387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302349, 30.869219, 46.272106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403837, -0.002653, 0.914827,
		-0.902094, -0.165134, -0.398695,
		0.152127, -0.986267, 0.064294,
		32.347988, 30.573339, 46.291393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664988, 30.936663, 46.654125>,  <32.241497, 31.263725, 46.246387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664988, 30.936663, 46.654125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.938370, 30.645605, 46.677540>,  <32.102398, 30.470970, 46.691589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.938370, 30.645605, 46.677540>,  <31.664988, 30.936663, 46.654125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938370, 30.645605, 46.677540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339785, -0.246127, 0.907726,
		-0.646094, -0.640279, -0.415459,
		0.683454, -0.727643, 0.058536,
		32.143406, 30.427313, 46.695103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354012, 30.362616, 47.045444>,  <31.664988, 30.936663, 46.654125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354012, 30.362616, 47.045444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746088, 30.297554, 47.090652>,  <31.981333, 30.258516, 47.117779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746088, 30.297554, 47.090652>,  <31.354012, 30.362616, 47.045444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746088, 30.297554, 47.090652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138820, -0.157173, 0.977766,
		-0.141257, -0.974087, -0.176637,
		0.980191, -0.162637, 0.113021,
		32.040146, 30.248758, 47.124557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401188, 29.758484, 47.437084>,  <31.354012, 30.362616, 47.045444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401188, 29.758484, 47.437084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750174, 29.951908, 47.465309>,  <31.959564, 30.067963, 47.482243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750174, 29.951908, 47.465309>,  <31.401188, 29.758484, 47.437084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750174, 29.951908, 47.465309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052038, -0.051642, 0.997309,
		0.485901, -0.873787, -0.019893,
		0.872463, 0.483558, 0.070563,
		32.011913, 30.096975, 47.486477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811220, 29.323669, 47.884480>,  <31.401188, 29.758484, 47.437084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811220, 29.323669, 47.884480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981228, 29.685738, 47.882458>,  <32.083233, 29.902979, 47.881245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981228, 29.685738, 47.882458>,  <31.811220, 29.323669, 47.884480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981228, 29.685738, 47.882458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128523, -0.054820, 0.990190,
		0.896014, -0.421499, -0.139635,
		0.425018, 0.905171, -0.005053,
		32.108734, 29.957289, 47.880943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351772, 29.300505, 48.394035>,  <31.811220, 29.323669, 47.884480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351772, 29.300505, 48.394035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.266438, 29.689802, 48.359894>,  <32.215237, 29.923380, 48.339409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.266438, 29.689802, 48.359894>,  <32.351772, 29.300505, 48.394035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266438, 29.689802, 48.359894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114067, 0.061959, 0.991539,
		0.970297, 0.221269, 0.097797,
		-0.213337, 0.973243, -0.085358,
		32.202435, 29.981775, 48.334286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766373, 29.585100, 48.808350>,  <32.351772, 29.300505, 48.394035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766373, 29.585100, 48.808350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.490582, 29.869547, 48.753307>,  <32.325108, 30.040215, 48.720284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.490582, 29.869547, 48.753307>,  <32.766373, 29.585100, 48.808350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490582, 29.869547, 48.753307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059825, 0.133419, 0.989252,
		0.721835, 0.690297, -0.049447,
		-0.689475, 0.711119, -0.137604,
		32.283737, 30.082882, 48.712025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923817, 30.046179, 49.266869>,  <32.766373, 29.585100, 48.808350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923817, 30.046179, 49.266869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541531, 30.136505, 49.191380>,  <32.312160, 30.190701, 49.146088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541531, 30.136505, 49.191380>,  <32.923817, 30.046179, 49.266869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541531, 30.136505, 49.191380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102414, 0.345978, 0.932636,
		0.275897, 0.910662, -0.307530,
		-0.955715, 0.225816, -0.188719,
		32.254814, 30.204250, 49.134766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821743, 30.621540, 49.612686>,  <32.923817, 30.046179, 49.266869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821743, 30.621540, 49.612686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.441280, 30.516409, 49.547913>,  <32.213001, 30.453331, 49.509048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.441280, 30.516409, 49.547913>,  <32.821743, 30.621540, 49.612686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441280, 30.516409, 49.547913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235549, 0.278828, 0.931006,
		-0.199544, 0.923675, -0.327118,
		-0.951157, -0.262829, -0.161932,
		32.155933, 30.437561, 49.499332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481331, 31.170094, 49.915337>,  <32.821743, 30.621540, 49.612686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481331, 31.170094, 49.915337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.225479, 30.866398, 49.867287>,  <32.071968, 30.684181, 49.838455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.225479, 30.866398, 49.867287>,  <32.481331, 31.170094, 49.915337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225479, 30.866398, 49.867287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355883, 0.153980, 0.921758,
		-0.681336, 0.632336, -0.368690,
		-0.639631, -0.759238, -0.120126,
		32.033588, 30.638626, 49.831249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836414, 31.365091, 50.125504>,  <32.481331, 31.170094, 49.915337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836414, 31.365091, 50.125504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.807241, 30.966866, 50.149265>,  <31.789738, 30.727930, 50.163521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.807241, 30.966866, 50.149265>,  <31.836414, 31.365091, 50.125504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807241, 30.966866, 50.149265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518043, 0.088710, 0.850742,
		-0.852240, 0.031273, -0.522216,
		-0.072932, -0.995567, 0.059401,
		31.785362, 30.668196, 50.167088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084860, 31.130432, 50.184597>,  <31.836414, 31.365091, 50.125504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084860, 31.130432, 50.184597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.342804, 30.889912, 50.373318>,  <31.497570, 30.745600, 50.486549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.342804, 30.889912, 50.373318>,  <31.084860, 31.130432, 50.184597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342804, 30.889912, 50.373318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400016, 0.260477, 0.878715,
		-0.651263, -0.755375, -0.072559,
		0.644859, -0.601299, 0.471801,
		31.536263, 30.709522, 50.514858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552288, 31.579683, 50.291752>,  <31.084860, 31.130432, 50.184597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552288, 31.579683, 50.291752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495747, 31.969084, 50.219852>,  <30.461823, 32.202724, 50.176712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495747, 31.969084, 50.219852>,  <30.552288, 31.579683, 50.291752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495747, 31.969084, 50.219852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719678, -0.023629, -0.693905,
		-0.679767, -0.227450, -0.697269,
		-0.141353, 0.973503, -0.179753,
		30.453341, 32.261135, 50.165928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904417, 31.707115, 49.711590>,  <30.552288, 31.579683, 50.291752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904417, 31.707115, 49.711590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.805805, 32.090775, 49.767101>,  <30.746639, 32.320969, 49.800407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.805805, 32.090775, 49.767101>,  <30.904417, 31.707115, 49.711590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805805, 32.090775, 49.767101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619867, 0.266136, -0.738198,
		-0.744976, -0.095959, -0.660154,
		-0.246528, 0.959147, 0.138783,
		30.731848, 32.378517, 49.808735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832354, 31.939190, 49.095470>,  <30.904417, 31.707115, 49.711590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832354, 31.939190, 49.095470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874470, 32.298531, 49.266060>,  <30.899740, 32.514133, 49.368412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874470, 32.298531, 49.266060>,  <30.832354, 31.939190, 49.095470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874470, 32.298531, 49.266060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574228, 0.295210, -0.763618,
		-0.811896, 0.325296, -0.484775,
		0.105292, 0.898350, 0.426474,
		30.906057, 32.568035, 49.394001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656811, 32.483528, 48.590916>,  <30.832354, 31.939190, 49.095470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656811, 32.483528, 48.590916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.898577, 32.635624, 48.870945>,  <31.043636, 32.726883, 49.038963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.898577, 32.635624, 48.870945>,  <30.656811, 32.483528, 48.590916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898577, 32.635624, 48.870945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549070, 0.437888, -0.711882,
		-0.577240, 0.814660, 0.055887,
		0.604414, 0.380241, 0.700072,
		31.079901, 32.749695, 49.080967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860941, 33.109867, 48.317543>,  <30.656811, 32.483528, 48.590916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860941, 33.109867, 48.317543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.134562, 33.038712, 48.600506>,  <31.298735, 32.996017, 48.770283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.134562, 33.038712, 48.600506>,  <30.860941, 33.109867, 48.317543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134562, 33.038712, 48.600506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721896, 0.304169, -0.621569,
		-0.104600, 0.935861, 0.336486,
		0.684051, -0.177891, 0.707410,
		31.339777, 32.985344, 48.812729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291203, 33.682358, 48.114811>,  <30.860941, 33.109867, 48.317543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291203, 33.682358, 48.114811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.492733, 33.464840, 48.383274>,  <31.613651, 33.334332, 48.544350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.492733, 33.464840, 48.383274>,  <31.291203, 33.682358, 48.114811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492733, 33.464840, 48.383274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856081, 0.210663, -0.471961,
		0.115262, 0.812349, 0.571668,
		0.503826, -0.543793, 0.671155,
		31.643881, 33.301701, 48.584621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876602, 34.101643, 48.362507>,  <31.291203, 33.682358, 48.114811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876602, 34.101643, 48.362507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.988918, 33.719761, 48.401882>,  <32.056309, 33.490631, 48.425507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.988918, 33.719761, 48.401882>,  <31.876602, 34.101643, 48.362507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988918, 33.719761, 48.401882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725445, 0.143964, -0.673056,
		0.628400, 0.260401, 0.733011,
		0.280791, -0.954707, 0.098439,
		32.073154, 33.433350, 48.431416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179073, 34.732494, 48.531063>,  <31.876602, 34.101643, 48.362507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179073, 34.732494, 48.531063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.179840, 35.132431, 48.538177>,  <32.180298, 35.372391, 48.542446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.179840, 35.132431, 48.538177>,  <32.179073, 34.732494, 48.531063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179840, 35.132431, 48.538177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016480, -0.017751, 0.999707,
		0.999862, -0.002206, 0.016443,
		0.001914, 0.999840, 0.017785,
		32.180416, 35.432384, 48.543514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602951, 34.927055, 49.201069>,  <32.179073, 34.732494, 48.531063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602951, 34.927055, 49.201069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.386120, 35.254135, 49.123589>,  <32.256023, 35.450382, 49.077099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.386120, 35.254135, 49.123589>,  <32.602951, 34.927055, 49.201069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386120, 35.254135, 49.123589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128561, 0.147094, 0.980732,
		0.830438, 0.556532, 0.025388,
		-0.542075, 0.817701, -0.193701,
		32.223499, 35.499447, 49.065479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771519, 35.378174, 49.727776>,  <32.602951, 34.927055, 49.201069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771519, 35.378174, 49.727776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.438923, 35.550526, 49.587505>,  <32.239365, 35.653934, 49.503345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.438923, 35.550526, 49.587505>,  <32.771519, 35.378174, 49.727776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438923, 35.550526, 49.587505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162249, 0.415357, 0.895072,
		0.531319, 0.801139, -0.275456,
		-0.831490, 0.430876, -0.350671,
		32.189476, 35.679787, 49.482304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851986, 36.139931, 49.838654>,  <32.771519, 35.378174, 49.727776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851986, 36.139931, 49.838654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.467724, 36.029427, 49.827126>,  <32.237167, 35.963123, 49.820210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.467724, 36.029427, 49.827126>,  <32.851986, 36.139931, 49.838654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467724, 36.029427, 49.827126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135327, 0.374915, 0.917129,
		-0.242560, 0.884941, -0.397548,
		-0.960651, -0.276258, -0.028818,
		32.179527, 35.946548, 49.818481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453995, 36.647652, 50.308281>,  <32.851986, 36.139931, 49.838654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453995, 36.647652, 50.308281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.212780, 36.331074, 50.268353>,  <32.068050, 36.141129, 50.244396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.212780, 36.331074, 50.268353>,  <32.453995, 36.647652, 50.308281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212780, 36.331074, 50.268353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358163, 0.156821, 0.920395,
		-0.712787, 0.590784, -0.378035,
		-0.603038, -0.791443, -0.099817,
		32.031868, 36.093639, 50.238407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739992, 36.844620, 50.399094>,  <32.453995, 36.647652, 50.308281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739992, 36.844620, 50.399094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.793962, 36.456825, 50.480972>,  <31.826345, 36.224148, 50.530098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.793962, 36.456825, 50.480972>,  <31.739992, 36.844620, 50.399094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793962, 36.456825, 50.480972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518996, 0.106832, 0.848075,
		-0.844061, -0.220663, -0.488742,
		0.134926, -0.969482, 0.204696,
		31.834440, 36.165981, 50.542381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187498, 36.685150, 50.927422>,  <31.739992, 36.844620, 50.399094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187498, 36.685150, 50.927422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444967, 36.379131, 50.935375>,  <31.599449, 36.195522, 50.940147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444967, 36.379131, 50.935375>,  <31.187498, 36.685150, 50.927422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444967, 36.379131, 50.935375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240125, -0.177223, 0.954428,
		-0.726654, -0.619113, -0.297779,
		0.643672, -0.765043, 0.019884,
		31.638069, 36.149620, 50.941341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861177, 36.301228, 51.488525>,  <31.187498, 36.685150, 50.927422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861177, 36.301228, 51.488525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213709, 36.123055, 51.425472>,  <31.425228, 36.016151, 51.387642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213709, 36.123055, 51.425472>,  <30.861177, 36.301228, 51.488525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213709, 36.123055, 51.425472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082488, -0.473534, 0.876904,
		-0.465233, -0.759846, -0.454085,
		0.881336, -0.445421, -0.157626,
		31.478107, 35.989426, 51.378181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800283, 35.455780, 51.669056>,  <30.861177, 36.301228, 51.488525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800283, 35.455780, 51.669056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.142641, 35.655621, 51.722492>,  <31.348055, 35.775524, 51.754555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.142641, 35.655621, 51.722492>,  <30.800283, 35.455780, 51.669056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142641, 35.655621, 51.722492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053255, -0.342088, 0.938157,
		0.514406, -0.795847, -0.319397,
		0.855892, 0.499603, 0.133590,
		31.399408, 35.805500, 51.762569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.451775, 36.434521, 36.417843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795204, 36.400135, 36.620014>,  <37.001263, 36.379505, 36.741318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795204, 36.400135, 36.620014>,  <36.451775, 36.434521, 36.417843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795204, 36.400135, 36.620014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466597, 0.277489, 0.839814,
		-0.212441, -0.956876, 0.198136,
		0.858578, -0.085961, 0.505425,
		37.052776, 36.374348, 36.771641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324047, 35.913395, 36.996037>,  <36.451775, 36.434521, 36.417843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324047, 35.913395, 36.996037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606163, 36.176563, 37.101643>,  <36.775433, 36.334465, 37.165009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606163, 36.176563, 37.101643>,  <36.324047, 35.913395, 36.996037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606163, 36.176563, 37.101643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460152, 0.141552, 0.876483,
		0.539286, -0.739662, 0.402580,
		0.705287, 0.657923, 0.264019,
		36.817749, 36.373940, 37.180847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647346, 35.660553, 37.617836>,  <36.324047, 35.913395, 36.996037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647346, 35.660553, 37.617836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736290, 36.049919, 37.639824>,  <36.789658, 36.283539, 37.653019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736290, 36.049919, 37.639824>,  <36.647346, 35.660553, 37.617836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736290, 36.049919, 37.639824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437515, 0.049239, 0.897862,
		0.871284, -0.223702, 0.436832,
		0.222363, 0.973413, 0.054972,
		36.802998, 36.341942, 37.656315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944042, 35.749126, 38.307102>,  <36.647346, 35.660553, 37.617836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944042, 35.749126, 38.307102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813377, 36.097050, 38.159199>,  <36.734978, 36.305805, 38.070457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813377, 36.097050, 38.159199>,  <36.944042, 35.749126, 38.307102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813377, 36.097050, 38.159199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441172, 0.205662, 0.873539,
		0.835858, 0.448482, 0.316552,
		-0.326663, 0.869809, -0.369762,
		36.715378, 36.357994, 38.048271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122906, 36.246231, 38.771530>,  <36.944042, 35.749126, 38.307102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122906, 36.246231, 38.771530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811718, 36.381226, 38.559544>,  <36.625004, 36.462223, 38.432354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811718, 36.381226, 38.559544>,  <37.122906, 36.246231, 38.771530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811718, 36.381226, 38.559544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509431, 0.154872, 0.846460,
		0.367748, 0.928501, 0.051443,
		-0.777972, 0.337491, -0.529962,
		36.578327, 36.482471, 38.400555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874996, 36.785072, 39.078632>,  <37.122906, 36.246231, 38.771530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874996, 36.785072, 39.078632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554115, 36.728146, 38.846695>,  <36.361588, 36.693989, 38.707531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554115, 36.728146, 38.846695>,  <36.874996, 36.785072, 39.078632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554115, 36.728146, 38.846695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597049, 0.187512, 0.779982,
		-0.002279, 0.971897, -0.235394,
		-0.802202, -0.142319, -0.579843,
		36.313454, 36.685452, 38.672741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401455, 37.285374, 39.271324>,  <36.874996, 36.785072, 39.078632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401455, 37.285374, 39.271324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168865, 37.022160, 39.079956>,  <36.029312, 36.864231, 38.965137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168865, 37.022160, 39.079956>,  <36.401455, 37.285374, 39.271324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168865, 37.022160, 39.079956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713672, 0.130243, 0.688265,
		-0.390590, 0.741640, -0.545352,
		-0.581473, -0.658033, -0.478416,
		35.994423, 36.824749, 38.936432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675266, 37.564892, 39.147999>,  <36.401455, 37.285374, 39.271324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675266, 37.564892, 39.147999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644863, 37.166065, 39.144440>,  <35.626621, 36.926769, 39.142303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644863, 37.166065, 39.144440>,  <35.675266, 37.564892, 39.147999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644863, 37.166065, 39.144440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654285, 0.043142, 0.755017,
		-0.752419, 0.063211, -0.655645,
		-0.076011, -0.997067, -0.008897,
		35.622059, 36.866943, 39.141769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019211, 37.406067, 39.262974>,  <35.675266, 37.564892, 39.147999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019211, 37.406067, 39.262974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135628, 37.031815, 39.342873>,  <35.205479, 36.807262, 39.390812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135628, 37.031815, 39.342873>,  <35.019211, 37.406067, 39.262974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135628, 37.031815, 39.342873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609329, -0.020312, 0.792658,
		-0.737574, -0.352407, -0.576016,
		0.291038, -0.935627, 0.199750,
		35.222939, 36.751125, 39.402798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388027, 37.050030, 39.498650>,  <35.019211, 37.406067, 39.262974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388027, 37.050030, 39.498650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666805, 36.782024, 39.600906>,  <34.834072, 36.621220, 39.662262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666805, 36.782024, 39.600906>,  <34.388027, 37.050030, 39.498650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666805, 36.782024, 39.600906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570041, -0.301299, 0.764377,
		-0.435118, -0.678454, -0.591923,
		0.696940, -0.670015, 0.255646,
		34.875889, 36.581020, 39.677601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077682, 36.456406, 39.610344>,  <34.388027, 37.050030, 39.498650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077682, 36.456406, 39.610344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417488, 36.436817, 39.820461>,  <34.621372, 36.425064, 39.946533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417488, 36.436817, 39.820461>,  <34.077682, 36.456406, 39.610344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417488, 36.436817, 39.820461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522891, -0.210508, 0.825997,
		0.070133, -0.976365, -0.204433,
		0.849510, -0.048966, 0.525296,
		34.672340, 36.422127, 39.978050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972111, 36.022602, 40.069790>,  <34.077682, 36.456406, 39.610344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972111, 36.022602, 40.069790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273872, 36.231136, 40.229332>,  <34.454929, 36.356255, 40.325058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273872, 36.231136, 40.229332>,  <33.972111, 36.022602, 40.069790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273872, 36.231136, 40.229332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425048, -0.075063, 0.902053,
		0.500210, -0.850045, 0.164963,
		0.754403, 0.521333, 0.398857,
		34.500195, 36.387535, 40.348988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591778, 35.439907, 39.710060>,  <33.972111, 36.022602, 40.069790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591778, 35.439907, 39.710060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439926, 35.088993, 39.827541>,  <33.348816, 34.878445, 39.898029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439926, 35.088993, 39.827541>,  <33.591778, 35.439907, 39.710060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439926, 35.088993, 39.827541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425382, -0.116395, -0.897498,
		0.821544, -0.465649, -0.328994,
		-0.379626, -0.877282, 0.293702,
		33.326038, 34.825809, 39.915653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927536, 34.846767, 39.278988>,  <33.591778, 35.439907, 39.710060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927536, 34.846767, 39.278988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560287, 34.766796, 39.415855>,  <33.339939, 34.718811, 39.497974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560287, 34.766796, 39.415855>,  <33.927536, 34.846767, 39.278988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560287, 34.766796, 39.415855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370239, 0.124836, -0.920510,
		0.141350, -0.971819, -0.188647,
		-0.918119, -0.199959, 0.342159,
		33.284851, 34.706818, 39.518505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669746, 34.227062, 38.881161>,  <33.927536, 34.846767, 39.278988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669746, 34.227062, 38.881161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337330, 34.386650, 39.036182>,  <33.137882, 34.482403, 39.129196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337330, 34.386650, 39.036182>,  <33.669746, 34.227062, 38.881161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337330, 34.386650, 39.036182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380762, 0.099847, -0.919266,
		-0.405458, -0.911510, 0.068937,
		-0.831038, 0.398973, 0.387553,
		33.088020, 34.506340, 39.152447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191391, 33.975460, 38.459503>,  <33.669746, 34.227062, 38.881161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191391, 33.975460, 38.459503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016052, 34.296780, 38.620781>,  <32.910851, 34.489571, 38.717548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016052, 34.296780, 38.620781>,  <33.191391, 33.975460, 38.459503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016052, 34.296780, 38.620781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540266, 0.123014, -0.832455,
		-0.718306, -0.582737, 0.380071,
		-0.438348, 0.803296, 0.403194,
		32.884548, 34.537769, 38.741741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384865, 33.879299, 38.381042>,  <33.191391, 33.975460, 38.459503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384865, 33.879299, 38.381042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458290, 34.268944, 38.433811>,  <32.502346, 34.502731, 38.465473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458290, 34.268944, 38.433811>,  <32.384865, 33.879299, 38.381042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458290, 34.268944, 38.433811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658934, 0.221517, -0.718844,
		-0.729460, 0.045027, 0.682540,
		0.183562, 0.974117, 0.131918,
		32.513359, 34.561180, 38.473385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723791, 34.233158, 38.376717>,  <32.384865, 33.879299, 38.381042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723791, 34.233158, 38.376717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983055, 34.523838, 38.285683>,  <32.138615, 34.698246, 38.231060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983055, 34.523838, 38.285683>,  <31.723791, 34.233158, 38.376717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983055, 34.523838, 38.285683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518558, 0.202337, -0.830757,
		-0.557660, 0.656483, 0.507981,
		0.648162, 0.726698, -0.227589,
		32.177505, 34.741848, 38.217407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324213, 34.676823, 38.135883>,  <31.723791, 34.233158, 38.376717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324213, 34.676823, 38.135883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675335, 34.802677, 37.991405>,  <31.886009, 34.878189, 37.904720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675335, 34.802677, 37.991405>,  <31.324213, 34.676823, 38.135883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675335, 34.802677, 37.991405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446140, 0.262469, -0.855611,
		-0.174404, 0.912203, 0.370769,
		0.877806, 0.314637, -0.361194,
		31.938677, 34.897068, 37.883049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264437, 35.420479, 37.957237>,  <31.324213, 34.676823, 38.135883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264437, 35.420479, 37.957237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555555, 35.266068, 37.730503>,  <31.730227, 35.173420, 37.594463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555555, 35.266068, 37.730503>,  <31.264437, 35.420479, 37.957237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555555, 35.266068, 37.730503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482078, 0.299888, -0.823206,
		0.487763, 0.872383, 0.032164,
		0.727797, -0.386024, -0.566831,
		31.773895, 35.150261, 37.560455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310909, 35.853649, 37.389179>,  <31.264437, 35.420479, 37.957237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310909, 35.853649, 37.389179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516376, 35.546349, 37.236378>,  <31.639658, 35.361969, 37.144695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516376, 35.546349, 37.236378>,  <31.310909, 35.853649, 37.389179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516376, 35.546349, 37.236378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350165, 0.218751, -0.910787,
		0.783281, 0.601608, -0.156650,
		0.513669, -0.768255, -0.382005,
		31.670477, 35.315872, 37.121777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716440, 36.084991, 36.789646>,  <31.310909, 35.853649, 37.389179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716440, 36.084991, 36.789646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692429, 35.687630, 36.750584>,  <31.678022, 35.449211, 36.727146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692429, 35.687630, 36.750584>,  <31.716440, 36.084991, 36.789646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692429, 35.687630, 36.750584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132126, 0.104883, -0.985669,
		0.989414, -0.046265, -0.137551,
		-0.060028, -0.993408, -0.097660,
		31.674419, 35.389606, 36.721287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998352, 35.971825, 36.222111>,  <31.716440, 36.084991, 36.789646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998352, 35.971825, 36.222111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807587, 35.622444, 36.261383>,  <31.693127, 35.412815, 36.284946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807587, 35.622444, 36.261383>,  <31.998352, 35.971825, 36.222111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807587, 35.622444, 36.261383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208596, 0.003965, -0.977994,
		0.853839, -0.486899, -0.184089,
		-0.476914, -0.873450, 0.098180,
		31.664513, 35.360409, 36.290836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351185, 35.435143, 35.758575>,  <31.998352, 35.971825, 36.222111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351185, 35.435143, 35.758575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966515, 35.343567, 35.818928>,  <31.735712, 35.288620, 35.855141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966515, 35.343567, 35.818928>,  <32.351185, 35.435143, 35.758575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966515, 35.343567, 35.818928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127927, -0.112086, -0.985430,
		0.242516, -0.966966, 0.078502,
		-0.961676, -0.228940, 0.150884,
		31.678011, 35.274883, 35.864193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215717, 34.821133, 35.317013>,  <32.351185, 35.435143, 35.758575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215717, 34.821133, 35.317013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876850, 35.019051, 35.394463>,  <31.673531, 35.137802, 35.440933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876850, 35.019051, 35.394463>,  <32.215717, 34.821133, 35.317013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876850, 35.019051, 35.394463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324605, -0.193466, -0.925852,
		-0.420646, -0.847201, 0.324511,
		-0.847165, 0.494795, 0.193625,
		31.622700, 35.167488, 35.452549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728580, 34.273014, 34.957787>,  <32.215717, 34.821133, 35.317013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728580, 34.273014, 34.957787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453861, 34.557804, 35.016300>,  <31.289030, 34.728680, 35.051407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453861, 34.557804, 35.016300>,  <31.728580, 34.273014, 34.957787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453861, 34.557804, 35.016300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442470, -0.249862, -0.861272,
		-0.576656, -0.656244, 0.486633,
		-0.686795, 0.711978, 0.146283,
		31.247822, 34.771397, 35.060184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348473, 33.739811, 35.211483>,  <31.728580, 34.273014, 34.957787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348473, 33.739811, 35.211483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281818, 33.431507, 34.965504>,  <32.241825, 33.246525, 34.817917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281818, 33.431507, 34.965504>,  <32.348473, 33.739811, 35.211483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281818, 33.431507, 34.965504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246828, -0.636422, 0.730783,
		-0.954625, -0.030013, 0.296295,
		-0.166635, -0.770757, -0.614952,
		32.231827, 33.200279, 34.781017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819614, 33.277874, 35.499390>,  <32.348473, 33.739811, 35.211483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819614, 33.277874, 35.499390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026394, 33.026592, 35.266796>,  <32.150459, 32.875824, 35.127239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026394, 33.026592, 35.266796>,  <31.819614, 33.277874, 35.499390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026394, 33.026592, 35.266796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187840, -0.579490, 0.793037,
		-0.835154, -0.519185, -0.181564,
		0.516947, -0.628203, -0.581487,
		32.181477, 32.838131, 35.092350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599770, 32.564877, 35.432381>,  <31.819614, 33.277874, 35.499390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599770, 32.564877, 35.432381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999176, 32.575794, 35.413532>,  <32.238819, 32.582344, 35.402225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999176, 32.575794, 35.413532>,  <31.599770, 32.564877, 35.432381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999176, 32.575794, 35.413532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054431, -0.476914, 0.877263,
		0.001472, -0.878526, -0.477692,
		0.998516, 0.027293, -0.047117,
		32.298733, 32.583981, 35.399399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960693, 31.827549, 35.560810>,  <31.599770, 32.564877, 35.432381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960693, 31.827549, 35.560810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173958, 32.150127, 35.663094>,  <32.301914, 32.343674, 35.724464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173958, 32.150127, 35.663094>,  <31.960693, 31.827549, 35.560810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173958, 32.150127, 35.663094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196612, -0.412081, 0.889681,
		0.822852, -0.424067, -0.378262,
		0.533159, 0.806447, 0.255705,
		32.333904, 32.392063, 35.739803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510712, 31.625448, 35.867477>,  <31.960693, 31.827549, 35.560810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510712, 31.625448, 35.867477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479973, 31.997944, 36.009964>,  <32.461529, 32.221439, 36.095455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479973, 31.997944, 36.009964>,  <32.510712, 31.625448, 35.867477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479973, 31.997944, 36.009964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142117, -0.343394, 0.928377,
		0.986863, 0.121964, -0.105958,
		-0.076843, 0.931239, 0.356216,
		32.456921, 32.277317, 36.116829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030418, 31.607494, 36.329697>,  <32.510712, 31.625448, 35.867477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030418, 31.607494, 36.329697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779163, 31.900898, 36.433552>,  <32.628410, 32.076939, 36.495865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779163, 31.900898, 36.433552>,  <33.030418, 31.607494, 36.329697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779163, 31.900898, 36.433552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064896, -0.283126, 0.956885,
		0.775392, 0.617903, 0.130240,
		-0.628137, 0.733508, 0.259634,
		32.590721, 32.120949, 36.511440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238846, 31.610821, 37.096386>,  <33.030418, 31.607494, 36.329697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238846, 31.610821, 37.096386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895054, 31.807241, 37.039585>,  <32.688778, 31.925095, 37.005505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895054, 31.807241, 37.039585>,  <33.238846, 31.610821, 37.096386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895054, 31.807241, 37.039585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206760, -0.079902, 0.975123,
		0.467492, 0.867457, 0.170205,
		-0.859477, 0.491054, -0.142002,
		32.637211, 31.954557, 36.996986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175125, 32.202698, 37.530872>,  <33.238846, 31.610821, 37.096386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175125, 32.202698, 37.530872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801655, 32.088913, 37.443848>,  <32.577572, 32.020641, 37.391632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801655, 32.088913, 37.443848>,  <33.175125, 32.202698, 37.530872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801655, 32.088913, 37.443848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165880, -0.194883, 0.966698,
		-0.317389, 0.938670, 0.134770,
		-0.933675, -0.284463, -0.217560,
		32.521553, 32.003574, 37.378578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724194, 32.577274, 38.080013>,  <33.175125, 32.202698, 37.530872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724194, 32.577274, 38.080013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529819, 32.250904, 37.954708>,  <32.413197, 32.055080, 37.879524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529819, 32.250904, 37.954708>,  <32.724194, 32.577274, 38.080013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529819, 32.250904, 37.954708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099729, -0.304318, 0.947336,
		-0.868287, 0.491583, 0.066507,
		-0.485933, -0.815927, -0.313261,
		32.384041, 32.006126, 37.860729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334846, 32.389458, 38.616879>,  <32.724194, 32.577274, 38.080013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334846, 32.389458, 38.616879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240517, 32.069706, 38.395836>,  <32.183918, 31.877855, 38.263210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240517, 32.069706, 38.395836>,  <32.334846, 32.389458, 38.616879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240517, 32.069706, 38.395836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151077, -0.591891, 0.791733,
		-0.959980, 0.103226, 0.260352,
		-0.235827, -0.799381, -0.552608,
		32.169769, 31.829891, 38.230053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743610, 32.093800, 38.939438>,  <32.334846, 32.389458, 38.616879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743610, 32.093800, 38.939438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962801, 31.837273, 38.724613>,  <32.094315, 31.683357, 38.595718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962801, 31.837273, 38.724613>,  <31.743610, 32.093800, 38.939438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962801, 31.837273, 38.724613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154300, -0.553527, 0.818413,
		-0.822141, -0.531338, -0.204363,
		0.547974, -0.641318, -0.537062,
		32.127193, 31.644876, 38.563496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453329, 31.415945, 39.035583>,  <31.743610, 32.093800, 38.939438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453329, 31.415945, 39.035583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835569, 31.360682, 38.931477>,  <32.064915, 31.327524, 38.869015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835569, 31.360682, 38.931477>,  <31.453329, 31.415945, 39.035583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835569, 31.360682, 38.931477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139699, -0.565268, 0.812992,
		-0.259442, -0.813255, -0.520871,
		0.955601, -0.138159, -0.260265,
		32.122250, 31.319233, 38.853397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586693, 30.719164, 39.263512>,  <31.453329, 31.415945, 39.035583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586693, 30.719164, 39.263512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945072, 30.894516, 39.234936>,  <32.160099, 30.999727, 39.217793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945072, 30.894516, 39.234936>,  <31.586693, 30.719164, 39.263512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945072, 30.894516, 39.234936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160512, -0.169596, 0.972354,
		0.414145, -0.882644, -0.222314,
		0.895946, 0.438380, -0.071438,
		32.213856, 31.026030, 39.213505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084469, 30.355869, 39.653580>,  <31.586693, 30.719164, 39.263512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084469, 30.355869, 39.653580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295628, 30.689604, 39.590069>,  <32.422321, 30.889845, 39.551960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295628, 30.689604, 39.590069>,  <32.084469, 30.355869, 39.653580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295628, 30.689604, 39.590069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395636, -0.076146, 0.915246,
		0.751531, -0.545974, -0.370290,
		0.527896, 0.834335, -0.158781,
		32.453995, 30.939903, 39.542435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669102, 30.203613, 39.918247>,  <32.084469, 30.355869, 39.653580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669102, 30.203613, 39.918247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657215, 30.603411, 39.922737>,  <32.650082, 30.843290, 39.925430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657215, 30.603411, 39.922737>,  <32.669102, 30.203613, 39.918247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657215, 30.603411, 39.922737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224620, -0.004267, 0.974437,
		0.973993, 0.031483, -0.224379,
		-0.029721, 0.999495, 0.011227,
		32.648300, 30.903259, 39.926105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314789, 30.374590, 40.283035>,  <32.669102, 30.203613, 39.918247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314789, 30.374590, 40.283035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064026, 30.685339, 40.306526>,  <32.913567, 30.871788, 40.320621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064026, 30.685339, 40.306526>,  <33.314789, 30.374590, 40.283035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064026, 30.685339, 40.306526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109380, 0.013128, 0.993913,
		0.771374, 0.629519, -0.093205,
		-0.626911, 0.776874, 0.058731,
		32.875954, 30.918402, 40.324146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642075, 30.797462, 40.730133>,  <33.314789, 30.374590, 40.283035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642075, 30.797462, 40.730133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276363, 30.959269, 40.738796>,  <33.056938, 31.056353, 40.743996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276363, 30.959269, 40.738796>,  <33.642075, 30.797462, 40.730133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276363, 30.959269, 40.738796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042130, 0.041776, 0.998238,
		0.402899, 0.913576, -0.055237,
		-0.914274, 0.404516, 0.021658,
		33.002083, 31.080624, 40.745293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677055, 31.504618, 41.130356>,  <33.642075, 30.797462, 40.730133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677055, 31.504618, 41.130356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307896, 31.351427, 41.146240>,  <33.086399, 31.259512, 41.155773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307896, 31.351427, 41.146240>,  <33.677055, 31.504618, 41.130356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307896, 31.351427, 41.146240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020600, 0.152113, 0.988148,
		-0.384481, 0.911147, -0.148275,
		-0.922903, -0.382979, 0.039715,
		33.031025, 31.236534, 41.158154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437881, 31.827574, 41.718536>,  <33.677055, 31.504618, 41.130356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437881, 31.827574, 41.718536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161285, 31.545586, 41.655476>,  <32.995327, 31.376392, 41.617638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161285, 31.545586, 41.655476>,  <33.437881, 31.827574, 41.718536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161285, 31.545586, 41.655476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215441, -0.007053, 0.976491,
		-0.689510, 0.709201, -0.147003,
		-0.691492, -0.704971, -0.157654,
		32.953838, 31.334095, 41.608181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840088, 32.004978, 42.087975>,  <33.437881, 31.827574, 41.718536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840088, 32.004978, 42.087975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812637, 31.610180, 42.029842>,  <32.796165, 31.373301, 41.994965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812637, 31.610180, 42.029842>,  <32.840088, 32.004978, 42.087975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812637, 31.610180, 42.029842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219747, -0.127141, 0.967237,
		-0.973140, 0.098315, -0.208165,
		-0.068627, -0.987000, -0.145330,
		32.792049, 31.314079, 41.986244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171722, 31.718975, 42.471870>,  <32.840088, 32.004978, 42.087975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171722, 31.718975, 42.471870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391644, 31.392015, 42.403080>,  <32.523598, 31.195839, 42.361805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391644, 31.392015, 42.403080>,  <32.171722, 31.718975, 42.471870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391644, 31.392015, 42.403080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083778, -0.258810, 0.962288,
		-0.831082, -0.514662, -0.210775,
		0.549803, -0.817399, -0.171975,
		32.556583, 31.146795, 42.351486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809700, 31.202894, 42.854053>,  <32.171722, 31.718975, 42.471870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809700, 31.202894, 42.854053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176380, 31.055603, 42.792004>,  <32.396389, 30.967228, 42.754772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176380, 31.055603, 42.792004>,  <31.809700, 31.202894, 42.854053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176380, 31.055603, 42.792004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035711, -0.311182, 0.949679,
		-0.397973, -0.876112, -0.272111,
		0.916702, -0.368229, -0.155129,
		32.451389, 30.945135, 42.745464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720724, 30.427135, 42.909042>,  <31.809700, 31.202894, 42.854053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720724, 30.427135, 42.909042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091160, 30.556271, 42.987152>,  <32.313423, 30.633751, 43.034019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091160, 30.556271, 42.987152>,  <31.720724, 30.427135, 42.909042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091160, 30.556271, 42.987152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097003, -0.296431, 0.950115,
		0.364617, -0.898835, -0.243206,
		0.926091, 0.322836, 0.195274,
		32.368988, 30.653122, 43.045734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894814, 29.957964, 43.352535>,  <31.720724, 30.427135, 42.909042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894814, 29.957964, 43.352535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182823, 30.228851, 43.413120>,  <32.355629, 30.391384, 43.449471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182823, 30.228851, 43.413120>,  <31.894814, 29.957964, 43.352535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182823, 30.228851, 43.413120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054249, -0.272517, 0.960620,
		0.691827, -0.683452, -0.232957,
		0.720023, 0.677221, 0.151458,
		32.398830, 30.432018, 43.458557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388294, 29.626396, 43.846912>,  <31.894814, 29.957964, 43.352535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388294, 29.626396, 43.846912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494164, 30.010405, 43.883369>,  <32.557686, 30.240810, 43.905243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494164, 30.010405, 43.883369>,  <32.388294, 29.626396, 43.846912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494164, 30.010405, 43.883369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140480, -0.131891, 0.981259,
		0.954051, -0.246911, -0.169772,
		0.264675, 0.960020, 0.091145,
		32.573566, 30.298410, 43.910713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011242, 29.596809, 44.196766>,  <32.388294, 29.626396, 43.846912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011242, 29.596809, 44.196766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834896, 29.950575, 44.258026>,  <32.729088, 30.162834, 44.294781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834896, 29.950575, 44.258026>,  <33.011242, 29.596809, 44.196766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834896, 29.950575, 44.258026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141976, -0.099763, 0.984830,
		0.886273, 0.455920, -0.081583,
		-0.440865, 0.884412, 0.153147,
		32.702637, 30.215899, 44.303970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355862, 29.918158, 44.781876>,  <33.011242, 29.596809, 44.196766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355862, 29.918158, 44.781876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031380, 30.150852, 44.758106>,  <32.836693, 30.290470, 44.743843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031380, 30.150852, 44.758106>,  <33.355862, 29.918158, 44.781876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031380, 30.150852, 44.758106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069710, 0.004695, 0.997556,
		0.580595, 0.813363, 0.036745,
		-0.811203, 0.581737, -0.059425,
		32.788017, 30.325373, 44.740280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480473, 30.464758, 45.151840>,  <33.355862, 29.918158, 44.781876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480473, 30.464758, 45.151840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080757, 30.449753, 45.153702>,  <32.840927, 30.440750, 45.154819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080757, 30.449753, 45.153702>,  <33.480473, 30.464758, 45.151840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080757, 30.449753, 45.153702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001671, 0.166941, 0.985965,
		-0.037764, 0.985253, -0.166884,
		-0.999285, -0.037513, 0.004658,
		32.780972, 30.438499, 45.155098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986732, 31.060425, 44.933357>,  <33.480473, 30.464758, 45.151840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986732, 31.060425, 44.933357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374332, 31.154623, 44.963238>,  <34.606892, 31.211142, 44.981167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374332, 31.154623, 44.963238>,  <33.986732, 31.060425, 44.933357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374332, 31.154623, 44.963238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066534, 0.042465, -0.996880,
		-0.237932, 0.970948, 0.025481,
		0.969000, 0.235494, 0.074705,
		34.665031, 31.225271, 44.985649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113560, 31.532808, 44.252426>,  <33.986732, 31.060425, 44.933357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113560, 31.532808, 44.252426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471134, 31.404711, 44.377857>,  <34.685677, 31.327852, 44.453114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471134, 31.404711, 44.377857>,  <34.113560, 31.532808, 44.252426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471134, 31.404711, 44.377857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398325, 0.246894, -0.883391,
		0.205479, 0.914597, 0.348267,
		0.893933, -0.320242, 0.313575,
		34.739315, 31.308638, 44.471931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566406, 32.032871, 44.156670>,  <34.113560, 31.532808, 44.252426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566406, 32.032871, 44.156670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793732, 31.703749, 44.158001>,  <34.930126, 31.506275, 44.158802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793732, 31.703749, 44.158001>,  <34.566406, 32.032871, 44.156670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793732, 31.703749, 44.158001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323393, 0.219638, -0.920422,
		0.756598, 0.524162, 0.390913,
		0.568310, -0.822808, 0.003333,
		34.964226, 31.456905, 44.159000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325089, 32.153385, 43.754189>,  <34.566406, 32.032871, 44.156670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325089, 32.153385, 43.754189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253689, 31.760019, 43.767059>,  <35.210850, 31.524000, 43.774780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253689, 31.760019, 43.767059>,  <35.325089, 32.153385, 43.754189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253689, 31.760019, 43.767059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162672, -0.061746, -0.984746,
		0.970400, -0.170544, 0.170996,
		-0.178501, -0.983414, 0.032175,
		35.200138, 31.464994, 43.776711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816124, 31.932163, 43.380562>,  <35.325089, 32.153385, 43.754189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816124, 31.932163, 43.380562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538223, 31.644785, 43.366951>,  <35.371483, 31.472359, 43.358784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538223, 31.644785, 43.366951>,  <35.816124, 31.932163, 43.380562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538223, 31.644785, 43.366951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089851, -0.039760, -0.995161,
		0.713617, -0.694445, 0.092176,
		-0.694750, -0.718447, -0.034023,
		35.329800, 31.429251, 43.356743>
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
