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
	<23.875603, 35.212917, 34.897488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167524, 34.943550, 34.850334>,  <24.342676, 34.781929, 34.822041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167524, 34.943550, 34.850334>,  <23.875603, 35.212917, 34.897488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.167524, 34.943550, 34.850334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464485, -0.361884, -0.808266,
		0.501639, 0.644631, -0.576896,
		0.729803, -0.673417, -0.117886,
		24.386465, 34.741524, 34.814968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.399651, 35.729214, 34.724854>,  <23.875603, 35.212917, 34.897488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.399651, 35.729214, 34.724854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307362, 36.094238, 34.589798>,  <24.251989, 36.313251, 34.508766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307362, 36.094238, 34.589798>,  <24.399651, 35.729214, 34.724854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307362, 36.094238, 34.589798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906509, 0.327683, 0.266203,
		0.353565, -0.244652, -0.902849,
		-0.230721, 0.912562, -0.337637,
		24.238146, 36.368008, 34.488506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810553, 36.031620, 34.200134>,  <24.399651, 35.729214, 34.724854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810553, 36.031620, 34.200134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666315, 36.306404, 34.452499>,  <24.579773, 36.471275, 34.603920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666315, 36.306404, 34.452499>,  <24.810553, 36.031620, 34.200134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.666315, 36.306404, 34.452499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928430, 0.199527, 0.313381,
		0.089396, 0.698764, -0.709745,
		-0.360592, 0.686963, 0.630916,
		24.558138, 36.512493, 34.641773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140520, 36.717701, 34.122772>,  <24.810553, 36.031620, 34.200134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140520, 36.717701, 34.122772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985506, 36.686905, 34.490227>,  <24.892498, 36.668427, 34.710697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985506, 36.686905, 34.490227>,  <25.140520, 36.717701, 34.122772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985506, 36.686905, 34.490227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877493, 0.274600, 0.393193,
		-0.282528, 0.958472, -0.038862,
		-0.387535, -0.076987, 0.918635,
		24.869246, 36.663811, 34.765816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307570, 37.359261, 34.460262>,  <25.140520, 36.717701, 34.122772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307570, 37.359261, 34.460262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220705, 37.077061, 34.730110>,  <25.168587, 36.907742, 34.892021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220705, 37.077061, 34.730110>,  <25.307570, 37.359261, 34.460262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220705, 37.077061, 34.730110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801033, 0.266159, 0.536195,
		-0.557840, 0.656837, 0.507325,
		-0.217163, -0.705495, 0.674623,
		25.155556, 36.865414, 34.932499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007095, 37.130760, 34.067524>,  <25.307570, 37.359261, 34.460262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007095, 37.130760, 34.067524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850229, 37.421871, 33.842476>,  <25.756109, 37.596539, 33.707447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850229, 37.421871, 33.842476>,  <26.007095, 37.130760, 34.067524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850229, 37.421871, 33.842476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865767, -0.498711, -0.041639,
		-0.310890, 0.470770, 0.825665,
		-0.392166, 0.727779, -0.562622,
		25.732580, 37.640205, 33.673691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431385, 36.695087, 34.421940>,  <26.007095, 37.130760, 34.067524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431385, 36.695087, 34.421940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223612, 36.405300, 34.240681>,  <26.098948, 36.231426, 34.131927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223612, 36.405300, 34.240681>,  <26.431385, 36.695087, 34.421940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223612, 36.405300, 34.240681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833688, 0.546007, 0.082709,
		0.187500, 0.420742, -0.887592,
		-0.519431, -0.724467, -0.453143,
		26.067783, 36.187962, 34.104736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120890, 37.134647, 34.475849>,  <26.431385, 36.695087, 34.421940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120890, 37.134647, 34.475849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502632, 37.250622, 34.447166>,  <27.731678, 37.320206, 34.429958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502632, 37.250622, 34.447166>,  <27.120890, 37.134647, 34.475849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502632, 37.250622, 34.447166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269755, 0.939811, 0.209731,
		0.128194, -0.180816, 0.975127,
		0.954358, 0.289932, -0.071702,
		27.788939, 37.337601, 34.425655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202024, 37.588348, 35.081142>,  <27.120890, 37.134647, 34.475849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202024, 37.588348, 35.081142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492184, 37.674465, 34.819626>,  <27.666279, 37.726135, 34.662716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492184, 37.674465, 34.819626>,  <27.202024, 37.588348, 35.081142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492184, 37.674465, 34.819626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270987, 0.962445, 0.016266,
		0.632743, 0.165370, 0.756498,
		0.725398, 0.215294, -0.653794,
		27.709803, 37.739052, 34.623489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688709, 38.236027, 35.327568>,  <27.202024, 37.588348, 35.081142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688709, 38.236027, 35.327568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678164, 38.206932, 34.928768>,  <27.671835, 38.189476, 34.689487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678164, 38.206932, 34.928768>,  <27.688709, 38.236027, 35.327568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678164, 38.206932, 34.928768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275447, 0.959270, -0.062698,
		0.960955, 0.272968, -0.045326,
		-0.026365, -0.072735, -0.997003,
		27.670254, 38.185112, 34.629669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064785, 38.753254, 35.084324>,  <27.688709, 38.236027, 35.327568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064785, 38.753254, 35.084324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846375, 38.664383, 34.761215>,  <27.715328, 38.611061, 34.567352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846375, 38.664383, 34.761215>,  <28.064785, 38.753254, 35.084324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846375, 38.664383, 34.761215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372852, 0.927885, -0.003184,
		0.750225, 0.299440, -0.589490,
		-0.546026, -0.222181, -0.807769,
		27.682568, 38.597729, 34.518883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325171, 39.078320, 34.602898>,  <28.064785, 38.753254, 35.084324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325171, 39.078320, 34.602898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951529, 39.002193, 34.482082>,  <27.727343, 38.956520, 34.409592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951529, 39.002193, 34.482082>,  <28.325171, 39.078320, 34.602898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951529, 39.002193, 34.482082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151618, 0.977451, -0.146977,
		0.323198, -0.091498, -0.941898,
		-0.934107, -0.190311, -0.302037,
		27.671297, 38.945099, 34.391472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197720, 39.363873, 33.943226>,  <28.325171, 39.078320, 34.602898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197720, 39.363873, 33.943226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825720, 39.330708, 34.086460>,  <27.602520, 39.310806, 34.172401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825720, 39.330708, 34.086460>,  <28.197720, 39.363873, 33.943226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825720, 39.330708, 34.086460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217674, 0.909255, -0.354786,
		-0.296176, -0.407897, -0.863655,
		-0.929999, -0.082916, 0.358088,
		27.546721, 39.305832, 34.193886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826683, 39.757671, 33.374615>,  <28.197720, 39.363873, 33.943226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826683, 39.757671, 33.374615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562117, 39.716682, 33.671810>,  <27.403378, 39.692089, 33.850128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562117, 39.716682, 33.671810>,  <27.826683, 39.757671, 33.374615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562117, 39.716682, 33.671810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368883, 0.906972, -0.203293,
		-0.653037, -0.408536, -0.637684,
		-0.661414, -0.102473, 0.742988,
		27.363693, 39.685940, 33.894707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267540, 40.150574, 33.192894>,  <27.826683, 39.757671, 33.374615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267540, 40.150574, 33.192894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174036, 40.093784, 33.577644>,  <27.117933, 40.059711, 33.808495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174036, 40.093784, 33.577644>,  <27.267540, 40.150574, 33.192894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174036, 40.093784, 33.577644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411631, 0.910702, 0.034383,
		-0.880861, -0.387900, -0.271327,
		-0.233761, -0.141974, 0.961873,
		27.103909, 40.051193, 33.866207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465733, 40.388176, 33.361946>,  <27.267540, 40.150574, 33.192894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465733, 40.388176, 33.361946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689604, 40.416782, 33.692192>,  <26.823927, 40.433945, 33.890339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689604, 40.416782, 33.692192>,  <26.465733, 40.388176, 33.361946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689604, 40.416782, 33.692192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254826, 0.962851, 0.089344,
		-0.788557, -0.260393, 0.557111,
		0.559680, 0.071513, 0.825618,
		26.857508, 40.438236, 33.939877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007685, 40.756603, 33.814030>,  <26.465733, 40.388176, 33.361946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007685, 40.756603, 33.814030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370790, 40.780613, 33.980095>,  <26.588654, 40.795021, 34.079735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370790, 40.780613, 33.980095>,  <26.007685, 40.756603, 33.814030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370790, 40.780613, 33.980095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106047, 0.990399, 0.088675,
		-0.405851, -0.124523, 0.905416,
		0.907766, 0.060028, 0.415160,
		26.643120, 40.798622, 34.104645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887310, 41.189842, 34.290398>,  <26.007685, 40.756603, 33.814030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887310, 41.189842, 34.290398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282602, 41.213619, 34.234013>,  <26.519777, 41.227886, 34.200180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282602, 41.213619, 34.234013>,  <25.887310, 41.189842, 34.290398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282602, 41.213619, 34.234013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042572, 0.991886, 0.119788,
		0.146942, -0.112377, 0.982741,
		0.988229, 0.059439, -0.140966,
		26.579071, 41.231449, 34.191723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049290, 41.613583, 34.682518>,  <25.887310, 41.189842, 34.290398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049290, 41.613583, 34.682518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364534, 41.622047, 34.436451>,  <26.553680, 41.627129, 34.288811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364534, 41.622047, 34.436451>,  <26.049290, 41.613583, 34.682518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364534, 41.622047, 34.436451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166707, 0.969397, -0.180219,
		0.592529, 0.244586, 0.767520,
		0.788111, 0.021166, -0.615169,
		26.600967, 41.628399, 34.251900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184277, 42.260571, 34.751713>,  <26.049290, 41.613583, 34.682518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184277, 42.260571, 34.751713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414227, 42.155724, 34.441662>,  <26.552197, 42.092815, 34.255630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414227, 42.155724, 34.441662>,  <26.184277, 42.260571, 34.751713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414227, 42.155724, 34.441662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023747, 0.941560, -0.336007,
		0.817897, 0.211568, 0.535054,
		0.574874, -0.262113, -0.775123,
		26.586689, 42.077091, 34.209126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827984, 42.359478, 34.904335>,  <26.184277, 42.260571, 34.751713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827984, 42.359478, 34.904335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787121, 42.368504, 34.506531>,  <26.762604, 42.373920, 34.267849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787121, 42.368504, 34.506531>,  <26.827984, 42.359478, 34.904335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787121, 42.368504, 34.506531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191349, 0.981519, 0.002618,
		0.976192, -0.190031, -0.104586,
		-0.102156, 0.022568, -0.994512,
		26.756474, 42.375275, 34.208176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404642, 42.853378, 34.652397>,  <26.827984, 42.359478, 34.904335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404642, 42.853378, 34.652397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166153, 42.796951, 34.336266>,  <27.023060, 42.763096, 34.146587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166153, 42.796951, 34.336266>,  <27.404642, 42.853378, 34.652397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166153, 42.796951, 34.336266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067425, 0.972164, -0.224389,
		0.799981, -0.187074, -0.570117,
		-0.596225, -0.141066, -0.790327,
		26.987286, 42.754631, 34.099167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744518, 43.111538, 34.105904>,  <27.404642, 42.853378, 34.652397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744518, 43.111538, 34.105904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357950, 43.106934, 34.003220>,  <27.126009, 43.104172, 33.941608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357950, 43.106934, 34.003220>,  <27.744518, 43.111538, 34.105904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357950, 43.106934, 34.003220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061632, 0.959455, -0.275041,
		0.249463, -0.281627, -0.926528,
		-0.966421, -0.011509, -0.256706,
		27.068024, 43.103481, 33.926208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769390, 43.451862, 33.511093>,  <27.744518, 43.111538, 34.105904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769390, 43.451862, 33.511093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410126, 43.474602, 33.685482>,  <27.194567, 43.488247, 33.790115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410126, 43.474602, 33.685482>,  <27.769390, 43.451862, 33.511093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410126, 43.474602, 33.685482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090408, 0.994295, 0.056598,
		-0.430270, 0.090250, -0.898177,
		-0.898161, 0.056850, 0.435975,
		27.140676, 43.491657, 33.816273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247324, 43.981701, 33.146973>,  <27.769390, 43.451862, 33.511093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247324, 43.981701, 33.146973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132648, 43.926876, 33.526241>,  <27.063843, 43.893982, 33.753803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132648, 43.926876, 33.526241>,  <27.247324, 43.981701, 33.146973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132648, 43.926876, 33.526241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043860, 0.990552, 0.129932,
		-0.957019, -0.004336, -0.289993,
		-0.286690, -0.137066, 0.948168,
		27.046642, 43.885757, 33.810692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645668, 44.448086, 33.408978>,  <27.247324, 43.981701, 33.146973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645668, 44.448086, 33.408978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900724, 44.330330, 33.693722>,  <27.053759, 44.259678, 33.864571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900724, 44.330330, 33.693722>,  <26.645668, 44.448086, 33.408978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900724, 44.330330, 33.693722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089427, 0.946138, 0.311167,
		-0.765125, -0.134754, 0.629623,
		0.637642, -0.294387, 0.711864,
		27.092016, 44.242012, 33.907280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333302, 44.555222, 33.978855>,  <26.645668, 44.448086, 33.408978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333302, 44.555222, 33.978855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731340, 44.587601, 34.001602>,  <26.970163, 44.607029, 34.015251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731340, 44.587601, 34.001602>,  <26.333302, 44.555222, 33.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731340, 44.587601, 34.001602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087673, 0.987892, 0.127998,
		-0.045819, -0.132356, 0.990143,
		0.995095, 0.080944, 0.056869,
		27.029869, 44.611885, 34.018661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402250, 44.956276, 34.556255>,  <26.333302, 44.555222, 33.978855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402250, 44.956276, 34.556255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670570, 45.009598, 34.264431>,  <26.831562, 45.041592, 34.089336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670570, 45.009598, 34.264431>,  <26.402250, 44.956276, 34.556255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670570, 45.009598, 34.264431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296614, 0.949835, -0.099166,
		0.679742, 0.282918, 0.676689,
		0.670799, 0.133308, -0.729560,
		26.871811, 45.049591, 34.045563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999891, 45.505981, 34.067539>,  <26.402250, 44.956276, 34.556255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999891, 45.505981, 34.067539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830835, 45.143524, 34.074287>,  <25.729401, 44.926052, 34.078339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830835, 45.143524, 34.074287>,  <25.999891, 45.505981, 34.067539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830835, 45.143524, 34.074287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274270, -0.110135, 0.955325,
		-0.863800, 0.408388, 0.295074,
		-0.422642, -0.906140, 0.016874,
		25.704042, 44.871681, 34.079350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850054, 46.099960, 34.343056>,  <25.999891, 45.505981, 34.067539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850054, 46.099960, 34.343056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157513, 46.222603, 34.567616>,  <26.341988, 46.296188, 34.702351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157513, 46.222603, 34.567616>,  <25.850054, 46.099960, 34.343056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157513, 46.222603, 34.567616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619381, 0.137457, 0.772963,
		0.159831, -0.941857, 0.295565,
		0.768649, 0.306611, 0.561399,
		26.388107, 46.314587, 34.736034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089535, 45.665455, 34.801865>,  <25.850054, 46.099960, 34.343056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089535, 45.665455, 34.801865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105593, 46.053032, 34.899464>,  <26.115229, 46.285580, 34.958023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105593, 46.053032, 34.899464>,  <26.089535, 45.665455, 34.801865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105593, 46.053032, 34.899464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716239, -0.142364, 0.683180,
		0.696700, -0.202191, 0.688280,
		0.040147, 0.968943, 0.244002,
		26.117638, 46.343716, 34.972664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970755, 45.628372, 35.531952>,  <26.089535, 45.665455, 34.801865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970755, 45.628372, 35.531952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861305, 45.989292, 35.398693>,  <25.795635, 46.205845, 35.318737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861305, 45.989292, 35.398693>,  <25.970755, 45.628372, 35.531952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861305, 45.989292, 35.398693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818124, -0.036201, 0.573901,
		0.505770, 0.429587, 0.748098,
		-0.273622, 0.902299, -0.333147,
		25.779219, 46.259983, 35.298748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911659, 46.219181, 36.042606>,  <25.970755, 45.628372, 35.531952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911659, 46.219181, 36.042606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661213, 46.243408, 35.731659>,  <25.510944, 46.257946, 35.545090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661213, 46.243408, 35.731659>,  <25.911659, 46.219181, 36.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661213, 46.243408, 35.731659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776470, -0.139493, 0.614520,
		-0.071215, 0.988369, 0.134371,
		-0.626117, 0.060573, -0.777373,
		25.473377, 46.261581, 35.498447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515770, 46.730526, 36.220268>,  <25.911659, 46.219181, 36.042606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515770, 46.730526, 36.220268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747658, 47.027061, 36.355526>,  <26.886791, 47.204983, 36.436680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747658, 47.027061, 36.355526>,  <26.515770, 46.730526, 36.220268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747658, 47.027061, 36.355526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772482, 0.368015, 0.517529,
		0.259222, -0.561232, 0.786017,
		0.579720, 0.741339, 0.338144,
		26.921574, 47.249462, 36.456970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355816, 46.446125, 36.991093>,  <26.515770, 46.730526, 36.220268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355816, 46.446125, 36.991093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256586, 46.165829, 37.258652>,  <26.197048, 45.997650, 37.419189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256586, 46.165829, 37.258652>,  <26.355816, 46.446125, 36.991093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256586, 46.165829, 37.258652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968669, -0.170994, 0.180115,
		-0.011836, 0.692624, 0.721202,
		-0.248073, -0.700737, 0.668900,
		26.182163, 45.955608, 37.459320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065067, 46.270393, 36.870728>,  <26.355816, 46.446125, 36.991093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065067, 46.270393, 36.870728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788273, 46.016983, 37.009178>,  <26.622196, 45.864937, 37.092247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788273, 46.016983, 37.009178>,  <27.065067, 46.270393, 36.870728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788273, 46.016983, 37.009178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512079, -0.768709, -0.383226,
		0.508850, -0.087946, 0.856351,
		-0.691988, -0.633524, 0.346122,
		26.580677, 45.826927, 37.113014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404278, 45.777580, 37.260380>,  <27.065067, 46.270393, 36.870728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404278, 45.777580, 37.260380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048719, 45.600914, 37.211727>,  <26.835384, 45.494915, 37.182537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048719, 45.600914, 37.211727>,  <27.404278, 45.777580, 37.260380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048719, 45.600914, 37.211727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450583, -0.890845, -0.058056,
		-0.082710, -0.106409, 0.990877,
		-0.888895, -0.441670, -0.121628,
		26.782051, 45.468414, 37.175240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247900, 45.212921, 37.735325>,  <27.404278, 45.777580, 37.260380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247900, 45.212921, 37.735325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025583, 45.150513, 37.408703>,  <26.892193, 45.113068, 37.212730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025583, 45.150513, 37.408703>,  <27.247900, 45.212921, 37.735325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025583, 45.150513, 37.408703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380699, -0.920952, -0.083160,
		-0.739030, -0.357080, 0.571252,
		-0.555791, -0.156018, -0.816551,
		26.858847, 45.103706, 37.163738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034111, 44.508648, 37.836700>,  <27.247900, 45.212921, 37.735325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034111, 44.508648, 37.836700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944904, 44.585281, 37.454380>,  <26.891380, 44.631264, 37.224987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944904, 44.585281, 37.454380>,  <27.034111, 44.508648, 37.836700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944904, 44.585281, 37.454380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166341, -0.958637, -0.230966,
		-0.960521, -0.210496, 0.181911,
		-0.223005, 0.191588, -0.955805,
		26.878000, 44.642757, 37.167641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602720, 43.939934, 37.505066>,  <27.034111, 44.508648, 37.836700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602720, 43.939934, 37.505066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784962, 44.128002, 37.202709>,  <26.894306, 44.240841, 37.021294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784962, 44.128002, 37.202709>,  <26.602720, 43.939934, 37.505066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784962, 44.128002, 37.202709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149675, -0.877511, -0.455601,
		-0.877511, 0.094435, -0.470167,
		0.455601, 0.470167, -0.755890,
		26.921642, 44.269051, 36.975941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405794, 43.589817, 36.862820>,  <26.602720, 43.939934, 37.505066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405794, 43.589817, 36.862820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737757, 43.785561, 36.755650>,  <26.936934, 43.903008, 36.691345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737757, 43.785561, 36.755650>,  <26.405794, 43.589817, 36.862820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737757, 43.785561, 36.755650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295945, -0.793247, -0.532142,
		-0.472943, 0.362335, -0.803143,
		0.829904, 0.489359, -0.267929,
		26.986729, 43.932369, 36.675270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449879, 43.374886, 36.252060>,  <26.405794, 43.589817, 36.862820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449879, 43.374886, 36.252060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810690, 43.513767, 36.354660>,  <27.027176, 43.597095, 36.416218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810690, 43.513767, 36.354660>,  <26.449879, 43.374886, 36.252060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810690, 43.513767, 36.354660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427190, -0.803424, -0.414752,
		0.062072, 0.483692, -0.873035,
		0.902029, 0.347207, 0.256498,
		27.081299, 43.617928, 36.431610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743946, 43.251339, 35.668419>,  <26.449879, 43.374886, 36.252060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743946, 43.251339, 35.668419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024160, 43.273254, 35.953022>,  <27.192289, 43.286404, 36.123783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024160, 43.273254, 35.953022>,  <26.743946, 43.251339, 35.668419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024160, 43.273254, 35.953022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486111, -0.766581, -0.419583,
		0.522443, 0.639806, -0.563650,
		0.700535, 0.054789, 0.711512,
		27.234322, 43.289692, 36.166477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443535, 43.071316, 35.339497>,  <26.743946, 43.251339, 35.668419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443535, 43.071316, 35.339497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471695, 43.043388, 35.737526>,  <27.488590, 43.026634, 35.976345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471695, 43.043388, 35.737526>,  <27.443535, 43.071316, 35.339497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471695, 43.043388, 35.737526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353677, -0.930995, -0.090341,
		0.932715, 0.358294, -0.040850,
		0.070400, -0.069815, 0.995073,
		27.492815, 43.022446, 36.036049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182480, 42.886322, 35.468891>,  <27.443535, 43.071316, 35.339497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182480, 42.886322, 35.468891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964754, 42.778572, 35.786674>,  <27.834118, 42.713921, 35.977345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964754, 42.778572, 35.786674>,  <28.182480, 42.886322, 35.468891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964754, 42.778572, 35.786674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490235, -0.870641, 0.040672,
		0.680729, 0.411609, 0.605959,
		-0.544314, -0.269376, 0.794455,
		27.801460, 42.697758, 36.025013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694839, 42.540054, 35.906120>,  <28.182480, 42.886322, 35.468891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694839, 42.540054, 35.906120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338762, 42.435684, 36.055504>,  <28.125116, 42.373062, 36.145134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338762, 42.435684, 36.055504>,  <28.694839, 42.540054, 35.906120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338762, 42.435684, 36.055504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353277, -0.912952, 0.204240,
		0.287659, 0.313748, 0.904884,
		-0.890195, -0.260923, 0.373459,
		28.071703, 42.357407, 36.167542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784817, 42.284817, 36.566387>,  <28.694839, 42.540054, 35.906120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784817, 42.284817, 36.566387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449064, 42.129257, 36.414494>,  <28.247612, 42.035923, 36.323357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449064, 42.129257, 36.414494>,  <28.784817, 42.284817, 36.566387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449064, 42.129257, 36.414494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351445, -0.921259, 0.166635,
		-0.414636, 0.006415, 0.909965,
		-0.839383, -0.388896, -0.379732,
		28.197250, 42.012589, 36.300575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771654, 41.749245, 36.912487>,  <28.784817, 42.284817, 36.566387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771654, 41.749245, 36.912487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493683, 41.676731, 36.634148>,  <28.326900, 41.633224, 36.467144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493683, 41.676731, 36.634148>,  <28.771654, 41.749245, 36.912487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493683, 41.676731, 36.634148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211759, -0.976381, 0.042883,
		-0.687190, -0.117553, 0.716903,
		-0.694930, -0.181280, -0.695852,
		28.285204, 41.622349, 36.425392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160440, 41.246426, 37.137970>,  <28.771654, 41.749245, 36.912487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160440, 41.246426, 37.137970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229610, 41.261738, 36.744293>,  <28.271112, 41.270924, 36.508087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229610, 41.261738, 36.744293>,  <28.160440, 41.246426, 37.137970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229610, 41.261738, 36.744293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265232, -0.964142, 0.009104,
		-0.948551, -0.262613, -0.176878,
		0.172926, 0.038278, -0.984191,
		28.281488, 41.273220, 36.449036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897024, 40.618992, 36.860878>,  <28.160440, 41.246426, 37.137970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897024, 40.618992, 36.860878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142109, 40.729130, 36.564560>,  <28.289160, 40.795212, 36.386768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142109, 40.729130, 36.564560>,  <27.897024, 40.618992, 36.860878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142109, 40.729130, 36.564560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198827, -0.960902, -0.192703,
		-0.764887, -0.029218, -0.643501,
		0.612711, 0.275342, -0.740791,
		28.325922, 40.811733, 36.342323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804647, 40.091843, 36.503658>,  <27.897024, 40.618992, 36.860878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804647, 40.091843, 36.503658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144127, 40.256687, 36.371071>,  <28.347815, 40.355595, 36.291519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144127, 40.256687, 36.371071>,  <27.804647, 40.091843, 36.503658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144127, 40.256687, 36.371071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418533, -0.906509, -0.055427,
		-0.323323, -0.091690, -0.941836,
		0.848701, 0.412110, -0.331470,
		28.398737, 40.380322, 36.271629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965189, 39.678162, 35.912273>,  <27.804647, 40.091843, 36.503658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965189, 39.678162, 35.912273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310398, 39.855621, 36.008911>,  <28.517525, 39.962097, 36.066895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310398, 39.855621, 36.008911>,  <27.965189, 39.678162, 35.912273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310398, 39.855621, 36.008911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485824, -0.859975, -0.156263,
		0.138437, 0.252229, -0.957714,
		0.863024, 0.443648, 0.241592,
		28.569305, 39.988716, 36.081390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508587, 39.501019, 35.361828>,  <27.965189, 39.678162, 35.912273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508587, 39.501019, 35.361828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721697, 39.605831, 35.683693>,  <28.849564, 39.668720, 35.876812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721697, 39.605831, 35.683693>,  <28.508587, 39.501019, 35.361828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721697, 39.605831, 35.683693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494028, -0.868314, -0.044341,
		0.687084, 0.421152, -0.592070,
		0.532777, 0.262033, 0.804666,
		28.881531, 39.684441, 35.925091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137709, 39.435650, 35.193726>,  <28.508587, 39.501019, 35.361828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137709, 39.435650, 35.193726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150030, 39.425209, 35.593399>,  <29.157423, 39.418945, 35.833202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150030, 39.425209, 35.593399>,  <29.137709, 39.435650, 35.193726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150030, 39.425209, 35.593399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637127, -0.769733, -0.039752,
		0.770144, 0.637831, -0.007076,
		0.030801, -0.026106, 0.999185,
		29.159271, 39.417377, 35.893154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859163, 39.424496, 35.355999>,  <29.137709, 39.435650, 35.193726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859163, 39.424496, 35.355999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673895, 39.276497, 35.678135>,  <29.562735, 39.187698, 35.871418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673895, 39.276497, 35.678135>,  <29.859163, 39.424496, 35.355999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673895, 39.276497, 35.678135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610866, -0.791637, -0.012373,
		0.642118, 0.486226, 0.592679,
		-0.463171, -0.369993, 0.805344,
		29.534945, 39.165501, 35.919739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407568, 39.217506, 35.865025>,  <29.859163, 39.424496, 35.355999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407568, 39.217506, 35.865025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073166, 39.021496, 35.963795>,  <29.872524, 38.903889, 36.023056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073166, 39.021496, 35.963795>,  <30.407568, 39.217506, 35.865025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073166, 39.021496, 35.963795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511267, -0.859022, 0.026228,
		0.199260, 0.148170, 0.968680,
		-0.836003, -0.490028, 0.246923,
		29.822365, 38.874489, 36.037872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703667, 38.695091, 36.256363>,  <30.407568, 39.217506, 35.865025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703667, 38.695091, 36.256363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336100, 38.566746, 36.164593>,  <30.115559, 38.489738, 36.109531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336100, 38.566746, 36.164593>,  <30.703667, 38.695091, 36.256363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336100, 38.566746, 36.164593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342993, -0.937220, -0.063044,
		-0.194795, -0.136624, 0.971282,
		-0.918918, -0.320862, -0.229427,
		30.060425, 38.470486, 36.095764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541531, 38.079800, 36.782097>,  <30.703667, 38.695091, 36.256363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541531, 38.079800, 36.782097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312136, 38.052864, 36.455521>,  <30.174500, 38.036701, 36.259575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312136, 38.052864, 36.455521>,  <30.541531, 38.079800, 36.782097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312136, 38.052864, 36.455521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329960, -0.931189, -0.154965,
		-0.749825, -0.358263, 0.556246,
		-0.573488, -0.067342, -0.816441,
		30.140089, 38.032661, 36.210587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030151, 37.467937, 36.731544>,  <30.541531, 38.079800, 36.782097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030151, 37.467937, 36.731544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250277, 37.621353, 36.434883>,  <30.382351, 37.713402, 36.256886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250277, 37.621353, 36.434883>,  <30.030151, 37.467937, 36.731544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250277, 37.621353, 36.434883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521965, -0.851322, -0.052950,
		-0.651697, -0.357980, -0.668687,
		0.550313, 0.383538, -0.741657,
		30.415371, 37.736416, 36.212387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011576, 37.284542, 35.901520>,  <30.030151, 37.467937, 36.731544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011576, 37.284542, 35.901520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373932, 37.383797, 36.038803>,  <30.591345, 37.443348, 36.121174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373932, 37.383797, 36.038803>,  <30.011576, 37.284542, 35.901520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373932, 37.383797, 36.038803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348528, -0.897182, -0.271278,
		0.240606, 0.365366, -0.899231,
		0.905890, 0.248136, 0.343208,
		30.645699, 37.458237, 36.141766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539049, 37.158401, 35.345390>,  <30.011576, 37.284542, 35.901520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539049, 37.158401, 35.345390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640167, 37.130455, 35.731388>,  <30.700838, 37.113686, 35.962986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640167, 37.130455, 35.731388>,  <30.539049, 37.158401, 35.345390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640167, 37.130455, 35.731388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269519, -0.952824, -0.139589,
		0.929222, 0.295372, -0.222039,
		0.252795, -0.069866, 0.964994,
		30.716005, 37.109497, 36.020885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311712, 36.898621, 35.558704>,  <30.539049, 37.158401, 35.345390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311712, 36.898621, 35.558704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081955, 36.807590, 35.873230>,  <30.944101, 36.752972, 36.061943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081955, 36.807590, 35.873230>,  <31.311712, 36.898621, 35.558704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081955, 36.807590, 35.873230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319065, -0.946847, -0.040959,
		0.753837, 0.227357, 0.616473,
		-0.574393, -0.227571, 0.786310,
		30.909637, 36.739319, 36.109123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592068, 36.346073, 35.738735>,  <31.311712, 36.898621, 35.558704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592068, 36.346073, 35.738735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246973, 36.346497, 35.940994>,  <31.039915, 36.346748, 36.062351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246973, 36.346497, 35.940994>,  <31.592068, 36.346073, 35.738735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246973, 36.346497, 35.940994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064982, -0.991474, 0.112944,
		0.501456, 0.130300, 0.855315,
		-0.862739, 0.001056, 0.505648,
		30.988152, 36.346813, 36.092690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699677, 35.691349, 36.004707>,  <31.592068, 36.346073, 35.738735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699677, 35.691349, 36.004707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347641, 35.801998, 36.159069>,  <31.136419, 35.868389, 36.251686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347641, 35.801998, 36.159069>,  <31.699677, 35.691349, 36.004707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347641, 35.801998, 36.159069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124305, -0.918644, 0.375023,
		0.458249, 0.282084, 0.842874,
		-0.880089, 0.276627, 0.385904,
		31.083614, 35.884987, 36.274841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587809, 35.750095, 36.629295>,  <31.699677, 35.691349, 36.004707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587809, 35.750095, 36.629295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894999, 35.509537, 36.541172>,  <32.079311, 35.365200, 36.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894999, 35.509537, 36.541172>,  <31.587809, 35.750095, 36.629295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894999, 35.509537, 36.541172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433385, 0.234683, 0.870116,
		-0.471583, -0.763705, 0.440868,
		0.767976, -0.601397, -0.220306,
		32.125393, 35.329117, 36.475079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690176, 35.196636, 37.089302>,  <31.587809, 35.750095, 36.629295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690176, 35.196636, 37.089302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049015, 35.297791, 36.944382>,  <32.264317, 35.358482, 36.857430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049015, 35.297791, 36.944382>,  <31.690176, 35.196636, 37.089302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049015, 35.297791, 36.944382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259860, 0.361194, 0.895551,
		0.357296, -0.897556, 0.258327,
		0.897113, 0.252848, -0.362292,
		32.318146, 35.373657, 36.835690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151283, 35.010490, 37.620747>,  <31.690176, 35.196636, 37.089302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151283, 35.010490, 37.620747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354687, 35.285599, 37.413521>,  <32.476730, 35.450665, 37.289185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354687, 35.285599, 37.413521>,  <32.151283, 35.010490, 37.620747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354687, 35.285599, 37.413521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334387, 0.396710, 0.854872,
		0.793476, -0.607945, -0.028250,
		0.508508, 0.687767, -0.518069,
		32.507240, 35.491928, 37.258099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500721, 35.305527, 38.118652>,  <32.151283, 35.010490, 37.620747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500721, 35.305527, 38.118652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607563, 35.531719, 37.806526>,  <32.671669, 35.667435, 37.619251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607563, 35.531719, 37.806526>,  <32.500721, 35.305527, 38.118652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607563, 35.531719, 37.806526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431838, 0.653642, 0.621505,
		0.861493, -0.502977, -0.069603,
		0.267107, 0.565479, -0.780312,
		32.687695, 35.701363, 37.572433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224251, 35.400715, 38.151051>,  <32.500721, 35.305527, 38.118652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224251, 35.400715, 38.151051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048870, 35.709328, 37.966663>,  <32.943642, 35.894497, 37.856030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048870, 35.709328, 37.966663>,  <33.224251, 35.400715, 38.151051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048870, 35.709328, 37.966663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329706, 0.615218, 0.716101,
		0.836093, 0.161993, -0.524124,
		-0.438453, 0.771535, -0.460969,
		32.917336, 35.940788, 37.828373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644886, 35.831993, 38.233772>,  <33.224251, 35.400715, 38.151051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644886, 35.831993, 38.233772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333660, 36.063721, 38.136608>,  <33.146923, 36.202755, 38.078308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333660, 36.063721, 38.136608>,  <33.644886, 35.831993, 38.233772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333660, 36.063721, 38.136608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308781, 0.689455, 0.655214,
		0.547056, 0.434791, -0.715323,
		-0.778064, 0.579317, -0.242915,
		33.100243, 36.237514, 38.063732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900642, 36.455894, 38.268417>,  <33.644886, 35.831993, 38.233772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900642, 36.455894, 38.268417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510220, 36.539322, 38.293121>,  <33.275967, 36.589378, 38.307945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510220, 36.539322, 38.293121>,  <33.900642, 36.455894, 38.268417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510220, 36.539322, 38.293121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194637, 0.710682, 0.676053,
		0.097110, 0.671886, -0.734261,
		-0.976056, 0.208566, 0.061759,
		33.217403, 36.601891, 38.311649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835220, 37.194756, 38.288555>,  <33.900642, 36.455894, 38.268417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835220, 37.194756, 38.288555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481949, 37.071251, 38.429783>,  <33.269985, 36.997150, 38.514519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481949, 37.071251, 38.429783>,  <33.835220, 37.194756, 38.288555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481949, 37.071251, 38.429783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020149, 0.727090, 0.686246,
		-0.468597, 0.613195, -0.635931,
		-0.883182, -0.308760, 0.353068,
		33.216995, 36.978622, 38.535702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613792, 37.757195, 38.608833>,  <33.835220, 37.194756, 38.288555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613792, 37.757195, 38.608833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376530, 37.492672, 38.792503>,  <33.234173, 37.333958, 38.902706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376530, 37.492672, 38.792503>,  <33.613792, 37.757195, 38.608833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376530, 37.492672, 38.792503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120049, 0.491319, 0.862667,
		-0.796089, 0.566817, -0.212038,
		-0.593153, -0.661305, 0.459180,
		33.198586, 37.294281, 38.930256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050987, 38.114086, 38.921730>,  <33.613792, 37.757195, 38.608833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050987, 38.114086, 38.921730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097866, 37.763988, 39.109436>,  <33.125996, 37.553928, 39.222057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097866, 37.763988, 39.109436>,  <33.050987, 38.114086, 38.921730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097866, 37.763988, 39.109436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011270, 0.471316, 0.881893,
		-0.993044, -0.108646, 0.045374,
		0.117200, -0.875247, 0.469262,
		33.133026, 37.501415, 39.250214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616802, 38.235710, 39.501255>,  <33.050987, 38.114086, 38.921730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616802, 38.235710, 39.501255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831421, 37.912888, 39.599873>,  <32.960194, 37.719196, 39.659042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831421, 37.912888, 39.599873>,  <32.616802, 38.235710, 39.501255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831421, 37.912888, 39.599873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033088, 0.312050, 0.949489,
		-0.843223, -0.501286, 0.194132,
		0.536545, -0.807054, 0.246541,
		32.992386, 37.670773, 39.673836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334618, 38.006351, 40.084961>,  <32.616802, 38.235710, 39.501255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334618, 38.006351, 40.084961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707893, 37.863136, 40.072479>,  <32.931858, 37.777206, 40.064991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707893, 37.863136, 40.072479>,  <32.334618, 38.006351, 40.084961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707893, 37.863136, 40.072479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135166, 0.269197, 0.953553,
		-0.333010, -0.894058, 0.299606,
		0.933185, -0.358039, -0.031201,
		32.987850, 37.755726, 40.063118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330982, 37.465775, 40.577934>,  <32.334618, 38.006351, 40.084961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330982, 37.465775, 40.577934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708271, 37.594147, 40.543652>,  <32.934643, 37.671169, 40.523083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708271, 37.594147, 40.543652>,  <32.330982, 37.465775, 40.577934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708271, 37.594147, 40.543652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003588, 0.248152, 0.968714,
		0.332156, -0.914016, 0.232910,
		0.943217, 0.320929, -0.085705,
		32.991238, 37.690426, 40.517941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599281, 37.142723, 41.091038>,  <32.330982, 37.465775, 40.577934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599281, 37.142723, 41.091038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874298, 37.427177, 41.032295>,  <33.039310, 37.597851, 40.997051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874298, 37.427177, 41.032295>,  <32.599281, 37.142723, 41.091038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874298, 37.427177, 41.032295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005579, 0.207403, 0.978239,
		0.726121, -0.671764, 0.146567,
		0.687544, 0.711138, -0.146852,
		33.080563, 37.640518, 40.988239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135040, 36.907387, 41.571808>,  <32.599281, 37.142723, 41.091038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135040, 36.907387, 41.571808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213024, 37.291458, 41.491756>,  <33.259815, 37.521900, 41.443726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213024, 37.291458, 41.491756>,  <33.135040, 36.907387, 41.571808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213024, 37.291458, 41.491756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139261, 0.174876, 0.974692,
		0.970875, -0.217893, -0.099622,
		0.194957, 0.960177, -0.200126,
		33.271511, 37.579510, 41.431717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860317, 37.020115, 41.742607>,  <33.135040, 36.907387, 41.571808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860317, 37.020115, 41.742607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673870, 37.371628, 41.783543>,  <33.562000, 37.582535, 41.808102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673870, 37.371628, 41.783543>,  <33.860317, 37.020115, 41.742607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673870, 37.371628, 41.783543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318984, 0.059040, 0.945919,
		0.825216, 0.473556, -0.307837,
		-0.466120, 0.878783, 0.102337,
		33.534035, 37.635262, 41.814243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310757, 37.316254, 42.214268>,  <33.860317, 37.020115, 41.742607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310757, 37.316254, 42.214268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003971, 37.572914, 42.216839>,  <33.819901, 37.726910, 42.218380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003971, 37.572914, 42.216839>,  <34.310757, 37.316254, 42.214268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003971, 37.572914, 42.216839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225875, 0.260584, 0.938657,
		0.600619, 0.721370, -0.344793,
		-0.766967, 0.641655, 0.006428,
		33.773880, 37.765411, 42.218765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559479, 37.989323, 42.471134>,  <34.310757, 37.316254, 42.214268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559479, 37.989323, 42.471134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163181, 38.009113, 42.521690>,  <33.925404, 38.020988, 42.552025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163181, 38.009113, 42.521690>,  <34.559479, 37.989323, 42.471134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163181, 38.009113, 42.521690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135351, 0.290298, 0.947316,
		0.010179, 0.955656, -0.294309,
		-0.990745, 0.049478, 0.126394,
		33.865959, 38.023956, 42.559608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434616, 38.624569, 42.883137>,  <34.559479, 37.989323, 42.471134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434616, 38.624569, 42.883137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095390, 38.415989, 42.920807>,  <33.891853, 38.290840, 42.943409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095390, 38.415989, 42.920807>,  <34.434616, 38.624569, 42.883137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095390, 38.415989, 42.920807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008785, 0.191542, 0.981445,
		-0.529817, 0.831503, -0.167022,
		-0.848067, -0.521453, 0.094177,
		33.840969, 38.259552, 42.949059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833031, 39.062374, 43.144737>,  <34.434616, 38.624569, 42.883137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833031, 39.062374, 43.144737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761112, 38.682426, 43.247055>,  <33.717960, 38.454460, 43.308445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761112, 38.682426, 43.247055>,  <33.833031, 39.062374, 43.144737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761112, 38.682426, 43.247055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200558, 0.289963, 0.935787,
		-0.963042, 0.116949, -0.242637,
		-0.179795, -0.949866, 0.255791,
		33.707172, 38.397469, 43.323792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195957, 39.107101, 43.538242>,  <33.833031, 39.062374, 43.144737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195957, 39.107101, 43.538242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336475, 38.745930, 43.637283>,  <33.420788, 38.529224, 43.696709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336475, 38.745930, 43.637283>,  <33.195957, 39.107101, 43.538242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336475, 38.745930, 43.637283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186021, 0.191871, 0.963630,
		-0.917599, -0.384577, -0.100561,
		0.351295, -0.902932, 0.247600,
		33.441864, 38.475052, 43.711563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786648, 38.953362, 44.041222>,  <33.195957, 39.107101, 43.538242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786648, 38.953362, 44.041222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118710, 38.735760, 44.090050>,  <33.317947, 38.605198, 44.119347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118710, 38.735760, 44.090050>,  <32.786648, 38.953362, 44.041222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118710, 38.735760, 44.090050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088546, 0.344813, 0.934486,
		-0.550457, -0.764959, 0.334418,
		0.830155, -0.544006, 0.122071,
		33.367756, 38.572559, 44.126671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776741, 38.630348, 44.769524>,  <32.786648, 38.953362, 44.041222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776741, 38.630348, 44.769524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162315, 38.576363, 44.677780>,  <33.393661, 38.543972, 44.622734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162315, 38.576363, 44.677780>,  <32.776741, 38.630348, 44.769524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162315, 38.576363, 44.677780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236701, 0.040935, 0.970720,
		-0.121625, -0.990004, 0.071406,
		0.963940, -0.134965, -0.229356,
		33.451496, 38.535873, 44.608974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997219, 38.181328, 45.292641>,  <32.776741, 38.630348, 44.769524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997219, 38.181328, 45.292641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337486, 38.327957, 45.141918>,  <33.541645, 38.415936, 45.051483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337486, 38.327957, 45.141918>,  <32.997219, 38.181328, 45.292641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337486, 38.327957, 45.141918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325265, 0.196088, 0.925069,
		0.412996, -0.909490, 0.047572,
		0.850669, 0.366576, -0.376809,
		33.592686, 38.437931, 45.028877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437347, 38.216869, 45.895447>,  <32.997219, 38.181328, 45.292641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437347, 38.216869, 45.895447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634220, 38.448074, 45.635090>,  <33.752342, 38.586796, 45.478874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634220, 38.448074, 45.635090>,  <33.437347, 38.216869, 45.895447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634220, 38.448074, 45.635090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532134, 0.391969, 0.750462,
		0.688906, -0.715725, -0.114660,
		0.492181, 0.578013, -0.650891,
		33.781876, 38.621479, 45.439823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074680, 38.313129, 46.196209>,  <33.437347, 38.216869, 45.895447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074680, 38.313129, 46.196209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060364, 38.604439, 45.922466>,  <34.051773, 38.779224, 45.758221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060364, 38.604439, 45.922466>,  <34.074680, 38.313129, 46.196209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060364, 38.604439, 45.922466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540164, 0.590240, 0.599867,
		0.840798, -0.348192, -0.414512,
		-0.035793, 0.728272, -0.684353,
		34.049625, 38.822922, 45.717159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749722, 38.473640, 45.996834>,  <34.074680, 38.313129, 46.196209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749722, 38.473640, 45.996834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491524, 38.776089, 45.953739>,  <34.336605, 38.957558, 45.927883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491524, 38.776089, 45.953739>,  <34.749722, 38.473640, 45.996834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491524, 38.776089, 45.953739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461859, 0.498790, 0.733413,
		0.608292, 0.423655, -0.671191,
		-0.645497, 0.756125, -0.107741,
		34.297874, 39.002926, 45.921417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164474, 39.043079, 46.045403>,  <34.749722, 38.473640, 45.996834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164474, 39.043079, 46.045403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789360, 39.168907, 46.104187>,  <34.564289, 39.244404, 46.139458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789360, 39.168907, 46.104187>,  <35.164474, 39.043079, 46.045403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789360, 39.168907, 46.104187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324508, 0.643568, 0.693192,
		0.123480, 0.697757, -0.705612,
		-0.937788, 0.314572, 0.146960,
		34.508022, 39.263279, 46.148273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242531, 39.726505, 46.016579>,  <35.164474, 39.043079, 46.045403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242531, 39.726505, 46.016579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914955, 39.645599, 46.231403>,  <34.718410, 39.597057, 46.360298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914955, 39.645599, 46.231403>,  <35.242531, 39.726505, 46.016579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914955, 39.645599, 46.231403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281227, 0.674323, 0.682788,
		-0.500252, 0.710196, -0.495348,
		-0.818938, -0.202261, 0.537058,
		34.669273, 39.584923, 46.392521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940182, 40.380920, 46.142124>,  <35.242531, 39.726505, 46.016579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940182, 40.380920, 46.142124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813446, 40.132298, 46.428699>,  <34.737404, 39.983124, 46.600643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813446, 40.132298, 46.428699>,  <34.940182, 40.380920, 46.142124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813446, 40.132298, 46.428699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159930, 0.709527, 0.686290,
		-0.934898, 0.332025, -0.125403,
		-0.316842, -0.621555, 0.716436,
		34.718395, 39.945831, 46.643631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650082, 40.773529, 46.514698>,  <34.940182, 40.380920, 46.142124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650082, 40.773529, 46.514698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695320, 40.452526, 46.749027>,  <34.722462, 40.259922, 46.889626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695320, 40.452526, 46.749027>,  <34.650082, 40.773529, 46.514698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695320, 40.452526, 46.749027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278606, 0.591562, 0.756593,
		-0.953723, 0.077647, 0.290487,
		0.113094, -0.802512, 0.585819,
		34.729248, 40.211773, 46.924774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436432, 40.900291, 47.075485>,  <34.650082, 40.773529, 46.514698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436432, 40.900291, 47.075485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675877, 40.600571, 47.188770>,  <34.819546, 40.420738, 47.256741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675877, 40.600571, 47.188770>,  <34.436432, 40.900291, 47.075485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675877, 40.600571, 47.188770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279294, 0.526605, 0.802921,
		-0.750770, -0.401541, 0.524508,
		0.598614, -0.749301, 0.283212,
		34.855461, 40.375782, 47.273735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348362, 40.859074, 47.720921>,  <34.436432, 40.900291, 47.075485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348362, 40.859074, 47.720921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711624, 40.695446, 47.685322>,  <34.929581, 40.597271, 47.663963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711624, 40.695446, 47.685322>,  <34.348362, 40.859074, 47.720921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711624, 40.695446, 47.685322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240460, 0.335682, 0.910767,
		-0.342688, -0.848518, 0.403215,
		0.908154, -0.409066, -0.089000,
		34.984070, 40.572727, 47.658623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470665, 40.435566, 48.327759>,  <34.348362, 40.859074, 47.720921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470665, 40.435566, 48.327759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834099, 40.538593, 48.196228>,  <35.052158, 40.600410, 48.117310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834099, 40.538593, 48.196228>,  <34.470665, 40.435566, 48.327759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834099, 40.538593, 48.196228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367000, -0.116372, 0.922913,
		0.199446, -0.959227, -0.200262,
		0.908588, 0.257567, -0.328826,
		35.106674, 40.615864, 48.097580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919651, 39.994480, 48.686718>,  <34.470665, 40.435566, 48.327759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919651, 39.994480, 48.686718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134315, 40.313351, 48.576080>,  <35.263115, 40.504673, 48.509697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134315, 40.313351, 48.576080>,  <34.919651, 39.994480, 48.686718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134315, 40.313351, 48.576080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367504, 0.074248, 0.927053,
		0.759562, -0.599163, -0.253119,
		0.536662, 0.797177, -0.276591,
		35.295315, 40.552505, 48.493103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637100, 39.883961, 48.893517>,  <34.919651, 39.994480, 48.686718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637100, 39.883961, 48.893517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550262, 40.273300, 48.863941>,  <35.498158, 40.506905, 48.846195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550262, 40.273300, 48.863941>,  <35.637100, 39.883961, 48.893517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550262, 40.273300, 48.863941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374874, 0.153071, 0.914352,
		0.901298, 0.170787, -0.398113,
		-0.217099, 0.973345, -0.073939,
		35.485134, 40.565304, 48.841759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286278, 40.272533, 49.160656>,  <35.637100, 39.883961, 48.893517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286278, 40.272533, 49.160656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936741, 40.459885, 49.212845>,  <35.727020, 40.572296, 49.244160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936741, 40.459885, 49.212845>,  <36.286278, 40.272533, 49.160656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936741, 40.459885, 49.212845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257004, 0.217168, 0.941694,
		0.412733, 0.856423, -0.310145,
		-0.873842, 0.468377, 0.130472,
		35.674587, 40.600399, 49.251987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431694, 40.861210, 49.396866>,  <36.286278, 40.272533, 49.160656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431694, 40.861210, 49.396866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052452, 40.824684, 49.518696>,  <35.824909, 40.802769, 49.591793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052452, 40.824684, 49.518696>,  <36.431694, 40.861210, 49.396866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052452, 40.824684, 49.518696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276057, 0.238956, 0.930963,
		-0.157792, 0.966727, -0.201346,
		-0.948101, -0.091315, 0.304577,
		35.768021, 40.797291, 49.610069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254589, 41.500492, 49.896111>,  <36.431694, 40.861210, 49.396866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254589, 41.500492, 49.896111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002113, 41.210068, 50.005245>,  <35.850628, 41.035812, 50.070724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002113, 41.210068, 50.005245>,  <36.254589, 41.500492, 49.896111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002113, 41.210068, 50.005245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130677, 0.247188, 0.960115,
		-0.764542, 0.641667, -0.061143,
		-0.631189, -0.726058, 0.272837,
		35.812756, 40.992249, 50.087097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868896, 41.770512, 50.487827>,  <36.254589, 41.500492, 49.896111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868896, 41.770512, 50.487827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769291, 41.383141, 50.492622>,  <35.709526, 41.150719, 50.495499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769291, 41.383141, 50.492622>,  <35.868896, 41.770512, 50.487827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769291, 41.383141, 50.492622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025659, 0.005775, 0.999654,
		-0.968160, 0.249236, 0.023411,
		-0.249015, -0.968426, 0.011986,
		35.694588, 41.092613, 50.496220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069084, 42.244774, 51.068611>,  <35.868896, 41.770512, 50.487827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069084, 42.244774, 51.068611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897469, 42.227631, 51.429520>,  <35.794498, 42.217346, 51.646065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897469, 42.227631, 51.429520>,  <36.069084, 42.244774, 51.068611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897469, 42.227631, 51.429520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181678, -0.982555, 0.039719,
		0.884825, 0.180963, 0.429345,
		-0.429043, -0.042859, 0.902267,
		35.768757, 42.214771, 51.700199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514263, 41.827904, 51.503731>,  <36.069084, 42.244774, 51.068611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514263, 41.827904, 51.503731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140030, 41.802448, 51.642662>,  <35.915489, 41.787174, 51.726021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140030, 41.802448, 51.642662>,  <36.514263, 41.827904, 51.503731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140030, 41.802448, 51.642662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084328, -0.995432, 0.044762,
		0.342890, 0.071168, 0.936676,
		-0.935583, -0.063640, 0.347325,
		35.859356, 41.783356, 51.746861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558449, 41.286598, 52.066700>,  <36.514263, 41.827904, 51.503731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558449, 41.286598, 52.066700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221985, 41.321533, 51.853226>,  <36.020107, 41.342495, 51.725140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221985, 41.321533, 51.853226>,  <36.558449, 41.286598, 52.066700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221985, 41.321533, 51.853226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018027, -0.981795, -0.189085,
		-0.540489, -0.168671, 0.824270,
		-0.841158, 0.087340, -0.533690,
		35.969639, 41.347736, 51.693119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892765, 40.884560, 52.202621>,  <36.558449, 41.286598, 52.066700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892765, 40.884560, 52.202621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927380, 40.967789, 51.812912>,  <35.948147, 41.017727, 51.579086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927380, 40.967789, 51.812912>,  <35.892765, 40.884560, 52.202621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927380, 40.967789, 51.812912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170443, -0.966620, -0.191299,
		-0.981560, -0.149505, -0.119112,
		0.086536, 0.208073, -0.974278,
		35.953339, 41.030212, 51.520630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528492, 40.324154, 51.818661>,  <35.892765, 40.884560, 52.202621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528492, 40.324154, 51.818661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809185, 40.498302, 51.593086>,  <35.977600, 40.602791, 51.457741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809185, 40.498302, 51.593086>,  <35.528492, 40.324154, 51.818661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809185, 40.498302, 51.593086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357515, -0.899867, -0.249845,
		-0.616243, -0.026292, -0.787117,
		0.701732, 0.435371, -0.563937,
		36.019703, 40.628914, 51.423904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569504, 40.219322, 51.097755>,  <35.528492, 40.324154, 51.818661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569504, 40.219322, 51.097755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940571, 40.284397, 51.232201>,  <36.163212, 40.323444, 51.312866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940571, 40.284397, 51.232201>,  <35.569504, 40.219322, 51.097755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940571, 40.284397, 51.232201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279740, -0.899016, -0.336920,
		0.247358, 0.406572, -0.879496,
		0.927664, 0.162690, 0.336113,
		36.218868, 40.333206, 51.333035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121956, 40.151443, 50.523018>,  <35.569504, 40.219322, 51.097755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121956, 40.151443, 50.523018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338661, 40.087650, 50.853123>,  <36.468685, 40.049374, 51.051186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338661, 40.087650, 50.853123>,  <36.121956, 40.151443, 50.523018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338661, 40.087650, 50.853123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462016, -0.763701, -0.450889,
		0.702160, 0.625560, -0.340066,
		0.541768, -0.159480, 0.825260,
		36.501190, 40.039806, 51.100700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772472, 40.116615, 50.313091>,  <36.121956, 40.151443, 50.523018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772472, 40.116615, 50.313091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760891, 39.906433, 50.653225>,  <36.753941, 39.780323, 50.857304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760891, 39.906433, 50.653225>,  <36.772472, 40.116615, 50.313091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760891, 39.906433, 50.653225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423206, -0.777126, -0.465803,
		0.905571, 0.346376, 0.244878,
		-0.028958, -0.525452, 0.850331,
		36.752205, 39.748798, 50.908325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469460, 39.807262, 50.505989>,  <36.772472, 40.116615, 50.313091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469460, 39.807262, 50.505989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175938, 39.583370, 50.659988>,  <36.999825, 39.449036, 50.752388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175938, 39.583370, 50.659988>,  <37.469460, 39.807262, 50.505989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175938, 39.583370, 50.659988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321538, -0.785372, -0.528965,
		0.598450, -0.264364, 0.756286,
		-0.733806, -0.559734, 0.385003,
		36.955795, 39.415451, 50.775490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777431, 39.184494, 50.905972>,  <37.469460, 39.807262, 50.505989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777431, 39.184494, 50.905972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407440, 39.145287, 50.759106>,  <37.185448, 39.121761, 50.670986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407440, 39.145287, 50.759106>,  <37.777431, 39.184494, 50.905972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407440, 39.145287, 50.759106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163587, -0.974768, -0.151880,
		-0.343016, -0.200549, 0.917671,
		-0.924975, -0.098022, -0.367168,
		37.129948, 39.115879, 50.648956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314808, 38.671871, 50.734009>,  <37.777431, 39.184494, 50.905972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314808, 38.671871, 50.734009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933601, 38.602901, 50.833633>,  <36.704876, 38.561520, 50.893410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933601, 38.602901, 50.833633>,  <37.314808, 38.671871, 50.734009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933601, 38.602901, 50.833633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204293, -0.241246, -0.948717,
		0.223664, -0.955024, 0.194687,
		-0.953016, -0.172421, 0.249063,
		36.647697, 38.551174, 50.908352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975033, 37.984882, 50.481682>,  <37.314808, 38.671871, 50.734009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975033, 37.984882, 50.481682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670082, 38.243198, 50.498333>,  <36.487110, 38.398186, 50.508324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670082, 38.243198, 50.498333>,  <36.975033, 37.984882, 50.481682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670082, 38.243198, 50.498333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243518, -0.226699, -0.943031,
		-0.599562, -0.729085, 0.330092,
		-0.762381, 0.645789, 0.041625,
		36.441368, 38.436935, 50.510822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396729, 37.599472, 50.212955>,  <36.975033, 37.984882, 50.481682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396729, 37.599472, 50.212955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338154, 37.993267, 50.174286>,  <36.303009, 38.229542, 50.151085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338154, 37.993267, 50.174286>,  <36.396729, 37.599472, 50.212955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338154, 37.993267, 50.174286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180864, -0.122729, -0.975820,
		-0.972545, -0.125412, 0.196030,
		-0.146438, 0.984484, -0.096677,
		36.294224, 38.288612, 50.145283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876595, 37.589462, 49.733013>,  <36.396729, 37.599472, 50.212955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876595, 37.589462, 49.733013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030777, 37.958420, 49.742878>,  <36.123287, 38.179794, 49.748795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030777, 37.958420, 49.742878>,  <35.876595, 37.589462, 49.733013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030777, 37.958420, 49.742878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051211, 0.048068, -0.997530,
		-0.921302, 0.383245, 0.065765,
		0.385460, 0.922395, 0.024659,
		36.146416, 38.235138, 49.750275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419102, 38.016243, 49.284252>,  <35.876595, 37.589462, 49.733013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419102, 38.016243, 49.284252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782597, 38.178932, 49.321712>,  <36.000694, 38.276546, 49.344189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782597, 38.178932, 49.321712>,  <35.419102, 38.016243, 49.284252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782597, 38.178932, 49.321712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058056, 0.099024, -0.993390,
		-0.413312, 0.908167, 0.066373,
		0.908737, 0.406726, 0.093652,
		36.055218, 38.300949, 49.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422298, 38.441620, 48.746056>,  <35.419102, 38.016243, 49.284252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422298, 38.441620, 48.746056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812405, 38.437893, 48.834385>,  <36.046471, 38.435658, 48.887383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812405, 38.437893, 48.834385>,  <35.422298, 38.441620, 48.746056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812405, 38.437893, 48.834385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220795, 0.085806, -0.971538,
		-0.009893, 0.996268, 0.085742,
		0.975270, -0.009320, 0.220820,
		36.104984, 38.435097, 48.900631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755123, 39.019691, 48.450676>,  <35.422298, 38.441620, 48.746056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755123, 39.019691, 48.450676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044090, 38.744347, 48.476814>,  <36.217468, 38.579140, 48.492496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044090, 38.744347, 48.476814>,  <35.755123, 39.019691, 48.450676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044090, 38.744347, 48.476814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295325, 0.221709, -0.929316,
		0.625221, 0.690650, 0.363457,
		0.722414, -0.688366, 0.065349,
		36.260815, 38.537838, 48.496418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309265, 39.357494, 48.013039>,  <35.755123, 39.019691, 48.450676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309265, 39.357494, 48.013039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433479, 38.978703, 48.046013>,  <36.508007, 38.751427, 48.065800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433479, 38.978703, 48.046013>,  <36.309265, 39.357494, 48.013039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433479, 38.978703, 48.046013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402707, 0.052502, -0.913822,
		0.861044, 0.316971, 0.397659,
		0.310533, -0.946981, 0.082440,
		36.526638, 38.694607, 48.070744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105797, 39.369606, 47.863613>,  <36.309265, 39.357494, 48.013039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105797, 39.369606, 47.863613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958157, 38.999535, 47.828274>,  <36.869572, 38.777493, 47.807068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958157, 38.999535, 47.828274>,  <37.105797, 39.369606, 47.863613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958157, 38.999535, 47.828274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340158, -0.046009, -0.939242,
		0.864905, -0.376724, 0.331690,
		-0.369096, -0.925182, -0.088352,
		36.847427, 38.721981, 47.801769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601112, 39.069019, 47.556068>,  <37.105797, 39.369606, 47.863613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601112, 39.069019, 47.556068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280361, 38.840851, 47.484959>,  <37.087910, 38.703949, 47.442295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280361, 38.840851, 47.484959>,  <37.601112, 39.069019, 47.556068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280361, 38.840851, 47.484959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260043, -0.065325, -0.963385,
		0.537924, -0.818749, 0.200718,
		-0.801883, -0.570423, -0.177770,
		37.039795, 38.669724, 47.431629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893135, 38.568195, 47.178738>,  <37.601112, 39.069019, 47.556068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893135, 38.568195, 47.178738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499165, 38.576168, 47.110008>,  <37.262783, 38.580952, 47.068771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499165, 38.576168, 47.110008>,  <37.893135, 38.568195, 47.178738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499165, 38.576168, 47.110008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171124, -0.032619, -0.984709,
		-0.025202, -0.999269, 0.028721,
		-0.984927, 0.019901, -0.171822,
		37.203686, 38.582146, 47.058460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844604, 38.246056, 46.628712>,  <37.893135, 38.568195, 47.178738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844604, 38.246056, 46.628712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480156, 38.410721, 46.636642>,  <37.261486, 38.509521, 46.641399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480156, 38.410721, 46.636642>,  <37.844604, 38.246056, 46.628712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480156, 38.410721, 46.636642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055921, -0.075828, -0.995551,
		-0.408330, -0.908175, 0.092109,
		-0.911120, 0.411664, 0.019823,
		37.206821, 38.534222, 46.642590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421818, 37.780624, 46.368088>,  <37.844604, 38.246056, 46.628712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421818, 37.780624, 46.368088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229263, 38.127201, 46.315117>,  <37.113731, 38.335148, 46.283333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229263, 38.127201, 46.315117>,  <37.421818, 37.780624, 46.368088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229263, 38.127201, 46.315117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014919, -0.142965, -0.989615,
		-0.876381, -0.478365, 0.055895,
		-0.481388, 0.866446, -0.132429,
		37.084846, 38.387135, 46.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833591, 37.674328, 45.870926>,  <37.421818, 37.780624, 46.368088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833591, 37.674328, 45.870926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852890, 38.073826, 45.865601>,  <36.864471, 38.313526, 45.862408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852890, 38.073826, 45.865601>,  <36.833591, 37.674328, 45.870926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852890, 38.073826, 45.865601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220506, -0.002347, -0.975383,
		-0.974192, 0.049996, 0.220116,
		0.048248, 0.998747, -0.013310,
		36.867363, 38.373451, 45.861607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163956, 37.993919, 45.590229>,  <36.833591, 37.674328, 45.870926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163956, 37.993919, 45.590229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450455, 38.269005, 45.542843>,  <36.622356, 38.434055, 45.514412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450455, 38.269005, 45.542843>,  <36.163956, 37.993919, 45.590229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450455, 38.269005, 45.542843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142317, -0.022241, -0.989571,
		-0.683177, 0.725640, 0.081943,
		0.716250, 0.687714, -0.118466,
		36.665329, 38.475319, 45.507301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863792, 38.595425, 45.248844>,  <36.163956, 37.993919, 45.590229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863792, 38.595425, 45.248844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256306, 38.639687, 45.185806>,  <36.491814, 38.666245, 45.147984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256306, 38.639687, 45.185806>,  <35.863792, 38.595425, 45.248844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256306, 38.639687, 45.185806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152728, -0.051197, -0.986941,
		-0.117274, 0.992540, -0.033340,
		0.981285, 0.110651, -0.157592,
		36.550690, 38.672882, 45.138527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908535, 38.937954, 44.636578>,  <35.863792, 38.595425, 45.248844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908535, 38.937954, 44.636578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277744, 38.785683, 44.658924>,  <36.499268, 38.694321, 44.672333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277744, 38.785683, 44.658924>,  <35.908535, 38.937954, 44.636578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277744, 38.785683, 44.658924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043508, -0.040989, -0.998212,
		0.382284, 0.923800, -0.021271,
		0.923020, -0.380675, 0.055862,
		36.554649, 38.671482, 44.675682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187435, 39.175331, 44.088348>,  <35.908535, 38.937954, 44.636578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187435, 39.175331, 44.088348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412846, 38.860920, 44.190014>,  <36.548092, 38.672272, 44.251015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412846, 38.860920, 44.190014>,  <36.187435, 39.175331, 44.088348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412846, 38.860920, 44.190014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076130, -0.256948, -0.963422,
		0.822584, 0.562262, -0.084957,
		0.563525, -0.786027, 0.254167,
		36.581902, 38.625111, 44.266262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845524, 39.306023, 43.713814>,  <36.187435, 39.175331, 44.088348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845524, 39.306023, 43.713814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820900, 38.918156, 43.808437>,  <36.806126, 38.685436, 43.865211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820900, 38.918156, 43.808437>,  <36.845524, 39.306023, 43.713814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820900, 38.918156, 43.808437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215026, -0.244324, -0.945553,
		0.974666, -0.007339, 0.223543,
		-0.061556, -0.969666, 0.236556,
		36.802433, 38.627254, 43.879406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404125, 39.032249, 43.375740>,  <36.845524, 39.306023, 43.713814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404125, 39.032249, 43.375740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141121, 38.736629, 43.434372>,  <36.983318, 38.559258, 43.469551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141121, 38.736629, 43.434372>,  <37.404125, 39.032249, 43.375740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141121, 38.736629, 43.434372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190211, -0.351063, -0.916828,
		0.729038, -0.574946, 0.371404,
		-0.657513, -0.739047, 0.146577,
		36.943867, 38.514915, 43.478344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627934, 38.481152, 43.027458>,  <37.404125, 39.032249, 43.375740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627934, 38.481152, 43.027458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244347, 38.390335, 43.095387>,  <37.014194, 38.335846, 43.136143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244347, 38.390335, 43.095387>,  <37.627934, 38.481152, 43.027458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244347, 38.390335, 43.095387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011015, -0.568692, -0.822477,
		0.283312, -0.790597, 0.542854,
		-0.958964, -0.227039, 0.169825,
		36.956657, 38.322224, 43.146336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614834, 37.717567, 42.735035>,  <37.627934, 38.481152, 43.027458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614834, 37.717567, 42.735035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227779, 37.800926, 42.791962>,  <36.995548, 37.850941, 42.826118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227779, 37.800926, 42.791962>,  <37.614834, 37.717567, 42.735035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227779, 37.800926, 42.791962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242030, -0.606731, -0.757166,
		-0.071444, -0.767104, 0.637532,
		-0.967635, 0.208397, 0.142314,
		36.937489, 37.863445, 42.834656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330673, 37.126011, 42.822563>,  <37.614834, 37.717567, 42.735035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330673, 37.126011, 42.822563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035683, 37.357410, 42.683159>,  <36.858688, 37.496250, 42.599514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035683, 37.357410, 42.683159>,  <37.330673, 37.126011, 42.822563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035683, 37.357410, 42.683159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141461, -0.636899, -0.757858,
		-0.660391, -0.509602, 0.551534,
		-0.737477, 0.578502, -0.348513,
		36.814438, 37.530960, 42.578606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738075, 36.710281, 42.650696>,  <37.330673, 37.126011, 42.822563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738075, 36.710281, 42.650696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695881, 37.030788, 42.415123>,  <36.670563, 37.223095, 42.273781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695881, 37.030788, 42.415123>,  <36.738075, 36.710281, 42.650696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695881, 37.030788, 42.415123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205484, -0.597017, -0.775466,
		-0.972959, 0.039212, 0.227627,
		-0.105490, 0.801270, -0.588930,
		36.664234, 37.271168, 42.238445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195236, 36.549397, 42.282490>,  <36.738075, 36.710281, 42.650696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195236, 36.549397, 42.282490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362885, 36.825008, 42.045990>,  <36.463474, 36.990376, 41.904091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362885, 36.825008, 42.045990>,  <36.195236, 36.549397, 42.282490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362885, 36.825008, 42.045990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218353, -0.555602, -0.802265,
		-0.881283, 0.465348, -0.082414,
		0.419121, 0.689027, -0.591252,
		36.488621, 37.031715, 41.868614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709961, 36.754959, 41.667728>,  <36.195236, 36.549397, 42.282490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709961, 36.754959, 41.667728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089718, 36.844254, 41.579350>,  <36.317574, 36.897831, 41.526321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089718, 36.844254, 41.579350>,  <35.709961, 36.754959, 41.667728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089718, 36.844254, 41.579350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072796, -0.527897, -0.846183,
		-0.305534, 0.819445, -0.484931,
		0.949394, 0.223237, -0.220943,
		36.374535, 36.911224, 41.513065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679688, 36.904221, 41.038826>,  <35.709961, 36.754959, 41.667728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679688, 36.904221, 41.038826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068043, 36.813030, 41.068218>,  <36.301056, 36.758316, 41.085854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068043, 36.813030, 41.068218>,  <35.679688, 36.904221, 41.038826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068043, 36.813030, 41.068218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040996, -0.460410, -0.886759,
		0.235988, 0.857934, -0.456354,
		0.970891, -0.227974, 0.073479,
		36.359310, 36.744637, 41.090263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873852, 36.909904, 40.363380>,  <35.679688, 36.904221, 41.038826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873852, 36.909904, 40.363380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165161, 36.710007, 40.550941>,  <36.339947, 36.590069, 40.663479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165161, 36.710007, 40.550941>,  <35.873852, 36.909904, 40.363380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165161, 36.710007, 40.550941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067257, -0.733065, -0.676825,
		0.681976, 0.461379, -0.567484,
		0.728276, -0.499746, 0.468901,
		36.383644, 36.560081, 40.691612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542683, 37.210613, 40.104568>,  <35.873852, 36.909904, 40.363380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542683, 37.210613, 40.104568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552280, 36.836945, 40.246971>,  <36.558041, 36.612743, 40.332413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552280, 36.836945, 40.246971>,  <36.542683, 37.210613, 40.104568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552280, 36.836945, 40.246971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154979, -0.355285, -0.921821,
		0.987626, -0.033054, -0.153302,
		0.023997, -0.934174, 0.356011,
		36.559479, 36.556694, 40.353775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111759, 36.935265, 39.683765>,  <36.542683, 37.210613, 40.104568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111759, 36.935265, 39.683765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944275, 36.605885, 39.836922>,  <36.843784, 36.408257, 39.928818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944275, 36.605885, 39.836922>,  <37.111759, 36.935265, 39.683765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944275, 36.605885, 39.836922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005511, -0.423930, -0.905678,
		0.908102, -0.377108, 0.182043,
		-0.418712, -0.823452, 0.382894,
		36.818661, 36.358849, 39.951790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638523, 36.402782, 39.656540>,  <37.111759, 36.935265, 39.683765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638523, 36.402782, 39.656540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269859, 36.247772, 39.664242>,  <37.048660, 36.154766, 39.668861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269859, 36.247772, 39.664242>,  <37.638523, 36.402782, 39.656540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269859, 36.247772, 39.664242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288463, -0.717549, -0.633966,
		0.259496, -0.578744, 0.773121,
		-0.921656, -0.387529, 0.019255,
		36.993362, 36.131516, 39.670017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734310, 35.634014, 39.486210>,  <37.638523, 36.402782, 39.656540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734310, 35.634014, 39.486210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344131, 35.695274, 39.422901>,  <37.110023, 35.732033, 39.384914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344131, 35.695274, 39.422901>,  <37.734310, 35.634014, 39.486210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344131, 35.695274, 39.422901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030721, -0.616986, -0.786374,
		-0.218089, -0.771927, 0.597131,
		-0.975445, 0.153155, -0.158273,
		37.051498, 35.741222, 39.375420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527298, 34.985897, 39.533993>,  <37.734310, 35.634014, 39.486210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527298, 34.985897, 39.533993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233242, 35.189648, 39.355057>,  <37.056808, 35.311897, 39.247696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233242, 35.189648, 39.355057>,  <37.527298, 34.985897, 39.533993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233242, 35.189648, 39.355057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126076, -0.751085, -0.648055,
		-0.666091, -0.420012, 0.616371,
		-0.735138, 0.509373, -0.447338,
		37.012699, 35.342461, 39.220856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911316, 34.607716, 39.490440>,  <37.527298, 34.985897, 39.533993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911316, 34.607716, 39.490440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878826, 34.879494, 39.198753>,  <36.859333, 35.042561, 39.023739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878826, 34.879494, 39.198753>,  <36.911316, 34.607716, 39.490440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878826, 34.879494, 39.198753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036239, -0.733167, -0.679083,
		-0.996037, -0.028729, 0.084171,
		-0.081221, 0.679442, -0.729220,
		36.854462, 35.083324, 38.979988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298504, 34.328281, 38.985867>,  <36.911316, 34.607716, 39.490440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298504, 34.328281, 38.985867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509815, 34.580173, 38.758057>,  <36.636604, 34.731308, 38.621372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509815, 34.580173, 38.758057>,  <36.298504, 34.328281, 38.985867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509815, 34.580173, 38.758057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231413, -0.538582, -0.810171,
		-0.816925, 0.559794, -0.138794,
		0.528281, 0.629731, -0.569525,
		36.668301, 34.769093, 38.587200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921703, 34.337448, 38.414429>,  <36.298504, 34.328281, 38.985867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921703, 34.337448, 38.414429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261353, 34.497047, 38.275986>,  <36.465141, 34.592808, 38.192921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261353, 34.497047, 38.275986>,  <35.921703, 34.337448, 38.414429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261353, 34.497047, 38.275986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188061, -0.383948, -0.904001,
		-0.493579, 0.832698, -0.250984,
		0.849125, 0.398996, -0.346106,
		36.516090, 34.616745, 38.172153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723339, 34.598305, 37.769928>,  <35.921703, 34.337448, 38.414429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723339, 34.598305, 37.769928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121941, 34.566132, 37.760906>,  <36.361103, 34.546829, 37.755493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121941, 34.566132, 37.760906>,  <35.723339, 34.598305, 37.769928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121941, 34.566132, 37.760906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052789, -0.397095, -0.916258,
		0.064738, 0.914247, -0.399953,
		0.996505, -0.080429, -0.022555,
		36.420891, 34.542004, 37.754139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042526, 35.040192, 37.235699>,  <35.723339, 34.598305, 37.769928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042526, 35.040192, 37.235699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292679, 34.736233, 37.306633>,  <36.442772, 34.553856, 37.349194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292679, 34.736233, 37.306633>,  <36.042526, 35.040192, 37.235699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292679, 34.736233, 37.306633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010900, -0.235741, -0.971755,
		0.780240, 0.605788, -0.155712,
		0.625385, -0.759899, 0.177332,
		36.480293, 34.508263, 37.359833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449306, 35.084045, 36.674477>,  <36.042526, 35.040192, 37.235699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449306, 35.084045, 36.674477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491982, 34.710434, 36.810837>,  <36.517586, 34.486267, 36.892654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491982, 34.710434, 36.810837>,  <36.449306, 35.084045, 36.674477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491982, 34.710434, 36.810837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001570, -0.343018, -0.939328,
		0.994291, 0.099681, -0.038063,
		0.106690, -0.934025, 0.340903,
		36.523987, 34.430225, 36.913109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006119, 34.861168, 36.300426>,  <36.449306, 35.084045, 36.674477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006119, 34.861168, 36.300426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774300, 34.556599, 36.416607>,  <36.635208, 34.373859, 36.486317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774300, 34.556599, 36.416607>,  <37.006119, 34.861168, 36.300426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774300, 34.556599, 36.416607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010972, -0.363672, -0.931463,
		0.814864, -0.536641, 0.219119,
		-0.579548, -0.761420, 0.290455,
		36.600433, 34.328175, 36.503742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374306, 34.217079, 36.345207>,  <37.006119, 34.861168, 36.300426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374306, 34.217079, 36.345207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985153, 34.194077, 36.255592>,  <36.751663, 34.180275, 36.201824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985153, 34.194077, 36.255592>,  <37.374306, 34.217079, 36.345207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985153, 34.194077, 36.255592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221485, 0.047595, -0.974002,
		0.066689, -0.997209, -0.033564,
		-0.972881, -0.057521, -0.224041,
		36.693287, 34.176823, 36.188381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096741, 34.053902, 36.457581>,  <37.374306, 34.217079, 36.345207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096741, 34.053902, 36.457581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480667, 34.140457, 36.386112>,  <38.711025, 34.192390, 36.343231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480667, 34.140457, 36.386112>,  <38.096741, 34.053902, 36.457581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480667, 34.140457, 36.386112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091408, 0.360892, 0.928117,
		0.265309, -0.907158, 0.326612,
		0.959821, 0.216383, -0.178669,
		38.768612, 34.205372, 36.332512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331234, 33.997383, 37.149559>,  <38.096741, 34.053902, 36.457581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331234, 33.997383, 37.149559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654301, 34.157406, 36.976299>,  <38.848141, 34.253418, 36.872341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654301, 34.157406, 36.976299>,  <38.331234, 33.997383, 37.149559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654301, 34.157406, 36.976299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288787, 0.372081, 0.882132,
		0.514074, -0.837561, 0.184987,
		0.807670, 0.400059, -0.433154,
		38.896603, 34.277424, 36.846352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855865, 33.923481, 37.615063>,  <38.331234, 33.997383, 37.149559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855865, 33.923481, 37.615063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958038, 34.221050, 37.368053>,  <39.019341, 34.399593, 37.219849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958038, 34.221050, 37.368053>,  <38.855865, 33.923481, 37.615063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958038, 34.221050, 37.368053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410031, 0.495075, 0.766013,
		0.875575, -0.448865, -0.178575,
		0.255428, 0.743923, -0.617524,
		39.034668, 34.444225, 37.182796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481071, 34.242588, 37.984489>,  <38.855865, 33.923481, 37.615063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481071, 34.242588, 37.984489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356548, 34.497173, 37.702209>,  <39.281834, 34.649925, 37.532841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356548, 34.497173, 37.702209>,  <39.481071, 34.242588, 37.984489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356548, 34.497173, 37.702209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442319, 0.754297, 0.485170,
		0.841095, -0.161105, -0.516337,
		-0.311307, 0.636460, -0.705696,
		39.263157, 34.688110, 37.490501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064053, 34.691143, 37.873997>,  <39.481071, 34.242588, 37.984489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064053, 34.691143, 37.873997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751076, 34.888168, 37.721588>,  <39.563290, 35.006382, 37.630142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751076, 34.888168, 37.721588>,  <40.064053, 34.691143, 37.873997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751076, 34.888168, 37.721588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293700, 0.831415, 0.471687,
		0.549118, 0.257162, -0.795197,
		-0.782438, 0.492561, -0.381017,
		39.516346, 35.035938, 37.607285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322777, 35.344067, 37.586578>,  <40.064053, 34.691143, 37.873997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322777, 35.344067, 37.586578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936890, 35.398136, 37.676952>,  <39.705357, 35.430580, 37.731174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936890, 35.398136, 37.676952>,  <40.322777, 35.344067, 37.586578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936890, 35.398136, 37.676952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231665, 0.843571, 0.484478,
		-0.125100, 0.519725, -0.845125,
		-0.964718, 0.135178, 0.225933,
		39.647472, 35.438690, 37.744732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281387, 36.001030, 37.726578>,  <40.322777, 35.344067, 37.586578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281387, 36.001030, 37.726578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919548, 35.917732, 37.875351>,  <39.702442, 35.867756, 37.964615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919548, 35.917732, 37.875351>,  <40.281387, 36.001030, 37.726578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919548, 35.917732, 37.875351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113657, 0.723123, 0.681304,
		-0.410825, 0.658581, -0.630470,
		-0.904602, -0.208240, 0.371929,
		39.648167, 35.855259, 37.986931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939610, 36.665344, 37.816040>,  <40.281387, 36.001030, 37.726578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939610, 36.665344, 37.816040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751869, 36.421139, 38.071220>,  <39.639225, 36.274616, 38.224327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751869, 36.421139, 38.071220>,  <39.939610, 36.665344, 37.816040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751869, 36.421139, 38.071220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014115, 0.727567, 0.685891,
		-0.882900, 0.312917, -0.350100,
		-0.469349, -0.610515, 0.637952,
		39.611065, 36.237984, 38.262608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374222, 37.024918, 38.046566>,  <39.939610, 36.665344, 37.816040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374222, 37.024918, 38.046566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436863, 36.744984, 38.325336>,  <39.474449, 36.577023, 38.492599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436863, 36.744984, 38.325336>,  <39.374222, 37.024918, 38.046566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436863, 36.744984, 38.325336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008157, 0.704689, 0.709469,
		-0.987628, -0.116788, 0.104647,
		0.156601, -0.699838, 0.696924,
		39.483845, 36.535030, 38.534412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903934, 37.072182, 38.489925>,  <39.374222, 37.024918, 38.046566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903934, 37.072182, 38.489925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207161, 36.902290, 38.687893>,  <39.389095, 36.800358, 38.806675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207161, 36.902290, 38.687893>,  <38.903934, 37.072182, 38.489925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207161, 36.902290, 38.687893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057874, 0.712070, 0.699719,
		-0.649609, -0.559074, 0.515213,
		0.758062, -0.424726, 0.494923,
		39.434578, 36.774872, 38.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697849, 37.064770, 39.302044>,  <38.903934, 37.072182, 38.489925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697849, 37.064770, 39.302044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093815, 37.008629, 39.309757>,  <39.331394, 36.974945, 39.314384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093815, 37.008629, 39.309757>,  <38.697849, 37.064770, 39.302044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093815, 37.008629, 39.309757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060407, 0.541266, 0.838679,
		-0.128148, -0.829055, 0.544285,
		0.989914, -0.140354, 0.019282,
		39.390789, 36.966522, 39.315540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852798, 36.715736, 39.911613>,  <38.697849, 37.064770, 39.302044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852798, 36.715736, 39.911613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202736, 36.871983, 39.797024>,  <39.412701, 36.965729, 39.728271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202736, 36.871983, 39.797024>,  <38.852798, 36.715736, 39.911613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202736, 36.871983, 39.797024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220177, 0.206115, 0.953435,
		0.431470, -0.897184, 0.094315,
		0.874846, 0.390613, -0.286472,
		39.465191, 36.989166, 39.711082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330044, 36.510811, 40.422878>,  <38.852798, 36.715736, 39.911613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330044, 36.510811, 40.422878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539894, 36.801834, 40.246052>,  <39.665806, 36.976448, 40.139957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539894, 36.801834, 40.246052>,  <39.330044, 36.510811, 40.422878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539894, 36.801834, 40.246052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331147, 0.303969, 0.893277,
		0.784287, -0.615027, -0.081459,
		0.524629, 0.727561, -0.442064,
		39.697281, 37.020103, 40.113434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965775, 36.554569, 40.774246>,  <39.330044, 36.510811, 40.422878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965775, 36.554569, 40.774246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888218, 36.909245, 40.606346>,  <39.841682, 37.122047, 40.505604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888218, 36.909245, 40.606346>,  <39.965775, 36.554569, 40.774246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888218, 36.909245, 40.606346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132382, 0.447610, 0.884376,
		0.972049, 0.115908, -0.204170,
		-0.193895, 0.886685, -0.419755,
		39.830051, 37.175251, 40.480419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472515, 37.001591, 41.006130>,  <39.965775, 36.554569, 40.774246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472515, 37.001591, 41.006130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226044, 37.278530, 40.855942>,  <40.078163, 37.444695, 40.765831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226044, 37.278530, 40.855942>,  <40.472515, 37.001591, 41.006130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226044, 37.278530, 40.855942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124572, 0.556390, 0.821530,
		0.777694, 0.459435, -0.429082,
		-0.616177, 0.692351, -0.375469,
		40.041191, 37.486237, 40.743301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777748, 37.613811, 41.195694>,  <40.472515, 37.001591, 41.006130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777748, 37.613811, 41.195694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392361, 37.700695, 41.133018>,  <40.161129, 37.752823, 41.095413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392361, 37.700695, 41.133018>,  <40.777748, 37.613811, 41.195694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392361, 37.700695, 41.133018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038170, 0.467719, 0.883052,
		0.265092, 0.856773, -0.442341,
		-0.963467, 0.217206, -0.156692,
		40.103321, 37.765858, 41.086010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723816, 38.325962, 41.279881>,  <40.777748, 37.613811, 41.195694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723816, 38.325962, 41.279881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367043, 38.157310, 41.345226>,  <40.152981, 38.056118, 41.384434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367043, 38.157310, 41.345226>,  <40.723816, 38.325962, 41.279881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367043, 38.157310, 41.345226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051719, 0.454039, 0.889479,
		-0.449208, 0.784904, -0.426777,
		-0.891929, -0.421634, 0.163364,
		40.099464, 38.030819, 41.394234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169083, 38.886532, 41.406460>,  <40.723816, 38.325962, 41.279881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169083, 38.886532, 41.406460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039688, 38.556046, 41.590946>,  <39.962051, 38.357754, 41.701637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039688, 38.556046, 41.590946>,  <40.169083, 38.886532, 41.406460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039688, 38.556046, 41.590946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221760, 0.540044, 0.811896,
		-0.919879, 0.160361, -0.357920,
		-0.323489, -0.826218, 0.461214,
		39.942642, 38.308182, 41.729309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537193, 39.130917, 41.726238>,  <40.169083, 38.886532, 41.406460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537193, 39.130917, 41.726238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615021, 38.782814, 41.907253>,  <39.661716, 38.573952, 42.015862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615021, 38.782814, 41.907253>,  <39.537193, 39.130917, 41.726238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615021, 38.782814, 41.907253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265588, 0.397386, 0.878378,
		-0.944250, -0.291090, -0.153813,
		0.194564, -0.870259, 0.452542,
		39.673389, 38.521736, 42.043015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011662, 39.085220, 42.304123>,  <39.537193, 39.130917, 41.726238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011662, 39.085220, 42.304123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279724, 38.812088, 42.420486>,  <39.440563, 38.648209, 42.490307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279724, 38.812088, 42.420486>,  <39.011662, 39.085220, 42.304123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279724, 38.812088, 42.420486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195997, 0.215227, 0.956694,
		-0.715870, -0.698156, 0.010404,
		0.670160, -0.682829, 0.290911,
		39.480774, 38.607239, 42.507759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623478, 38.708366, 42.743099>,  <39.011662, 39.085220, 42.304123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623478, 38.708366, 42.743099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996769, 38.610901, 42.848705>,  <39.220745, 38.552422, 42.912071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996769, 38.610901, 42.848705>,  <38.623478, 38.708366, 42.743099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996769, 38.610901, 42.848705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201767, 0.252590, 0.946303,
		-0.297268, -0.936390, 0.186561,
		0.933232, -0.243664, 0.264019,
		39.276737, 38.537804, 42.927910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525497, 38.212112, 43.231323>,  <38.623478, 38.708366, 42.743099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525497, 38.212112, 43.231323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885548, 38.382278, 43.268829>,  <39.101578, 38.484379, 43.291332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885548, 38.382278, 43.268829>,  <38.525497, 38.212112, 43.231323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885548, 38.382278, 43.268829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275024, 0.388051, 0.879647,
		0.337829, -0.817582, 0.466295,
		0.900130, 0.425412, 0.093760,
		39.155586, 38.509903, 43.296959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757915, 38.009621, 43.999058>,  <38.525497, 38.212112, 43.231323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757915, 38.009621, 43.999058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982433, 38.321232, 43.887299>,  <39.117146, 38.508198, 43.820244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982433, 38.321232, 43.887299>,  <38.757915, 38.009621, 43.999058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982433, 38.321232, 43.887299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075929, 0.287703, 0.954705,
		0.824123, -0.557090, 0.102337,
		0.561299, 0.779024, -0.279402,
		39.150822, 38.554939, 43.803478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303562, 38.076000, 44.435184>,  <38.757915, 38.009621, 43.999058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303562, 38.076000, 44.435184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247353, 38.443089, 44.286572>,  <39.213627, 38.663342, 44.197403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247353, 38.443089, 44.286572>,  <39.303562, 38.076000, 44.435184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247353, 38.443089, 44.286572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060144, 0.382474, 0.922006,
		0.988248, 0.107220, -0.108943,
		-0.140526, 0.917724, -0.371531,
		39.205196, 38.718407, 44.175114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881538, 38.464630, 44.717003>,  <39.303562, 38.076000, 44.435184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881538, 38.464630, 44.717003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596363, 38.733234, 44.636215>,  <39.425259, 38.894398, 44.587742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596363, 38.733234, 44.636215>,  <39.881538, 38.464630, 44.717003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596363, 38.733234, 44.636215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024789, 0.311984, 0.949764,
		0.700790, 0.672115, -0.239071,
		-0.712937, 0.671511, -0.201974,
		39.382481, 38.934689, 44.575623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160500, 39.165836, 44.908665>,  <39.881538, 38.464630, 44.717003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160500, 39.165836, 44.908665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762268, 39.203167, 44.904583>,  <39.523327, 39.225567, 44.902134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762268, 39.203167, 44.904583>,  <40.160500, 39.165836, 44.908665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762268, 39.203167, 44.904583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037146, 0.491352, 0.870169,
		0.086226, 0.865946, -0.492648,
		-0.995583, 0.093331, -0.010201,
		39.463593, 39.231167, 44.901524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075500, 39.821560, 45.171459>,  <40.160500, 39.165836, 44.908665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075500, 39.821560, 45.171459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709122, 39.663914, 45.201706>,  <39.489296, 39.569328, 45.219852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709122, 39.663914, 45.201706>,  <40.075500, 39.821560, 45.171459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709122, 39.663914, 45.201706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169491, 0.550725, 0.817297,
		-0.363751, 0.735784, -0.571233,
		-0.915946, -0.394112, 0.075618,
		39.434338, 39.545681, 45.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739944, 40.366776, 45.518524>,  <40.075500, 39.821560, 45.171459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739944, 40.366776, 45.518524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501534, 40.048317, 45.560291>,  <39.358486, 39.857243, 45.585354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501534, 40.048317, 45.560291>,  <39.739944, 40.366776, 45.518524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501534, 40.048317, 45.560291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273970, 0.323880, 0.905562,
		-0.754778, 0.511133, -0.411161,
		-0.596029, -0.796144, 0.104422,
		39.322723, 39.809475, 45.591618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119518, 40.708939, 45.664936>,  <39.739944, 40.366776, 45.518524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119518, 40.708939, 45.664936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117611, 40.331215, 45.796551>,  <39.116467, 40.104580, 45.875519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117611, 40.331215, 45.796551>,  <39.119518, 40.708939, 45.664936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117611, 40.331215, 45.796551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089250, 0.328129, 0.940407,
		-0.995998, -0.024879, -0.085845,
		-0.004772, -0.944305, 0.329036,
		39.116180, 40.047924, 45.895260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525589, 40.698898, 46.248848>,  <39.119518, 40.708939, 45.664936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525589, 40.698898, 46.248848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810490, 40.419437, 46.275902>,  <38.981430, 40.251759, 46.292133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810490, 40.419437, 46.275902>,  <38.525589, 40.698898, 46.248848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810490, 40.419437, 46.275902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055467, 0.152074, 0.986812,
		-0.699725, -0.699111, 0.147067,
		0.712256, -0.698654, 0.067632,
		39.024166, 40.209843, 46.296192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390781, 40.389839, 47.028801>,  <38.525589, 40.698898, 46.248848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390781, 40.389839, 47.028801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765556, 40.292892, 46.928074>,  <38.990421, 40.234726, 46.867638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765556, 40.292892, 46.928074>,  <38.390781, 40.389839, 47.028801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765556, 40.292892, 46.928074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310475, 0.246295, 0.918120,
		-0.160498, -0.938402, 0.306011,
		0.936934, -0.242365, -0.251821,
		39.046638, 40.220184, 46.852528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639637, 39.961426, 47.643719>,  <38.390781, 40.389839, 47.028801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639637, 39.961426, 47.643719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969898, 40.071571, 47.446754>,  <39.168056, 40.137657, 47.328575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969898, 40.071571, 47.446754>,  <38.639637, 39.961426, 47.643719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969898, 40.071571, 47.446754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319635, 0.490898, 0.810465,
		0.464899, -0.826555, 0.317295,
		0.825653, 0.275366, -0.492414,
		39.217594, 40.154179, 47.299030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161869, 39.788460, 48.084328>,  <38.639637, 39.961426, 47.643719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161869, 39.788460, 48.084328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319313, 40.053989, 47.829952>,  <39.413780, 40.213306, 47.677326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319313, 40.053989, 47.829952>,  <39.161869, 39.788460, 48.084328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319313, 40.053989, 47.829952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390506, 0.505517, 0.769388,
		0.832210, -0.551177, -0.060247,
		0.393613, 0.663820, -0.635934,
		39.437397, 40.253136, 47.639172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759003, 39.786400, 48.373871>,  <39.161869, 39.788460, 48.084328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759003, 39.786400, 48.373871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720917, 40.108246, 48.139427>,  <39.698067, 40.301353, 47.998760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720917, 40.108246, 48.139427>,  <39.759003, 39.786400, 48.373871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720917, 40.108246, 48.139427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189969, 0.592649, 0.782738,
		0.977162, -0.036813, -0.209282,
		-0.095216, 0.804619, -0.586108,
		39.692352, 40.349632, 47.963596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353500, 40.241398, 48.527271>,  <39.759003, 39.786400, 48.373871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353500, 40.241398, 48.527271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082237, 40.472931, 48.346142>,  <39.919479, 40.611851, 48.237465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082237, 40.472931, 48.346142>,  <40.353500, 40.241398, 48.527271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082237, 40.472931, 48.346142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091124, 0.677636, 0.729730,
		0.729241, 0.453612, -0.512293,
		-0.678163, 0.578831, -0.452825,
		39.878788, 40.646580, 48.210293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668983, 40.929760, 48.448288>,  <40.353500, 40.241398, 48.527271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668983, 40.929760, 48.448288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275578, 41.000538, 48.433376>,  <40.039536, 41.043003, 48.424427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275578, 41.000538, 48.433376>,  <40.668983, 40.929760, 48.448288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275578, 41.000538, 48.433376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116027, 0.775650, 0.620407,
		0.138692, 0.605854, -0.783393,
		-0.983515, 0.176940, -0.037281,
		39.980522, 41.053619, 48.422192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660759, 41.694492, 48.596809>,  <40.668983, 40.929760, 48.448288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660759, 41.694492, 48.596809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292721, 41.546413, 48.647991>,  <40.071899, 41.457565, 48.678699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292721, 41.546413, 48.647991>,  <40.660759, 41.694492, 48.596809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292721, 41.546413, 48.647991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109789, 0.557333, 0.822999,
		-0.375990, 0.743190, -0.553444,
		-0.920097, -0.370202, 0.127957,
		40.016693, 41.435352, 48.686378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778103, 42.280338, 48.174477>,  <40.660759, 41.694492, 48.596809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778103, 42.280338, 48.174477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802902, 42.678310, 48.142788>,  <40.817780, 42.917091, 48.123775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802902, 42.678310, 48.142788>,  <40.778103, 42.280338, 48.174477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802902, 42.678310, 48.142788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174788, -0.088966, -0.980578,
		-0.982652, 0.046945, -0.179417,
		0.061995, 0.994928, -0.079217,
		40.821499, 42.976788, 48.119022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452610, 42.440193, 47.548351>,  <40.778103, 42.280338, 48.174477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452610, 42.440193, 47.548351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613247, 42.792065, 47.650253>,  <40.709629, 43.003185, 47.711395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613247, 42.792065, 47.650253>,  <40.452610, 42.440193, 47.548351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613247, 42.792065, 47.650253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160798, 0.206119, -0.965225,
		-0.901593, 0.428589, -0.058674,
		0.401590, 0.879674, 0.254752,
		40.733723, 43.055965, 47.726677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146809, 42.949043, 47.105099>,  <40.452610, 42.440193, 47.548351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146809, 42.949043, 47.105099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501354, 43.100456, 47.211739>,  <40.714081, 43.191303, 47.275723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501354, 43.100456, 47.211739>,  <40.146809, 42.949043, 47.105099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501354, 43.100456, 47.211739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233862, 0.130923, -0.963414,
		-0.399591, 0.916280, 0.027520,
		0.886361, 0.378535, 0.266599,
		40.767262, 43.214016, 47.291718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298824, 43.508026, 46.693424>,  <40.146809, 42.949043, 47.105099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298824, 43.508026, 46.693424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658318, 43.428452, 46.849735>,  <40.874012, 43.380707, 46.943523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658318, 43.428452, 46.849735>,  <40.298824, 43.508026, 46.693424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658318, 43.428452, 46.849735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428602, 0.210234, -0.878693,
		0.092652, 0.957196, 0.274210,
		0.898730, -0.198940, 0.390777,
		40.927937, 43.368771, 46.966969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634239, 44.016968, 46.430450>,  <40.298824, 43.508026, 46.693424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634239, 44.016968, 46.430450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917000, 43.749416, 46.522442>,  <41.086655, 43.588886, 46.577637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917000, 43.749416, 46.522442>,  <40.634239, 44.016968, 46.430450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917000, 43.749416, 46.522442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297483, -0.013832, -0.954627,
		0.641710, 0.743244, 0.189202,
		0.706903, -0.668878, 0.229979,
		41.129070, 43.548752, 46.591434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208012, 44.224854, 46.013268>,  <40.634239, 44.016968, 46.430450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208012, 44.224854, 46.013268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260464, 43.840393, 46.110420>,  <41.291935, 43.609718, 46.168713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260464, 43.840393, 46.110420>,  <41.208012, 44.224854, 46.013268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260464, 43.840393, 46.110420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218770, -0.210904, -0.952712,
		0.966925, 0.178064, 0.182615,
		0.131130, -0.961152, 0.242883,
		41.299801, 43.552048, 46.183285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847343, 44.031319, 45.621380>,  <41.208012, 44.224854, 46.013268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847343, 44.031319, 45.621380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649666, 43.694084, 45.706207>,  <41.531059, 43.491745, 45.757103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649666, 43.694084, 45.706207>,  <41.847343, 44.031319, 45.621380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649666, 43.694084, 45.706207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206007, -0.350566, -0.913600,
		0.844588, -0.407811, 0.346931,
		-0.494198, -0.843086, 0.212072,
		41.501408, 43.441158, 45.769829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296822, 43.639587, 45.134258>,  <41.847343, 44.031319, 45.621380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296822, 43.639587, 45.134258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970680, 43.435162, 45.243076>,  <41.774994, 43.312508, 45.308365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970680, 43.435162, 45.243076>,  <42.296822, 43.639587, 45.134258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970680, 43.435162, 45.243076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034632, -0.425986, -0.904067,
		0.577924, -0.746557, 0.329631,
		-0.815355, -0.511066, 0.272042,
		41.726074, 43.281841, 45.324688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399929, 42.872211, 45.044273>,  <42.296822, 43.639587, 45.134258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399929, 42.872211, 45.044273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005543, 42.934795, 45.021015>,  <41.768909, 42.972347, 45.007061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005543, 42.934795, 45.021015>,  <42.399929, 42.872211, 45.044273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005543, 42.934795, 45.021015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041858, -0.568994, -0.821276,
		-0.161587, -0.807320, 0.567561,
		-0.985971, 0.156464, -0.058149,
		41.709751, 42.981735, 45.003571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080578, 42.198219, 44.952473>,  <42.399929, 42.872211, 45.044273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080578, 42.198219, 44.952473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808605, 42.465527, 44.831734>,  <41.645420, 42.625912, 44.759293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808605, 42.465527, 44.831734>,  <42.080578, 42.198219, 44.952473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808605, 42.465527, 44.831734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187026, -0.556072, -0.809818,
		-0.709021, -0.494170, 0.503076,
		-0.679934, 0.668266, -0.301844,
		41.604626, 42.666008, 44.741180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436501, 41.835167, 44.826309>,  <42.080578, 42.198219, 44.952473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436501, 41.835167, 44.826309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403038, 42.178608, 44.624004>,  <41.382961, 42.384674, 44.502621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403038, 42.178608, 44.624004>,  <41.436501, 41.835167, 44.826309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403038, 42.178608, 44.624004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284427, -0.507005, -0.813663,
		-0.955041, 0.075789, 0.286623,
		-0.083652, 0.858605, -0.505767,
		41.377941, 42.436188, 44.472275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923843, 41.570393, 44.284050>,  <41.436501, 41.835167, 44.826309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923843, 41.570393, 44.284050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028893, 41.931377, 44.147469>,  <41.091923, 42.147968, 44.065517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028893, 41.931377, 44.147469>,  <40.923843, 41.570393, 44.284050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028893, 41.931377, 44.147469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286310, -0.265058, -0.920745,
		-0.921443, 0.339569, 0.188774,
		0.262620, 0.902462, -0.341458,
		41.107677, 42.202114, 44.045033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375786, 41.793636, 44.017578>,  <40.923843, 41.570393, 44.284050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375786, 41.793636, 44.017578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677216, 41.990570, 43.843346>,  <40.858074, 42.108730, 43.738808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677216, 41.990570, 43.843346>,  <40.375786, 41.793636, 44.017578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677216, 41.990570, 43.843346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237162, -0.414376, -0.878662,
		-0.613087, 0.765443, -0.195503,
		0.753577, 0.492330, -0.435583,
		40.903290, 42.138268, 43.712669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119667, 42.124817, 43.347065>,  <40.375786, 41.793636, 44.017578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119667, 42.124817, 43.347065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515537, 42.143826, 43.292980>,  <40.753059, 42.155231, 43.260529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515537, 42.143826, 43.292980>,  <40.119667, 42.124817, 43.347065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515537, 42.143826, 43.292980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117759, -0.268130, -0.956158,
		-0.081691, 0.962210, -0.259766,
		0.989676, 0.047520, -0.135213,
		40.812439, 42.158081, 43.252415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256260, 42.464497, 42.742825>,  <40.119667, 42.124817, 43.347065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256260, 42.464497, 42.742825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594673, 42.259399, 42.801228>,  <40.797722, 42.136341, 42.836269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594673, 42.259399, 42.801228>,  <40.256260, 42.464497, 42.742825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594673, 42.259399, 42.801228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070897, -0.379646, -0.922411,
		0.528390, 0.770042, -0.357547,
		0.846037, -0.512742, 0.146007,
		40.848484, 42.105576, 42.845028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781506, 42.599049, 42.164650>,  <40.256260, 42.464497, 42.742825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781506, 42.599049, 42.164650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846157, 42.245911, 42.341038>,  <40.884949, 42.034027, 42.446869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846157, 42.245911, 42.341038>,  <40.781506, 42.599049, 42.164650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846157, 42.245911, 42.341038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035619, -0.451772, -0.891422,
		0.986209, 0.128371, -0.104465,
		0.161628, -0.882850, 0.440969,
		40.894646, 41.981056, 42.473328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079792, 42.224396, 41.665092>,  <40.781506, 42.599049, 42.164650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079792, 42.224396, 41.665092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024017, 41.931568, 41.931816>,  <40.990555, 41.755871, 42.091850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024017, 41.931568, 41.931816>,  <41.079792, 42.224396, 41.665092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024017, 41.931568, 41.931816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114041, -0.680779, -0.723557,
		0.983643, -0.024843, 0.178408,
		-0.139432, -0.732067, 0.666811,
		40.982189, 41.711948, 42.131859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554935, 41.722130, 41.486202>,  <41.079792, 42.224396, 41.665092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554935, 41.722130, 41.486202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271835, 41.522293, 41.685997>,  <41.101974, 41.402390, 41.805874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271835, 41.522293, 41.685997>,  <41.554935, 41.722130, 41.486202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271835, 41.522293, 41.685997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013666, -0.716582, -0.697369,
		0.706328, -0.486738, 0.513990,
		-0.707752, -0.499596, 0.499490,
		41.059509, 41.372414, 41.835842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791908, 41.121284, 41.439400>,  <41.554935, 41.722130, 41.486202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791908, 41.121284, 41.439400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409416, 41.057510, 41.537544>,  <41.179920, 41.019245, 41.596432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409416, 41.057510, 41.537544>,  <41.791908, 41.121284, 41.439400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409416, 41.057510, 41.537544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032694, -0.775064, -0.631036,
		0.290779, -0.611438, 0.735928,
		-0.956232, -0.159432, 0.245363,
		41.122547, 41.009682, 41.611153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678925, 40.441723, 41.518456>,  <41.791908, 41.121284, 41.439400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678925, 40.441723, 41.518456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308746, 40.573975, 41.444443>,  <41.086639, 40.653324, 41.400036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308746, 40.573975, 41.444443>,  <41.678925, 40.441723, 41.518456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308746, 40.573975, 41.444443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169495, -0.798047, -0.578267,
		-0.338858, -0.503791, 0.794588,
		-0.925444, 0.330629, -0.185035,
		41.031113, 40.673164, 41.388931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390480, 39.786236, 41.421024>,  <41.678925, 40.441723, 41.518456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390480, 39.786236, 41.421024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138054, 40.051609, 41.260216>,  <40.986599, 40.210831, 41.163731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138054, 40.051609, 41.260216>,  <41.390480, 39.786236, 41.421024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138054, 40.051609, 41.260216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165465, -0.621442, -0.765788,
		-0.757880, -0.416740, 0.501943,
		-0.631063, 0.663429, -0.402023,
		40.948734, 40.250637, 41.139610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667950, 39.454609, 41.334583>,  <41.390480, 39.786236, 41.421024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667950, 39.454609, 41.334583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694054, 39.746971, 41.062843>,  <40.709717, 39.922390, 40.899799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694054, 39.746971, 41.062843>,  <40.667950, 39.454609, 41.334583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694054, 39.746971, 41.062843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017232, -0.681523, -0.731593,
		-0.997720, 0.036036, -0.057070,
		0.065258, 0.730908, -0.679348,
		40.713631, 39.966244, 40.859039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234970, 39.250782, 40.763721>,  <40.667950, 39.454609, 41.334583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234970, 39.250782, 40.763721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442585, 39.548363, 40.595371>,  <40.567154, 39.726910, 40.494362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442585, 39.548363, 40.595371>,  <40.234970, 39.250782, 40.763721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442585, 39.548363, 40.595371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039780, -0.470843, -0.881320,
		-0.853824, 0.474182, -0.214793,
		0.519040, 0.743947, -0.420880,
		40.598297, 39.771545, 40.469109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875320, 39.442291, 40.207062>,  <40.234970, 39.250782, 40.763721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875320, 39.442291, 40.207062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255211, 39.539047, 40.127552>,  <40.483147, 39.597099, 40.079845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255211, 39.539047, 40.127552>,  <39.875320, 39.442291, 40.207062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255211, 39.539047, 40.127552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055261, -0.495418, -0.866895,
		-0.308168, 0.834297, -0.457145,
		0.949725, 0.241887, -0.198776,
		40.540127, 39.611614, 40.067921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778072, 39.639771, 39.547394>,  <39.875320, 39.442291, 40.207062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778072, 39.639771, 39.547394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171799, 39.580246, 39.585285>,  <40.408035, 39.544533, 39.608021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171799, 39.580246, 39.585285>,  <39.778072, 39.639771, 39.547394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171799, 39.580246, 39.585285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051228, -0.272724, -0.960727,
		0.168801, 0.950514, -0.260824,
		0.984318, -0.148810, 0.094729,
		40.467094, 39.535603, 39.613705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016605, 39.975018, 39.027390>,  <39.778072, 39.639771, 39.547394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016605, 39.975018, 39.027390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296982, 39.711407, 39.136471>,  <40.465210, 39.553242, 39.201920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296982, 39.711407, 39.136471>,  <40.016605, 39.975018, 39.027390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296982, 39.711407, 39.136471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156758, -0.230648, -0.960327,
		0.695777, 0.715883, -0.058364,
		0.700943, -0.659025, 0.272700,
		40.507263, 39.513699, 39.218281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445972, 40.067177, 38.556530>,  <40.016605, 39.975018, 39.027390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445972, 40.067177, 38.556530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520599, 39.702938, 38.704048>,  <40.565376, 39.484394, 38.792557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520599, 39.702938, 38.704048>,  <40.445972, 40.067177, 38.556530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520599, 39.702938, 38.704048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117032, -0.352113, -0.928612,
		0.975447, 0.216406, 0.040877,
		0.186564, -0.910596, 0.368794,
		40.576569, 39.429760, 38.814686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073154, 39.829762, 38.267597>,  <40.445972, 40.067177, 38.556530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073154, 39.829762, 38.267597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890789, 39.492771, 38.382404>,  <40.781368, 39.290577, 38.451290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890789, 39.492771, 38.382404>,  <41.073154, 39.829762, 38.267597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890789, 39.492771, 38.382404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281275, -0.442342, -0.851597,
		0.844407, -0.307527, 0.438638,
		-0.455917, -0.842473, 0.287017,
		40.754013, 39.240028, 38.468510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490570, 39.306881, 38.036240>,  <41.073154, 39.829762, 38.267597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490570, 39.306881, 38.036240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150513, 39.104038, 38.092937>,  <40.946476, 38.982334, 38.126957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150513, 39.104038, 38.092937>,  <41.490570, 39.306881, 38.036240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150513, 39.104038, 38.092937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171015, -0.520533, -0.836540,
		0.498001, -0.686940, 0.529252,
		-0.850146, -0.507108, 0.141749,
		40.895470, 38.951904, 38.135464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703289, 38.599628, 37.795067>,  <41.490570, 39.306881, 38.036240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703289, 38.599628, 37.795067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309807, 38.555103, 37.851551>,  <41.073719, 38.528389, 37.885441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309807, 38.555103, 37.851551>,  <41.703289, 38.599628, 37.795067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309807, 38.555103, 37.851551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036195, -0.646669, -0.761912,
		0.176124, -0.754605, 0.632100,
		-0.983702, -0.111312, 0.141207,
		41.014694, 38.521709, 37.893913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579533, 37.951340, 37.741726>,  <41.703289, 38.599628, 37.795067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579533, 37.951340, 37.741726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238094, 38.133385, 37.640331>,  <41.033234, 38.242611, 37.579494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238094, 38.133385, 37.640331>,  <41.579533, 37.951340, 37.741726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238094, 38.133385, 37.640331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023973, -0.520390, -0.853592,
		-0.520390, -0.722543, 0.455111,
		0.853592, -0.455111, 0.253485,
		40.982018, 38.269917, 37.564285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004333, 37.466747, 37.665966>,  <41.579533, 37.951340, 37.741726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004333, 37.466747, 37.665966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900463, 37.786648, 37.449459>,  <40.838139, 37.978588, 37.319553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900463, 37.786648, 37.449459>,  <41.004333, 37.466747, 37.665966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900463, 37.786648, 37.449459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161952, -0.588624, -0.792018,
		-0.952018, -0.118011, 0.282375,
		-0.259680, 0.799747, -0.541269,
		40.822559, 38.026573, 37.287079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221100, 37.320744, 37.440128>,  <41.004333, 37.466747, 37.665966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221100, 37.320744, 37.440128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354889, 37.607246, 37.195145>,  <40.435162, 37.779148, 37.048153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354889, 37.607246, 37.195145>,  <40.221100, 37.320744, 37.440128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354889, 37.607246, 37.195145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373346, -0.496006, -0.783958,
		-0.865297, 0.490873, 0.101510,
		0.334474, 0.716255, -0.612458,
		40.455231, 37.822124, 37.011406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689579, 37.527832, 36.900314>,  <40.221100, 37.320744, 37.440128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689579, 37.527832, 36.900314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039124, 37.641430, 36.742470>,  <40.248848, 37.709591, 36.647762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039124, 37.641430, 36.742470>,  <39.689579, 37.527832, 36.900314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039124, 37.641430, 36.742470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266288, -0.399496, -0.877208,
		-0.406769, 0.871635, -0.273478,
		0.873859, 0.283997, -0.394609,
		40.301281, 37.726627, 36.624088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536907, 37.685719, 36.351547>,  <39.689579, 37.527832, 36.900314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536907, 37.685719, 36.351547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931282, 37.659946, 36.289856>,  <40.167908, 37.644485, 36.252842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931282, 37.659946, 36.289856>,  <39.536907, 37.685719, 36.351547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931282, 37.659946, 36.289856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166056, -0.272538, -0.947707,
		0.019027, 0.959985, -0.279403,
		0.985933, -0.064428, -0.154226,
		40.227062, 37.640617, 36.243587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730793, 38.085857, 35.705730>,  <39.536907, 37.685719, 36.351547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730793, 38.085857, 35.705730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027088, 37.822193, 35.757591>,  <40.204865, 37.663994, 35.788708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027088, 37.822193, 35.757591>,  <39.730793, 38.085857, 35.705730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027088, 37.822193, 35.757591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057139, -0.254108, -0.965487,
		0.669356, 0.707768, -0.225892,
		0.740741, -0.659162, 0.129648,
		40.249310, 37.624443, 35.796486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164005, 38.154858, 35.277195>,  <39.730793, 38.085857, 35.705730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164005, 38.154858, 35.277195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239456, 37.767490, 35.342411>,  <40.284725, 37.535069, 35.381538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239456, 37.767490, 35.342411>,  <40.164005, 38.154858, 35.277195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239456, 37.767490, 35.342411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203501, -0.200957, -0.958229,
		0.960733, 0.147566, -0.234980,
		0.188623, -0.968422, 0.163036,
		40.296043, 37.476963, 35.391323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323883, 37.914410, 34.618401>,  <40.164005, 38.154858, 35.277195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323883, 37.914410, 34.618401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307613, 37.559513, 34.802204>,  <40.297852, 37.346573, 34.912487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307613, 37.559513, 34.802204>,  <40.323883, 37.914410, 34.618401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307613, 37.559513, 34.802204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286316, -0.430252, -0.856099,
		0.957272, -0.166383, -0.236533,
		-0.040671, -0.887243, 0.459506,
		40.295410, 37.293339, 34.940056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680389, 37.425426, 34.213875>,  <40.323883, 37.914410, 34.618401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680389, 37.425426, 34.213875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429443, 37.220135, 34.448147>,  <40.278877, 37.096962, 34.588711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429443, 37.220135, 34.448147>,  <40.680389, 37.425426, 34.213875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429443, 37.220135, 34.448147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363763, -0.471855, -0.803137,
		0.688545, -0.716905, 0.109331,
		-0.627361, -0.513226, 0.585677,
		40.241234, 37.066166, 34.623848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706387, 36.836880, 33.939667>,  <40.680389, 37.425426, 34.213875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706387, 36.836880, 33.939667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394123, 36.759018, 34.177216>,  <40.206764, 36.712303, 34.319744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394123, 36.759018, 34.177216>,  <40.706387, 36.836880, 33.939667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394123, 36.759018, 34.177216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456837, -0.470711, -0.754805,
		0.426467, -0.860547, 0.278540,
		-0.780657, -0.194652, 0.593872,
		40.159927, 36.700623, 34.355377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599842, 36.154026, 33.807442>,  <40.706387, 36.836880, 33.939667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599842, 36.154026, 33.807442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257328, 36.293541, 33.959820>,  <40.051819, 36.377251, 34.051247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257328, 36.293541, 33.959820>,  <40.599842, 36.154026, 33.807442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257328, 36.293541, 33.959820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515732, -0.537109, -0.667484,
		-0.028200, -0.768024, 0.639800,
		-0.856286, 0.348788, 0.380948,
		40.000443, 36.398178, 34.074104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136459, 35.688187, 34.018913>,  <40.599842, 36.154026, 33.807442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136459, 35.688187, 34.018913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808842, 35.759510, 33.800789>,  <39.612270, 35.802303, 33.669914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808842, 35.759510, 33.800789>,  <40.136459, 35.688187, 34.018913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808842, 35.759510, 33.800789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436073, 0.811134, -0.389747,
		0.372830, -0.557018, -0.742111,
		-0.819047, 0.178305, -0.545315,
		39.563129, 35.813000, 33.637196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869793, 35.584400, 34.304302>,  <40.136459, 35.688187, 34.018913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869793, 35.584400, 34.304302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240231, 35.458286, 34.387199>,  <41.462494, 35.382618, 34.436939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240231, 35.458286, 34.387199>,  <40.869793, 35.584400, 34.304302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240231, 35.458286, 34.387199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357757, 0.559312, -0.747784,
		0.119852, 0.766659, 0.630769,
		0.926092, -0.315285, 0.207243,
		41.518059, 35.363701, 34.449371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272289, 36.186172, 34.566151>,  <40.869793, 35.584400, 34.304302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272289, 36.186172, 34.566151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469734, 35.915333, 34.347832>,  <41.588200, 35.752831, 34.216843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469734, 35.915333, 34.347832>,  <41.272289, 36.186172, 34.566151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469734, 35.915333, 34.347832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263711, 0.714561, -0.647966,
		0.828738, 0.175909, 0.531271,
		0.493608, -0.677096, -0.545795,
		41.617817, 35.712204, 34.184093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037197, 36.239796, 34.515316>,  <41.272289, 36.186172, 34.566151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037197, 36.239796, 34.515316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911034, 36.058929, 34.181595>,  <41.835335, 35.950409, 33.981361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911034, 36.058929, 34.181595>,  <42.037197, 36.239796, 34.515316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911034, 36.058929, 34.181595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337615, 0.768189, -0.543969,
		0.886866, -0.453248, -0.089638,
		-0.315411, -0.452164, -0.834304,
		41.816410, 35.923279, 33.931305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496544, 36.142189, 34.071259>,  <42.037197, 36.239796, 34.515316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496544, 36.142189, 34.071259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166653, 36.182758, 33.848713>,  <41.968719, 36.207100, 33.715187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166653, 36.182758, 33.848713>,  <42.496544, 36.142189, 34.071259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166653, 36.182758, 33.848713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491790, 0.614367, -0.617006,
		0.279230, -0.782474, -0.556565,
		-0.824726, 0.101426, -0.556363,
		41.919235, 36.213184, 33.681805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571167, 35.908485, 33.509380>,  <42.496544, 36.142189, 34.071259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571167, 35.908485, 33.509380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341370, 36.234505, 33.539436>,  <42.203491, 36.430119, 33.557468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341370, 36.234505, 33.539436>,  <42.571167, 35.908485, 33.509380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341370, 36.234505, 33.539436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658696, 0.514864, -0.548665,
		-0.485876, -0.265713, -0.832659,
		-0.574494, 0.815053, 0.075136,
		42.169022, 36.479019, 33.561977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382668, 36.197945, 32.864616>,  <42.571167, 35.908485, 33.509380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382668, 36.197945, 32.864616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437168, 36.494194, 33.127800>,  <42.469868, 36.671944, 33.285709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437168, 36.494194, 33.127800>,  <42.382668, 36.197945, 32.864616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437168, 36.494194, 33.127800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593223, 0.470916, -0.652935,
		-0.793423, 0.479280, -0.375193,
		0.136255, 0.740627, 0.657956,
		42.478046, 36.716381, 33.325188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545341, 36.913677, 32.791924>,  <42.382668, 36.197945, 32.864616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545341, 36.913677, 32.791924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907528, 36.968960, 32.952442>,  <43.124840, 37.002129, 33.048752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907528, 36.968960, 32.952442>,  <42.545341, 36.913677, 32.791924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907528, 36.968960, 32.952442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362513, 0.239882, -0.900578,
		-0.220730, 0.960914, 0.167103,
		0.905463, 0.138207, 0.401293,
		43.179169, 37.010422, 33.072830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852081, 37.640022, 32.600372>,  <42.545341, 36.913677, 32.791924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852081, 37.640022, 32.600372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167133, 37.412754, 32.695721>,  <43.356163, 37.276394, 32.752930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167133, 37.412754, 32.695721>,  <42.852081, 37.640022, 32.600372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167133, 37.412754, 32.695721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475090, 0.313686, -0.822125,
		0.392334, 0.760778, 0.517001,
		0.787631, -0.568170, 0.238368,
		43.403423, 37.242302, 32.767231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435883, 38.078445, 32.572876>,  <42.852081, 37.640022, 32.600372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435883, 38.078445, 32.572876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560024, 37.701183, 32.525299>,  <43.634510, 37.474827, 32.496754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560024, 37.701183, 32.525299>,  <43.435883, 38.078445, 32.572876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560024, 37.701183, 32.525299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344151, 0.228106, -0.910784,
		0.886138, 0.241731, 0.395380,
		0.310353, -0.943151, -0.118941,
		43.653130, 37.418240, 32.489616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144066, 37.966881, 32.384029>,  <43.435883, 38.078445, 32.572876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144066, 37.966881, 32.384029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007717, 37.606758, 32.275768>,  <43.925907, 37.390686, 32.210812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007717, 37.606758, 32.275768>,  <44.144066, 37.966881, 32.384029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007717, 37.606758, 32.275768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379538, 0.131598, -0.915769,
		0.860091, -0.414884, 0.296842,
		-0.340874, -0.900307, -0.270651,
		43.905457, 37.336666, 32.194572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696152, 37.580105, 32.094452>,  <44.144066, 37.966881, 32.384029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696152, 37.580105, 32.094452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380466, 37.378780, 31.953701>,  <44.191055, 37.257984, 31.869249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380466, 37.378780, 31.953701>,  <44.696152, 37.580105, 32.094452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380466, 37.378780, 31.953701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504946, -0.205712, -0.838279,
		0.349529, -0.839262, 0.416495,
		-0.789214, -0.503311, -0.351880,
		44.143703, 37.227787, 31.848137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898472, 36.906231, 31.774878>,  <44.696152, 37.580105, 32.094452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898472, 36.906231, 31.774878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529480, 36.940319, 31.624266>,  <44.308086, 36.960770, 31.533897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529480, 36.940319, 31.624266>,  <44.898472, 36.906231, 31.774878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529480, 36.940319, 31.624266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318705, -0.382309, -0.867333,
		-0.217863, -0.920097, 0.325512,
		-0.922476, 0.085218, -0.376531,
		44.252739, 36.965885, 31.511307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752758, 36.308796, 31.458971>,  <44.898472, 36.906231, 31.774878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752758, 36.308796, 31.458971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483322, 36.560375, 31.303688>,  <44.321663, 36.711323, 31.210518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483322, 36.560375, 31.303688>,  <44.752758, 36.308796, 31.458971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483322, 36.560375, 31.303688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108008, -0.435839, -0.893520,
		-0.731174, -0.643793, 0.225644,
		-0.673586, 0.628947, -0.388209,
		44.281246, 36.749058, 31.187225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348473, 35.963692, 31.140705>,  <44.752758, 36.308796, 31.458971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348473, 35.963692, 31.140705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292435, 36.311710, 30.951645>,  <44.258812, 36.520519, 30.838209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292435, 36.311710, 30.951645>,  <44.348473, 35.963692, 31.140705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292435, 36.311710, 30.951645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057443, -0.483695, -0.873349,
		-0.988471, -0.095197, 0.117739,
		-0.140090, 0.870044, -0.472650,
		44.250408, 36.572723, 30.809851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008430, 35.749355, 30.569996>,  <44.348473, 35.963692, 31.140705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008430, 35.749355, 30.569996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104301, 36.117504, 30.446404>,  <44.161823, 36.338394, 30.372248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104301, 36.117504, 30.446404>,  <44.008430, 35.749355, 30.569996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104301, 36.117504, 30.446404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170756, -0.353260, -0.919810,
		-0.955718, 0.167698, -0.241828,
		0.239678, 0.920372, -0.308981,
		44.176205, 36.393616, 30.353708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686314, 35.961357, 29.853420>,  <44.008430, 35.749355, 30.569996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686314, 35.961357, 29.853420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006905, 36.198273, 29.886478>,  <44.199257, 36.340424, 29.906313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006905, 36.198273, 29.886478>,  <43.686314, 35.961357, 29.853420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006905, 36.198273, 29.886478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240012, -0.191997, -0.951594,
		-0.547753, 0.782514, -0.296037,
		0.801474, 0.592291, 0.082646,
		44.247349, 36.375961, 29.911272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681000, 36.464283, 29.362442>,  <43.686314, 35.961357, 29.853420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681000, 36.464283, 29.362442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068951, 36.432037, 29.454395>,  <44.301720, 36.412689, 29.509567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068951, 36.432037, 29.454395>,  <43.681000, 36.464283, 29.362442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068951, 36.432037, 29.454395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195644, -0.304505, -0.932202,
		0.145152, 0.949093, -0.279559,
		0.969873, -0.080617, 0.229884,
		44.359913, 36.407852, 29.523361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989830, 36.739838, 28.801647>,  <43.681000, 36.464283, 29.362442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989830, 36.739838, 28.801647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296345, 36.532677, 28.953741>,  <44.480255, 36.408379, 29.044996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296345, 36.532677, 28.953741>,  <43.989830, 36.739838, 28.801647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296345, 36.532677, 28.953741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290682, -0.248314, -0.924037,
		0.572979, 0.818606, -0.039735,
		0.766289, -0.517903, 0.380233,
		44.526230, 36.377304, 29.067812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557800, 36.979679, 28.336441>,  <43.989830, 36.739838, 28.801647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557800, 36.979679, 28.336441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692226, 36.655006, 28.527533>,  <44.772884, 36.460201, 28.642187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692226, 36.655006, 28.527533>,  <44.557800, 36.979679, 28.336441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692226, 36.655006, 28.527533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527808, -0.257791, -0.809298,
		0.780049, 0.524129, 0.341779,
		0.336069, -0.811685, 0.477729,
		44.793049, 36.411499, 28.670851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351665, 36.897144, 28.159679>,  <44.557800, 36.979679, 28.336441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351665, 36.897144, 28.159679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229290, 36.538216, 28.286934>,  <45.155865, 36.322857, 28.363287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229290, 36.538216, 28.286934>,  <45.351665, 36.897144, 28.159679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229290, 36.538216, 28.286934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397029, -0.423965, -0.814016,
		0.865314, -0.122731, 0.485971,
		-0.305940, -0.897324, 0.318135,
		45.137508, 36.269020, 28.382374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854362, 36.550831, 27.923784>,  <45.351665, 36.897144, 28.159679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854362, 36.550831, 27.923784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568649, 36.281513, 28.000179>,  <45.397221, 36.119923, 28.046017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568649, 36.281513, 28.000179>,  <45.854362, 36.550831, 27.923784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568649, 36.281513, 28.000179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270663, -0.517412, -0.811804,
		0.645405, -0.528162, 0.551813,
		-0.714279, -0.673298, 0.190986,
		45.354366, 36.079525, 28.057474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.172112, 35.942299, 27.811512>,  <45.854362, 36.550831, 27.923784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.172112, 35.942299, 27.811512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781521, 35.857399, 27.796364>,  <45.547165, 35.806458, 27.787275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781521, 35.857399, 27.796364>,  <46.172112, 35.942299, 27.811512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781521, 35.857399, 27.796364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163338, -0.613607, -0.772534,
		0.140735, -0.760550, 0.633844,
		-0.976481, -0.212253, -0.037871,
		45.488575, 35.793724, 27.785002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204967, 35.208176, 27.761459>,  <46.172112, 35.942299, 27.811512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204967, 35.208176, 27.761459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849583, 35.349171, 27.643890>,  <45.636353, 35.433769, 27.573349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849583, 35.349171, 27.643890>,  <46.204967, 35.208176, 27.761459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849583, 35.349171, 27.643890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024791, -0.676338, -0.736174,
		-0.458283, -0.646775, 0.609638,
		-0.888461, 0.352489, -0.293920,
		45.583046, 35.454918, 27.555714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770103, 34.648403, 27.627043>,  <46.204967, 35.208176, 27.761459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770103, 34.648403, 27.627043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600353, 34.934151, 27.404486>,  <45.498501, 35.105598, 27.270950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600353, 34.934151, 27.404486>,  <45.770103, 34.648403, 27.627043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600353, 34.934151, 27.404486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047392, -0.596105, -0.801507,
		-0.904244, -0.366511, 0.219119,
		-0.424378, 0.714373, -0.556394,
		45.473042, 35.148464, 27.237568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213345, 34.331886, 27.349321>,  <45.770103, 34.648403, 27.627043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213345, 34.331886, 27.349321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286922, 34.635345, 27.099323>,  <45.331070, 34.817421, 26.949324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286922, 34.635345, 27.099323>,  <45.213345, 34.331886, 27.349321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286922, 34.635345, 27.099323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127720, -0.612008, -0.780470,
		-0.974604, 0.223385, -0.015679,
		0.183941, 0.758646, -0.624997,
		45.342106, 34.862938, 26.911823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693062, 34.300671, 26.851416>,  <45.213345, 34.331886, 27.349321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693062, 34.300671, 26.851416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952263, 34.556530, 26.686033>,  <45.107784, 34.710045, 26.586803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952263, 34.556530, 26.686033>,  <44.693062, 34.300671, 26.851416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952263, 34.556530, 26.686033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030174, -0.520860, -0.853108,
		-0.761043, 0.565289, -0.318216,
		0.647999, 0.639651, -0.413454,
		45.146664, 34.748425, 26.561996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401852, 34.465794, 26.242119>,  <44.693062, 34.300671, 26.851416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401852, 34.465794, 26.242119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784092, 34.572834, 26.192785>,  <45.013435, 34.637058, 26.163185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784092, 34.572834, 26.192785>,  <44.401852, 34.465794, 26.242119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784092, 34.572834, 26.192785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010864, -0.386291, -0.922313,
		-0.294453, 0.882706, -0.366234,
		0.955604, 0.267599, -0.123334,
		45.070774, 34.653114, 26.155785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465187, 34.901989, 25.554096>,  <44.401852, 34.465794, 26.242119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465187, 34.901989, 25.554096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789627, 34.692879, 25.659039>,  <44.984291, 34.567413, 25.722004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789627, 34.692879, 25.659039>,  <44.465187, 34.901989, 25.554096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789627, 34.692879, 25.659039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117772, -0.585317, -0.802205,
		0.572935, 0.619767, -0.536316,
		0.811095, -0.522774, 0.262358,
		45.032955, 34.536045, 25.737745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758259, 35.494560, 25.646957>,  <44.465187, 34.901989, 25.554096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758259, 35.494560, 25.646957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829025, 35.582882, 26.030613>,  <44.871487, 35.635876, 26.260807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829025, 35.582882, 26.030613>,  <44.758259, 35.494560, 25.646957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829025, 35.582882, 26.030613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983191, 0.084313, 0.161945,
		-0.045110, -0.971667, 0.232008,
		0.176918, 0.220803, 0.959138,
		44.882099, 35.649124, 26.318354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500046, 36.006882, 26.199177>,  <44.758259, 35.494560, 25.646957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500046, 36.006882, 26.199177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278149, 36.199360, 26.470680>,  <44.145012, 36.314846, 26.633581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278149, 36.199360, 26.470680>,  <44.500046, 36.006882, 26.199177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278149, 36.199360, 26.470680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246910, 0.874251, -0.417996,
		-0.794543, -0.064288, -0.603795,
		-0.554741, 0.481199, 0.678756,
		44.111725, 36.343719, 26.674307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055962, 36.305893, 25.777094>,  <44.500046, 36.006882, 26.199177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055962, 36.305893, 25.777094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123890, 36.501667, 26.119232>,  <44.164646, 36.619133, 26.324514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123890, 36.501667, 26.119232>,  <44.055962, 36.305893, 25.777094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123890, 36.501667, 26.119232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223417, 0.826230, -0.517135,
		-0.959816, 0.278917, 0.030959,
		0.169817, 0.489437, 0.855344,
		44.174835, 36.648499, 26.375835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638035, 36.951984, 25.844456>,  <44.055962, 36.305893, 25.777094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638035, 36.951984, 25.844456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990051, 36.964893, 26.033978>,  <44.201260, 36.972637, 26.147692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990051, 36.964893, 26.033978>,  <43.638035, 36.951984, 25.844456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990051, 36.964893, 26.033978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378875, 0.553833, -0.741433,
		-0.286334, 0.832002, 0.475169,
		0.880038, 0.032268, 0.473806,
		44.254063, 36.974575, 26.176119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844776, 37.686947, 25.994654>,  <43.638035, 36.951984, 25.844456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844776, 37.686947, 25.994654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173260, 37.463993, 25.945765>,  <44.370350, 37.330219, 25.916431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173260, 37.463993, 25.945765>,  <43.844776, 37.686947, 25.994654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173260, 37.463993, 25.945765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388299, 0.702793, -0.596075,
		0.418140, 0.442043, 0.793572,
		0.821208, -0.557386, -0.122221,
		44.419621, 37.296776, 25.909098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457554, 38.125950, 26.083241>,  <43.844776, 37.686947, 25.994654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457554, 38.125950, 26.083241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511276, 37.822598, 25.828110>,  <44.543510, 37.640587, 25.675032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511276, 37.822598, 25.828110>,  <44.457554, 38.125950, 26.083241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511276, 37.822598, 25.828110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170710, 0.651744, -0.738978,
		0.976125, -0.009634, 0.216996,
		0.134306, -0.758378, -0.637828,
		44.551567, 37.595085, 25.636761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921150, 38.782410, 25.876537>,  <44.457554, 38.125950, 26.083241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921150, 38.782410, 25.876537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317730, 38.823116, 25.909203>,  <45.555679, 38.847538, 25.928802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317730, 38.823116, 25.909203>,  <44.921150, 38.782410, 25.876537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.317730, 38.823116, 25.909203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092912, 0.111213, 0.989444,
		0.091592, -0.988574, 0.119716,
		0.991453, 0.101749, 0.081664,
		45.615166, 38.853645, 25.933701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159210, 38.352207, 26.356337>,  <44.921150, 38.782410, 25.876537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159210, 38.352207, 26.356337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430771, 38.645401, 26.339260>,  <45.593708, 38.821320, 26.329014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430771, 38.645401, 26.339260>,  <45.159210, 38.352207, 26.356337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430771, 38.645401, 26.339260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073394, 0.125603, 0.989362,
		0.730553, -0.668544, 0.139069,
		0.678900, 0.732988, -0.042693,
		45.634441, 38.865299, 26.326452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820354, 38.287426, 26.712439>,  <45.159210, 38.352207, 26.356337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820354, 38.287426, 26.712439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707642, 38.670296, 26.739050>,  <45.640015, 38.900017, 26.755016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707642, 38.670296, 26.739050>,  <45.820354, 38.287426, 26.712439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707642, 38.670296, 26.739050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161847, -0.020927, 0.986594,
		0.945731, 0.288769, -0.149019,
		-0.281779, 0.957170, 0.066527,
		45.623108, 38.957447, 26.759008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346050, 38.842552, 26.917944>,  <45.820354, 38.287426, 26.712439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346050, 38.842552, 26.917944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972042, 38.904850, 27.045370>,  <45.747639, 38.942226, 27.121826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972042, 38.904850, 27.045370>,  <46.346050, 38.842552, 26.917944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972042, 38.904850, 27.045370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305798, -0.100655, 0.946761,
		0.179514, 0.982656, 0.046489,
		-0.935020, 0.155741, 0.318563,
		45.691536, 38.951572, 27.140940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257889, 39.426132, 27.386156>,  <46.346050, 38.842552, 26.917944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257889, 39.426132, 27.386156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998077, 39.126064, 27.435732>,  <45.842190, 38.946026, 27.465477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998077, 39.126064, 27.435732>,  <46.257889, 39.426132, 27.386156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998077, 39.126064, 27.435732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305772, -0.108476, 0.945905,
		-0.696143, 0.652290, 0.299838,
		-0.649530, -0.750167, 0.123938,
		45.803219, 38.901012, 27.472914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.075096, 39.503647, 28.054607>,  <46.257889, 39.426132, 27.386156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.075096, 39.503647, 28.054607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955460, 39.127983, 27.987053>,  <45.883678, 38.902584, 27.946520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955460, 39.127983, 27.987053>,  <46.075096, 39.503647, 28.054607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955460, 39.127983, 27.987053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320449, -0.265563, 0.909280,
		-0.898809, 0.217839, 0.380380,
		-0.299091, -0.939161, -0.168884,
		45.865734, 38.846233, 27.936388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660782, 39.322952, 28.585712>,  <46.075096, 39.503647, 28.054607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660782, 39.322952, 28.585712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742104, 38.960873, 28.436434>,  <45.790897, 38.743626, 28.346867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742104, 38.960873, 28.436434>,  <45.660782, 39.322952, 28.585712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742104, 38.960873, 28.436434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133729, -0.351914, 0.926430,
		-0.969940, -0.238253, 0.049506,
		0.203303, -0.905203, -0.373197,
		45.803093, 38.689312, 28.324474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230354, 38.839539, 28.897030>,  <45.660782, 39.322952, 28.585712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230354, 38.839539, 28.897030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566708, 38.660748, 28.774961>,  <45.768520, 38.553474, 28.701721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566708, 38.660748, 28.774961>,  <45.230354, 38.839539, 28.897030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566708, 38.660748, 28.774961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175099, -0.308858, 0.934851,
		-0.512112, -0.839534, -0.181448,
		0.840881, -0.446977, -0.305171,
		45.818974, 38.526653, 28.683411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232056, 38.289974, 29.318388>,  <45.230354, 38.839539, 28.897030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232056, 38.289974, 29.318388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602787, 38.322334, 29.171722>,  <45.825226, 38.341751, 29.083723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602787, 38.322334, 29.171722>,  <45.232056, 38.289974, 29.318388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602787, 38.322334, 29.171722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375271, -0.232282, 0.897339,
		-0.012577, -0.969278, -0.245644,
		0.926830, 0.080897, -0.366664,
		45.880836, 38.346603, 29.061724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630608, 37.604206, 29.503498>,  <45.232056, 38.289974, 29.318388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630608, 37.604206, 29.503498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915474, 37.879807, 29.449678>,  <46.086395, 38.045166, 29.417387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915474, 37.879807, 29.449678>,  <45.630608, 37.604206, 29.503498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915474, 37.879807, 29.449678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345274, -0.176895, 0.921680,
		0.611234, -0.702845, -0.363871,
		0.712165, 0.688997, -0.134550,
		46.129124, 38.086506, 29.409313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.285988, 37.300518, 29.760937>,  <45.630608, 37.604206, 29.503498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.285988, 37.300518, 29.760937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324162, 37.698387, 29.745373>,  <46.347065, 37.937111, 29.736034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324162, 37.698387, 29.745373>,  <46.285988, 37.300518, 29.760937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324162, 37.698387, 29.745373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215982, 0.017466, 0.976241,
		0.971723, -0.101566, -0.213166,
		0.095430, 0.994676, -0.038908,
		46.352791, 37.996788, 29.733700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701614, 37.426979, 30.249889>,  <46.285988, 37.300518, 29.760937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701614, 37.426979, 30.249889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575069, 37.801922, 30.191542>,  <46.499142, 38.026886, 30.156532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575069, 37.801922, 30.191542>,  <46.701614, 37.426979, 30.249889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575069, 37.801922, 30.191542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060528, 0.173400, 0.982990,
		0.946705, 0.302153, -0.111593,
		-0.316363, 0.937356, -0.145870,
		46.480160, 38.083130, 30.147781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025425, 37.863079, 30.811230>,  <46.701614, 37.426979, 30.249889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025425, 37.863079, 30.811230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729927, 38.108150, 30.698889>,  <46.552628, 38.255192, 30.631485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729927, 38.108150, 30.698889>,  <47.025425, 37.863079, 30.811230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729927, 38.108150, 30.698889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185519, 0.215756, 0.958662,
		0.647945, 0.760314, -0.045726,
		-0.738749, 0.612677, -0.280851,
		46.508301, 38.291954, 30.614634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.195469, 38.537388, 30.996029>,  <47.025425, 37.863079, 30.811230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.195469, 38.537388, 30.996029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798298, 38.521328, 30.951351>,  <46.559994, 38.511692, 30.924545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798298, 38.521328, 30.951351>,  <47.195469, 38.537388, 30.996029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.798298, 38.521328, 30.951351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118392, 0.401862, 0.908014,
		0.008429, 0.914820, -0.403775,
		-0.992931, -0.040151, -0.111695,
		46.500420, 38.509281, 30.917843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815792, 39.151978, 31.348087>,  <47.195469, 38.537388, 30.996029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815792, 39.151978, 31.348087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547565, 38.857815, 31.309042>,  <46.386631, 38.681316, 31.285614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547565, 38.857815, 31.309042>,  <46.815792, 39.151978, 31.348087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547565, 38.857815, 31.309042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188266, 0.041418, 0.981244,
		-0.717567, 0.676363, -0.166225,
		-0.670562, -0.735403, -0.097615,
		46.346397, 38.637196, 31.279757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.383972, 39.324623, 31.900507>,  <46.815792, 39.151978, 31.348087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.383972, 39.324623, 31.900507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271667, 38.954838, 31.797325>,  <46.204285, 38.732967, 31.735416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271667, 38.954838, 31.797325>,  <46.383972, 39.324623, 31.900507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271667, 38.954838, 31.797325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422806, -0.122150, 0.897950,
		-0.861630, 0.361179, -0.356572,
		-0.280766, -0.924462, -0.257956,
		46.187439, 38.677498, 31.719938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674549, 39.220734, 32.129715>,  <46.383972, 39.324623, 31.900507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674549, 39.220734, 32.129715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863388, 38.870739, 32.086765>,  <45.976692, 38.660744, 32.060997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863388, 38.870739, 32.086765>,  <45.674549, 39.220734, 32.129715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863388, 38.870739, 32.086765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438980, -0.338964, 0.832106,
		-0.764474, -0.345699, -0.544124,
		0.472097, -0.874983, -0.107374,
		46.005016, 38.608246, 32.054554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307476, 38.770962, 32.449249>,  <45.674549, 39.220734, 32.129715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307476, 38.770962, 32.449249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619671, 38.521511, 32.431690>,  <45.806988, 38.371841, 32.421154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619671, 38.521511, 32.431690>,  <45.307476, 38.770962, 32.449249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619671, 38.521511, 32.431690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242346, -0.366536, 0.898287,
		-0.576291, -0.690460, -0.437211,
		0.780485, -0.623631, -0.043901,
		45.853817, 38.334423, 32.418522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091034, 38.069695, 32.521141>,  <45.307476, 38.770962, 32.449249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091034, 38.069695, 32.521141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478779, 38.084389, 32.618294>,  <45.711426, 38.093204, 32.676586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478779, 38.084389, 32.618294>,  <45.091034, 38.069695, 32.521141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478779, 38.084389, 32.618294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196430, -0.477793, 0.856230,
		0.147506, -0.877704, -0.455936,
		0.969359, 0.036740, 0.242885,
		45.769588, 38.095409, 32.691158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286068, 37.344543, 32.694168>,  <45.091034, 38.069695, 32.521141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286068, 37.344543, 32.694168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546661, 37.578960, 32.886883>,  <45.703018, 37.719612, 33.002510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546661, 37.578960, 32.886883>,  <45.286068, 37.344543, 32.694168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546661, 37.578960, 32.886883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239016, -0.444155, 0.863480,
		0.720024, -0.677701, -0.149288,
		0.651488, 0.586044, 0.481784,
		45.742107, 37.754772, 33.031418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.608082, 36.922623, 33.124973>,  <45.286068, 37.344543, 32.694168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.608082, 36.922623, 33.124973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721264, 37.269291, 33.289326>,  <45.789173, 37.477291, 33.387936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721264, 37.269291, 33.289326>,  <45.608082, 36.922623, 33.124973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721264, 37.269291, 33.289326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206783, -0.363190, 0.908479,
		0.936577, -0.342024, 0.076445,
		0.282958, 0.866667, 0.410880,
		45.806152, 37.529289, 33.412590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.173416, 36.812431, 33.626919>,  <45.608082, 36.922623, 33.124973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.173416, 36.812431, 33.626919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975677, 37.147690, 33.719120>,  <45.857033, 37.348843, 33.774441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975677, 37.147690, 33.719120>,  <46.173416, 36.812431, 33.626919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975677, 37.147690, 33.719120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274658, -0.402195, 0.873385,
		0.824731, 0.368447, 0.429028,
		-0.494349, 0.838144, 0.230506,
		45.827374, 37.399132, 33.788273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.284966, 36.943516, 34.382908>,  <46.173416, 36.812431, 33.626919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.284966, 36.943516, 34.382908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969170, 37.168701, 34.285107>,  <45.779694, 37.303810, 34.226425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969170, 37.168701, 34.285107>,  <46.284966, 36.943516, 34.382908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969170, 37.168701, 34.285107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519809, -0.401465, 0.754072,
		0.326352, 0.722427, 0.609584,
		-0.789489, 0.562960, -0.244506,
		45.732323, 37.337589, 34.211754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919857, 37.039742, 35.001125>,  <46.284966, 36.943516, 34.382908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919857, 37.039742, 35.001125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623096, 37.132339, 34.749413>,  <45.445042, 37.187897, 34.598385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623096, 37.132339, 34.749413>,  <45.919857, 37.039742, 35.001125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623096, 37.132339, 34.749413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669885, -0.296411, 0.680731,
		-0.028940, 0.926580, 0.374983,
		-0.741901, 0.231495, -0.629280,
		45.400528, 37.201790, 34.560627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561977, 36.618496, 34.960064>,  <45.919857, 37.039742, 35.001125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561977, 36.618496, 34.960064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245567, 36.683880, 35.195877>,  <46.055721, 36.723110, 35.337364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245567, 36.683880, 35.195877>,  <46.561977, 36.618496, 34.960064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245567, 36.683880, 35.195877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206898, -0.978342, -0.006342,
		0.575732, -0.126991, 0.807716,
		-0.791028, 0.163464, 0.589537,
		46.008259, 36.732918, 35.372738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.671947, 36.135815, 35.505795>,  <46.561977, 36.618496, 34.960064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.671947, 36.135815, 35.505795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306511, 36.259209, 35.399822>,  <46.087250, 36.333244, 35.336239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306511, 36.259209, 35.399822>,  <46.671947, 36.135815, 35.505795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306511, 36.259209, 35.399822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290106, -0.951001, -0.106935,
		-0.284936, -0.020837, 0.958320,
		-0.913592, 0.308484, -0.264929,
		46.032433, 36.351753, 35.320343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.914585, 35.471107, 35.188610>,  <46.671947, 36.135815, 35.505795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.914585, 35.471107, 35.188610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200001, 35.251629, 35.362877>,  <47.371250, 35.119942, 35.467438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200001, 35.251629, 35.362877>,  <46.914585, 35.471107, 35.188610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200001, 35.251629, 35.362877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284724, -0.341070, -0.895882,
		0.640155, 0.763288, -0.087140,
		0.713536, -0.548692, 0.435664,
		47.414062, 35.087021, 35.493576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.546162, 35.622292, 34.907837>,  <46.914585, 35.471107, 35.188610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.546162, 35.622292, 34.907837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553665, 35.243752, 35.036877>,  <47.558167, 35.016628, 35.114300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553665, 35.243752, 35.036877>,  <47.546162, 35.622292, 34.907837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.553665, 35.243752, 35.036877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350306, -0.295981, -0.888640,
		0.936448, 0.129682, 0.325958,
		0.018763, -0.946350, 0.322599,
		47.559296, 34.959846, 35.133656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.492332, 41.403477, 42.564274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181271, 41.249054, 42.762753>,  <34.994633, 41.156403, 42.881840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181271, 41.249054, 42.762753>,  <35.492332, 41.403477, 42.564274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181271, 41.249054, 42.762753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243135, -0.543170, -0.803649,
		0.579772, -0.745606, 0.328537,
		-0.777657, -0.386054, 0.496198,
		34.947975, 41.133240, 42.911613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512440, 40.737152, 42.451263>,  <35.492332, 41.403477, 42.564274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512440, 40.737152, 42.451263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135860, 40.791763, 42.574574>,  <34.909912, 40.824528, 42.648560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135860, 40.791763, 42.574574>,  <35.512440, 40.737152, 42.451263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135860, 40.791763, 42.574574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330209, -0.557991, -0.761320,
		0.068078, -0.818540, 0.570401,
		-0.941449, 0.136523, 0.308277,
		34.853424, 40.832722, 42.667057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286430, 40.133629, 42.465034>,  <35.512440, 40.737152, 42.451263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286430, 40.133629, 42.465034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935200, 40.322006, 42.431122>,  <34.724461, 40.435032, 42.410774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935200, 40.322006, 42.431122>,  <35.286430, 40.133629, 42.465034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935200, 40.322006, 42.431122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223467, -0.560246, -0.797613,
		-0.423134, -0.681420, 0.597181,
		-0.878078, 0.470947, -0.084784,
		34.671776, 40.463291, 42.405685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748264, 39.632050, 42.281643>,  <35.286430, 40.133629, 42.465034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748264, 39.632050, 42.281643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583755, 39.978622, 42.168400>,  <34.485050, 40.186565, 42.100452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583755, 39.978622, 42.168400>,  <34.748264, 39.632050, 42.281643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583755, 39.978622, 42.168400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270985, -0.412770, -0.869591,
		-0.870302, -0.280917, 0.404550,
		-0.411269, 0.866433, -0.283110,
		34.460373, 40.238552, 42.083466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097084, 39.486828, 41.913185>,  <34.748264, 39.632050, 42.281643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097084, 39.486828, 41.913185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.169212, 39.859432, 41.786839>,  <34.212490, 40.082996, 41.711029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.169212, 39.859432, 41.786839>,  <34.097084, 39.486828, 41.913185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169212, 39.859432, 41.786839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175646, -0.285473, -0.942154,
		-0.967797, 0.225374, 0.112138,
		0.180325, 0.931510, -0.315866,
		34.223309, 40.138885, 41.692078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709965, 39.469593, 41.366257>,  <34.097084, 39.486828, 41.913185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709965, 39.469593, 41.366257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972084, 39.768677, 41.323349>,  <34.129356, 39.948128, 41.297604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972084, 39.768677, 41.323349>,  <33.709965, 39.469593, 41.366257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972084, 39.768677, 41.323349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017395, -0.127039, -0.991745,
		-0.755169, 0.651756, -0.070242,
		0.655299, 0.747713, -0.107273,
		34.168674, 39.992992, 41.291168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397568, 39.845734, 40.788506>,  <33.709965, 39.469593, 41.366257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397568, 39.845734, 40.788506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.766399, 39.999386, 40.807312>,  <33.987698, 40.091579, 40.818596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.766399, 39.999386, 40.807312>,  <33.397568, 39.845734, 40.788506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766399, 39.999386, 40.807312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053421, -0.006016, -0.998554,
		-0.383295, 0.923258, -0.026068,
		0.922080, 0.384133, 0.047015,
		34.043022, 40.114624, 40.821415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487309, 40.425892, 40.278431>,  <33.397568, 39.845734, 40.788506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487309, 40.425892, 40.278431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.845421, 40.272827, 40.369671>,  <34.060287, 40.180988, 40.424416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.845421, 40.272827, 40.369671>,  <33.487309, 40.425892, 40.278431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845421, 40.272827, 40.369671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076670, -0.372033, -0.925048,
		0.438846, 0.845670, -0.303737,
		0.895285, -0.382666, 0.228103,
		34.114006, 40.158028, 40.438103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741253, 40.142891, 39.588818>,  <33.487309, 40.425892, 40.278431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741253, 40.142891, 39.588818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035385, 40.006638, 39.823166>,  <34.211864, 39.924885, 39.963776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035385, 40.006638, 39.823166>,  <33.741253, 40.142891, 39.588818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035385, 40.006638, 39.823166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392171, -0.491169, -0.777789,
		0.552708, 0.801698, -0.227585,
		0.735334, -0.340638, 0.585875,
		34.255985, 39.904446, 39.998928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300125, 40.289436, 39.210716>,  <33.741253, 40.142891, 39.588818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300125, 40.289436, 39.210716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379463, 40.000191, 39.475368>,  <34.427067, 39.826641, 39.634159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379463, 40.000191, 39.475368>,  <34.300125, 40.289436, 39.210716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379463, 40.000191, 39.475368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458265, -0.528298, -0.714769,
		0.866403, 0.444972, 0.226596,
		0.198342, -0.723119, 0.661634,
		34.438965, 39.783257, 39.673859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954121, 40.128235, 39.107521>,  <34.300125, 40.289436, 39.210716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954121, 40.128235, 39.107521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856335, 39.791809, 39.300537>,  <34.797661, 39.589954, 39.416348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856335, 39.791809, 39.300537>,  <34.954121, 40.128235, 39.107521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856335, 39.791809, 39.300537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291832, -0.538384, -0.790554,
		0.924699, -0.052446, 0.377068,
		-0.244469, -0.841066, 0.482538,
		34.782993, 39.539490, 39.445297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576721, 39.682564, 39.128662>,  <34.954121, 40.128235, 39.107521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576721, 39.682564, 39.128662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275784, 39.421783, 39.166454>,  <35.095219, 39.265316, 39.189129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275784, 39.421783, 39.166454>,  <35.576721, 39.682564, 39.128662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275784, 39.421783, 39.166454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282033, -0.448379, -0.848182,
		0.595340, -0.611482, 0.521210,
		-0.752349, -0.651955, 0.094480,
		35.050079, 39.226196, 39.194798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831554, 38.982838, 39.073429>,  <35.576721, 39.682564, 39.128662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831554, 38.982838, 39.073429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439793, 38.946064, 39.001526>,  <35.204735, 38.924000, 38.958385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439793, 38.946064, 39.001526>,  <35.831554, 38.982838, 39.073429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439793, 38.946064, 39.001526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195218, -0.658380, -0.726929,
		-0.051521, -0.747050, 0.662768,
		-0.979406, -0.091932, -0.179758,
		35.145969, 38.918484, 38.947598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701546, 38.223503, 38.992256>,  <35.831554, 38.982838, 39.073429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701546, 38.223503, 38.992256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387280, 38.376091, 38.797440>,  <35.198719, 38.467644, 38.680550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387280, 38.376091, 38.797440>,  <35.701546, 38.223503, 38.992256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387280, 38.376091, 38.797440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216899, -0.567452, -0.794326,
		-0.579374, -0.729718, 0.363093,
		-0.785672, 0.381458, -0.487042,
		35.151581, 38.490532, 38.651325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411839, 37.630424, 38.682949>,  <35.701546, 38.223503, 38.992256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411839, 37.630424, 38.682949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283432, 37.950031, 38.479565>,  <35.206387, 38.141796, 38.357536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283432, 37.950031, 38.479565>,  <35.411839, 37.630424, 38.682949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283432, 37.950031, 38.479565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066927, -0.554668, -0.829376,
		-0.944706, -0.232213, 0.231532,
		-0.321015, 0.799012, -0.508457,
		35.187126, 38.189735, 38.327026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942730, 37.369064, 38.314114>,  <35.411839, 37.630424, 38.682949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942730, 37.369064, 38.314114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000229, 37.722843, 38.136536>,  <35.034729, 37.935112, 38.029987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000229, 37.722843, 38.136536>,  <34.942730, 37.369064, 38.314114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000229, 37.722843, 38.136536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066958, -0.438888, -0.896044,
		-0.987346, 0.158534, -0.003870,
		0.143752, 0.884446, -0.443949,
		35.043354, 37.988178, 38.003349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423180, 37.328850, 37.762741>,  <34.942730, 37.369064, 38.314114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423180, 37.328850, 37.762741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.700153, 37.599602, 37.662849>,  <34.866337, 37.762054, 37.602917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.700153, 37.599602, 37.662849>,  <34.423180, 37.328850, 37.762741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700153, 37.599602, 37.662849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055838, -0.294815, -0.953921,
		-0.719313, 0.674476, -0.166346,
		0.692438, 0.676879, -0.249726,
		34.907887, 37.802666, 37.587933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225571, 37.645840, 37.215202>,  <34.423180, 37.328850, 37.762741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225571, 37.645840, 37.215202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612827, 37.741562, 37.185711>,  <34.845181, 37.798996, 37.168015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612827, 37.741562, 37.185711>,  <34.225571, 37.645840, 37.215202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612827, 37.741562, 37.185711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001886, -0.287468, -0.957788,
		-0.250402, 0.927412, -0.277858,
		0.968140, 0.239308, -0.073731,
		34.903271, 37.813354, 37.163593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381744, 37.990799, 36.573746>,  <34.225571, 37.645840, 37.215202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381744, 37.990799, 36.573746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720570, 37.826412, 36.708553>,  <34.923866, 37.727779, 36.789440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720570, 37.826412, 36.708553>,  <34.381744, 37.990799, 36.573746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720570, 37.826412, 36.708553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084697, -0.521627, -0.848959,
		0.524695, 0.747670, -0.407045,
		0.847066, -0.410969, 0.337021,
		34.974689, 37.703121, 36.809658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809631, 37.879520, 35.844635>,  <34.381744, 37.990799, 36.573746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809631, 37.879520, 35.844635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005032, 37.675739, 36.127991>,  <35.122272, 37.553471, 36.298004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005032, 37.675739, 36.127991>,  <34.809631, 37.879520, 35.844635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005032, 37.675739, 36.127991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243309, -0.700119, -0.671293,
		0.837953, 0.500287, -0.218055,
		0.488503, -0.509457, 0.708391,
		35.151581, 37.522903, 36.340508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404781, 37.794163, 35.536522>,  <34.809631, 37.879520, 35.844635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404781, 37.794163, 35.536522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365101, 37.502914, 35.807816>,  <35.341293, 37.328167, 35.970592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365101, 37.502914, 35.807816>,  <35.404781, 37.794163, 35.536522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365101, 37.502914, 35.807816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252251, -0.677734, -0.690686,
		0.962563, 0.102568, 0.250901,
		-0.099202, -0.728119, 0.678234,
		35.335339, 37.284477, 36.011288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824677, 37.359272, 35.316429>,  <35.404781, 37.794163, 35.536522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824677, 37.359272, 35.316429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.631172, 37.132233, 35.582905>,  <35.515068, 36.996010, 35.742790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.631172, 37.132233, 35.582905>,  <35.824677, 37.359272, 35.316429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631172, 37.132233, 35.582905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038109, -0.746800, -0.663956,
		0.874369, -0.346585, 0.339643,
		-0.483763, -0.567599, 0.666187,
		35.486042, 36.961952, 35.782761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605129, 37.045830, 35.272861>,  <35.824677, 37.359272, 35.316429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605129, 37.045830, 35.272861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.885891, 37.232529, 35.057652>,  <37.054348, 37.344547, 34.928524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.885891, 37.232529, 35.057652>,  <36.605129, 37.045830, 35.272861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885891, 37.232529, 35.057652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025728, 0.738264, 0.674021,
		0.711798, -0.486946, 0.506189,
		0.701913, 0.466744, -0.538023,
		37.096462, 37.372555, 34.896244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145847, 37.175934, 35.676586>,  <36.605129, 37.045830, 35.272861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145847, 37.175934, 35.676586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214771, 37.443825, 35.387650>,  <37.256126, 37.604561, 35.214287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214771, 37.443825, 35.387650>,  <37.145847, 37.175934, 35.676586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214771, 37.443825, 35.387650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157918, 0.705039, 0.691363,
		0.972302, -0.233200, 0.015724,
		0.172312, 0.669730, -0.722337,
		37.266464, 37.644745, 35.170948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690754, 37.499321, 35.855206>,  <37.145847, 37.175934, 35.676586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690754, 37.499321, 35.855206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504463, 37.746708, 35.602036>,  <37.392689, 37.895142, 35.450134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504463, 37.746708, 35.602036>,  <37.690754, 37.499321, 35.855206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504463, 37.746708, 35.602036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141968, 0.758181, 0.636402,
		0.873467, 0.206533, -0.440907,
		-0.465725, 0.618471, -0.632925,
		37.364746, 37.932251, 35.412159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077450, 37.964470, 36.006245>,  <37.690754, 37.499321, 35.855206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077450, 37.964470, 36.006245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771744, 38.137985, 35.815361>,  <37.588322, 38.242096, 35.700832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771744, 38.137985, 35.815361>,  <38.077450, 37.964470, 36.006245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771744, 38.137985, 35.815361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168570, 0.848615, 0.501434,
		0.622482, 0.302785, -0.721691,
		-0.764265, 0.433789, -0.477207,
		37.542465, 38.268124, 35.672199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348129, 38.617821, 35.654930>,  <38.077450, 37.964470, 36.006245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348129, 38.617821, 35.654930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953777, 38.635399, 35.719574>,  <37.717167, 38.645947, 35.758362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953777, 38.635399, 35.719574>,  <38.348129, 38.617821, 35.654930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953777, 38.635399, 35.719574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101328, 0.924830, 0.366635,
		-0.133350, 0.377832, -0.916221,
		-0.985875, 0.043948, 0.161612,
		37.658016, 38.648582, 35.768059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258087, 39.267361, 35.851639>,  <38.348129, 38.617821, 35.654930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258087, 39.267361, 35.851639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898117, 39.133930, 35.963963>,  <37.682133, 39.053871, 36.031357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898117, 39.133930, 35.963963>,  <38.258087, 39.267361, 35.851639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898117, 39.133930, 35.963963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030604, 0.690736, 0.722459,
		-0.434964, 0.641566, -0.631822,
		-0.899928, -0.333580, 0.280811,
		37.628139, 39.033855, 36.048206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830032, 39.835537, 35.947163>,  <38.258087, 39.267361, 35.851639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830032, 39.835537, 35.947163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675739, 39.538277, 36.165863>,  <37.583164, 39.359921, 36.297081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675739, 39.538277, 36.165863>,  <37.830032, 39.835537, 35.947163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675739, 39.538277, 36.165863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056989, 0.610671, 0.789831,
		-0.920847, 0.273508, -0.277910,
		-0.385737, -0.743152, 0.546747,
		37.560017, 39.315331, 36.329887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176476, 40.022480, 36.192844>,  <37.830032, 39.835537, 35.947163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176476, 40.022480, 36.192844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272327, 39.716942, 36.432549>,  <37.329838, 39.533619, 36.576370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272327, 39.716942, 36.432549>,  <37.176476, 40.022480, 36.192844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272327, 39.716942, 36.432549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142168, 0.582986, 0.799947,
		-0.960398, -0.276891, 0.031109,
		0.239634, -0.763845, 0.599264,
		37.344219, 39.487789, 36.612328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582935, 40.085819, 36.690182>,  <37.176476, 40.022480, 36.192844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582935, 40.085819, 36.690182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880787, 39.875259, 36.854343>,  <37.059498, 39.748924, 36.952839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880787, 39.875259, 36.854343>,  <36.582935, 40.085819, 36.690182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880787, 39.875259, 36.854343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103637, 0.516222, 0.850161,
		-0.659382, -0.675589, 0.329841,
		0.744631, -0.526397, 0.410404,
		37.104176, 39.717339, 36.977463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194374, 39.935314, 37.301128>,  <36.582935, 40.085819, 36.690182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194374, 39.935314, 37.301128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589352, 39.905346, 37.356762>,  <36.826340, 39.887363, 37.390141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589352, 39.905346, 37.356762>,  <36.194374, 39.935314, 37.301128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589352, 39.905346, 37.356762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085264, 0.488406, 0.868441,
		-0.132994, -0.869394, 0.475885,
		0.987442, -0.074922, 0.139083,
		36.885586, 39.882870, 37.398487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282120, 39.669163, 38.044216>,  <36.194374, 39.935314, 37.301128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282120, 39.669163, 38.044216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643143, 39.820984, 37.962898>,  <36.859756, 39.912075, 37.914108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643143, 39.820984, 37.962898>,  <36.282120, 39.669163, 38.044216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643143, 39.820984, 37.962898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034281, 0.534007, 0.844784,
		0.429203, -0.755497, 0.494984,
		0.902557, 0.379552, -0.203298,
		36.913910, 39.934849, 37.901909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630703, 39.557781, 38.664562>,  <36.282120, 39.669163, 38.044216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630703, 39.557781, 38.664562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835964, 39.836353, 38.463898>,  <36.959122, 40.003494, 38.343498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835964, 39.836353, 38.463898>,  <36.630703, 39.557781, 38.664562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835964, 39.836353, 38.463898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031809, 0.568648, 0.821966,
		0.857708, -0.437751, 0.269651,
		0.513153, 0.696429, -0.501658,
		36.989910, 40.045280, 38.313400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308231, 39.633228, 38.964512>,  <36.630703, 39.557781, 38.664562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308231, 39.633228, 38.964512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.184326, 39.971405, 38.790485>,  <37.109982, 40.174309, 38.686069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.184326, 39.971405, 38.790485>,  <37.308231, 39.633228, 38.964512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184326, 39.971405, 38.790485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066637, 0.475747, 0.877054,
		0.948475, 0.242690, -0.203707,
		-0.309765, 0.845439, -0.435062,
		37.091396, 40.225037, 38.659966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674671, 40.259651, 39.220631>,  <37.308231, 39.633228, 38.964512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674671, 40.259651, 39.220631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342743, 40.405865, 39.051971>,  <37.143585, 40.493591, 38.950775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342743, 40.405865, 39.051971>,  <37.674671, 40.259651, 39.220631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342743, 40.405865, 39.051971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134460, 0.602364, 0.786815,
		0.541589, 0.709610, -0.450705,
		-0.829820, 0.365529, -0.421648,
		37.093796, 40.515522, 38.925476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787048, 40.931091, 39.237411>,  <37.674671, 40.259651, 39.220631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787048, 40.931091, 39.237411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.392456, 40.887974, 39.188049>,  <37.155701, 40.862103, 39.158432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.392456, 40.887974, 39.188049>,  <37.787048, 40.931091, 39.237411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392456, 40.887974, 39.188049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161499, 0.512406, 0.843420,
		-0.027686, 0.851950, -0.522890,
		-0.986484, -0.107798, -0.123403,
		37.096512, 40.855633, 39.151028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483368, 41.533077, 39.450325>,  <37.787048, 40.931091, 39.237411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483368, 41.533077, 39.450325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176933, 41.276154, 39.459740>,  <36.993073, 41.122002, 39.465389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176933, 41.276154, 39.459740>,  <37.483368, 41.533077, 39.450325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176933, 41.276154, 39.459740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276788, 0.362733, 0.889839,
		-0.580086, 0.675179, -0.455667,
		-0.766087, -0.642306, 0.023535,
		36.947105, 41.083462, 39.466801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930286, 41.971333, 39.620632>,  <37.483368, 41.533077, 39.450325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930286, 41.971333, 39.620632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869267, 41.597710, 39.749790>,  <36.832657, 41.373535, 39.827286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869267, 41.597710, 39.749790>,  <36.930286, 41.971333, 39.620632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869267, 41.597710, 39.749790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350894, 0.356624, 0.865848,
		-0.923906, 0.018780, -0.382158,
		-0.152548, -0.934059, 0.322897,
		36.823502, 41.317493, 39.846661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288692, 42.019295, 39.886677>,  <36.930286, 41.971333, 39.620632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288692, 42.019295, 39.886677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459473, 41.695507, 40.047909>,  <36.561939, 41.501236, 40.144650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459473, 41.695507, 40.047909>,  <36.288692, 42.019295, 39.886677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459473, 41.695507, 40.047909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286482, 0.301711, 0.909340,
		-0.857696, -0.503717, -0.103083,
		0.426949, -0.809469, 0.403082,
		36.587559, 41.452667, 40.168835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.834133, 41.856930, 40.530193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159340, 41.634655, 40.599716>,  <36.354465, 41.501289, 40.641430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159340, 41.634655, 40.599716>,  <35.834133, 41.856930, 40.530193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159340, 41.634655, 40.599716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079570, 0.401756, 0.912283,
		-0.576772, -0.727876, 0.370852,
		0.813021, -0.555688, 0.173804,
		36.403248, 41.467949, 40.651859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688171, 41.547802, 41.140999>,  <35.834133, 41.856930, 40.530193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688171, 41.547802, 41.140999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086926, 41.546478, 41.109482>,  <36.326180, 41.545685, 41.090572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086926, 41.546478, 41.109482>,  <35.688171, 41.547802, 41.140999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086926, 41.546478, 41.109482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075968, 0.308455, 0.948201,
		0.021161, -0.951233, 0.307746,
		0.996886, -0.003315, -0.078791,
		36.385990, 41.545483, 41.085846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905079, 41.456314, 41.888386>,  <35.688171, 41.547802, 41.140999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905079, 41.456314, 41.888386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252895, 41.543556, 41.711147>,  <36.461586, 41.595901, 41.604805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252895, 41.543556, 41.711147>,  <35.905079, 41.456314, 41.888386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252895, 41.543556, 41.711147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324248, 0.424617, 0.845318,
		0.372513, -0.878710, 0.298502,
		0.869539, 0.218103, -0.443095,
		36.513756, 41.608990, 41.578217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449554, 41.177490, 42.332241>,  <35.905079, 41.456314, 41.888386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449554, 41.177490, 42.332241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.588753, 41.489346, 42.123985>,  <36.672272, 41.676456, 41.999031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.588753, 41.489346, 42.123985>,  <36.449554, 41.177490, 42.332241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588753, 41.489346, 42.123985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377571, 0.391770, 0.839021,
		0.858101, -0.488557, -0.158033,
		0.347997, 0.779634, -0.520643,
		36.693153, 41.723236, 41.967793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203014, 41.262005, 42.534824>,  <36.449554, 41.177490, 42.332241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203014, 41.262005, 42.534824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067135, 41.604805, 42.379822>,  <36.985607, 41.810486, 42.286819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067135, 41.604805, 42.379822>,  <37.203014, 41.262005, 42.534824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067135, 41.604805, 42.379822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437927, 0.508744, 0.741215,
		0.832362, 0.082087, -0.548120,
		-0.339697, 0.856996, -0.387511,
		36.965225, 41.861904, 42.263569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728825, 41.711754, 42.666100>,  <37.203014, 41.262005, 42.534824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728825, 41.711754, 42.666100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398319, 41.935341, 42.638245>,  <37.200016, 42.069492, 42.621532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398319, 41.935341, 42.638245>,  <37.728825, 41.711754, 42.666100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398319, 41.935341, 42.638245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320397, 0.568060, 0.758059,
		0.463288, 0.604043, -0.648457,
		-0.826263, 0.558963, -0.069642,
		37.150440, 42.103031, 42.617352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001488, 42.288609, 42.808392>,  <37.728825, 41.711754, 42.666100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001488, 42.288609, 42.808392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610008, 42.358776, 42.851044>,  <37.375118, 42.400875, 42.876637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610008, 42.358776, 42.851044>,  <38.001488, 42.288609, 42.808392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610008, 42.358776, 42.851044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156359, 0.300428, 0.940901,
		0.133015, 0.937535, -0.321458,
		-0.978703, 0.175417, 0.106631,
		37.316399, 42.411400, 42.883034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890327, 43.013844, 42.915268>,  <38.001488, 42.288609, 42.808392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890327, 43.013844, 42.915268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553955, 42.860893, 43.068436>,  <37.352131, 42.769123, 43.160336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553955, 42.860893, 43.068436>,  <37.890327, 43.013844, 42.915268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553955, 42.860893, 43.068436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218209, 0.407925, 0.886556,
		-0.495197, 0.829089, -0.259600,
		-0.840931, -0.382373, 0.382918,
		37.301674, 42.746181, 43.183311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414932, 43.645603, 43.073555>,  <37.890327, 43.013844, 42.915268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414932, 43.645603, 43.073555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304790, 43.325550, 43.286709>,  <37.238705, 43.133518, 43.414600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304790, 43.325550, 43.286709>,  <37.414932, 43.645603, 43.073555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304790, 43.325550, 43.286709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246820, 0.476895, 0.843594,
		-0.929119, 0.363812, 0.066175,
		-0.275351, -0.800132, 0.532889,
		37.222187, 43.085510, 43.446575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026402, 43.918949, 43.469627>,  <37.414932, 43.645603, 43.073555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026402, 43.918949, 43.469627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140778, 43.573318, 43.635330>,  <37.209404, 43.365940, 43.734753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140778, 43.573318, 43.635330>,  <37.026402, 43.918949, 43.469627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140778, 43.573318, 43.635330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135624, 0.464451, 0.875152,
		-0.948601, -0.194060, 0.249995,
		0.285943, -0.864075, 0.414260,
		37.226559, 43.314095, 43.759609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565754, 43.838116, 44.046310>,  <37.026402, 43.918949, 43.469627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565754, 43.838116, 44.046310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910671, 43.641724, 44.095924>,  <37.117622, 43.523888, 44.125694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910671, 43.641724, 44.095924>,  <36.565754, 43.838116, 44.046310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910671, 43.641724, 44.095924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170385, 0.511943, 0.841952,
		-0.476879, -0.704879, 0.525102,
		0.862297, -0.490978, 0.124034,
		37.169361, 43.494431, 44.133133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610088, 43.923470, 44.746662>,  <36.565754, 43.838116, 44.046310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610088, 43.923470, 44.746662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970581, 43.779022, 44.650852>,  <37.186878, 43.692356, 44.593369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970581, 43.779022, 44.650852>,  <36.610088, 43.923470, 44.746662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970581, 43.779022, 44.650852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375582, 0.375265, 0.847416,
		-0.216132, -0.853681, 0.473831,
		0.901235, -0.361116, -0.239521,
		37.240952, 43.670689, 44.578995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900524, 43.891323, 45.417465>,  <36.610088, 43.923470, 44.746662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900524, 43.891323, 45.417465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196049, 43.842606, 45.152340>,  <37.373363, 43.813377, 44.993263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196049, 43.842606, 45.152340>,  <36.900524, 43.891323, 45.417465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196049, 43.842606, 45.152340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673914, 0.134964, 0.726378,
		0.000990, -0.983337, 0.181790,
		0.738810, -0.121791, -0.662818,
		37.417690, 43.806068, 44.953495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300785, 43.192196, 45.505924>,  <36.900524, 43.891323, 45.417465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300785, 43.192196, 45.505924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548592, 43.431492, 45.302628>,  <37.697273, 43.575069, 45.180649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548592, 43.431492, 45.302628>,  <37.300785, 43.192196, 45.505924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548592, 43.431492, 45.302628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669851, -0.065322, 0.739617,
		0.409272, -0.798647, -0.441203,
		0.619513, 0.598245, -0.508240,
		37.734444, 43.610966, 45.150154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107471, 42.915752, 45.668186>,  <37.300785, 43.192196, 45.505924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107471, 42.915752, 45.668186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.125496, 43.300236, 45.559345>,  <38.136311, 43.530926, 45.494041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.125496, 43.300236, 45.559345>,  <38.107471, 42.915752, 45.668186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125496, 43.300236, 45.559345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394113, 0.233183, 0.888988,
		0.917957, -0.147299, -0.368319,
		0.045061, 0.961212, -0.272105,
		38.139015, 43.588600, 45.477715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801018, 43.143295, 45.819599>,  <38.107471, 42.915752, 45.668186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801018, 43.143295, 45.819599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564278, 43.465641, 45.812599>,  <38.422234, 43.659046, 45.808399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564278, 43.465641, 45.812599>,  <38.801018, 43.143295, 45.819599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564278, 43.465641, 45.812599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466597, 0.360227, 0.807789,
		0.657269, 0.469922, -0.589211,
		-0.591848, 0.805860, -0.017502,
		38.386723, 43.707397, 45.807350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285557, 43.618027, 46.026299>,  <38.801018, 43.143295, 45.819599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285557, 43.618027, 46.026299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.953026, 43.840160, 46.035313>,  <38.753510, 43.973438, 46.040722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.953026, 43.840160, 46.035313>,  <39.285557, 43.618027, 46.026299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953026, 43.840160, 46.035313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294583, 0.405876, 0.865150,
		0.471297, 0.725860, -0.501006,
		-0.831324, 0.555331, 0.022538,
		38.703629, 44.006760, 46.042072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483990, 44.322662, 46.013432>,  <39.285557, 43.618027, 46.026299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483990, 44.322662, 46.013432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.124649, 44.316673, 46.189041>,  <38.909046, 44.313080, 46.294407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.124649, 44.316673, 46.189041>,  <39.483990, 44.322662, 46.013432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124649, 44.316673, 46.189041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398010, 0.395182, 0.827900,
		-0.185893, 0.918481, -0.349051,
		-0.898349, -0.014975, 0.439026,
		38.855145, 44.312180, 46.320747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204662, 45.070522, 46.176880>,  <39.483990, 44.322662, 46.013432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204662, 45.070522, 46.176880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016617, 44.801525, 46.405525>,  <38.903790, 44.640125, 46.542713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016617, 44.801525, 46.405525>,  <39.204662, 45.070522, 46.176880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016617, 44.801525, 46.405525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277724, 0.502034, 0.819043,
		-0.837772, 0.543795, -0.049246,
		-0.470115, -0.672495, 0.571615,
		38.875584, 44.599777, 46.577011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910172, 45.416260, 46.721153>,  <39.204662, 45.070522, 46.176880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910172, 45.416260, 46.721153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.867340, 45.057987, 46.893795>,  <38.841640, 44.843021, 46.997379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.867340, 45.057987, 46.893795>,  <38.910172, 45.416260, 46.721153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867340, 45.057987, 46.893795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150838, 0.414444, 0.897487,
		-0.982742, 0.161202, 0.090726,
		-0.107076, -0.895684, 0.431607,
		38.835217, 44.789284, 47.023277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435402, 45.528698, 47.369987>,  <38.910172, 45.416260, 46.721153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435402, 45.528698, 47.369987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640476, 45.188965, 47.420238>,  <38.763519, 44.985123, 47.450390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640476, 45.188965, 47.420238>,  <38.435402, 45.528698, 47.369987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640476, 45.188965, 47.420238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120853, 0.216251, 0.968829,
		-0.850028, -0.481523, 0.213514,
		0.512686, -0.849335, 0.125626,
		38.794281, 44.934166, 47.457928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192799, 45.271378, 48.020123>,  <38.435402, 45.528698, 47.369987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192799, 45.271378, 48.020123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539497, 45.081474, 47.959007>,  <38.747517, 44.967533, 47.922337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539497, 45.081474, 47.959007>,  <38.192799, 45.271378, 48.020123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539497, 45.081474, 47.959007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288902, 0.228212, 0.929761,
		-0.406547, -0.850011, 0.334963,
		0.866750, -0.474763, -0.152791,
		38.799522, 44.939045, 47.913170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320930, 44.938007, 48.635490>,  <38.192799, 45.271378, 48.020123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320930, 44.938007, 48.635490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.665764, 44.969086, 48.435181>,  <38.872665, 44.987732, 48.314995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.665764, 44.969086, 48.435181>,  <38.320930, 44.938007, 48.635490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665764, 44.969086, 48.435181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489425, 0.128650, 0.862503,
		0.131515, -0.988635, 0.072836,
		0.862071, 0.077784, -0.500782,
		38.924389, 44.992393, 48.284946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472435, 44.440735, 49.178280>,  <38.320930, 44.938007, 48.635490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472435, 44.440735, 49.178280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320408, 44.237984, 49.487762>,  <38.229191, 44.116333, 49.673454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320408, 44.237984, 49.487762>,  <38.472435, 44.440735, 49.178280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320408, 44.237984, 49.487762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462497, -0.620262, -0.633539,
		0.801027, -0.598626, 0.001313,
		-0.380068, -0.506875, 0.773710,
		38.206387, 44.085922, 49.719875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574402, 43.730816, 49.007458>,  <38.472435, 44.440735, 49.178280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574402, 43.730816, 49.007458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264835, 43.764286, 49.258553>,  <38.079094, 43.784367, 49.409210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264835, 43.764286, 49.258553>,  <38.574402, 43.730816, 49.007458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264835, 43.764286, 49.258553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534476, -0.617981, -0.576571,
		0.339683, -0.781727, 0.522989,
		-0.773919, 0.083673, 0.627732,
		38.032661, 43.789387, 49.446873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413563, 43.080803, 49.259090>,  <38.574402, 43.730816, 49.007458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413563, 43.080803, 49.259090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.087025, 43.311813, 49.256344>,  <37.891102, 43.450420, 49.254696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.087025, 43.311813, 49.256344>,  <38.413563, 43.080803, 49.259090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087025, 43.311813, 49.256344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477951, -0.682173, -0.553356,
		-0.324259, -0.448448, 0.832917,
		-0.816344, 0.577524, -0.006864,
		37.842121, 43.485069, 49.254284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999260, 42.542801, 49.191170>,  <38.413563, 43.080803, 49.259090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999260, 42.542801, 49.191170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774834, 42.861633, 49.101849>,  <37.640179, 43.052933, 49.048256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774834, 42.861633, 49.101849>,  <37.999260, 42.542801, 49.191170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774834, 42.861633, 49.101849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566634, -0.566483, -0.598350,
		-0.603435, -0.209177, 0.769487,
		-0.561063, 0.797083, -0.223309,
		37.606514, 43.100758, 49.034855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368938, 42.251259, 49.039127>,  <37.999260, 42.542801, 49.191170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368938, 42.251259, 49.039127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356075, 42.621738, 48.888859>,  <37.348358, 42.844025, 48.798698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356075, 42.621738, 48.888859>,  <37.368938, 42.251259, 49.039127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356075, 42.621738, 48.888859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541394, -0.332091, -0.772404,
		-0.840153, 0.178543, 0.512118,
		-0.032162, 0.926195, -0.375669,
		37.346428, 42.899597, 48.776157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692814, 42.412273, 49.015129>,  <37.368938, 42.251259, 49.039127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692814, 42.412273, 49.015129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878395, 42.642887, 48.746101>,  <36.989742, 42.781254, 48.584682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878395, 42.642887, 48.746101>,  <36.692814, 42.412273, 49.015129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878395, 42.642887, 48.746101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621375, -0.329329, -0.710940,
		-0.631379, 0.747763, 0.205451,
		0.463954, 0.576535, -0.672573,
		37.017582, 42.815849, 48.544331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113266, 42.629303, 48.595947>,  <36.692814, 42.412273, 49.015129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113266, 42.629303, 48.595947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438038, 42.707188, 48.375816>,  <36.632900, 42.753918, 48.243736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438038, 42.707188, 48.375816>,  <36.113266, 42.629303, 48.595947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438038, 42.707188, 48.375816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562325, 0.007771, -0.826880,
		-0.156725, 0.980830, 0.115800,
		0.811929, 0.194710, -0.550327,
		36.681618, 42.765602, 48.210716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952221, 43.142685, 48.248299>,  <36.113266, 42.629303, 48.595947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952221, 43.142685, 48.248299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231056, 42.932083, 48.053623>,  <36.398357, 42.805721, 47.936817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231056, 42.932083, 48.053623>,  <35.952221, 43.142685, 48.248299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231056, 42.932083, 48.053623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539080, 0.062664, -0.839920,
		0.472718, 0.847861, -0.240145,
		0.697087, -0.526503, -0.486687,
		36.440182, 42.774132, 47.907616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724102, 43.277023, 47.556564>,  <35.952221, 43.142685, 48.248299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724102, 43.277023, 47.556564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.012123, 43.005848, 47.497326>,  <36.184937, 42.843143, 47.461784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.012123, 43.005848, 47.497326>,  <35.724102, 43.277023, 47.556564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012123, 43.005848, 47.497326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410825, -0.244476, -0.878325,
		0.559242, 0.693278, -0.454548,
		0.720050, -0.677936, -0.148095,
		36.228138, 42.802467, 47.452896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963478, 43.402126, 46.898579>,  <35.724102, 43.277023, 47.556564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963478, 43.402126, 46.898579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043324, 43.021282, 46.991222>,  <36.091228, 42.792774, 47.046810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043324, 43.021282, 46.991222>,  <35.963478, 43.402126, 46.898579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043324, 43.021282, 46.991222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335951, -0.288538, -0.896595,
		0.920485, 0.101161, -0.377458,
		0.199611, -0.952109, 0.231610,
		36.103207, 42.735649, 47.060707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296776, 43.109291, 46.303482>,  <35.963478, 43.402126, 46.898579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296776, 43.109291, 46.303482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.195007, 42.783497, 46.512051>,  <36.133945, 42.588020, 46.637192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.195007, 42.783497, 46.512051>,  <36.296776, 43.109291, 46.303482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195007, 42.783497, 46.512051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186078, -0.487860, -0.852858,
		0.949024, -0.314008, -0.027437,
		-0.254418, -0.814489, 0.521421,
		36.118683, 42.539150, 46.668476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686604, 42.484421, 46.023426>,  <36.296776, 43.109291, 46.303482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686604, 42.484421, 46.023426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343182, 42.365681, 46.190647>,  <36.137131, 42.294437, 46.290977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343182, 42.365681, 46.190647>,  <36.686604, 42.484421, 46.023426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343182, 42.365681, 46.190647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208103, -0.543419, -0.813258,
		0.468596, -0.785222, 0.404777,
		-0.858552, -0.296854, 0.418051,
		36.085617, 42.276623, 46.316063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598530, 42.009602, 45.703400>,  <36.686604, 42.484421, 46.023426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598530, 42.009602, 45.703400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246189, 42.028843, 45.891777>,  <36.034786, 42.040386, 46.004803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246189, 42.028843, 45.891777>,  <36.598530, 42.009602, 45.703400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246189, 42.028843, 45.891777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411218, -0.570600, -0.710856,
		0.234530, -0.819819, 0.522392,
		-0.880850, 0.048100, 0.470947,
		35.981934, 42.043274, 46.033062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329174, 41.278244, 45.873253>,  <36.598530, 42.009602, 45.703400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329174, 41.278244, 45.873253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.040730, 41.553619, 45.842133>,  <35.867664, 41.718845, 45.823460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.040730, 41.553619, 45.842133>,  <36.329174, 41.278244, 45.873253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040730, 41.553619, 45.842133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372586, -0.480014, -0.794208,
		-0.584111, -0.543721, 0.602645,
		-0.721106, 0.688443, -0.077799,
		35.824398, 41.760151, 45.818794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710373, 40.890465, 45.796219>,  <36.329174, 41.278244, 45.873253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710373, 40.890465, 45.796219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642834, 41.264847, 45.672626>,  <35.602310, 41.489475, 45.598469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642834, 41.264847, 45.672626>,  <35.710373, 40.890465, 45.796219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642834, 41.264847, 45.672626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384109, -0.351185, -0.853891,
		-0.907717, -0.025497, 0.418808,
		-0.168851, 0.935959, -0.308983,
		35.592178, 41.545635, 45.579933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090076, 40.832073, 45.300266>,  <35.710373, 40.890465, 45.796219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090076, 40.832073, 45.300266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.193768, 41.212807, 45.234768>,  <35.255981, 41.441246, 45.195469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.193768, 41.212807, 45.234768>,  <35.090076, 40.832073, 45.300266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193768, 41.212807, 45.234768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388382, -0.052497, -0.920002,
		-0.884286, 0.302082, 0.356068,
		0.259223, 0.951835, -0.163746,
		35.271534, 41.498356, 45.185642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452972, 41.243706, 45.028053>,  <35.090076, 40.832073, 45.300266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452972, 41.243706, 45.028053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765659, 41.445629, 44.881580>,  <34.953270, 41.566784, 44.793697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765659, 41.445629, 44.881580>,  <34.452972, 41.243706, 45.028053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765659, 41.445629, 44.881580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395523, -0.052660, -0.916945,
		-0.482162, 0.861626, 0.158497,
		0.781717, 0.504806, -0.366183,
		35.000175, 41.597073, 44.771725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206745, 41.693123, 44.583946>,  <34.452972, 41.243706, 45.028053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206745, 41.693123, 44.583946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.591396, 41.671253, 44.476406>,  <34.822186, 41.658131, 44.411880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.591396, 41.671253, 44.476406>,  <34.206745, 41.693123, 44.583946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591396, 41.671253, 44.476406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272573, -0.301830, -0.913566,
		-0.031197, 0.951793, -0.305152,
		0.961629, -0.054676, -0.268849,
		34.879887, 41.654850, 44.395752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343948, 42.115398, 43.886936>,  <34.206745, 41.693123, 44.583946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343948, 42.115398, 43.886936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.643429, 41.852425, 43.920925>,  <34.823116, 41.694641, 43.941319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.643429, 41.852425, 43.920925>,  <34.343948, 42.115398, 43.886936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643429, 41.852425, 43.920925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171547, -0.315969, -0.933132,
		0.640325, 0.684062, -0.349348,
		0.748703, -0.657437, 0.084974,
		34.868038, 41.655193, 43.946419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722065, 42.199249, 43.328754>,  <34.343948, 42.115398, 43.886936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722065, 42.199249, 43.328754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824554, 41.840458, 43.472851>,  <34.886047, 41.625183, 43.559307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824554, 41.840458, 43.472851>,  <34.722065, 42.199249, 43.328754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824554, 41.840458, 43.472851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025189, -0.378750, -0.925156,
		0.966288, 0.227976, -0.119640,
		0.256227, -0.896981, 0.360240,
		34.901421, 41.571365, 43.580921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187084, 42.006641, 42.830170>,  <34.722065, 42.199249, 43.328754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187084, 42.006641, 42.830170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.046730, 41.699547, 43.044632>,  <34.962517, 41.515289, 43.173309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.046730, 41.699547, 43.044632>,  <35.187084, 42.006641, 42.830170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046730, 41.699547, 43.044632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090565, -0.542053, -0.835450,
		0.932027, -0.341707, 0.120670,
		-0.350889, -0.767734, 0.536155,
		34.941463, 41.469227, 43.205479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.369301, 35.156090, 26.519142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122406, 34.841415, 26.523878>,  <45.974270, 34.652611, 26.526720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122406, 34.841415, 26.523878>,  <46.369301, 35.156090, 26.519142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122406, 34.841415, 26.523878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063420, 0.064747, 0.995884,
		-0.784215, 0.613948, -0.089856,
		-0.617239, -0.786686, 0.011839,
		45.937233, 34.605408, 26.527430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010612, 35.392368, 25.880409>,  <46.369301, 35.156090, 26.519142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010612, 35.392368, 25.880409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.760632, 35.181179, 26.110430>,  <45.610645, 35.054466, 26.248442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.760632, 35.181179, 26.110430>,  <46.010612, 35.392368, 25.880409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760632, 35.181179, 26.110430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156651, 0.806443, 0.570184,
		-0.764788, 0.266253, -0.586693,
		-0.624948, -0.527975, 0.575049,
		45.573147, 35.022785, 26.282944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636669, 35.859978, 26.125910>,  <46.010612, 35.392368, 25.880409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636669, 35.859978, 26.125910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.546638, 35.550667, 26.363020>,  <45.492622, 35.365082, 26.505285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.546638, 35.550667, 26.363020>,  <45.636669, 35.859978, 26.125910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546638, 35.550667, 26.363020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267911, 0.634051, 0.725399,
		-0.936785, 0.004456, -0.349877,
		-0.225073, -0.773279, 0.592775,
		45.479118, 35.318684, 26.540852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119686, 36.130867, 26.545645>,  <45.636669, 35.859978, 26.125910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119686, 36.130867, 26.545645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.230930, 35.816887, 26.767099>,  <45.297676, 35.628498, 26.899973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.230930, 35.816887, 26.767099>,  <45.119686, 36.130867, 26.545645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230930, 35.816887, 26.767099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214136, 0.511207, 0.832354,
		-0.936377, -0.350038, -0.025915,
		0.278107, -0.784946, 0.553639,
		45.314362, 35.581402, 26.933191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490837, 35.929096, 26.934521>,  <45.119686, 36.130867, 26.545645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490837, 35.929096, 26.934521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821663, 35.787949, 27.109543>,  <45.020157, 35.703259, 27.214556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821663, 35.787949, 27.109543>,  <44.490837, 35.929096, 26.934521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821663, 35.787949, 27.109543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333075, 0.319402, 0.887155,
		-0.452806, -0.879469, 0.146632,
		0.827060, -0.352869, 0.437556,
		45.069782, 35.682087, 27.240810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200253, 35.721188, 27.711681>,  <44.490837, 35.929096, 26.934521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200253, 35.721188, 27.711681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598572, 35.686699, 27.724016>,  <44.837563, 35.666004, 27.731417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598572, 35.686699, 27.724016>,  <44.200253, 35.721188, 27.711681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598572, 35.686699, 27.724016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015435, 0.173885, 0.984645,
		-0.090262, -0.980984, 0.171824,
		0.995798, -0.086223, 0.030837,
		44.897312, 35.660831, 27.733267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352943, 35.238209, 28.153214>,  <44.200253, 35.721188, 27.711681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352943, 35.238209, 28.153214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.686569, 35.458801, 28.147520>,  <44.886745, 35.591156, 28.144104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.686569, 35.458801, 28.147520>,  <44.352943, 35.238209, 28.153214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686569, 35.458801, 28.147520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146243, 0.245908, 0.958198,
		0.531932, -0.797116, 0.285753,
		0.834064, 0.551485, -0.014233,
		44.936787, 35.624249, 28.143250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726345, 35.108749, 28.769730>,  <44.352943, 35.238209, 28.153214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726345, 35.108749, 28.769730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878731, 35.459587, 28.652721>,  <44.970161, 35.670090, 28.582518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878731, 35.459587, 28.652721>,  <44.726345, 35.108749, 28.769730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878731, 35.459587, 28.652721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077308, 0.345488, 0.935233,
		0.921351, -0.333678, 0.199426,
		0.380966, 0.877096, -0.292520,
		44.993019, 35.722717, 28.564966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218983, 35.348438, 29.317106>,  <44.726345, 35.108749, 28.769730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218983, 35.348438, 29.317106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.079380, 35.664337, 29.115314>,  <44.995621, 35.853874, 28.994240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.079380, 35.664337, 29.115314>,  <45.218983, 35.348438, 29.317106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079380, 35.664337, 29.115314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157853, 0.481097, 0.862339,
		0.923731, 0.380594, -0.043241,
		-0.349004, 0.789743, -0.504482,
		44.974678, 35.901260, 28.963970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473476, 35.818771, 29.766291>,  <45.218983, 35.348438, 29.317106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473476, 35.818771, 29.766291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204147, 36.015240, 29.545246>,  <45.042549, 36.133121, 29.412619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204147, 36.015240, 29.545246>,  <45.473476, 35.818771, 29.766291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204147, 36.015240, 29.545246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165004, 0.628751, 0.759899,
		0.720697, 0.602843, -0.342309,
		-0.673327, 0.491175, -0.552611,
		45.002148, 36.162594, 29.379463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574970, 36.579517, 29.808867>,  <45.473476, 35.818771, 29.766291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574970, 36.579517, 29.808867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190567, 36.506145, 29.726095>,  <44.959927, 36.462120, 29.676432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190567, 36.506145, 29.726095>,  <45.574970, 36.579517, 29.808867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190567, 36.506145, 29.726095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266616, 0.416100, 0.869354,
		-0.073365, 0.890625, -0.448781,
		-0.961006, -0.183432, -0.206928,
		44.902264, 36.451115, 29.664017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211754, 37.209805, 30.035036>,  <45.574970, 36.579517, 29.808867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211754, 37.209805, 30.035036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907280, 36.956047, 29.981165>,  <44.724594, 36.803791, 29.948843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907280, 36.956047, 29.981165>,  <45.211754, 37.209805, 30.035036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907280, 36.956047, 29.981165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472739, 0.400598, 0.784881,
		-0.443974, 0.661108, -0.604833,
		-0.761186, -0.634396, -0.134677,
		44.678925, 36.765728, 29.940762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678936, 37.585747, 30.207630>,  <45.211754, 37.209805, 30.035036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678936, 37.585747, 30.207630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532776, 37.214752, 30.239258>,  <44.445080, 36.992157, 30.258234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532776, 37.214752, 30.239258>,  <44.678936, 37.585747, 30.207630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532776, 37.214752, 30.239258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546860, 0.282633, 0.788075,
		-0.753276, 0.244725, -0.610479,
		-0.365403, -0.927485, 0.079070,
		44.423157, 36.936508, 30.262980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996605, 37.648167, 30.193541>,  <44.678936, 37.585747, 30.207630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996605, 37.648167, 30.193541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.075977, 37.311089, 30.393736>,  <44.123600, 37.108841, 30.513853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.075977, 37.311089, 30.393736>,  <43.996605, 37.648167, 30.193541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075977, 37.311089, 30.393736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360548, 0.412078, 0.836778,
		-0.911390, -0.346492, -0.222063,
		0.198430, -0.842695, 0.500491,
		44.135506, 37.058281, 30.543882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491917, 37.518066, 30.591858>,  <43.996605, 37.648167, 30.193541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491917, 37.518066, 30.591858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711658, 37.240303, 30.777767>,  <43.843502, 37.073647, 30.889313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711658, 37.240303, 30.777767>,  <43.491917, 37.518066, 30.591858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711658, 37.240303, 30.777767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373186, 0.293774, 0.880016,
		-0.747626, -0.656886, -0.097757,
		0.549352, -0.694404, 0.464774,
		43.876465, 37.031982, 30.917200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095448, 37.044445, 30.941273>,  <43.491917, 37.518066, 30.591858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095448, 37.044445, 30.941273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453362, 37.074474, 31.117329>,  <43.668110, 37.092491, 31.222961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453362, 37.074474, 31.117329>,  <43.095448, 37.044445, 30.941273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453362, 37.074474, 31.117329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443334, 0.032303, 0.895774,
		0.053030, -0.996655, 0.062187,
		0.894786, 0.075072, 0.440138,
		43.721798, 37.096996, 31.249371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073376, 36.563786, 31.457235>,  <43.095448, 37.044445, 30.941273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073376, 36.563786, 31.457235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396709, 36.764732, 31.580019>,  <43.590710, 36.885300, 31.653688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396709, 36.764732, 31.580019>,  <43.073376, 36.563786, 31.457235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396709, 36.764732, 31.580019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325771, -0.052615, 0.943984,
		0.490378, -0.863051, 0.121126,
		0.808333, 0.502368, 0.306958,
		43.639210, 36.915443, 31.672106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338837, 36.190372, 32.044056>,  <43.073376, 36.563786, 31.457235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338837, 36.190372, 32.044056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524971, 36.543858, 32.064095>,  <43.636650, 36.755951, 32.076118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524971, 36.543858, 32.064095>,  <43.338837, 36.190372, 32.044056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524971, 36.543858, 32.064095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046099, -0.032328, 0.998414,
		0.883933, -0.466907, 0.025695,
		0.465336, 0.883715, 0.050100,
		43.664574, 36.808971, 32.079124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909264, 36.167179, 32.493385>,  <43.338837, 36.190372, 32.044056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909264, 36.167179, 32.493385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821037, 36.557323, 32.491600>,  <43.768101, 36.791409, 32.490528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821037, 36.557323, 32.491600>,  <43.909264, 36.167179, 32.493385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821037, 36.557323, 32.491600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041643, -0.004843, 0.999121,
		0.974483, 0.220557, 0.041685,
		-0.220565, 0.975362, -0.004465,
		43.754868, 36.849934, 32.490261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260216, 36.349308, 33.058292>,  <43.909264, 36.167179, 32.493385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260216, 36.349308, 33.058292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989277, 36.628864, 32.966423>,  <43.826714, 36.796597, 32.911301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989277, 36.628864, 32.966423>,  <44.260216, 36.349308, 33.058292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989277, 36.628864, 32.966423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291337, 0.031843, 0.956090,
		0.675517, 0.714519, 0.182044,
		-0.677348, 0.698891, -0.229676,
		43.786072, 36.838531, 32.897522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365383, 36.958050, 33.582382>,  <44.260216, 36.349308, 33.058292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365383, 36.958050, 33.582382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.001961, 36.948139, 33.415573>,  <43.783909, 36.942192, 33.315487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.001961, 36.948139, 33.415573>,  <44.365383, 36.958050, 33.582382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001961, 36.948139, 33.415573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409281, -0.147314, 0.900438,
		-0.083744, 0.988779, 0.123702,
		-0.908557, -0.024777, -0.417025,
		43.729393, 36.940704, 33.290466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509048, 37.515560, 34.063591>,  <44.365383, 36.958050, 33.582382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509048, 37.515560, 34.063591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.836815, 37.543453, 34.291164>,  <45.033474, 37.560188, 34.427708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.836815, 37.543453, 34.291164>,  <44.509048, 37.515560, 34.063591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836815, 37.543453, 34.291164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464920, 0.499699, -0.730856,
		-0.335261, 0.863388, 0.377044,
		0.819420, 0.069732, 0.568936,
		45.082642, 37.564373, 34.461845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818233, 38.164433, 33.959396>,  <44.509048, 37.515560, 34.063591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818233, 38.164433, 33.959396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111629, 37.910305, 34.056030>,  <45.287666, 37.757828, 34.114010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111629, 37.910305, 34.056030>,  <44.818233, 38.164433, 33.959396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111629, 37.910305, 34.056030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552033, 0.349459, -0.757059,
		0.396550, 0.688657, 0.607041,
		0.733490, -0.635319, 0.241584,
		45.331676, 37.719707, 34.128506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367409, 38.579693, 33.940659>,  <44.818233, 38.164433, 33.959396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367409, 38.579693, 33.940659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.511852, 38.207859, 33.911087>,  <45.598518, 37.984756, 33.893345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.511852, 38.207859, 33.911087>,  <45.367409, 38.579693, 33.940659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511852, 38.207859, 33.911087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397710, 0.225233, -0.889436,
		0.843460, 0.291785, 0.451040,
		0.361113, -0.929587, -0.073930,
		45.620186, 37.928982, 33.888908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.001839, 38.783978, 33.732986>,  <45.367409, 38.579693, 33.940659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.001839, 38.783978, 33.732986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.940659, 38.398304, 33.646301>,  <45.903950, 38.166901, 33.594292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.940659, 38.398304, 33.646301>,  <46.001839, 38.783978, 33.732986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940659, 38.398304, 33.646301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360522, 0.149739, -0.920653,
		0.920125, -0.218943, 0.324705,
		-0.152950, -0.964180, -0.216713,
		45.894775, 38.109051, 33.581287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.688217, 38.453876, 33.587955>,  <46.001839, 38.783978, 33.732986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.688217, 38.453876, 33.587955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.392025, 38.251671, 33.410797>,  <46.214310, 38.130348, 33.304504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.392025, 38.251671, 33.410797>,  <46.688217, 38.453876, 33.587955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392025, 38.251671, 33.410797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372017, 0.240535, -0.896519,
		0.559732, -0.828614, 0.009948,
		-0.740476, -0.505511, -0.442894,
		46.169884, 38.100018, 33.277927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997459, 38.064827, 33.041512>,  <46.688217, 38.453876, 33.587955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997459, 38.064827, 33.041512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609432, 38.078419, 32.945332>,  <46.376617, 38.086575, 32.887623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609432, 38.078419, 32.945332>,  <46.997459, 38.064827, 33.041512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609432, 38.078419, 32.945332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242764, 0.160246, -0.956759,
		0.006021, -0.986492, -0.163699,
		-0.970067, 0.033980, -0.240449,
		46.318413, 38.088612, 32.873196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991970, 37.795860, 32.432102>,  <46.997459, 38.064827, 33.041512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991970, 37.795860, 32.432102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.639793, 37.985081, 32.445015>,  <46.428486, 38.098614, 32.452763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.639793, 37.985081, 32.445015>,  <46.991970, 37.795860, 32.432102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639793, 37.985081, 32.445015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109764, 0.269590, -0.956699,
		-0.461271, -0.838776, -0.289283,
		-0.880443, 0.473050, 0.032287,
		46.375660, 38.126995, 32.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.572086, 37.443462, 31.941769>,  <46.991970, 37.795860, 32.432102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.572086, 37.443462, 31.941769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366676, 37.783752, 31.986584>,  <46.243431, 37.987926, 32.013474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366676, 37.783752, 31.986584>,  <46.572086, 37.443462, 31.941769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366676, 37.783752, 31.986584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074483, 0.174271, -0.981877,
		-0.854837, -0.495871, -0.152858,
		-0.513523, 0.850729, 0.112039,
		46.212620, 38.038971, 32.020195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842232, 37.469761, 31.490351>,  <46.572086, 37.443462, 31.941769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842232, 37.469761, 31.490351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.969231, 37.844841, 31.546804>,  <46.045429, 38.069889, 31.580677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.969231, 37.844841, 31.546804>,  <45.842232, 37.469761, 31.490351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969231, 37.844841, 31.546804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188160, 0.208174, -0.959822,
		-0.929404, 0.278185, 0.242532,
		0.317497, 0.937698, 0.141135,
		46.064480, 38.126152, 31.589146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351505, 37.897694, 31.381330>,  <45.842232, 37.469761, 31.490351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351505, 37.897694, 31.381330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.675064, 38.126678, 31.327711>,  <45.869202, 38.264069, 31.295540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.675064, 38.126678, 31.327711>,  <45.351505, 37.897694, 31.381330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.675064, 38.126678, 31.327711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239190, 0.112136, -0.964476,
		-0.537092, 0.812229, 0.227633,
		0.808901, 0.572460, -0.134050,
		45.917736, 38.298416, 31.287497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193695, 38.374577, 30.795168>,  <45.351505, 37.897694, 31.381330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193695, 38.374577, 30.795168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591347, 38.385841, 30.836969>,  <45.829937, 38.392601, 30.862051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591347, 38.385841, 30.836969>,  <45.193695, 38.374577, 30.795168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591347, 38.385841, 30.836969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104107, 0.015269, -0.994449,
		-0.029606, 0.999486, 0.012247,
		0.994125, 0.028166, 0.104505,
		45.889584, 38.394291, 30.868320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410641, 38.902382, 30.306906>,  <45.193695, 38.374577, 30.795168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410641, 38.902382, 30.306906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762897, 38.729645, 30.384851>,  <45.974251, 38.626003, 30.431620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762897, 38.729645, 30.384851>,  <45.410641, 38.902382, 30.306906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762897, 38.729645, 30.384851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253866, 0.082847, -0.963685,
		0.400019, 0.898135, 0.182589,
		0.880646, -0.431845, 0.194866,
		46.027092, 38.600090, 30.443312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026253, 39.309353, 30.023048>,  <45.410641, 38.902382, 30.306906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026253, 39.309353, 30.023048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168003, 38.936626, 30.054354>,  <46.253056, 38.712990, 30.073137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168003, 38.936626, 30.054354>,  <46.026253, 39.309353, 30.023048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168003, 38.936626, 30.054354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219675, 0.001604, -0.975572,
		0.908932, 0.362916, 0.205267,
		0.354380, -0.931820, 0.078266,
		46.274319, 38.657082, 30.077833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655464, 39.300739, 29.682987>,  <46.026253, 39.309353, 30.023048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655464, 39.300739, 29.682987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525654, 38.922585, 29.670887>,  <46.447765, 38.695690, 29.663626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525654, 38.922585, 29.670887>,  <46.655464, 39.300739, 29.682987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525654, 38.922585, 29.670887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117394, -0.008522, -0.993049,
		0.938562, -0.325826, 0.113749,
		-0.324530, -0.945391, -0.030252,
		46.428295, 38.638966, 29.661812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.097462, 38.956615, 29.216295>,  <46.655464, 39.300739, 29.682987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.097462, 38.956615, 29.216295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.784401, 38.713734, 29.271090>,  <46.596565, 38.568005, 29.303967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.784401, 38.713734, 29.271090>,  <47.097462, 38.956615, 29.216295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784401, 38.713734, 29.271090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032126, -0.180376, -0.983073,
		0.621633, -0.773803, 0.121664,
		-0.782650, -0.607202, 0.136987,
		46.549606, 38.531574, 29.312185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.136543, 38.422878, 28.621565>,  <47.097462, 38.956615, 29.216295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.136543, 38.422878, 28.621565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.760220, 38.421326, 28.757133>,  <46.534428, 38.420395, 28.838474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.760220, 38.421326, 28.757133>,  <47.136543, 38.422878, 28.621565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.760220, 38.421326, 28.757133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336391, -0.111830, -0.935059,
		0.041530, -0.993720, 0.103905,
		-0.940806, -0.003880, 0.338923,
		46.477978, 38.420162, 28.858810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865128, 37.986088, 28.191011>,  <47.136543, 38.422878, 28.621565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865128, 37.986088, 28.191011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.527985, 38.137257, 28.344252>,  <46.325699, 38.227959, 28.436195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.527985, 38.137257, 28.344252>,  <46.865128, 37.986088, 28.191011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527985, 38.137257, 28.344252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404910, 0.023534, -0.914054,
		-0.354456, -0.925539, 0.133188,
		-0.842858, 0.377921, 0.383101,
		46.275127, 38.250633, 28.459183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362846, 37.623981, 27.829334>,  <46.865128, 37.986088, 28.191011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362846, 37.623981, 27.829334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.199497, 37.962254, 27.966768>,  <46.101486, 38.165218, 28.049229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.199497, 37.962254, 27.966768>,  <46.362846, 37.623981, 27.829334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199497, 37.962254, 27.966768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448595, 0.141879, -0.882402,
		-0.794980, -0.514480, 0.321430,
		-0.408374, 0.845683, 0.343584,
		46.076984, 38.215958, 28.069843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745766, 37.619846, 27.618435>,  <46.362846, 37.623981, 27.829334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745766, 37.619846, 27.618435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.725277, 37.997906, 27.747473>,  <45.712986, 38.224743, 27.824896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.725277, 37.997906, 27.747473>,  <45.745766, 37.619846, 27.618435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725277, 37.997906, 27.747473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513482, 0.252130, -0.820224,
		-0.856570, -0.207657, 0.472404,
		-0.051218, 0.945150, 0.322595,
		45.709911, 38.281452, 27.844252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045792, 37.880795, 27.675537>,  <45.745766, 37.619846, 27.618435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045792, 37.880795, 27.675537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291138, 38.190201, 27.611727>,  <45.438347, 38.375847, 27.573441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291138, 38.190201, 27.611727>,  <45.045792, 37.880795, 27.675537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291138, 38.190201, 27.611727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480202, 0.204885, -0.852894,
		-0.627045, 0.599742, 0.497116,
		0.613367, 0.773519, -0.159525,
		45.475147, 38.422256, 27.563869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638073, 38.541401, 27.417044>,  <45.045792, 37.880795, 27.675537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638073, 38.541401, 27.417044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.019188, 38.539036, 27.295612>,  <45.247856, 38.537617, 27.222754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.019188, 38.539036, 27.295612>,  <44.638073, 38.541401, 27.417044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019188, 38.539036, 27.295612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294362, 0.227230, -0.928287,
		0.074472, 0.973823, 0.214762,
		0.952788, -0.005913, -0.303579,
		45.305023, 38.537262, 27.204538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.570492, 41.026310, 37.719395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399300, 40.722836, 37.915855>,  <37.296585, 40.540752, 38.033733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399300, 40.722836, 37.915855>,  <37.570492, 41.026310, 37.719395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399300, 40.722836, 37.915855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197050, -0.608693, -0.768547,
		0.882047, -0.232138, 0.410006,
		-0.427977, -0.758686, 0.491153,
		37.270908, 40.495228, 38.063202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091923, 40.453991, 37.646568>,  <37.570492, 41.026310, 37.719395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091923, 40.453991, 37.646568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727913, 40.304779, 37.718906>,  <37.509506, 40.215252, 37.762310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727913, 40.304779, 37.718906>,  <38.091923, 40.453991, 37.646568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727913, 40.304779, 37.718906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062194, -0.554152, -0.830089,
		0.409867, -0.744152, 0.527491,
		-0.910023, -0.373032, 0.180847,
		37.454906, 40.192871, 37.773159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212437, 39.760197, 37.464077>,  <38.091923, 40.453991, 37.646568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212437, 39.760197, 37.464077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813641, 39.791180, 37.462498>,  <37.574364, 39.809769, 37.461552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813641, 39.791180, 37.462498>,  <38.212437, 39.760197, 37.464077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813641, 39.791180, 37.462498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043006, -0.594433, -0.802994,
		-0.064544, -0.800406, 0.595974,
		-0.996987, 0.077459, -0.003944,
		37.514545, 39.814419, 37.461315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006630, 39.086025, 37.632442>,  <38.212437, 39.760197, 37.464077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006630, 39.086025, 37.632442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718487, 39.267014, 37.422161>,  <37.545601, 39.375607, 37.295994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718487, 39.267014, 37.422161>,  <38.006630, 39.086025, 37.632442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718487, 39.267014, 37.422161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125925, -0.660017, -0.740622,
		-0.682080, -0.599709, 0.418468,
		-0.720353, 0.452468, -0.525703,
		37.502380, 39.402752, 37.264450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633808, 38.519142, 37.350418>,  <38.006630, 39.086025, 37.632442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633808, 38.519142, 37.350418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513805, 38.833363, 37.133938>,  <37.441803, 39.021896, 37.004047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513805, 38.833363, 37.133938>,  <37.633808, 38.519142, 37.350418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513805, 38.833363, 37.133938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140519, -0.597541, -0.789430,
		-0.943531, -0.160785, 0.289651,
		-0.300007, 0.785553, -0.541205,
		37.423805, 39.069027, 36.971577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974251, 38.323833, 37.010941>,  <37.633808, 38.519142, 37.350418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974251, 38.323833, 37.010941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113766, 38.628338, 36.792278>,  <37.197475, 38.811039, 36.661079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113766, 38.628338, 36.792278>,  <36.974251, 38.323833, 37.010941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113766, 38.628338, 36.792278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261465, -0.481091, -0.836772,
		-0.899991, 0.434787, 0.031244,
		0.348786, 0.761257, -0.546659,
		37.218403, 38.856716, 36.628281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481064, 38.594753, 36.497814>,  <36.974251, 38.323833, 37.010941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481064, 38.594753, 36.497814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844467, 38.697384, 36.365887>,  <37.062508, 38.758961, 36.286728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844467, 38.697384, 36.365887>,  <36.481064, 38.594753, 36.497814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844467, 38.697384, 36.365887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098325, -0.635881, -0.765498,
		-0.406135, 0.727891, -0.552475,
		0.908508, 0.256574, -0.329823,
		37.117020, 38.774357, 36.266941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397659, 38.748154, 35.829323>,  <36.481064, 38.594753, 36.497814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397659, 38.748154, 35.829323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795002, 38.703602, 35.840927>,  <37.033405, 38.676872, 35.847889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795002, 38.703602, 35.840927>,  <36.397659, 38.748154, 35.829323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795002, 38.703602, 35.840927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029725, -0.491775, -0.870215,
		0.111187, 0.863570, -0.491817,
		0.993355, -0.111376, 0.029009,
		37.093010, 38.670189, 35.849628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579750, 38.933506, 35.085621>,  <36.397659, 38.748154, 35.829323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579750, 38.933506, 35.085621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841480, 38.695019, 35.271690>,  <36.998520, 38.551926, 35.383331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841480, 38.695019, 35.271690>,  <36.579750, 38.933506, 35.085621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841480, 38.695019, 35.271690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107387, -0.535639, -0.837591,
		0.748549, 0.598011, -0.286457,
		0.654326, -0.596216, 0.465171,
		37.037777, 38.516155, 35.411243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949272, 38.688755, 34.473610>,  <36.579750, 38.933506, 35.085621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949272, 38.688755, 34.473610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116920, 38.473274, 34.765949>,  <37.217510, 38.343987, 34.941353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116920, 38.473274, 34.765949>,  <36.949272, 38.688755, 34.473610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116920, 38.473274, 34.765949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320394, -0.665422, -0.674211,
		0.849521, 0.516735, -0.106295,
		0.419119, -0.538701, 0.730849,
		37.242657, 38.311665, 34.985203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585068, 38.456463, 34.158051>,  <36.949272, 38.688755, 34.473610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585068, 38.456463, 34.158051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510021, 38.204170, 34.459240>,  <37.464993, 38.052795, 34.639954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510021, 38.204170, 34.459240>,  <37.585068, 38.456463, 34.158051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510021, 38.204170, 34.459240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224364, -0.773841, -0.592310,
		0.956274, 0.057814, 0.286700,
		-0.187616, -0.630736, 0.752976,
		37.453735, 38.014950, 34.685131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098171, 37.963196, 34.085575>,  <37.585068, 38.456463, 34.158051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098171, 37.963196, 34.085575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835079, 37.790634, 34.332565>,  <37.677223, 37.687096, 34.480759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835079, 37.790634, 34.332565>,  <38.098171, 37.963196, 34.085575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835079, 37.790634, 34.332565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121800, -0.869869, -0.478008,
		0.743337, -0.239194, 0.624689,
		-0.657734, -0.431408, 0.617472,
		37.637760, 37.661213, 34.517807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368622, 37.232948, 34.121639>,  <38.098171, 37.963196, 34.085575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368622, 37.232948, 34.121639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998260, 37.226814, 34.272621>,  <37.776043, 37.223133, 34.363213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998260, 37.226814, 34.272621>,  <38.368622, 37.232948, 34.121639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998260, 37.226814, 34.272621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184663, -0.853292, -0.487640,
		0.329560, -0.521208, 0.787231,
		-0.925899, -0.015334, 0.377459,
		37.720490, 37.222214, 34.385860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132168, 37.238567, 34.079819>,  <38.368622, 37.232948, 34.121639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132168, 37.238567, 34.079819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237190, 36.857635, 34.017673>,  <39.300201, 36.629078, 33.980385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237190, 36.857635, 34.017673>,  <39.132168, 37.238567, 34.079819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237190, 36.857635, 34.017673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802915, 0.126323, 0.582555,
		-0.535157, -0.277695, 0.797805,
		0.262554, -0.952328, -0.155362,
		39.315956, 36.571938, 33.971066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906219, 36.860321, 34.619022>,  <39.132168, 37.238567, 34.079819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906219, 36.860321, 34.619022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232048, 36.695988, 34.455227>,  <39.427547, 36.597385, 34.356949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232048, 36.695988, 34.455227>,  <38.906219, 36.860321, 34.619022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232048, 36.695988, 34.455227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550415, 0.324648, 0.769186,
		-0.183068, -0.851949, 0.490580,
		0.814573, -0.410836, -0.409493,
		39.476421, 36.572739, 34.332378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141132, 36.686134, 35.150177>,  <38.906219, 36.860321, 34.619022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141132, 36.686134, 35.150177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443031, 36.670795, 34.888222>,  <39.624172, 36.661591, 34.731049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443031, 36.670795, 34.888222>,  <39.141132, 36.686134, 35.150177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443031, 36.670795, 34.888222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635703, 0.289244, 0.715695,
		0.161976, -0.956487, 0.242686,
		0.754748, -0.038351, -0.654893,
		39.669456, 36.659290, 34.691753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638050, 36.228310, 35.430496>,  <39.141132, 36.686134, 35.150177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638050, 36.228310, 35.430496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823807, 36.474403, 35.175678>,  <39.935261, 36.622059, 35.022789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823807, 36.474403, 35.175678>,  <39.638050, 36.228310, 35.430496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823807, 36.474403, 35.175678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628370, 0.277999, 0.726545,
		0.624095, -0.737700, -0.257496,
		0.464389, 0.615235, -0.637046,
		39.963123, 36.658974, 34.984566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286118, 36.209221, 35.648357>,  <39.638050, 36.228310, 35.430496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286118, 36.209221, 35.648357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268116, 36.537273, 35.420197>,  <40.257317, 36.734104, 35.283302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268116, 36.537273, 35.420197>,  <40.286118, 36.209221, 35.648357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268116, 36.537273, 35.420197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481901, 0.517976, 0.706734,
		0.875069, -0.243069, -0.418534,
		-0.045005, 0.820133, -0.570400,
		40.254616, 36.783314, 35.249077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960625, 36.428696, 35.619534>,  <40.286118, 36.209221, 35.648357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960625, 36.428696, 35.619534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753849, 36.764462, 35.552425>,  <40.629784, 36.965923, 35.512161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753849, 36.764462, 35.552425>,  <40.960625, 36.428696, 35.619534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753849, 36.764462, 35.552425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248016, 0.334452, 0.909192,
		0.819304, 0.428390, -0.381082,
		-0.516942, 0.839419, -0.167770,
		40.598766, 37.016289, 35.502094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192909, 36.790668, 36.081722>,  <40.960625, 36.428696, 35.619534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192909, 36.790668, 36.081722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905949, 37.050411, 35.980789>,  <40.733772, 37.206257, 35.920231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905949, 37.050411, 35.980789>,  <41.192909, 36.790668, 36.081722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905949, 37.050411, 35.980789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094495, 0.449553, 0.888241,
		0.690224, 0.613380, -0.383870,
		-0.717399, 0.649359, -0.252330,
		40.690727, 37.245220, 35.905090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478481, 37.552395, 36.101517>,  <41.192909, 36.790668, 36.081722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478481, 37.552395, 36.101517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085480, 37.545593, 36.175694>,  <40.849678, 37.541512, 36.220200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085480, 37.545593, 36.175694>,  <41.478481, 37.552395, 36.101517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085480, 37.545593, 36.175694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130320, 0.648530, 0.749951,
		-0.133019, 0.760999, -0.634969,
		-0.982508, -0.017009, 0.185440,
		40.790726, 37.540489, 36.231327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447121, 38.189758, 36.151703>,  <41.478481, 37.552395, 36.101517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447121, 38.189758, 36.151703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108856, 38.038265, 36.302128>,  <40.905899, 37.947369, 36.392384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108856, 38.038265, 36.302128>,  <41.447121, 38.189758, 36.151703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108856, 38.038265, 36.302128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043230, 0.653676, 0.755539,
		-0.531971, 0.655185, -0.536413,
		-0.845658, -0.378736, 0.376060,
		40.855160, 37.924644, 36.414948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016045, 38.789761, 36.379913>,  <41.447121, 38.189758, 36.151703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016045, 38.789761, 36.379913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863514, 38.470432, 36.566364>,  <40.771996, 38.278835, 36.678234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863514, 38.470432, 36.566364>,  <41.016045, 38.789761, 36.379913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863514, 38.470432, 36.566364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101436, 0.537315, 0.837259,
		-0.918857, 0.271991, -0.285873,
		-0.381331, -0.798319, 0.466126,
		40.749115, 38.230938, 36.706203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272942, 38.948742, 36.631203>,  <41.016045, 38.789761, 36.379913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272942, 38.948742, 36.631203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486240, 38.687878, 36.846733>,  <40.614220, 38.531361, 36.976051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486240, 38.687878, 36.846733>,  <40.272942, 38.948742, 36.631203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486240, 38.687878, 36.846733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214557, 0.511856, 0.831847,
		-0.818302, -0.559186, 0.133018,
		0.533243, -0.652162, 0.538829,
		40.646214, 38.492229, 37.008381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896744, 38.809528, 37.184635>,  <40.272942, 38.948742, 36.631203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896744, 38.809528, 37.184635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249405, 38.661953, 37.302322>,  <40.461002, 38.573406, 37.372936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249405, 38.661953, 37.302322>,  <39.896744, 38.809528, 37.184635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249405, 38.661953, 37.302322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134450, 0.401248, 0.906048,
		-0.452332, -0.838381, 0.304159,
		0.881657, -0.368940, 0.294217,
		40.513901, 38.551270, 37.390587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657707, 38.646530, 37.903107>,  <39.896744, 38.809528, 37.184635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657707, 38.646530, 37.903107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056396, 38.615807, 37.892891>,  <40.295609, 38.597374, 37.886761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056396, 38.615807, 37.892891>,  <39.657707, 38.646530, 37.903107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056396, 38.615807, 37.892891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055912, 0.425222, 0.903361,
		-0.058529, -0.901824, 0.428121,
		0.996719, -0.076810, -0.025535,
		40.355412, 38.592762, 37.885231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814648, 38.256432, 38.424900>,  <39.657707, 38.646530, 37.903107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814648, 38.256432, 38.424900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141563, 38.465302, 38.327442>,  <40.337715, 38.590622, 38.268967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141563, 38.465302, 38.327442>,  <39.814648, 38.256432, 38.424900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141563, 38.465302, 38.327442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082841, 0.311968, 0.946474,
		0.570237, -0.793730, 0.211711,
		0.817293, 0.522177, -0.243649,
		40.386753, 38.621956, 38.254349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334480, 38.090786, 38.970287>,  <39.814648, 38.256432, 38.424900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334480, 38.090786, 38.970287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467857, 38.434311, 38.814720>,  <40.547882, 38.640427, 38.721378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467857, 38.434311, 38.814720>,  <40.334480, 38.090786, 38.970287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467857, 38.434311, 38.814720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101576, 0.377404, 0.920461,
		0.937284, -0.346423, 0.038607,
		0.333439, 0.858812, -0.388922,
		40.567890, 38.691956, 38.698044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588905, 37.485527, 39.300713>,  <40.334480, 38.090786, 38.970287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588905, 37.485527, 39.300713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235397, 37.337730, 39.415550>,  <40.023293, 37.249050, 39.484451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235397, 37.337730, 39.415550>,  <40.588905, 37.485527, 39.300713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235397, 37.337730, 39.415550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008505, -0.626131, -0.779672,
		0.467840, -0.686610, 0.556499,
		-0.883772, -0.369495, 0.287090,
		39.970264, 37.226883, 39.501678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686790, 36.795063, 39.353825>,  <40.588905, 37.485527, 39.300713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686790, 36.795063, 39.353825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291634, 36.844177, 39.315903>,  <40.054539, 36.873646, 39.293152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291634, 36.844177, 39.315903>,  <40.686790, 36.795063, 39.353825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291634, 36.844177, 39.315903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016320, -0.690019, -0.723608,
		-0.154259, -0.713302, 0.683670,
		-0.987896, 0.122781, -0.094800,
		39.995266, 36.881012, 39.287464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330963, 36.036217, 39.419838>,  <40.686790, 36.795063, 39.353825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330963, 36.036217, 39.419838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044136, 36.273823, 39.273987>,  <39.872040, 36.416386, 39.186478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044136, 36.273823, 39.273987>,  <40.330963, 36.036217, 39.419838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044136, 36.273823, 39.273987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324001, -0.747260, -0.580194,
		-0.617114, -0.297903, 0.728302,
		-0.717073, 0.594017, -0.364624,
		39.829014, 36.452026, 39.164600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716091, 35.625683, 39.447254>,  <40.330963, 36.036217, 39.419838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716091, 35.625683, 39.447254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645222, 35.908642, 39.173553>,  <39.602699, 36.078415, 39.009331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645222, 35.908642, 39.173553>,  <39.716091, 35.625683, 39.447254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645222, 35.908642, 39.173553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249474, -0.704826, -0.664065,
		-0.952036, 0.053050, 0.301352,
		-0.177172, 0.707394, -0.684254,
		39.592072, 36.120861, 38.968277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192993, 35.378853, 39.160927>,  <39.716091, 35.625683, 39.447254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192993, 35.378853, 39.160927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307152, 35.632717, 38.873665>,  <39.375645, 35.785038, 38.701305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307152, 35.632717, 38.873665>,  <39.192993, 35.378853, 39.160927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307152, 35.632717, 38.873665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201176, -0.692959, -0.692340,
		-0.937059, 0.342065, -0.070086,
		0.285393, 0.634664, -0.718159,
		39.392769, 35.823116, 38.658218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596668, 35.447105, 38.617653>,  <39.192993, 35.378853, 39.160927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596668, 35.447105, 38.617653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935722, 35.559307, 38.437508>,  <39.139156, 35.626629, 38.329422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935722, 35.559307, 38.437508>,  <38.596668, 35.447105, 38.617653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935722, 35.559307, 38.437508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212256, -0.598667, -0.772363,
		-0.486267, 0.750278, -0.447915,
		0.847639, 0.280502, -0.450363,
		39.190014, 35.643459, 38.302399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345470, 35.693043, 37.946293>,  <38.596668, 35.447105, 38.617653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345470, 35.693043, 37.946293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732090, 35.599384, 37.904423>,  <38.964062, 35.543190, 37.879299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732090, 35.599384, 37.904423>,  <38.345470, 35.693043, 37.946293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732090, 35.599384, 37.904423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220328, -0.549118, -0.806179,
		0.131283, 0.802276, -0.582338,
		0.966551, -0.234144, -0.104674,
		39.022057, 35.529140, 37.873020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588711, 35.854553, 37.272961>,  <38.345470, 35.693043, 37.946293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588711, 35.854553, 37.272961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853344, 35.575916, 37.384010>,  <39.012123, 35.408733, 37.450638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853344, 35.575916, 37.384010>,  <38.588711, 35.854553, 37.272961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853344, 35.575916, 37.384010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173148, -0.502122, -0.847286,
		0.729612, 0.512477, -0.452806,
		0.661578, -0.696593, 0.277620,
		39.051819, 35.366940, 37.467297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883022, 35.716587, 36.665798>,  <38.588711, 35.854553, 37.272961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883022, 35.716587, 36.665798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007442, 35.413792, 36.895653>,  <39.082092, 35.232113, 37.033566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007442, 35.413792, 36.895653>,  <38.883022, 35.716587, 36.665798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007442, 35.413792, 36.895653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348405, -0.653364, -0.672109,
		0.884230, 0.008851, -0.466967,
		0.311048, -0.756992, 0.574640,
		39.100758, 35.186695, 37.068047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329346, 35.330963, 36.349380>,  <38.883022, 35.716587, 36.665798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329346, 35.330963, 36.349380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251141, 35.051403, 36.624573>,  <39.204216, 34.883667, 36.789688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251141, 35.051403, 36.624573>,  <39.329346, 35.330963, 36.349380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251141, 35.051403, 36.624573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014944, -0.699315, -0.714658,
		0.980587, -0.150009, 0.126283,
		-0.195517, -0.698896, 0.687980,
		39.192486, 34.841736, 36.830967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887695, 34.849987, 36.263245>,  <39.329346, 35.330963, 36.349380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887695, 34.849987, 36.263245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572926, 34.673355, 36.435638>,  <39.384064, 34.567375, 36.539074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572926, 34.673355, 36.435638>,  <39.887695, 34.849987, 36.263245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572926, 34.673355, 36.435638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055358, -0.645132, -0.762064,
		0.614556, -0.623548, 0.483227,
		-0.786928, -0.441580, 0.430988,
		39.336845, 34.540882, 36.564934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030422, 34.138241, 36.135319>,  <39.887695, 34.849987, 36.263245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030422, 34.138241, 36.135319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638424, 34.160000, 36.211903>,  <39.403225, 34.173054, 36.257854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638424, 34.160000, 36.211903>,  <40.030422, 34.138241, 36.135319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638424, 34.160000, 36.211903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171545, -0.718655, -0.673875,
		0.100936, -0.693236, 0.713607,
		-0.979992, 0.054397, 0.191459,
		39.344425, 34.176319, 36.269341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.475040, 38.319191, 43.326710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.109814, 38.398033, 43.183903>,  <39.890678, 38.445339, 43.098221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.109814, 38.398033, 43.183903>,  <40.475040, 38.319191, 43.326710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109814, 38.398033, 43.183903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206980, -0.530325, -0.822140,
		-0.351384, -0.824563, 0.443425,
		-0.913066, 0.197107, -0.357015,
		39.835896, 38.457165, 43.076797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366966, 37.783291, 42.992424>,  <40.475040, 38.319191, 43.326710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366966, 37.783291, 42.992424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086651, 38.023056, 42.837711>,  <39.918461, 38.166916, 42.744884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086651, 38.023056, 42.837711>,  <40.366966, 37.783291, 42.992424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086651, 38.023056, 42.837711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067360, -0.484171, -0.872377,
		-0.710185, -0.637403, 0.298923,
		-0.700785, 0.599414, -0.386786,
		39.876415, 38.202881, 42.721676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964386, 37.369343, 42.559559>,  <40.366966, 37.783291, 42.992424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964386, 37.369343, 42.559559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835419, 37.717407, 42.410500>,  <39.758038, 37.926247, 42.321064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835419, 37.717407, 42.410500>,  <39.964386, 37.369343, 42.559559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835419, 37.717407, 42.410500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120204, -0.352845, -0.927929,
		-0.938933, -0.343977, 0.009167,
		-0.322421, 0.870161, -0.372645,
		39.738693, 37.978455, 42.298706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279026, 37.299076, 42.191246>,  <39.964386, 37.369343, 42.559559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279026, 37.299076, 42.191246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488873, 37.608356, 42.048733>,  <39.614780, 37.793926, 41.963223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488873, 37.608356, 42.048733>,  <39.279026, 37.299076, 42.191246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488873, 37.608356, 42.048733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017926, -0.428440, -0.903392,
		-0.851151, 0.467547, -0.238627,
		0.524615, 0.773201, -0.356286,
		39.646255, 37.840317, 41.941849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901291, 37.533195, 41.583233>,  <39.279026, 37.299076, 42.191246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901291, 37.533195, 41.583233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267738, 37.685070, 41.531738>,  <39.487606, 37.776196, 41.500843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267738, 37.685070, 41.531738>,  <38.901291, 37.533195, 41.583233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267738, 37.685070, 41.531738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013767, -0.350702, -0.936386,
		-0.400676, 0.856066, -0.326511,
		0.916116, 0.379683, -0.128733,
		39.542572, 37.798973, 41.493118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845512, 37.978371, 40.887672>,  <38.901291, 37.533195, 41.583233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845512, 37.978371, 40.887672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230114, 37.891708, 40.955284>,  <39.460876, 37.839710, 40.995850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230114, 37.891708, 40.955284>,  <38.845512, 37.978371, 40.887672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230114, 37.891708, 40.955284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126284, -0.197924, -0.972048,
		0.244055, 0.955974, -0.162944,
		0.961504, -0.216656, 0.169029,
		39.518566, 37.826710, 41.005993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086491, 38.272858, 40.329494>,  <38.845512, 37.978371, 40.887672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086491, 38.272858, 40.329494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354607, 38.014050, 40.474865>,  <39.515476, 37.858765, 40.562088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354607, 38.014050, 40.474865>,  <39.086491, 38.272858, 40.329494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354607, 38.014050, 40.474865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125797, -0.383575, -0.914902,
		0.731359, 0.658968, -0.175714,
		0.670291, -0.647017, 0.363427,
		39.555695, 37.819946, 40.583893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505993, 38.242363, 39.803638>,  <39.086491, 38.272858, 40.329494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505993, 38.242363, 39.803638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617958, 37.922657, 40.016365>,  <39.685139, 37.730835, 40.144001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617958, 37.922657, 40.016365>,  <39.505993, 38.242363, 39.803638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617958, 37.922657, 40.016365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145656, -0.512190, -0.846431,
		0.948910, 0.314392, -0.026954,
		0.279917, -0.799261, 0.531816,
		39.701935, 37.682880, 40.175911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321537, 38.014378, 39.764812>,  <39.505993, 38.242363, 39.803638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321537, 38.014378, 39.764812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.081272, 37.704460, 39.843708>,  <39.937115, 37.518509, 39.891045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.081272, 37.704460, 39.843708>,  <40.321537, 38.014378, 39.764812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081272, 37.704460, 39.843708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158722, -0.357352, -0.920384,
		0.783591, -0.521532, 0.337624,
		-0.600660, -0.774793, 0.197240,
		39.901073, 37.472023, 39.902882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968086, 38.261295, 39.317425>,  <40.321537, 38.014378, 39.764812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968086, 38.261295, 39.317425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.863686, 38.618622, 39.171074>,  <40.801044, 38.833015, 39.083263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.863686, 38.618622, 39.171074>,  <40.968086, 38.261295, 39.317425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863686, 38.618622, 39.171074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255963, 0.429494, 0.866036,
		0.930785, 0.132386, -0.340754,
		-0.261003, 0.893314, -0.365880,
		40.785385, 38.886616, 39.061310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410103, 38.693554, 39.631542>,  <40.968086, 38.261295, 39.317425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410103, 38.693554, 39.631542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116364, 38.934155, 39.505733>,  <40.940121, 39.078514, 39.430248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116364, 38.934155, 39.505733>,  <41.410103, 38.693554, 39.631542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116364, 38.934155, 39.505733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100731, 0.554817, 0.825852,
		0.671254, 0.574783, -0.468020,
		-0.734351, 0.601500, -0.314524,
		40.896057, 39.114605, 39.411377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764008, 39.365482, 39.792244>,  <41.410103, 38.693554, 39.631542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764008, 39.365482, 39.792244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.370876, 39.407555, 39.731590>,  <41.134998, 39.432796, 39.695198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.370876, 39.407555, 39.731590>,  <41.764008, 39.365482, 39.792244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370876, 39.407555, 39.731590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050376, 0.637543, 0.768766,
		0.177531, 0.763201, -0.621295,
		-0.982825, 0.105181, -0.151631,
		41.076027, 39.439110, 39.686100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716946, 40.078720, 39.815533>,  <41.764008, 39.365482, 39.792244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716946, 40.078720, 39.815533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.355507, 39.924389, 39.889996>,  <41.138645, 39.831791, 39.934673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.355507, 39.924389, 39.889996>,  <41.716946, 40.078720, 39.815533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355507, 39.924389, 39.889996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106170, 0.622686, 0.775236,
		-0.415029, 0.680732, -0.603618,
		-0.903592, -0.385831, 0.186159,
		41.084431, 39.808640, 39.945843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270454, 40.729588, 39.968102>,  <41.716946, 40.078720, 39.815533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270454, 40.729588, 39.968102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.063808, 40.420647, 40.115925>,  <40.939819, 40.235283, 40.204617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.063808, 40.420647, 40.115925>,  <41.270454, 40.729588, 39.968102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063808, 40.420647, 40.115925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162917, 0.512403, 0.843150,
		-0.840573, 0.375381, -0.390547,
		-0.516619, -0.772355, 0.369556,
		40.908821, 40.188942, 40.226791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624676, 40.993713, 40.088223>,  <41.270454, 40.729588, 39.968102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624676, 40.993713, 40.088223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663044, 40.677391, 40.330025>,  <40.686066, 40.487598, 40.475105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663044, 40.677391, 40.330025>,  <40.624676, 40.993713, 40.088223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663044, 40.677391, 40.330025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309608, 0.553478, 0.773179,
		-0.946014, -0.261326, -0.191748,
		0.095924, -0.790804, 0.604506,
		40.691822, 40.440151, 40.511375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078953, 40.991119, 40.546089>,  <40.624676, 40.993713, 40.088223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078953, 40.991119, 40.546089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.367447, 40.788578, 40.735161>,  <40.540543, 40.667053, 40.848602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.367447, 40.788578, 40.735161>,  <40.078953, 40.991119, 40.546089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367447, 40.788578, 40.735161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110653, 0.589394, 0.800231,
		-0.683792, -0.629460, 0.369064,
		0.721238, -0.506354, 0.472675,
		40.583817, 40.636673, 40.876965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866631, 41.215439, 41.246899>,  <40.078953, 40.991119, 40.546089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866631, 41.215439, 41.246899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220936, 41.035786, 41.293732>,  <40.433517, 40.927994, 41.321831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220936, 41.035786, 41.293732>,  <39.866631, 41.215439, 41.246899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220936, 41.035786, 41.293732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128560, 0.479803, 0.867906,
		-0.445981, -0.753705, 0.482731,
		0.885761, -0.449130, 0.117087,
		40.486664, 40.901047, 41.328857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826340, 40.873455, 41.975952>,  <39.866631, 41.215439, 41.246899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826340, 40.873455, 41.975952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.214951, 40.909668, 41.888378>,  <40.448116, 40.931396, 41.835835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.214951, 40.909668, 41.888378>,  <39.826340, 40.873455, 41.975952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214951, 40.909668, 41.888378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140519, 0.523841, 0.840146,
		0.190745, -0.846992, 0.496207,
		0.971530, 0.090528, -0.218939,
		40.506409, 40.936825, 41.822697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134895, 40.873631, 42.548157>,  <39.826340, 40.873455, 41.975952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134895, 40.873631, 42.548157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.436249, 41.025364, 42.333302>,  <40.617062, 41.116405, 42.204388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.436249, 41.025364, 42.333302>,  <40.134895, 40.873631, 42.548157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436249, 41.025364, 42.333302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319166, 0.503237, 0.803048,
		0.574932, -0.776440, 0.258060,
		0.753384, 0.379334, -0.537140,
		40.662266, 41.139164, 42.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708015, 40.727760, 42.898727>,  <40.134895, 40.873631, 42.548157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708015, 40.727760, 42.898727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.763710, 41.054390, 42.674644>,  <40.797127, 41.250366, 42.540195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.763710, 41.054390, 42.674644>,  <40.708015, 40.727760, 42.898727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763710, 41.054390, 42.674644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293013, 0.506407, 0.810984,
		0.945915, -0.277067, -0.168754,
		0.139238, 0.816569, -0.560203,
		40.805481, 41.299362, 42.506584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380093, 40.956749, 43.038700>,  <40.708015, 40.727760, 42.898727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380093, 40.956749, 43.038700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.195370, 41.281601, 42.896049>,  <41.084538, 41.476513, 42.810459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.195370, 41.281601, 42.896049>,  <41.380093, 40.956749, 43.038700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195370, 41.281601, 42.896049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414178, 0.552982, 0.722958,
		0.784343, 0.186158, -0.591736,
		-0.461803, 0.812131, -0.356625,
		41.056828, 41.525242, 42.789062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910866, 41.426971, 43.116982>,  <41.380093, 40.956749, 43.038700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910866, 41.426971, 43.116982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.588833, 41.641895, 43.016476>,  <41.395615, 41.770851, 42.956173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.588833, 41.641895, 43.016476>,  <41.910866, 41.426971, 43.116982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588833, 41.641895, 43.016476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149690, 0.593937, 0.790463,
		0.573964, 0.598776, -0.558599,
		-0.805083, 0.537314, -0.251267,
		41.347309, 41.803089, 42.941097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132195, 42.126701, 43.065662>,  <41.910866, 41.426971, 43.116982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132195, 42.126701, 43.065662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.743664, 42.111015, 43.159462>,  <41.510548, 42.101604, 43.215740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.743664, 42.111015, 43.159462>,  <42.132195, 42.126701, 43.065662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743664, 42.111015, 43.159462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162482, 0.610549, 0.775132,
		-0.173572, 0.791007, -0.586669,
		-0.971325, -0.039218, 0.234498,
		41.452267, 42.099251, 43.229813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.456959, 39.957691, 45.611393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727180, 39.676323, 45.699772>,  <33.889313, 39.507500, 45.752800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727180, 39.676323, 45.699772>,  <33.456959, 39.957691, 45.611393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727180, 39.676323, 45.699772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291786, -0.530267, -0.796039,
		0.677116, 0.473298, -0.563474,
		0.675555, -0.703424, 0.220950,
		33.929848, 39.465294, 45.766056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932629, 39.888332, 45.049393>,  <33.456959, 39.957691, 45.611393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932629, 39.888332, 45.049393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963852, 39.545921, 45.253792>,  <33.982586, 39.340473, 45.376431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963852, 39.545921, 45.253792>,  <33.932629, 39.888332, 45.049393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963852, 39.545921, 45.253792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107067, -0.516795, -0.849388,
		0.991183, 0.011589, -0.131992,
		0.078056, -0.856031, 0.510998,
		33.987270, 39.289112, 45.407093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259872, 39.430325, 44.561932>,  <33.932629, 39.888332, 45.049393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259872, 39.430325, 44.561932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133919, 39.180622, 44.847912>,  <34.058346, 39.030800, 45.019501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133919, 39.180622, 44.847912>,  <34.259872, 39.430325, 44.561932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133919, 39.180622, 44.847912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070361, -0.735839, -0.673491,
		0.946518, -0.262376, 0.187781,
		-0.314884, -0.624259, 0.714947,
		34.039455, 38.993343, 45.062397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737755, 38.891609, 44.580570>,  <34.259872, 39.430325, 44.561932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737755, 38.891609, 44.580570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386116, 38.762974, 44.721294>,  <34.175133, 38.685791, 44.805729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386116, 38.762974, 44.721294>,  <34.737755, 38.891609, 44.580570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386116, 38.762974, 44.721294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025387, -0.768644, -0.639172,
		0.475969, -0.552962, 0.683876,
		-0.879095, -0.321587, 0.351813,
		34.122387, 38.666496, 44.826839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731716, 38.263966, 44.518894>,  <34.737755, 38.891609, 44.580570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731716, 38.263966, 44.518894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340878, 38.348618, 44.527832>,  <34.106377, 38.399410, 44.533195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340878, 38.348618, 44.527832>,  <34.731716, 38.263966, 44.518894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340878, 38.348618, 44.527832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133317, -0.526910, -0.839400,
		-0.165873, -0.823151, 0.543055,
		-0.977094, 0.211632, 0.022340,
		34.047749, 38.412106, 44.534534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478355, 37.788303, 44.169350>,  <34.731716, 38.263966, 44.518894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478355, 37.788303, 44.169350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159237, 38.029438, 44.173683>,  <33.967766, 38.174118, 44.176285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159237, 38.029438, 44.173683>,  <34.478355, 37.788303, 44.169350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159237, 38.029438, 44.173683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240864, -0.302182, -0.922318,
		-0.552730, -0.738429, 0.386280,
		-0.797793, 0.602834, 0.010836,
		33.919899, 38.210289, 44.176933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971882, 37.311058, 43.962997>,  <34.478355, 37.788303, 44.169350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971882, 37.311058, 43.962997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803493, 37.665405, 43.885010>,  <33.702461, 37.878014, 43.838219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803493, 37.665405, 43.885010>,  <33.971882, 37.311058, 43.962997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803493, 37.665405, 43.885010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064983, -0.243841, -0.967636,
		-0.904742, -0.394680, 0.160218,
		-0.420974, 0.885872, -0.194966,
		33.677200, 37.931168, 43.826519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265240, 37.240608, 43.666168>,  <33.971882, 37.311058, 43.962997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265240, 37.240608, 43.666168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419880, 37.592087, 43.554150>,  <33.512665, 37.802975, 43.486938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419880, 37.592087, 43.554150>,  <33.265240, 37.240608, 43.666168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419880, 37.592087, 43.554150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274375, -0.180321, -0.944565,
		-0.880486, 0.442012, 0.171380,
		0.386605, 0.878698, -0.280047,
		33.535862, 37.855698, 43.470135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828854, 37.474136, 43.153595>,  <33.265240, 37.240608, 43.666168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828854, 37.474136, 43.153595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123356, 37.736763, 43.088055>,  <33.300056, 37.894341, 43.048733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123356, 37.736763, 43.088055>,  <32.828854, 37.474136, 43.153595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123356, 37.736763, 43.088055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142784, -0.085947, -0.986015,
		-0.661471, 0.749352, 0.030469,
		0.736254, 0.656570, -0.163847,
		33.344231, 37.933735, 43.038902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603558, 38.034836, 42.801632>,  <32.828854, 37.474136, 43.153595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603558, 38.034836, 42.801632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996609, 38.021481, 42.728603>,  <33.232437, 38.013466, 42.684784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996609, 38.021481, 42.728603>,  <32.603558, 38.034836, 42.801632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996609, 38.021481, 42.728603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184572, -0.072327, -0.980154,
		0.019521, 0.996822, -0.077233,
		0.982625, -0.033388, -0.182574,
		33.291397, 38.011463, 42.673832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649433, 38.507000, 42.285225>,  <32.603558, 38.034836, 42.801632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649433, 38.507000, 42.285225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.965889, 38.263588, 42.260597>,  <33.155762, 38.117542, 42.245819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.965889, 38.263588, 42.260597>,  <32.649433, 38.507000, 42.285225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965889, 38.263588, 42.260597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035258, 0.055125, -0.997857,
		0.610616, 0.791617, 0.022156,
		0.791142, -0.608526, -0.061570,
		33.203232, 38.081032, 42.242126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993484, 38.787235, 41.819870>,  <32.649433, 38.507000, 42.285225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993484, 38.787235, 41.819870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137264, 38.413975, 41.818180>,  <33.223534, 38.190018, 41.817165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137264, 38.413975, 41.818180>,  <32.993484, 38.787235, 41.819870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137264, 38.413975, 41.818180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159846, 0.066029, -0.984931,
		0.919371, 0.353360, 0.172896,
		0.359452, -0.933154, -0.004222,
		33.245098, 38.134029, 41.816914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465527, 38.825562, 41.125874>,  <32.993484, 38.787235, 41.819870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465527, 38.825562, 41.125874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.414909, 38.444527, 41.236549>,  <33.384537, 38.215904, 41.302956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.414909, 38.444527, 41.236549>,  <33.465527, 38.825562, 41.125874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414909, 38.444527, 41.236549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199553, -0.297679, -0.933577,
		0.971681, -0.062926, 0.227762,
		-0.126546, -0.952590, 0.276693,
		33.376945, 38.158749, 41.319557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072857, 38.458332, 40.966465>,  <33.465527, 38.825562, 41.125874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072857, 38.458332, 40.966465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.747730, 38.225449, 40.958828>,  <33.552654, 38.085716, 40.954247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.747730, 38.225449, 40.958828>,  <34.072857, 38.458332, 40.966465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747730, 38.225449, 40.958828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227023, -0.286423, -0.930818,
		0.536467, -0.760914, 0.364984,
		-0.812812, -0.582213, -0.019088,
		33.503887, 38.050785, 40.953102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616035, 38.749672, 40.544884>,  <34.072857, 38.458332, 40.966465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616035, 38.749672, 40.544884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597244, 39.052803, 40.284580>,  <34.585968, 39.234684, 40.128399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597244, 39.052803, 40.284580>,  <34.616035, 38.749672, 40.544884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597244, 39.052803, 40.284580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011000, 0.651046, 0.758958,
		0.998835, 0.042816, -0.022251,
		-0.046982, 0.757829, -0.650759,
		34.583149, 39.280151, 40.089352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989853, 39.205345, 40.832458>,  <34.616035, 38.749672, 40.544884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989853, 39.205345, 40.832458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.783772, 39.426167, 40.570221>,  <34.660122, 39.558659, 40.412880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.783772, 39.426167, 40.570221>,  <34.989853, 39.205345, 40.832458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783772, 39.426167, 40.570221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039896, 0.748648, 0.661767,
		0.856138, 0.367100, -0.363682,
		-0.515204, 0.552054, -0.655592,
		34.629211, 39.591782, 40.373543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328514, 39.830788, 40.674145>,  <34.989853, 39.205345, 40.832458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328514, 39.830788, 40.674145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936943, 39.896931, 40.626232>,  <34.702000, 39.936619, 40.597485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936943, 39.896931, 40.626232>,  <35.328514, 39.830788, 40.674145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936943, 39.896931, 40.626232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023657, 0.674529, 0.737869,
		0.202810, 0.719491, -0.664230,
		-0.978932, 0.165361, -0.119780,
		34.643265, 39.946537, 40.590298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329765, 40.397526, 41.080711>,  <35.328514, 39.830788, 40.674145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329765, 40.397526, 41.080711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.948448, 40.328037, 40.981869>,  <34.719658, 40.286346, 40.922562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.948448, 40.328037, 40.981869>,  <35.329765, 40.397526, 41.080711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948448, 40.328037, 40.981869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291896, 0.319361, 0.901557,
		-0.077699, 0.931574, -0.355151,
		-0.953289, -0.173718, -0.247109,
		34.662460, 40.275921, 40.907738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012360, 40.962551, 41.065300>,  <35.329765, 40.397526, 41.080711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012360, 40.962551, 41.065300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738171, 40.679375, 41.133362>,  <34.573658, 40.509468, 41.174198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738171, 40.679375, 41.133362>,  <35.012360, 40.962551, 41.065300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738171, 40.679375, 41.133362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168161, 0.381311, 0.909023,
		-0.708413, 0.594498, -0.380426,
		-0.685473, -0.707937, 0.170154,
		34.532528, 40.466995, 41.184406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399342, 41.359077, 41.343170>,  <35.012360, 40.962551, 41.065300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399342, 41.359077, 41.343170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357723, 40.976284, 41.451511>,  <34.332752, 40.746609, 41.516514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357723, 40.976284, 41.451511>,  <34.399342, 41.359077, 41.343170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357723, 40.976284, 41.451511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192009, 0.286530, 0.938634,
		-0.975863, 0.045653, -0.213561,
		-0.104043, -0.956983, 0.270848,
		34.326511, 40.689190, 41.532764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995281, 41.415714, 41.862656>,  <34.399342, 41.359077, 41.343170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995281, 41.415714, 41.862656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136063, 41.044525, 41.911640>,  <34.220531, 40.821812, 41.941032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136063, 41.044525, 41.911640>,  <33.995281, 41.415714, 41.862656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136063, 41.044525, 41.911640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066873, 0.155431, 0.985581,
		-0.933625, -0.338691, 0.116761,
		0.351956, -0.927971, 0.122465,
		34.241650, 40.766132, 41.948380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596691, 41.222416, 42.440163>,  <33.995281, 41.415714, 41.862656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596691, 41.222416, 42.440163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.914856, 40.980309, 42.427719>,  <34.105755, 40.835045, 42.420254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.914856, 40.980309, 42.427719>,  <33.596691, 41.222416, 42.440163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914856, 40.980309, 42.427719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221091, 0.241992, 0.944753,
		-0.564304, -0.758345, 0.326303,
		0.795411, -0.605271, -0.031107,
		34.153481, 40.798729, 42.418388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574699, 40.892769, 43.032856>,  <33.596691, 41.222416, 42.440163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574699, 40.892769, 43.032856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959457, 40.873489, 42.925209>,  <34.190315, 40.861923, 42.860619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959457, 40.873489, 42.925209>,  <33.574699, 40.892769, 43.032856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959457, 40.873489, 42.925209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263475, 0.426264, 0.865379,
		0.073007, -0.903314, 0.422722,
		0.961899, -0.048198, -0.269120,
		34.248028, 40.859032, 42.844475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971512, 40.671894, 43.605103>,  <33.574699, 40.892769, 43.032856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971512, 40.671894, 43.605103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.258434, 40.821789, 43.370140>,  <34.430588, 40.911724, 43.229164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.258434, 40.821789, 43.370140>,  <33.971512, 40.671894, 43.605103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258434, 40.821789, 43.370140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452569, 0.390423, 0.801718,
		0.529770, -0.840918, 0.110458,
		0.717304, 0.374736, -0.587408,
		34.473625, 40.934208, 43.193916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617519, 40.351715, 43.921013>,  <33.971512, 40.671894, 43.605103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617519, 40.351715, 43.921013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.716568, 40.670773, 43.701031>,  <34.775997, 40.862206, 43.569042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.716568, 40.670773, 43.701031>,  <34.617519, 40.351715, 43.921013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716568, 40.670773, 43.701031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509849, 0.375396, 0.774036,
		0.823855, -0.472061, -0.313722,
		0.247623, 0.797644, -0.549951,
		34.790855, 40.910065, 43.536045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388474, 40.436939, 44.061069>,  <34.617519, 40.351715, 43.921013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388474, 40.436939, 44.061069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251026, 40.774681, 43.896633>,  <35.168560, 40.977325, 43.797970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251026, 40.774681, 43.896633>,  <35.388474, 40.436939, 44.061069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251026, 40.774681, 43.896633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492060, 0.534724, 0.686984,
		0.799879, 0.033774, -0.599211,
		-0.343614, 0.844352, -0.411095,
		35.147942, 41.027988, 43.773304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909492, 40.878456, 44.013737>,  <35.388474, 40.436939, 44.061069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909492, 40.878456, 44.013737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.591389, 41.120480, 43.998375>,  <35.400528, 41.265694, 43.989159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.591389, 41.120480, 43.998375>,  <35.909492, 40.878456, 44.013737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591389, 41.120480, 43.998375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378869, 0.545424, 0.747644,
		0.473315, 0.580016, -0.662989,
		-0.795255, 0.605057, -0.038407,
		35.352814, 41.301998, 43.986855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115509, 41.551159, 43.906998>,  <35.909492, 40.878456, 44.013737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115509, 41.551159, 43.906998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757534, 41.556931, 44.085381>,  <35.542747, 41.560394, 44.192410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757534, 41.556931, 44.085381>,  <36.115509, 41.551159, 43.906998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757534, 41.556931, 44.085381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358840, 0.617291, 0.700132,
		-0.265183, 0.786602, -0.557616,
		-0.894937, 0.014432, 0.445959,
		35.489052, 41.561260, 44.219170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202175, 42.280907, 43.625324>,  <36.115509, 41.551159, 43.906998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202175, 42.280907, 43.625324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.556221, 42.418533, 43.499981>,  <36.768646, 42.501110, 43.424774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.556221, 42.418533, 43.499981>,  <36.202175, 42.280907, 43.625324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556221, 42.418533, 43.499981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221446, -0.280831, -0.933861,
		-0.409313, 0.895963, -0.172375,
		0.885113, 0.344070, -0.313356,
		36.821754, 42.521755, 43.405975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022980, 42.732037, 43.035995>,  <36.202175, 42.280907, 43.625324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022980, 42.732037, 43.035995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.406940, 42.630051, 42.989372>,  <36.637318, 42.568859, 42.961399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.406940, 42.630051, 42.989372>,  <36.022980, 42.732037, 43.035995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406940, 42.630051, 42.989372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190271, -0.287187, -0.938787,
		0.205881, 0.923320, -0.324182,
		0.959901, -0.254961, -0.116555,
		36.694912, 42.553562, 42.954407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238171, 42.957615, 42.411892>,  <36.022980, 42.732037, 43.035995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238171, 42.957615, 42.411892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505676, 42.668468, 42.481422>,  <36.666180, 42.494980, 42.523140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505676, 42.668468, 42.481422>,  <36.238171, 42.957615, 42.411892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505676, 42.668468, 42.481422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138395, -0.350760, -0.926183,
		0.730477, 0.595344, -0.334618,
		0.668767, -0.722865, 0.173829,
		36.706306, 42.451611, 42.533569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663029, 43.043415, 41.711819>,  <36.238171, 42.957615, 42.411892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663029, 43.043415, 41.711819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741859, 42.694477, 41.890785>,  <36.789158, 42.485115, 41.998165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741859, 42.694477, 41.890785>,  <36.663029, 43.043415, 41.711819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741859, 42.694477, 41.890785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081777, -0.469402, -0.879190,
		0.976971, 0.136681, -0.163846,
		0.197078, -0.872342, 0.447414,
		36.800983, 42.432774, 42.025009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202850, 42.743336, 41.357838>,  <36.663029, 43.043415, 41.711819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202850, 42.743336, 41.357838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.049133, 42.416523, 41.529781>,  <36.956902, 42.220436, 41.632946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.049133, 42.416523, 41.529781>,  <37.202850, 42.743336, 41.357838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049133, 42.416523, 41.529781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043695, -0.481187, -0.875529,
		0.922177, -0.317676, 0.220617,
		-0.384292, -0.817032, 0.429858,
		36.933846, 42.171413, 41.658737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467953, 42.224884, 40.971836>,  <37.202850, 42.743336, 41.357838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467953, 42.224884, 40.971836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183178, 42.033806, 41.177731>,  <37.012314, 41.919159, 41.301266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183178, 42.033806, 41.177731>,  <37.467953, 42.224884, 40.971836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183178, 42.033806, 41.177731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148775, -0.613750, -0.775356,
		0.686301, -0.628585, 0.365884,
		-0.711939, -0.477693, 0.514735,
		36.969597, 41.890499, 41.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629478, 41.586086, 40.737877>,  <37.467953, 42.224884, 40.971836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629478, 41.586086, 40.737877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253040, 41.564049, 40.871326>,  <37.027176, 41.550827, 40.951397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253040, 41.564049, 40.871326>,  <37.629478, 41.586086, 40.737877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253040, 41.564049, 40.871326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176464, -0.761611, -0.623545,
		0.288448, -0.645688, 0.707025,
		-0.941094, -0.055096, 0.333626,
		36.970711, 41.547520, 40.971413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537994, 40.790955, 40.917377>,  <37.629478, 41.586086, 40.737877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537994, 40.790955, 40.917377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197304, 40.984802, 40.837669>,  <36.992889, 41.101109, 40.789845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197304, 40.984802, 40.837669>,  <37.537994, 40.790955, 40.917377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197304, 40.984802, 40.837669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217959, -0.673500, -0.706322,
		-0.476499, -0.558164, 0.679266,
		-0.851730, 0.484614, -0.199265,
		36.941784, 41.130188, 40.777889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071198, 40.380211, 40.635353>,  <37.537994, 40.790955, 40.917377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071198, 40.380211, 40.635353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.937580, 40.733643, 40.504082>,  <36.857410, 40.945702, 40.425320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.937580, 40.733643, 40.504082>,  <37.071198, 40.380211, 40.635353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937580, 40.733643, 40.504082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238443, -0.416069, -0.877514,
		-0.911900, -0.214873, 0.349667,
		-0.334040, 0.883581, -0.328179,
		36.837368, 40.998718, 40.405628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534088, 40.130573, 40.280800>,  <37.071198, 40.380211, 40.635353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534088, 40.130573, 40.280800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.640163, 40.496498, 40.158951>,  <36.703808, 40.716053, 40.085842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.640163, 40.496498, 40.158951>,  <36.534088, 40.130573, 40.280800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640163, 40.496498, 40.158951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013725, -0.312321, -0.949878,
		-0.964099, 0.256077, -0.070268,
		0.265188, 0.914812, -0.304623,
		36.719719, 40.770943, 40.067566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039505, 40.338146, 39.796089>,  <36.534088, 40.130573, 40.280800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039505, 40.338146, 39.796089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.372940, 40.544895, 39.718143>,  <36.573002, 40.668945, 39.671375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.372940, 40.544895, 39.718143>,  <36.039505, 40.338146, 39.796089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372940, 40.544895, 39.718143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090128, -0.220773, -0.971152,
		-0.544980, 0.827106, -0.137450,
		0.833591, 0.516871, -0.194862,
		36.623016, 40.699955, 39.659683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843838, 40.537121, 39.131599>,  <36.039505, 40.338146, 39.796089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843838, 40.537121, 39.131599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.231144, 40.636600, 39.141506>,  <36.463528, 40.696289, 39.147449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.231144, 40.636600, 39.141506>,  <35.843838, 40.537121, 39.131599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231144, 40.636600, 39.141506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069249, -0.171750, -0.982704,
		-0.240146, 0.953231, -0.183521,
		0.968264, 0.248701, 0.024765,
		36.521622, 40.711212, 39.148937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002525, 40.989086, 38.539909>,  <35.843838, 40.537121, 39.131599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002525, 40.989086, 38.539909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.319378, 40.778324, 38.663128>,  <36.509491, 40.651867, 38.737061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.319378, 40.778324, 38.663128>,  <36.002525, 40.989086, 38.539909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319378, 40.778324, 38.663128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069863, -0.423116, -0.903378,
		0.606337, 0.737116, -0.298353,
		0.792133, -0.526908, 0.308048,
		36.557018, 40.620251, 38.755543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503963, 41.025681, 38.065228>,  <36.002525, 40.989086, 38.539909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503963, 41.025681, 38.065228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569412, 40.696777, 38.283264>,  <36.608681, 40.499435, 38.414085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569412, 40.696777, 38.283264>,  <36.503963, 41.025681, 38.065228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569412, 40.696777, 38.283264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037154, -0.557279, -0.829494,
		0.985824, 0.115470, -0.121732,
		0.163620, -0.822257, 0.545088,
		36.618500, 40.450100, 38.446793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.565634, 43.472549, 34.947086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675411, 43.647705, 34.604641>,  <26.741278, 43.752800, 34.399174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675411, 43.647705, 34.604641>,  <26.565634, 43.472549, 34.947086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675411, 43.647705, 34.604641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210228, -0.841441, -0.497776,
		-0.938341, 0.316591, -0.138873,
		0.274445, 0.437889, -0.856115,
		26.757744, 43.779072, 34.347805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005260, 43.326725, 34.487938>,  <26.565634, 43.472549, 34.947086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005260, 43.326725, 34.487938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.324833, 43.403988, 34.260113>,  <26.516577, 43.450344, 34.123417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.324833, 43.403988, 34.260113>,  <26.005260, 43.326725, 34.487938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324833, 43.403988, 34.260113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126252, -0.872060, -0.472834,
		-0.588023, 0.449670, -0.672329,
		0.798930, 0.193154, -0.569563,
		26.564512, 43.461933, 34.089245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776464, 43.037907, 33.840687>,  <26.005260, 43.326725, 34.487938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776464, 43.037907, 33.840687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174452, 43.076244, 33.852356>,  <26.413244, 43.099247, 33.859356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174452, 43.076244, 33.852356>,  <25.776464, 43.037907, 33.840687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174452, 43.076244, 33.852356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099926, -0.928312, -0.358124,
		-0.007248, 0.359236, -0.933218,
		0.994969, 0.095848, 0.029168,
		26.472942, 43.105000, 33.861107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011078, 42.667789, 33.228271>,  <25.776464, 43.037907, 33.840687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011078, 42.667789, 33.228271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.315903, 42.708622, 33.484035>,  <26.498798, 42.733120, 33.637493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.315903, 42.708622, 33.484035>,  <26.011078, 42.667789, 33.228271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315903, 42.708622, 33.484035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213884, -0.971750, -0.099779,
		0.611158, 0.212797, -0.762367,
		0.762063, 0.102077, 0.639407,
		26.544521, 42.739246, 33.675858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673857, 42.351357, 32.921604>,  <26.011078, 42.667789, 33.228271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673857, 42.351357, 32.921604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.709929, 42.337643, 33.319736>,  <26.731571, 42.329414, 33.558617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.709929, 42.337643, 33.319736>,  <26.673857, 42.351357, 32.921604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709929, 42.337643, 33.319736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196084, -0.979234, -0.051493,
		0.976432, 0.199813, -0.081583,
		0.090178, -0.034283, 0.995335,
		26.736982, 42.327358, 33.618336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065617, 41.699913, 33.069824>,  <26.673857, 42.351357, 32.921604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065617, 41.699913, 33.069824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945831, 41.837463, 33.425819>,  <26.873960, 41.919994, 33.639416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945831, 41.837463, 33.425819>,  <27.065617, 41.699913, 33.069824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945831, 41.837463, 33.425819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151515, -0.903815, 0.400201,
		0.942000, 0.254692, 0.218558,
		-0.299464, 0.343875, 0.889984,
		26.855991, 41.940624, 33.692814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649807, 41.704517, 33.551941>,  <27.065617, 41.699913, 33.069824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649807, 41.704517, 33.551941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.313517, 41.692429, 33.768188>,  <27.111742, 41.685173, 33.897938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.313517, 41.692429, 33.768188>,  <27.649807, 41.704517, 33.551941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313517, 41.692429, 33.768188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375500, -0.751887, 0.541910,
		0.390104, 0.658599, 0.643480,
		-0.840725, -0.030225, 0.540618,
		27.061298, 41.683361, 33.930374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878597, 41.406818, 34.173225>,  <27.649807, 41.704517, 33.551941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878597, 41.406818, 34.173225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484446, 41.338760, 34.169624>,  <27.247955, 41.297924, 34.167465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484446, 41.338760, 34.169624>,  <27.878597, 41.406818, 34.173225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484446, 41.338760, 34.169624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157925, -0.931887, 0.326568,
		-0.063952, 0.320371, 0.945131,
		-0.985378, -0.170144, -0.009002,
		27.188831, 41.287716, 34.166924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887609, 40.927460, 34.605484>,  <27.878597, 41.406818, 34.173225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887609, 40.927460, 34.605484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540365, 40.902893, 34.408459>,  <27.332020, 40.888153, 34.290245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540365, 40.902893, 34.408459>,  <27.887609, 40.927460, 34.605484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540365, 40.902893, 34.408459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002856, -0.991681, 0.128691,
		-0.496365, 0.113125, 0.860712,
		-0.868109, -0.061419, -0.492559,
		27.279932, 40.884468, 34.260693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428152, 40.559586, 35.031940>,  <27.887609, 40.927460, 34.605484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428152, 40.559586, 35.031940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263002, 40.496792, 34.673077>,  <27.163912, 40.459114, 34.457760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263002, 40.496792, 34.673077>,  <27.428152, 40.559586, 35.031940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263002, 40.496792, 34.673077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154689, -0.958636, 0.238931,
		-0.897554, 0.237429, 0.371515,
		-0.412877, -0.156984, -0.897156,
		27.139139, 40.449696, 34.403931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084084, 39.948212, 35.201721>,  <27.428152, 40.559586, 35.031940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084084, 39.948212, 35.201721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.084866, 39.984791, 34.803398>,  <27.085335, 40.006737, 34.564404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.084866, 39.984791, 34.803398>,  <27.084084, 39.948212, 35.201721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084866, 39.984791, 34.803398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160790, -0.982882, -0.089941,
		-0.986987, -0.159940, -0.016625,
		0.001955, 0.091444, -0.995808,
		27.085451, 40.012222, 34.504654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540140, 39.582302, 34.907055>,  <27.084084, 39.948212, 35.201721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540140, 39.582302, 34.907055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.806553, 39.604439, 34.609509>,  <26.966400, 39.617722, 34.430981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.806553, 39.604439, 34.609509>,  <26.540140, 39.582302, 34.907055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806553, 39.604439, 34.609509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108535, -0.993821, 0.023241,
		-0.737986, -0.096215, -0.667922,
		0.666031, 0.055342, -0.743868,
		27.006363, 39.621040, 34.386349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314184, 39.067734, 34.467918>,  <26.540140, 39.582302, 34.907055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314184, 39.067734, 34.467918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697773, 39.145729, 34.385601>,  <26.927927, 39.192524, 34.336208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697773, 39.145729, 34.385601>,  <26.314184, 39.067734, 34.467918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697773, 39.145729, 34.385601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204719, -0.978451, 0.026897,
		-0.196117, -0.067924, -0.978225,
		0.958972, 0.194987, -0.205797,
		26.985464, 39.204224, 34.323860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486677, 38.650059, 33.941128>,  <26.314184, 39.067734, 34.467918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486677, 38.650059, 33.941128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.845055, 38.747581, 34.089638>,  <27.060081, 38.806095, 34.178741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.845055, 38.747581, 34.089638>,  <26.486677, 38.650059, 33.941128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845055, 38.747581, 34.089638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277965, -0.959735, -0.040550,
		0.346435, 0.139531, -0.927639,
		0.895946, 0.243803, 0.371270,
		27.113838, 38.820721, 34.201019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040474, 38.309448, 33.436619>,  <26.486677, 38.650059, 33.941128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040474, 38.309448, 33.436619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.235960, 38.390282, 33.776104>,  <27.353252, 38.438782, 33.979797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.235960, 38.390282, 33.776104>,  <27.040474, 38.309448, 33.436619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235960, 38.390282, 33.776104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539810, -0.834278, -0.112188,
		0.685393, 0.512973, -0.516813,
		0.488715, 0.202088, 0.848716,
		27.382574, 38.450909, 34.030720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747000, 38.103989, 33.311760>,  <27.040474, 38.309448, 33.436619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747000, 38.103989, 33.311760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.720608, 38.118439, 33.710625>,  <27.704773, 38.127110, 33.949944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.720608, 38.118439, 33.710625>,  <27.747000, 38.103989, 33.311760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720608, 38.118439, 33.710625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680039, -0.729687, 0.071435,
		0.730201, 0.682826, 0.023576,
		-0.065980, 0.036129, 0.997167,
		27.700813, 38.129276, 34.009773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466879, 38.108707, 33.643661>,  <27.747000, 38.103989, 33.311760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466879, 38.108707, 33.643661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240803, 37.986485, 33.950176>,  <28.105158, 37.913151, 34.134087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240803, 37.986485, 33.950176>,  <28.466879, 38.108707, 33.643661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240803, 37.986485, 33.950176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557952, -0.825788, 0.082243,
		0.607659, 0.474034, 0.637215,
		-0.565190, -0.305560, 0.766286,
		28.071245, 37.894817, 34.180061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922689, 37.839710, 34.175755>,  <28.466879, 38.108707, 33.643661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922689, 37.839710, 34.175755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565046, 37.685143, 34.266312>,  <28.350460, 37.592403, 34.320644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565046, 37.685143, 34.266312>,  <28.922689, 37.839710, 34.175755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565046, 37.685143, 34.266312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424626, -0.892124, 0.154294,
		0.142345, 0.234086, 0.961739,
		-0.894109, -0.386417, 0.226389,
		28.296814, 37.569218, 34.334229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102818, 37.358807, 34.724480>,  <28.922689, 37.839710, 34.175755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102818, 37.358807, 34.724480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755817, 37.253098, 34.555908>,  <28.547617, 37.189671, 34.454765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755817, 37.253098, 34.555908>,  <29.102818, 37.358807, 34.724480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755817, 37.253098, 34.555908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290885, -0.956758, 0.001196,
		-0.403518, -0.121548, 0.906862,
		-0.867502, -0.264275, -0.421426,
		28.495567, 37.173817, 34.429482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353960, 37.931637, 35.184330>,  <29.102818, 37.358807, 34.724480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353960, 37.931637, 35.184330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596094, 37.953419, 35.501972>,  <29.741375, 37.966488, 35.692558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596094, 37.953419, 35.501972>,  <29.353960, 37.931637, 35.184330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596094, 37.953419, 35.501972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453981, 0.843096, 0.288254,
		-0.653812, -0.534999, 0.535076,
		0.605336, 0.054450, 0.794105,
		29.777695, 37.969753, 35.740204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886362, 37.958542, 35.788143>,  <29.353960, 37.931637, 35.184330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886362, 37.958542, 35.788143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234032, 38.114342, 35.910011>,  <29.442635, 38.207821, 35.983131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234032, 38.114342, 35.910011>,  <28.886362, 37.958542, 35.788143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234032, 38.114342, 35.910011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487515, 0.778158, 0.395978,
		-0.082849, -0.492706, 0.866243,
		0.869175, 0.389500, 0.304672,
		29.494783, 38.231194, 36.001411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768019, 38.216339, 36.586399>,  <28.886362, 37.958542, 35.788143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768019, 38.216339, 36.586399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074373, 38.409134, 36.416172>,  <29.258186, 38.524811, 36.314037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074373, 38.409134, 36.416172>,  <28.768019, 38.216339, 36.586399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074373, 38.409134, 36.416172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459615, 0.873245, 0.161854,
		0.449636, 0.071636, 0.890335,
		0.765886, 0.481987, -0.425567,
		29.304138, 38.553730, 36.288502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085165, 38.796394, 37.071312>,  <28.768019, 38.216339, 36.586399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085165, 38.796394, 37.071312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200272, 38.896442, 36.701527>,  <29.269335, 38.956470, 36.479656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200272, 38.896442, 36.701527>,  <29.085165, 38.796394, 37.071312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200272, 38.896442, 36.701527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303018, 0.939481, 0.159857,
		0.908499, 0.234128, 0.346140,
		0.287765, 0.250117, -0.924464,
		29.286602, 38.971478, 36.424187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439106, 39.349014, 37.181946>,  <29.085165, 38.796394, 37.071312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439106, 39.349014, 37.181946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342129, 39.363388, 36.794147>,  <29.283941, 39.372013, 36.561466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342129, 39.363388, 36.794147>,  <29.439106, 39.349014, 37.181946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342129, 39.363388, 36.794147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431102, 0.891244, 0.140840,
		0.869121, 0.452099, -0.200586,
		-0.242445, 0.035933, -0.969499,
		29.269396, 39.374168, 36.503296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469589, 40.014393, 37.026669>,  <29.439106, 39.349014, 37.181946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469589, 40.014393, 37.026669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292830, 39.903587, 36.685379>,  <29.186773, 39.837105, 36.480606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292830, 39.903587, 36.685379>,  <29.469589, 40.014393, 37.026669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292830, 39.903587, 36.685379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404525, 0.910466, -0.086084,
		0.800676, 0.307110, -0.514393,
		-0.441900, -0.277011, -0.853222,
		29.160259, 39.820484, 36.429413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645359, 40.590984, 36.570831>,  <29.469589, 40.014393, 37.026669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645359, 40.590984, 36.570831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.333866, 40.394608, 36.414600>,  <29.146971, 40.276779, 36.320862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.333866, 40.394608, 36.414600>,  <29.645359, 40.590984, 36.570831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333866, 40.394608, 36.414600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449549, 0.870936, -0.198435,
		0.437588, 0.021055, -0.898929,
		-0.778732, -0.490945, -0.390577,
		29.100246, 40.247322, 36.297428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543039, 40.918591, 35.894791>,  <29.645359, 40.590984, 36.570831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543039, 40.918591, 35.894791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193945, 40.754601, 36.000813>,  <28.984488, 40.656208, 36.064426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193945, 40.754601, 36.000813>,  <29.543039, 40.918591, 35.894791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193945, 40.754601, 36.000813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471920, 0.847482, -0.243035,
		-0.124993, -0.337191, -0.933102,
		-0.872736, -0.409972, 0.265056,
		28.932123, 40.631607, 36.080330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106161, 41.072941, 35.361408>,  <29.543039, 40.918591, 35.894791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106161, 41.072941, 35.361408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856140, 41.014565, 35.668137>,  <28.706127, 40.979538, 35.852173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856140, 41.014565, 35.668137>,  <29.106161, 41.072941, 35.361408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856140, 41.014565, 35.668137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497775, 0.831227, -0.247550,
		-0.601275, -0.536436, -0.592204,
		-0.625051, -0.145939, 0.766820,
		28.668625, 40.970783, 35.898182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429386, 41.301792, 35.113998>,  <29.106161, 41.072941, 35.361408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429386, 41.301792, 35.113998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396408, 41.297424, 35.512611>,  <28.376621, 41.294804, 35.751781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396408, 41.297424, 35.512611>,  <28.429386, 41.301792, 35.113998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396408, 41.297424, 35.512611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619434, 0.783889, -0.042660,
		-0.780708, -0.620805, -0.071387,
		-0.082443, -0.010915, 0.996536,
		28.371675, 41.294151, 35.811573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583513, 41.424946, 35.348240>,  <28.429386, 41.301792, 35.113998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583513, 41.424946, 35.348240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.790873, 41.487923, 35.684448>,  <27.915289, 41.525711, 35.886173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.790873, 41.487923, 35.684448>,  <27.583513, 41.424946, 35.348240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790873, 41.487923, 35.684448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571598, 0.794860, 0.203649,
		-0.636032, -0.586011, 0.502050,
		0.518400, 0.157444, 0.840519,
		27.946392, 41.535156, 35.936604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096754, 41.471325, 35.982105>,  <27.583513, 41.424946, 35.348240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096754, 41.471325, 35.982105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.436665, 41.664169, 36.067383>,  <27.640610, 41.779877, 36.118549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.436665, 41.664169, 36.067383>,  <27.096754, 41.471325, 35.982105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436665, 41.664169, 36.067383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523673, 0.818400, 0.236618,
		-0.060403, -0.312716, 0.947924,
		0.849775, 0.482110, 0.213195,
		27.691597, 41.808804, 36.131340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863760, 41.803143, 36.581776>,  <27.096754, 41.471325, 35.982105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863760, 41.803143, 36.581776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207150, 41.965561, 36.456459>,  <27.413183, 42.063011, 36.381268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207150, 41.965561, 36.456459>,  <26.863760, 41.803143, 36.581776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207150, 41.965561, 36.456459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263299, 0.873168, 0.410184,
		0.440106, -0.269644, 0.856504,
		0.858475, 0.406042, -0.313290,
		27.464691, 42.087372, 36.362473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068264, 42.329163, 37.043640>,  <26.863760, 41.803143, 36.581776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068264, 42.329163, 37.043640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288042, 42.444908, 36.730110>,  <27.419909, 42.514355, 36.541992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288042, 42.444908, 36.730110>,  <27.068264, 42.329163, 37.043640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288042, 42.444908, 36.730110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108632, 0.954894, 0.276363,
		0.828437, -0.066699, 0.556097,
		0.549446, 0.289359, -0.783824,
		27.452875, 42.531715, 36.494965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669889, 42.821026, 37.321541>,  <27.068264, 42.329163, 37.043640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669889, 42.821026, 37.321541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.622524, 42.914848, 36.935596>,  <27.594105, 42.971142, 36.704029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.622524, 42.914848, 36.935596>,  <27.669889, 42.821026, 37.321541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622524, 42.914848, 36.935596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165785, 0.962732, 0.213689,
		0.979027, -0.134657, -0.152885,
		-0.118412, 0.234554, -0.964864,
		27.587000, 42.985214, 36.646137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173100, 43.404877, 37.136131>,  <27.669889, 42.821026, 37.321541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173100, 43.404877, 37.136131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911482, 43.397087, 36.833649>,  <27.754511, 43.392414, 36.652161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911482, 43.397087, 36.833649>,  <28.173100, 43.404877, 37.136131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911482, 43.397087, 36.833649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267492, 0.941037, 0.207116,
		0.707582, 0.337742, -0.620692,
		-0.654046, -0.019479, -0.756204,
		27.715269, 43.391243, 36.606789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328220, 44.028095, 36.598469>,  <28.173100, 43.404877, 37.136131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328220, 44.028095, 36.598469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946121, 43.911442, 36.578678>,  <27.716862, 43.841450, 36.566803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946121, 43.911442, 36.578678>,  <28.328220, 44.028095, 36.598469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946121, 43.911442, 36.578678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295800, 0.941412, 0.162008,
		-0.000670, 0.169393, -0.985548,
		-0.955250, -0.291634, -0.049475,
		27.659546, 43.823952, 36.563835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077381, 44.654713, 36.374847>,  <28.328220, 44.028095, 36.598469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077381, 44.654713, 36.374847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.768034, 44.415756, 36.459724>,  <27.582426, 44.272381, 36.510651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.768034, 44.415756, 36.459724>,  <28.077381, 44.654713, 36.374847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768034, 44.415756, 36.459724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571260, 0.801821, 0.175344,
		-0.274888, 0.014390, -0.961369,
		-0.773369, -0.597391, 0.212190,
		27.536024, 44.236538, 36.523380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408110, 44.936337, 36.001343>,  <28.077381, 44.654713, 36.374847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408110, 44.936337, 36.001343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275415, 44.723476, 36.312923>,  <27.195799, 44.595760, 36.499874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.275415, 44.723476, 36.312923>,  <27.408110, 44.936337, 36.001343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275415, 44.723476, 36.312923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601599, 0.755361, 0.259825,
		-0.726658, -0.382426, -0.570717,
		-0.331734, -0.532146, 0.778956,
		27.175896, 44.563831, 36.546612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686459, 44.808025, 35.910416>,  <27.408110, 44.936337, 36.001343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686459, 44.808025, 35.910416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767469, 44.775558, 36.300777>,  <26.816076, 44.756077, 36.534996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767469, 44.775558, 36.300777>,  <26.686459, 44.808025, 35.910416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767469, 44.775558, 36.300777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723345, 0.659368, 0.204954,
		-0.660118, -0.747426, 0.074828,
		0.202527, -0.081167, 0.975907,
		26.828228, 44.751209, 36.593548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040804, 44.822586, 36.168755>,  <26.686459, 44.808025, 35.910416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040804, 44.822586, 36.168755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.285379, 44.913681, 36.471878>,  <26.432125, 44.968338, 36.653751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.285379, 44.913681, 36.471878>,  <26.040804, 44.822586, 36.168755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285379, 44.913681, 36.471878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657312, 0.679370, 0.326187,
		-0.440551, -0.697562, 0.565086,
		0.611438, 0.227736, 0.757813,
		26.468811, 44.982002, 36.699223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599424, 44.922890, 36.672832>,  <26.040804, 44.822586, 36.168755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599424, 44.922890, 36.672832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944214, 45.088203, 36.790268>,  <26.151089, 45.187393, 36.860729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944214, 45.088203, 36.790268>,  <25.599424, 44.922890, 36.672832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944214, 45.088203, 36.790268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500710, 0.784656, 0.365519,
		-0.079300, -0.462070, 0.883291,
		0.861976, 0.413287, 0.293586,
		26.202806, 45.212189, 36.878345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438662, 45.169476, 37.295547>,  <25.599424, 44.922890, 36.672832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438662, 45.169476, 37.295547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.763884, 45.357094, 37.157600>,  <25.959017, 45.469666, 37.074833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.763884, 45.357094, 37.157600>,  <25.438662, 45.169476, 37.295547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763884, 45.357094, 37.157600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357252, 0.869693, 0.340596,
		0.459687, -0.153718, 0.874676,
		0.813055, 0.469047, -0.344871,
		26.007799, 45.497807, 37.054138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.960297, 42.827328, 43.244293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.667809, 42.586117, 43.371838>,  <41.492313, 42.441391, 43.448364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.667809, 42.586117, 43.371838>,  <41.960297, 42.827328, 43.244293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667809, 42.586117, 43.371838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054055, 0.414756, 0.908326,
		-0.679992, 0.681426, -0.270683,
		-0.731224, -0.603023, 0.318866,
		41.448441, 42.405209, 43.467499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763264, 43.305927, 43.667301>,  <41.960297, 42.827328, 43.244293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763264, 43.305927, 43.667301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.558392, 42.973392, 43.753597>,  <41.435467, 42.773872, 43.805374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.558392, 42.973392, 43.753597>,  <41.763264, 43.305927, 43.667301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558392, 42.973392, 43.753597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223298, 0.371445, 0.901203,
		-0.829342, 0.413405, -0.375884,
		-0.512182, -0.831339, 0.215742,
		41.404736, 42.723991, 43.818321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124912, 43.572681, 43.974388>,  <41.763264, 43.305927, 43.667301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124912, 43.572681, 43.974388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.185677, 43.206985, 44.124630>,  <41.222134, 42.987568, 44.214775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.185677, 43.206985, 44.124630>,  <41.124912, 43.572681, 43.974388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185677, 43.206985, 44.124630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120699, 0.360016, 0.925106,
		-0.980997, -0.185869, -0.055658,
		0.151910, -0.914244, 0.375609,
		41.231251, 42.932713, 44.237312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574730, 43.410683, 44.401398>,  <41.124912, 43.572681, 43.974388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574730, 43.410683, 44.401398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.901085, 43.206905, 44.510788>,  <41.096897, 43.084637, 44.576424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.901085, 43.206905, 44.510788>,  <40.574730, 43.410683, 44.401398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901085, 43.206905, 44.510788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142023, 0.281909, 0.948871,
		-0.560494, -0.813014, 0.157654,
		0.815890, -0.509447, 0.273475,
		41.145851, 43.054073, 44.592831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562733, 43.423878, 45.077705>,  <40.574730, 43.410683, 44.401398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562733, 43.423878, 45.077705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.904255, 43.216698, 45.056709>,  <41.109169, 43.092392, 45.044113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.904255, 43.216698, 45.056709>,  <40.562733, 43.423878, 45.077705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904255, 43.216698, 45.056709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163238, 0.170608, 0.971723,
		-0.494345, -0.838227, 0.230213,
		0.853801, -0.517946, -0.052491,
		41.160397, 43.061314, 45.040962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571224, 42.713024, 45.554752>,  <40.562733, 43.423878, 45.077705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571224, 42.713024, 45.554752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.936104, 42.863575, 45.489964>,  <41.155029, 42.953907, 45.451092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.936104, 42.863575, 45.489964>,  <40.571224, 42.713024, 45.554752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936104, 42.863575, 45.489964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138740, 0.088235, 0.986390,
		0.385551, -0.922253, 0.028269,
		0.912196, 0.376381, -0.161973,
		41.209763, 42.976490, 45.441372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935806, 42.328842, 46.016068>,  <40.571224, 42.713024, 45.554752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935806, 42.328842, 46.016068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.165344, 42.649036, 45.946865>,  <41.303066, 42.841152, 45.905346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.165344, 42.649036, 45.946865>,  <40.935806, 42.328842, 46.016068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165344, 42.649036, 45.946865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100068, 0.141126, 0.984921,
		0.812830, -0.582500, 0.000881,
		0.573841, 0.800486, -0.173001,
		41.337498, 42.889183, 45.894966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471142, 42.266434, 46.372219>,  <40.935806, 42.328842, 46.016068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471142, 42.266434, 46.372219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.417347, 42.658928, 46.316952>,  <41.385071, 42.894424, 46.283791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.417347, 42.658928, 46.316952>,  <41.471142, 42.266434, 46.372219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417347, 42.658928, 46.316952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004391, 0.140023, 0.990139,
		0.990906, 0.132550, -0.023139,
		-0.134483, 0.981236, -0.138167,
		41.377003, 42.953300, 46.275501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908470, 42.508636, 46.829353>,  <41.471142, 42.266434, 46.372219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908470, 42.508636, 46.829353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.650406, 42.802650, 46.745926>,  <41.495567, 42.979057, 46.695869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.650406, 42.802650, 46.745926>,  <41.908470, 42.508636, 46.829353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650406, 42.802650, 46.745926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068432, 0.216288, 0.973928,
		0.760979, 0.642610, -0.089240,
		-0.645157, 0.735032, -0.208566,
		41.456860, 43.023159, 46.683357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097988, 42.969429, 47.260735>,  <41.908470, 42.508636, 46.829353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097988, 42.969429, 47.260735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.727566, 43.091908, 47.172489>,  <41.505314, 43.165394, 47.119541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.727566, 43.091908, 47.172489>,  <42.097988, 42.969429, 47.260735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727566, 43.091908, 47.172489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115188, 0.327357, 0.937854,
		0.359387, 0.893914, -0.267879,
		-0.926052, 0.306196, -0.220616,
		41.449749, 43.183765, 47.106304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954895, 43.677971, 47.638840>,  <42.097988, 42.969429, 47.260735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954895, 43.677971, 47.638840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.597210, 43.527679, 47.541504>,  <41.382599, 43.437504, 47.483101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.597210, 43.527679, 47.541504>,  <41.954895, 43.677971, 47.638840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597210, 43.527679, 47.541504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332498, 0.193518, 0.923036,
		-0.299722, 0.906298, -0.297976,
		-0.894210, -0.375731, -0.243340,
		41.328945, 43.414959, 47.468502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489716, 44.140995, 47.919819>,  <41.954895, 43.677971, 47.638840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489716, 44.140995, 47.919819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.269646, 43.809772, 47.876675>,  <41.137604, 43.611038, 47.850788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.269646, 43.809772, 47.876675>,  <41.489716, 44.140995, 47.919819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269646, 43.809772, 47.876675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443911, 0.180621, 0.877678,
		-0.707281, 0.530760, -0.466955,
		-0.550178, -0.828052, -0.107860,
		41.104591, 43.561356, 47.844318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742714, 44.291672, 48.126541>,  <41.489716, 44.140995, 47.919819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742714, 44.291672, 48.126541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.805775, 43.898746, 48.166946>,  <40.843613, 43.662991, 48.191189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.805775, 43.898746, 48.166946>,  <40.742714, 44.291672, 48.126541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805775, 43.898746, 48.166946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317973, 0.046350, 0.946966,
		-0.934900, -0.181415, -0.305042,
		0.157655, -0.982314, 0.101017,
		40.853073, 43.604053, 48.197250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104485, 43.955376, 48.374508>,  <40.742714, 44.291672, 48.126541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104485, 43.955376, 48.374508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.424362, 43.733345, 48.466053>,  <40.616287, 43.600124, 48.520981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.424362, 43.733345, 48.466053>,  <40.104485, 43.955376, 48.374508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424362, 43.733345, 48.466053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334524, -0.095385, 0.937548,
		-0.498585, -0.826309, -0.261967,
		0.799692, -0.555082, 0.228862,
		40.664268, 43.566822, 48.534710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930553, 44.275986, 47.837566>,  <40.104485, 43.955376, 48.374508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930553, 44.275986, 47.837566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.585209, 44.476215, 47.862972>,  <39.378002, 44.596352, 47.878216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.585209, 44.476215, 47.862972>,  <39.930553, 44.275986, 47.837566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585209, 44.476215, 47.862972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372572, -0.547527, -0.749269,
		-0.340285, -0.670555, 0.659213,
		-0.863363, 0.500569, 0.063515,
		39.326199, 44.626385, 47.882027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431686, 43.853230, 47.679222>,  <39.930553, 44.275986, 47.837566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431686, 43.853230, 47.679222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213322, 44.183903, 47.624699>,  <39.082302, 44.382305, 47.591984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213322, 44.183903, 47.624699>,  <39.431686, 43.853230, 47.679222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213322, 44.183903, 47.624699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446126, -0.424515, -0.787883,
		-0.709193, -0.369302, 0.600550,
		-0.545909, 0.826682, -0.136308,
		39.049549, 44.431908, 47.583805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788254, 43.605293, 47.557552>,  <39.431686, 43.853230, 47.679222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788254, 43.605293, 47.557552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.812622, 43.967312, 47.389183>,  <38.827244, 44.184525, 47.288162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.812622, 43.967312, 47.389183>,  <38.788254, 43.605293, 47.557552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812622, 43.967312, 47.389183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476269, -0.344248, -0.809112,
		-0.877187, 0.249766, 0.410073,
		0.060922, 0.905047, -0.420926,
		38.830898, 44.238827, 47.262905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143616, 43.767975, 47.236443>,  <38.788254, 43.605293, 47.557552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143616, 43.767975, 47.236443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365208, 44.048313, 47.056702>,  <38.498165, 44.216515, 46.948856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365208, 44.048313, 47.056702>,  <38.143616, 43.767975, 47.236443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365208, 44.048313, 47.056702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462759, -0.189457, -0.866002,
		-0.692068, 0.687692, 0.219367,
		0.553982, 0.700846, -0.449353,
		38.531403, 44.258568, 46.921894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710560, 44.411007, 46.911922>,  <38.143616, 43.767975, 47.236443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710560, 44.411007, 46.911922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064365, 44.384720, 46.727177>,  <38.276649, 44.368950, 46.616329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064365, 44.384720, 46.727177>,  <37.710560, 44.411007, 46.911922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064365, 44.384720, 46.727177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465779, -0.068705, -0.882230,
		0.026242, 0.995471, -0.091378,
		0.884512, -0.065714, -0.461866,
		38.329720, 44.365005, 46.588615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478554, 44.498100, 46.249336>,  <37.710560, 44.411007, 46.911922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478554, 44.498100, 46.249336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.853943, 44.376701, 46.183407>,  <38.079174, 44.303864, 46.143848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.853943, 44.376701, 46.183407>,  <37.478554, 44.498100, 46.249336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853943, 44.376701, 46.183407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235862, -0.214588, -0.947798,
		0.252280, 0.928356, -0.272966,
		0.938469, -0.303493, -0.164827,
		38.135483, 44.285652, 46.133957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765331, 44.799568, 45.592098>,  <37.478554, 44.498100, 46.249336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765331, 44.799568, 45.592098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.956329, 44.454628, 45.659451>,  <38.070927, 44.247665, 45.699863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.956329, 44.454628, 45.659451>,  <37.765331, 44.799568, 45.592098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956329, 44.454628, 45.659451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196185, -0.291443, -0.936255,
		0.856452, 0.414022, -0.308342,
		0.477494, -0.862349, 0.168382,
		38.099579, 44.195923, 45.709965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296432, 44.815525, 45.102230>,  <37.765331, 44.799568, 45.592098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296432, 44.815525, 45.102230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220821, 44.441925, 45.223495>,  <38.175453, 44.217766, 45.296257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220821, 44.441925, 45.223495>,  <38.296432, 44.815525, 45.102230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220821, 44.441925, 45.223495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273814, -0.246352, -0.929697,
		0.943023, -0.258753, -0.209174,
		-0.189031, -0.934001, 0.303166,
		38.164112, 44.161724, 45.314445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454918, 44.472626, 44.552704>,  <38.296432, 44.815525, 45.102230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454918, 44.472626, 44.552704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.215271, 44.227379, 44.758671>,  <38.071484, 44.080231, 44.882252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.215271, 44.227379, 44.758671>,  <38.454918, 44.472626, 44.552704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215271, 44.227379, 44.758671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464863, -0.257248, -0.847187,
		0.651890, -0.746931, -0.130895,
		-0.599118, -0.613121, 0.514918,
		38.035534, 44.043442, 44.913147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336121, 43.959118, 44.102715>,  <38.454918, 44.472626, 44.552704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336121, 43.959118, 44.102715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074421, 43.883278, 44.395569>,  <37.917404, 43.837772, 44.571281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074421, 43.883278, 44.395569>,  <38.336121, 43.959118, 44.102715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074421, 43.883278, 44.395569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534256, -0.569318, -0.624857,
		0.535289, -0.799955, 0.271178,
		-0.654245, -0.189600, 0.732131,
		37.878147, 43.826397, 44.615208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371605, 43.176064, 44.231640>,  <38.336121, 43.959118, 44.102715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371605, 43.176064, 44.231640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021217, 43.340061, 44.333294>,  <37.810986, 43.438457, 44.394287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021217, 43.340061, 44.333294>,  <38.371605, 43.176064, 44.231640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021217, 43.340061, 44.333294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472608, -0.624021, -0.622286,
		-0.096543, -0.665211, 0.740388,
		-0.875969, 0.409991, 0.254139,
		37.758427, 43.463058, 44.409534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034943, 42.613846, 44.507206>,  <38.371605, 43.176064, 44.231640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034943, 42.613846, 44.507206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774227, 42.890194, 44.382069>,  <37.617798, 43.056004, 44.306988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774227, 42.890194, 44.382069>,  <38.034943, 42.613846, 44.507206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774227, 42.890194, 44.382069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430599, -0.676677, -0.597238,
		-0.624306, -0.254565, 0.738539,
		-0.651788, 0.690873, -0.312837,
		37.578690, 43.097458, 44.288216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343307, 42.243080, 44.425850>,  <38.034943, 42.613846, 44.507206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343307, 42.243080, 44.425850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336040, 42.568199, 44.192944>,  <37.331680, 42.763271, 44.053200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336040, 42.568199, 44.192944>,  <37.343307, 42.243080, 44.425850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336040, 42.568199, 44.192944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318466, -0.556735, -0.767219,
		-0.947760, 0.171493, 0.268963,
		-0.018168, 0.812795, -0.582266,
		37.330589, 42.812038, 44.018265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704052, 42.093426, 44.140392>,  <37.343307, 42.243080, 44.425850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704052, 42.093426, 44.140392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881798, 42.385715, 43.933094>,  <36.988445, 42.561089, 43.808716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881798, 42.385715, 43.933094>,  <36.704052, 42.093426, 44.140392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881798, 42.385715, 43.933094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336124, -0.400236, -0.852545,
		-0.830397, 0.553036, 0.067763,
		0.444367, 0.730727, -0.518243,
		37.015106, 42.604935, 43.777622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086380, 42.193607, 44.434597>,  <36.704052, 42.093426, 44.140392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086380, 42.193607, 44.434597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752548, 42.008553, 44.554230>,  <35.552250, 41.897518, 44.626007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752548, 42.008553, 44.554230>,  <36.086380, 42.193607, 44.434597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752548, 42.008553, 44.554230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147210, 0.335869, 0.930334,
		-0.530860, 0.820462, -0.212203,
		-0.834576, -0.462639, 0.299079,
		35.502174, 41.869762, 44.643955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758820, 42.639336, 44.764980>,  <36.086380, 42.193607, 44.434597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758820, 42.639336, 44.764980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586021, 42.305725, 44.902256>,  <35.482342, 42.105560, 44.984623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586021, 42.305725, 44.902256>,  <35.758820, 42.639336, 44.764980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586021, 42.305725, 44.902256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194762, 0.285281, 0.938447,
		-0.880594, 0.472248, 0.039195,
		-0.431998, -0.834024, 0.343192,
		35.456421, 42.055519, 45.005215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186279, 42.761517, 45.258072>,  <35.758820, 42.639336, 44.764980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186279, 42.761517, 45.258072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264099, 42.380920, 45.353420>,  <35.310791, 42.152561, 45.410629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264099, 42.380920, 45.353420>,  <35.186279, 42.761517, 45.258072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264099, 42.380920, 45.353420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080594, 0.226684, 0.970628,
		-0.977577, -0.208043, -0.032584,
		0.194546, -0.951490, 0.238368,
		35.322464, 42.095474, 45.424931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740948, 42.474194, 45.744442>,  <35.186279, 42.761517, 45.258072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740948, 42.474194, 45.744442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.077072, 42.259308, 45.773502>,  <35.278748, 42.130375, 45.790939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.077072, 42.259308, 45.773502>,  <34.740948, 42.474194, 45.744442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077072, 42.259308, 45.773502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025470, 0.172997, 0.984593,
		-0.541510, -0.825511, 0.159054,
		0.840308, -0.537218, 0.072654,
		35.329166, 42.098141, 45.795300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749325, 42.273212, 46.441990>,  <34.740948, 42.474194, 45.744442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749325, 42.273212, 46.441990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126522, 42.190525, 46.337654>,  <35.352840, 42.140915, 46.275055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126522, 42.190525, 46.337654>,  <34.749325, 42.273212, 46.441990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126522, 42.190525, 46.337654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291542, 0.135054, 0.946976,
		-0.160527, -0.969035, 0.187621,
		0.942992, -0.206715, -0.260835,
		35.409420, 42.128510, 46.259403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040829, 41.823822, 46.978539>,  <34.749325, 42.273212, 46.441990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040829, 41.823822, 46.978539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363743, 41.952080, 46.780354>,  <35.557491, 42.029034, 46.661442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363743, 41.952080, 46.780354>,  <35.040829, 41.823822, 46.978539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363743, 41.952080, 46.780354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493247, 0.094374, 0.864755,
		0.324037, -0.942487, -0.081970,
		0.807284, 0.320644, -0.495459,
		35.605927, 42.048271, 46.631714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685112, 41.458431, 47.229744>,  <35.040829, 41.823822, 46.978539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685112, 41.458431, 47.229744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.786278, 41.810780, 47.069698>,  <35.846977, 42.022190, 46.973671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.786278, 41.810780, 47.069698>,  <35.685112, 41.458431, 47.229744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786278, 41.810780, 47.069698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395275, 0.283389, 0.873755,
		0.883057, -0.379145, -0.276514,
		0.252919, 0.880874, -0.400115,
		35.862152, 42.075043, 46.949665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819592, 40.742504, 47.323261>,  <35.685112, 41.458431, 47.229744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819592, 40.742504, 47.323261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667103, 40.567924, 47.649250>,  <35.575611, 40.463177, 47.844845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667103, 40.567924, 47.649250>,  <35.819592, 40.742504, 47.323261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667103, 40.567924, 47.649250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540557, -0.609913, -0.579486,
		0.749979, -0.661453, -0.003413,
		-0.381221, -0.436448, 0.814975,
		35.552738, 40.436989, 47.893742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973484, 39.981247, 47.264549>,  <35.819592, 40.742504, 47.323261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973484, 39.981247, 47.264549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644035, 40.099327, 47.458248>,  <35.446365, 40.170174, 47.574467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644035, 40.099327, 47.458248>,  <35.973484, 39.981247, 47.264549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644035, 40.099327, 47.458248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558091, -0.573753, -0.599452,
		0.100882, -0.763980, 0.637305,
		-0.823625, 0.295200, 0.484251,
		35.396950, 40.187889, 47.603523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602791, 39.371662, 47.606689>,  <35.973484, 39.981247, 47.264549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602791, 39.371662, 47.606689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.352791, 39.669373, 47.512520>,  <35.202793, 39.848000, 47.456017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.352791, 39.669373, 47.512520>,  <35.602791, 39.371662, 47.606689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352791, 39.669373, 47.512520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593086, -0.648830, -0.476727,
		-0.507570, -0.158324, 0.846939,
		-0.624997, 0.744280, -0.235427,
		35.165291, 39.892658, 47.441891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918327, 39.122185, 47.665905>,  <35.602791, 39.371662, 47.606689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918327, 39.122185, 47.665905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894203, 39.447021, 47.433743>,  <34.879730, 39.641922, 47.294445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894203, 39.447021, 47.433743>,  <34.918327, 39.122185, 47.665905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894203, 39.447021, 47.433743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584002, -0.500266, -0.639278,
		-0.809509, 0.300406, 0.504432,
		-0.060307, 0.812090, -0.580407,
		34.876110, 39.690647, 47.259621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210667, 39.173538, 47.540848>,  <34.918327, 39.122185, 47.665905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210667, 39.173538, 47.540848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380730, 39.383755, 47.246082>,  <34.482769, 39.509884, 47.069221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380730, 39.383755, 47.246082>,  <34.210667, 39.173538, 47.540848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380730, 39.383755, 47.246082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548231, -0.498302, -0.671669,
		-0.720198, 0.689565, 0.076262,
		0.425157, 0.525543, -0.736916,
		34.508278, 39.541416, 47.025009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579105, 39.271492, 47.036999>,  <34.210667, 39.173538, 47.540848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579105, 39.271492, 47.036999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897499, 39.402557, 46.833408>,  <34.088535, 39.481197, 46.711254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897499, 39.402557, 46.833408>,  <33.579105, 39.271492, 47.036999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897499, 39.402557, 46.833408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454499, -0.231845, -0.860046,
		-0.399808, 0.915907, -0.035621,
		0.795980, 0.327663, -0.508972,
		34.136292, 39.500854, 46.680717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250694, 39.655670, 46.482109>,  <33.579105, 39.271492, 47.036999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250694, 39.655670, 46.482109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616467, 39.517082, 46.398415>,  <33.835930, 39.433929, 46.348198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616467, 39.517082, 46.398415>,  <33.250694, 39.655670, 46.482109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616467, 39.517082, 46.398415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335732, -0.360539, -0.870227,
		0.226072, 0.866007, -0.446009,
		0.914426, -0.346474, -0.209238,
		33.890793, 39.413139, 46.335644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.093472, 40.490372, 49.289810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.317669, 40.816772, 49.233269>,  <39.452187, 41.012615, 49.199345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.317669, 40.816772, 49.233269>,  <39.093472, 40.490372, 49.289810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317669, 40.816772, 49.233269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346733, 0.076220, -0.934862,
		-0.752077, 0.572999, 0.325657,
		0.560496, 0.816004, -0.141355,
		39.485817, 41.061573, 49.190861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745251, 41.165421, 48.970192>,  <39.093472, 40.490372, 49.289810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745251, 41.165421, 48.970192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.130711, 41.211983, 48.874008>,  <39.361988, 41.239922, 48.816299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.130711, 41.211983, 48.874008>,  <38.745251, 41.165421, 48.970192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130711, 41.211983, 48.874008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215558, -0.192902, -0.957248,
		-0.157815, 0.974289, -0.160798,
		0.963654, 0.116407, -0.240459,
		39.419807, 41.246906, 48.801872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760773, 41.406677, 48.299114>,  <38.745251, 41.165421, 48.970192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760773, 41.406677, 48.299114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.132088, 41.267376, 48.351261>,  <39.354877, 41.183796, 48.382549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.132088, 41.267376, 48.351261>,  <38.760773, 41.406677, 48.299114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132088, 41.267376, 48.351261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009740, -0.373239, -0.927684,
		0.371730, 0.859890, -0.349866,
		0.928290, -0.348256, 0.130368,
		39.410576, 41.162899, 48.390373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820938, 41.243614, 47.664040>,  <38.760773, 41.406677, 48.299114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820938, 41.243614, 47.664040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151718, 41.078945, 47.817234>,  <39.350185, 40.980145, 47.909153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151718, 41.078945, 47.817234>,  <38.820938, 41.243614, 47.664040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151718, 41.078945, 47.817234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200656, -0.420228, -0.884955,
		0.525252, 0.808663, -0.264903,
		0.826951, -0.411670, 0.382989,
		39.399803, 40.955444, 47.932129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496841, 41.459946, 47.326538>,  <38.820938, 41.243614, 47.664040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496841, 41.459946, 47.326538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.585129, 41.112026, 47.503052>,  <39.638100, 40.903275, 47.608959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.585129, 41.112026, 47.503052>,  <39.496841, 41.459946, 47.326538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585129, 41.112026, 47.503052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088580, -0.468448, -0.879039,
		0.971307, 0.154930, -0.180442,
		0.220717, -0.869801, 0.441283,
		39.651344, 40.851086, 47.635437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892239, 41.153675, 46.785660>,  <39.496841, 41.459946, 47.326538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892239, 41.153675, 46.785660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.786419, 40.873158, 47.050449>,  <39.722927, 40.704849, 47.209324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.786419, 40.873158, 47.050449>,  <39.892239, 41.153675, 46.785660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786419, 40.873158, 47.050449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233106, -0.619571, -0.749529,
		0.935776, -0.352595, 0.000431,
		-0.264547, -0.701290, 0.661972,
		39.707054, 40.662769, 47.249043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188274, 40.544079, 46.538563>,  <39.892239, 41.153675, 46.785660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188274, 40.544079, 46.538563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.900063, 40.415108, 46.784126>,  <39.727135, 40.337727, 46.931465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.900063, 40.415108, 46.784126>,  <40.188274, 40.544079, 46.538563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900063, 40.415108, 46.784126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361720, -0.580565, -0.729454,
		0.591610, -0.747653, 0.301684,
		-0.720525, -0.322427, 0.613909,
		39.683907, 40.318378, 46.968300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293064, 39.822556, 46.699390>,  <40.188274, 40.544079, 46.538563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293064, 39.822556, 46.699390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.907341, 39.927975, 46.709644>,  <39.675907, 39.991226, 46.715797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.907341, 39.927975, 46.709644>,  <40.293064, 39.822556, 46.699390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907341, 39.927975, 46.709644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210198, -0.703009, -0.679408,
		-0.161038, -0.660545, 0.733312,
		-0.964305, 0.263551, 0.025634,
		39.618050, 40.007042, 46.717335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835327, 39.229057, 46.467743>,  <40.293064, 39.822556, 46.699390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835327, 39.229057, 46.467743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.569698, 39.524216, 46.419537>,  <39.410320, 39.701309, 46.390614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.569698, 39.524216, 46.419537>,  <39.835327, 39.229057, 46.467743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569698, 39.524216, 46.419537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384218, -0.475071, -0.791634,
		-0.641395, -0.479396, 0.598993,
		-0.664070, 0.737894, -0.120516,
		39.370476, 39.745583, 46.383381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050365, 38.884216, 46.436699>,  <39.835327, 39.229057, 46.467743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050365, 38.884216, 46.436699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.065289, 39.247684, 46.270363>,  <39.074242, 39.465767, 46.170559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.065289, 39.247684, 46.270363>,  <39.050365, 38.884216, 46.436699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065289, 39.247684, 46.270363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202438, -0.400633, -0.893595,
		-0.978584, 0.117518, 0.169004,
		0.037305, 0.908671, -0.415843,
		39.076481, 39.520287, 46.145611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474312, 38.871513, 46.043171>,  <39.050365, 38.884216, 46.436699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474312, 38.871513, 46.043171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.739994, 39.132271, 45.896820>,  <38.899403, 39.288723, 45.809010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.739994, 39.132271, 45.896820>,  <38.474312, 38.871513, 46.043171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739994, 39.132271, 45.896820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072933, -0.430588, -0.899597,
		-0.743980, 0.624206, -0.238456,
		0.664210, 0.651891, -0.365874,
		38.939259, 39.327839, 45.787056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270226, 39.076317, 45.409073>,  <38.474312, 38.871513, 46.043171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270226, 39.076317, 45.409073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.648746, 39.197372, 45.363590>,  <38.875858, 39.270008, 45.336300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.648746, 39.197372, 45.363590>,  <38.270226, 39.076317, 45.409073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648746, 39.197372, 45.363590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074197, -0.139015, -0.987507,
		-0.314667, 0.942912, -0.109094,
		0.946298, 0.302641, -0.113705,
		38.932636, 39.288166, 45.329479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590370, 39.338024, 45.314297>,  <38.270226, 39.076317, 45.409073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590370, 39.338024, 45.314297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.306095, 39.066998, 45.390011>,  <37.135529, 38.904381, 45.435440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.306095, 39.066998, 45.390011>,  <37.590370, 39.338024, 45.314297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306095, 39.066998, 45.390011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053650, 0.216079, 0.974901,
		-0.701457, 0.703007, -0.117214,
		-0.710690, -0.677562, 0.189286,
		37.092888, 38.863728, 45.446796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222645, 39.615921, 45.893379>,  <37.590370, 39.338024, 45.314297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222645, 39.615921, 45.893379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.132519, 39.227062, 45.867580>,  <37.078442, 38.993748, 45.852100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.132519, 39.227062, 45.867580>,  <37.222645, 39.615921, 45.893379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132519, 39.227062, 45.867580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092718, -0.044504, 0.994697,
		-0.969864, 0.230103, -0.080108,
		-0.225317, -0.972148, -0.064498,
		37.064922, 38.935417, 45.848232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572014, 39.523773, 46.172005>,  <37.222645, 39.615921, 45.893379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572014, 39.523773, 46.172005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.761086, 39.172035, 46.195061>,  <36.874531, 38.960991, 46.208897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.761086, 39.172035, 46.195061>,  <36.572014, 39.523773, 46.172005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761086, 39.172035, 46.195061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338515, -0.120794, 0.933176,
		-0.813621, -0.460608, -0.354769,
		0.472682, -0.879346, 0.057642,
		36.902889, 38.908230, 46.212353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097214, 39.147121, 46.629982>,  <36.572014, 39.523773, 46.172005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097214, 39.147121, 46.629982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.451168, 38.960800, 46.629810>,  <36.663540, 38.849007, 46.629707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.451168, 38.960800, 46.629810>,  <36.097214, 39.147121, 46.629982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451168, 38.960800, 46.629810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155082, -0.295476, 0.942679,
		-0.439234, -0.834097, -0.333701,
		0.884886, -0.465807, -0.000429,
		36.716633, 38.821060, 46.629681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934834, 38.451683, 46.850010>,  <36.097214, 39.147121, 46.629982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934834, 38.451683, 46.850010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.321804, 38.521290, 46.923565>,  <36.553986, 38.563053, 46.967697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.321804, 38.521290, 46.923565>,  <35.934834, 38.451683, 46.850010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321804, 38.521290, 46.923565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147122, -0.204693, 0.967706,
		0.206036, -0.963234, -0.172423,
		0.967422, 0.174015, 0.183887,
		36.612030, 38.573494, 46.978729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004353, 37.914444, 47.233349>,  <35.934834, 38.451683, 46.850010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004353, 37.914444, 47.233349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.311970, 38.165962, 47.279282>,  <36.496540, 38.316875, 47.306839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.311970, 38.165962, 47.279282>,  <36.004353, 37.914444, 47.233349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311970, 38.165962, 47.279282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003715, -0.175245, 0.984518,
		0.639186, -0.757564, -0.132435,
		0.769044, 0.628798, 0.114828,
		36.542683, 38.354603, 47.313728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339184, 37.558540, 47.717506>,  <36.004353, 37.914444, 47.233349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339184, 37.558540, 47.717506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.515373, 37.917625, 47.721359>,  <36.621086, 38.133076, 47.723671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.515373, 37.917625, 47.721359>,  <36.339184, 37.558540, 47.717506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515373, 37.917625, 47.721359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141936, -0.080233, 0.986619,
		0.886475, -0.433212, -0.162758,
		0.440473, 0.897714, 0.009636,
		36.647514, 38.186939, 47.724251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992931, 37.500477, 48.160259>,  <36.339184, 37.558540, 47.717506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992931, 37.500477, 48.160259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.865738, 37.879688, 48.155792>,  <36.789421, 38.107216, 48.153111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.865738, 37.879688, 48.155792>,  <36.992931, 37.500477, 48.160259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865738, 37.879688, 48.155792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026359, 0.002933, 0.999648,
		0.947729, 0.318170, 0.024056,
		-0.317987, 0.948029, -0.011166,
		36.770340, 38.164097, 48.152443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328930, 37.784115, 48.662411>,  <36.992931, 37.500477, 48.160259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328930, 37.784115, 48.662411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.004669, 38.014431, 48.619858>,  <36.810112, 38.152618, 48.594326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.004669, 38.014431, 48.619858>,  <37.328930, 37.784115, 48.662411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004669, 38.014431, 48.619858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067001, 0.089281, 0.993750,
		0.581687, 0.812710, -0.033797,
		-0.810648, 0.575788, -0.106386,
		36.761475, 38.187168, 48.587940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358002, 38.265202, 49.179401>,  <37.328930, 37.784115, 48.662411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358002, 38.265202, 49.179401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.980797, 38.346432, 49.073956>,  <36.754475, 38.395168, 49.010689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.980797, 38.346432, 49.073956>,  <37.358002, 38.265202, 49.179401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980797, 38.346432, 49.073956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236765, 0.147192, 0.960353,
		0.233822, 0.968038, -0.090723,
		-0.943011, 0.203071, -0.263614,
		36.697895, 38.407352, 48.994873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223232, 38.901497, 49.448605>,  <37.358002, 38.265202, 49.179401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223232, 38.901497, 49.448605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.872833, 38.711143, 49.417221>,  <36.662594, 38.596931, 49.398392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.872833, 38.711143, 49.417221>,  <37.223232, 38.901497, 49.448605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872833, 38.711143, 49.417221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284491, 0.378473, 0.880808,
		-0.389468, 0.793910, -0.466928,
		-0.876002, -0.475883, -0.078457,
		36.610031, 38.568378, 49.393684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708996, 39.435925, 49.635841>,  <37.223232, 38.901497, 49.448605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708996, 39.435925, 49.635841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.529747, 39.081554, 49.683704>,  <36.422199, 38.868931, 49.712421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.529747, 39.081554, 49.683704>,  <36.708996, 39.435925, 49.635841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529747, 39.081554, 49.683704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377067, 0.308669, 0.873238,
		-0.810559, 0.346201, -0.472376,
		-0.448124, -0.885928, 0.119654,
		36.395309, 38.815777, 49.719601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993114, 39.527302, 49.926907>,  <36.708996, 39.435925, 49.635841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993114, 39.527302, 49.926907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.115753, 39.152550, 49.994133>,  <36.189335, 38.927696, 50.034470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.115753, 39.152550, 49.994133>,  <35.993114, 39.527302, 49.926907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115753, 39.152550, 49.994133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319858, 0.064895, 0.945240,
		-0.896487, -0.343566, -0.279773,
		0.306596, -0.936884, 0.168070,
		36.207733, 38.871483, 50.044556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380409, 39.122509, 50.315834>,  <35.993114, 39.527302, 49.926907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380409, 39.122509, 50.315834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.738617, 38.967026, 50.402512>,  <35.953541, 38.873737, 50.454517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.738617, 38.967026, 50.402512>,  <35.380409, 39.122509, 50.315834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738617, 38.967026, 50.402512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186613, 0.114058, 0.975790,
		-0.404015, -0.914273, 0.029603,
		0.895515, -0.388710, 0.216696,
		36.007271, 38.850414, 50.467522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321621, 39.819542, 50.556725>,  <35.380409, 39.122509, 50.315834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321621, 39.819542, 50.556725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.387474, 40.214058, 50.561420>,  <35.426987, 40.450768, 50.564240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.387474, 40.214058, 50.561420>,  <35.321621, 39.819542, 50.556725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387474, 40.214058, 50.561420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370325, 0.072839, -0.926042,
		-0.914197, 0.148108, 0.377238,
		0.164632, 0.986285, 0.011741,
		35.436863, 40.509945, 50.564941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686100, 40.252735, 50.423279>,  <35.321621, 39.819542, 50.556725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686100, 40.252735, 50.423279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021381, 40.439873, 50.311188>,  <35.222549, 40.552155, 50.243931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021381, 40.439873, 50.311188>,  <34.686100, 40.252735, 50.423279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021381, 40.439873, 50.311188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311881, -0.010299, -0.950065,
		-0.447369, 0.883751, 0.137279,
		0.838207, 0.467845, -0.280232,
		35.272842, 40.580227, 50.227119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496170, 40.705593, 49.808182>,  <34.686100, 40.252735, 50.423279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496170, 40.705593, 49.808182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.894753, 40.722942, 49.779377>,  <35.133904, 40.733353, 49.762093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.894753, 40.722942, 49.779377>,  <34.496170, 40.705593, 49.808182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894753, 40.722942, 49.779377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080069, 0.228597, -0.970223,
		-0.025614, 0.972555, 0.231261,
		0.996460, 0.043368, -0.072016,
		35.193691, 40.735954, 49.757771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713089, 41.335979, 49.430214>,  <34.496170, 40.705593, 49.808182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713089, 41.335979, 49.430214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.015965, 41.090382, 49.341061>,  <35.197689, 40.943024, 49.287567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.015965, 41.090382, 49.341061>,  <34.713089, 41.335979, 49.430214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015965, 41.090382, 49.341061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052235, 0.397050, -0.916309,
		0.651104, 0.682177, 0.332714,
		0.757189, -0.613992, -0.222887,
		35.243122, 40.906185, 49.274193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230965, 41.790932, 49.041603>,  <34.713089, 41.335979, 49.430214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230965, 41.790932, 49.041603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.279804, 41.401695, 48.963440>,  <35.309109, 41.168152, 48.916542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.279804, 41.401695, 48.963440>,  <35.230965, 41.790932, 49.041603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279804, 41.401695, 48.963440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132988, 0.179070, -0.974807,
		0.983569, 0.145006, -0.107547,
		0.122094, -0.973092, -0.195411,
		35.316433, 41.109768, 48.904816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708767, 41.755211, 48.436562>,  <35.230965, 41.790932, 49.041603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708767, 41.755211, 48.436562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.477791, 41.429642, 48.462158>,  <35.339207, 41.234299, 48.477516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.477791, 41.429642, 48.462158>,  <35.708767, 41.755211, 48.436562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477791, 41.429642, 48.462158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126322, 0.011631, -0.991921,
		0.806603, -0.580857, -0.109532,
		-0.577438, -0.813922, 0.063993,
		35.304558, 41.185467, 48.481358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016800, 41.208950, 47.896515>,  <35.708767, 41.755211, 48.436562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016800, 41.208950, 47.896515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.634773, 41.147629, 47.997978>,  <35.405556, 41.110836, 48.058857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.634773, 41.147629, 47.997978>,  <36.016800, 41.208950, 47.896515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634773, 41.147629, 47.997978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257431, 0.004979, -0.966284,
		0.146866, -0.988167, -0.044219,
		-0.955070, -0.153298, 0.253654,
		35.348251, 41.101639, 48.074074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392582, 41.459446, 47.328033>,  <36.016800, 41.208950, 47.896515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392582, 41.459446, 47.328033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.313667, 41.844616, 47.254444>,  <36.266319, 42.075718, 47.210293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.313667, 41.844616, 47.254444>,  <36.392582, 41.459446, 47.328033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313667, 41.844616, 47.254444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568243, 0.265241, 0.778940,
		0.798860, 0.049138, -0.599507,
		-0.197289, 0.962929, -0.183968,
		36.254482, 42.133495, 47.199253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989326, 41.749039, 47.249386>,  <36.392582, 41.459446, 47.328033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989326, 41.749039, 47.249386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.779594, 42.082218, 47.320122>,  <36.653755, 42.282127, 47.362564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.779594, 42.082218, 47.320122>,  <36.989326, 41.749039, 47.249386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779594, 42.082218, 47.320122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698112, 0.301583, 0.649374,
		0.487565, 0.463939, -0.739622,
		-0.524328, 0.832952, 0.176840,
		36.622295, 42.332104, 47.373173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494846, 42.307724, 47.332180>,  <36.989326, 41.749039, 47.249386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494846, 42.307724, 47.332180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.159534, 42.463684, 47.484631>,  <36.958347, 42.557259, 47.576103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.159534, 42.463684, 47.484631>,  <37.494846, 42.307724, 47.332180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159534, 42.463684, 47.484631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519957, 0.361295, 0.774022,
		0.164088, 0.847022, -0.505597,
		-0.838284, 0.389897, 0.381131,
		36.908051, 42.580654, 47.598969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725594, 42.948196, 47.565514>,  <37.494846, 42.307724, 47.332180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725594, 42.948196, 47.565514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374065, 42.910538, 47.752625>,  <37.163151, 42.887943, 47.864891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.374065, 42.910538, 47.752625>,  <37.725594, 42.948196, 47.565514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374065, 42.910538, 47.752625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372283, 0.477938, 0.795601,
		-0.298468, 0.873334, -0.384973,
		-0.878819, -0.094142, 0.467777,
		37.110420, 42.882294, 47.892956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576874, 43.624241, 47.737766>,  <37.725594, 42.948196, 47.565514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576874, 43.624241, 47.737766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.410175, 43.354382, 47.981461>,  <37.310158, 43.192467, 48.127678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.410175, 43.354382, 47.981461>,  <37.576874, 43.624241, 47.737766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410175, 43.354382, 47.981461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554825, 0.342116, 0.758370,
		-0.720063, 0.654070, 0.231735,
		-0.416747, -0.674648, 0.609240,
		37.285152, 43.151989, 48.164234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275833, 44.065434, 48.244755>,  <37.576874, 43.624241, 47.737766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275833, 44.065434, 48.244755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.305515, 43.700180, 48.405090>,  <37.323322, 43.481026, 48.501293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.305515, 43.700180, 48.405090>,  <37.275833, 44.065434, 48.244755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305515, 43.700180, 48.405090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225511, 0.406902, 0.885198,
		-0.971411, 0.024711, 0.236116,
		0.074202, -0.913138, 0.400842,
		37.327778, 43.426239, 48.525341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903927, 44.127331, 48.799274>,  <37.275833, 44.065434, 48.244755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903927, 44.127331, 48.799274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.116730, 43.795891, 48.869007>,  <37.244411, 43.597027, 48.910847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.116730, 43.795891, 48.869007>,  <36.903927, 44.127331, 48.799274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116730, 43.795891, 48.869007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326817, 0.390876, 0.860469,
		-0.781124, -0.400803, 0.478750,
		0.532011, -0.828597, 0.174334,
		37.276333, 43.547314, 48.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735558, 44.090057, 49.489109>,  <36.903927, 44.127331, 48.799274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735558, 44.090057, 49.489109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.079033, 43.908295, 49.394306>,  <37.285118, 43.799236, 49.337425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.079033, 43.908295, 49.394306>,  <36.735558, 44.090057, 49.489109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079033, 43.908295, 49.394306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436106, 0.404957, 0.803630,
		-0.269195, -0.793428, 0.545900,
		0.858688, -0.454404, -0.237006,
		37.336639, 43.771973, 49.323204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949471, 43.921581, 50.148857>,  <36.735558, 44.090057, 49.489109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949471, 43.921581, 50.148857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.287907, 43.877834, 49.940178>,  <37.490971, 43.851585, 49.814972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.287907, 43.877834, 49.940178>,  <36.949471, 43.921581, 50.148857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287907, 43.877834, 49.940178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521461, 0.372660, 0.767595,
		0.110467, -0.921501, 0.372335,
		0.846094, -0.109365, -0.521694,
		37.541737, 43.845024, 49.783669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.636761, 36.261570, 36.505959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905682, 36.466434, 36.292156>,  <35.067032, 36.589355, 36.163876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905682, 36.466434, 36.292156>,  <34.636761, 36.261570, 36.505959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905682, 36.466434, 36.292156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229861, 0.541921, 0.808385,
		0.703689, -0.666339, 0.246606,
		0.672299, 0.512167, -0.534509,
		35.107372, 36.620083, 36.131805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280308, 36.310337, 36.912697>,  <34.636761, 36.261570, 36.505959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280308, 36.310337, 36.912697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287548, 36.603500, 36.640663>,  <35.291893, 36.779400, 36.477444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287548, 36.603500, 36.640663>,  <35.280308, 36.310337, 36.912697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287548, 36.603500, 36.640663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240020, 0.657120, 0.714551,
		0.970599, -0.176167, -0.164020,
		0.018100, 0.732910, -0.680084,
		35.292976, 36.823372, 36.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743652, 36.769802, 37.208172>,  <35.280308, 36.310337, 36.912697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743652, 36.769802, 37.208172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580288, 37.015324, 36.937927>,  <35.482269, 37.162636, 36.775780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580288, 37.015324, 36.937927>,  <35.743652, 36.769802, 37.208172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580288, 37.015324, 36.937927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061389, 0.756949, 0.650585,
		0.910732, 0.224230, -0.346825,
		-0.408410, 0.613799, -0.675612,
		35.457764, 37.199463, 36.735245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189724, 37.301037, 37.137089>,  <35.743652, 36.769802, 37.208172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189724, 37.301037, 37.137089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829567, 37.433224, 37.023888>,  <35.613472, 37.512535, 36.955967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829567, 37.433224, 37.023888>,  <36.189724, 37.301037, 37.137089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829567, 37.433224, 37.023888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068839, 0.750462, 0.657319,
		0.429602, 0.572362, -0.698458,
		-0.900390, 0.330467, -0.282999,
		35.559448, 37.532364, 36.938988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201618, 37.998154, 37.215126>,  <36.189724, 37.301037, 37.137089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201618, 37.998154, 37.215126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806061, 37.940296, 37.201431>,  <35.568726, 37.905582, 37.193214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806061, 37.940296, 37.201431>,  <36.201618, 37.998154, 37.215126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806061, 37.940296, 37.201431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105712, 0.522469, 0.846080,
		-0.104493, 0.840300, -0.531956,
		-0.988891, -0.144644, -0.034235,
		35.509392, 37.896904, 37.191162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912785, 38.696747, 37.407818>,  <36.201618, 37.998154, 37.215126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912785, 38.696747, 37.407818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620014, 38.430035, 37.463940>,  <35.444351, 38.270008, 37.497612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620014, 38.430035, 37.463940>,  <35.912785, 38.696747, 37.407818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620014, 38.430035, 37.463940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201970, 0.408957, 0.889923,
		-0.650763, 0.623021, -0.433996,
		-0.731926, -0.666783, 0.140302,
		35.400436, 38.230000, 37.506031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286232, 39.153286, 37.446930>,  <35.912785, 38.696747, 37.407818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286232, 39.153286, 37.446930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249802, 38.800900, 37.632664>,  <35.227943, 38.589466, 37.744102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249802, 38.800900, 37.632664>,  <35.286232, 39.153286, 37.446930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249802, 38.800900, 37.632664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258122, 0.471218, 0.843402,
		-0.961810, -0.043043, -0.270312,
		-0.091074, -0.880966, 0.464333,
		35.222481, 38.536610, 37.771965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654694, 39.148876, 37.629005>,  <35.286232, 39.153286, 37.446930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654694, 39.148876, 37.629005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826744, 38.864254, 37.851238>,  <34.929974, 38.693481, 37.984577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826744, 38.864254, 37.851238>,  <34.654694, 39.148876, 37.629005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826744, 38.864254, 37.851238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326641, 0.451062, 0.830571,
		-0.841603, -0.538729, -0.038410,
		0.430127, -0.711558, 0.555586,
		34.955784, 38.650787, 38.017914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144314, 39.034389, 38.108265>,  <34.654694, 39.148876, 37.629005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144314, 39.034389, 38.108265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472820, 38.870434, 38.267017>,  <34.669926, 38.772060, 38.362267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472820, 38.870434, 38.267017>,  <34.144314, 39.034389, 38.108265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472820, 38.870434, 38.267017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203771, 0.439013, 0.875069,
		-0.532916, -0.799536, 0.277023,
		0.821266, -0.409889, 0.396879,
		34.719200, 38.747467, 38.386082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862537, 38.805611, 38.780685>,  <34.144314, 39.034389, 38.108265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862537, 38.805611, 38.780685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259876, 38.833710, 38.817192>,  <34.498280, 38.850567, 38.839096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259876, 38.833710, 38.817192>,  <33.862537, 38.805611, 38.780685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259876, 38.833710, 38.817192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113416, 0.459019, 0.881157,
		0.020003, -0.885645, 0.463932,
		0.993346, 0.070243, 0.091264,
		34.557880, 38.854782, 38.844570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967167, 38.610435, 39.484715>,  <33.862537, 38.805611, 38.780685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967167, 38.610435, 39.484715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317600, 38.772160, 39.379639>,  <34.527863, 38.869194, 39.316593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317600, 38.772160, 39.379639>,  <33.967167, 38.610435, 39.484715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317600, 38.772160, 39.379639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076961, 0.420568, 0.903991,
		0.475973, -0.812190, 0.337337,
		0.876086, 0.404313, -0.262687,
		34.580425, 38.893452, 39.300835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487358, 38.335358, 39.893429>,  <33.967167, 38.610435, 39.484715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487358, 38.335358, 39.893429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546692, 38.705948, 39.755070>,  <34.582291, 38.928303, 39.672054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546692, 38.705948, 39.755070>,  <34.487358, 38.335358, 39.893429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546692, 38.705948, 39.755070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191712, 0.370070, 0.909007,
		0.970177, -0.068521, 0.232509,
		0.148331, 0.926473, -0.345897,
		34.591190, 38.983891, 39.651302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240173, 37.933414, 40.445972>,  <34.487358, 38.335358, 39.893429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240173, 37.933414, 40.445972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848179, 37.865555, 40.487617>,  <33.612980, 37.824841, 40.512604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848179, 37.865555, 40.487617>,  <34.240173, 37.933414, 40.445972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848179, 37.865555, 40.487617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027369, -0.403232, -0.914688,
		0.197158, -0.899235, 0.390520,
		-0.979990, -0.169650, 0.104112,
		33.554180, 37.814659, 40.518852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172626, 37.295578, 40.124031>,  <34.240173, 37.933414, 40.445972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172626, 37.295578, 40.124031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805515, 37.452854, 40.101833>,  <33.585247, 37.547222, 40.088512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805515, 37.452854, 40.101833>,  <34.172626, 37.295578, 40.124031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805515, 37.452854, 40.101833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214757, -0.609043, -0.763509,
		-0.334006, -0.688814, 0.643409,
		-0.917780, 0.393193, -0.055496,
		33.530182, 37.570812, 40.085186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837925, 36.736683, 39.876854>,  <34.172626, 37.295578, 40.124031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837925, 36.736683, 39.876854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566582, 37.024269, 39.816307>,  <33.403774, 37.196823, 39.779980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566582, 37.024269, 39.816307>,  <33.837925, 36.736683, 39.876854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566582, 37.024269, 39.816307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494132, -0.598897, -0.630203,
		-0.543747, -0.352712, 0.761533,
		-0.678360, 0.718969, -0.151362,
		33.363075, 37.239960, 39.770897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161938, 36.441887, 39.937790>,  <33.837925, 36.736683, 39.876854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161938, 36.441887, 39.937790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151379, 36.765888, 39.703457>,  <33.145042, 36.960289, 39.562855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151379, 36.765888, 39.703457>,  <33.161938, 36.441887, 39.937790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151379, 36.765888, 39.703457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417271, -0.541472, -0.729858,
		-0.908399, 0.225189, 0.352280,
		-0.026394, 0.809999, -0.585837,
		33.143459, 37.008888, 39.527706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542816, 36.417679, 39.675816>,  <33.161938, 36.441887, 39.937790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542816, 36.417679, 39.675816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749123, 36.660393, 39.433891>,  <32.872906, 36.806023, 39.288738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749123, 36.660393, 39.433891>,  <32.542816, 36.417679, 39.675816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749123, 36.660393, 39.433891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375734, -0.474226, -0.796200,
		-0.769939, 0.637902, -0.016600,
		0.515769, 0.606788, -0.604806,
		32.903854, 36.842430, 39.252449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094887, 36.625031, 39.067600>,  <32.542816, 36.417679, 39.675816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094887, 36.625031, 39.067600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445568, 36.718987, 38.899685>,  <32.655975, 36.775360, 38.798935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445568, 36.718987, 38.899685>,  <32.094887, 36.625031, 39.067600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445568, 36.718987, 38.899685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282986, -0.453842, -0.844953,
		-0.388990, 0.859565, -0.331413,
		0.876702, 0.234893, -0.419785,
		32.708580, 36.789455, 38.773750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958126, 36.845409, 38.442093>,  <32.094887, 36.625031, 39.067600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958126, 36.845409, 38.442093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348148, 36.764530, 38.405468>,  <32.582161, 36.716003, 38.383492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348148, 36.764530, 38.405468>,  <31.958126, 36.845409, 38.442093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348148, 36.764530, 38.405468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164385, -0.380629, -0.909999,
		0.149147, 0.902351, -0.404373,
		0.975055, -0.202196, -0.091564,
		32.640663, 36.703873, 38.377998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035954, 36.892723, 37.768040>,  <31.958126, 36.845409, 38.442093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035954, 36.892723, 37.768040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369778, 36.695972, 37.867287>,  <32.570072, 36.577923, 37.926834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369778, 36.695972, 37.867287>,  <32.035954, 36.892723, 37.768040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369778, 36.695972, 37.867287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128237, -0.611444, -0.780828,
		0.535781, 0.619832, -0.573365,
		0.834562, -0.491879, 0.248115,
		32.620148, 36.548409, 37.941723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456253, 36.940704, 37.146370>,  <32.035954, 36.892723, 37.768040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456253, 36.940704, 37.146370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583031, 36.619183, 37.347744>,  <32.659096, 36.426270, 37.468567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583031, 36.619183, 37.347744>,  <32.456253, 36.940704, 37.146370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583031, 36.619183, 37.347744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010449, -0.533728, -0.845592,
		0.948387, 0.262743, -0.177559,
		0.316941, -0.803804, 0.503435,
		32.678112, 36.378040, 37.498775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746334, 36.570885, 36.633472>,  <32.456253, 36.940704, 37.146370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746334, 36.570885, 36.633472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741440, 36.298748, 36.926590>,  <32.738503, 36.135464, 37.102459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741440, 36.298748, 36.926590>,  <32.746334, 36.570885, 36.633472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741440, 36.298748, 36.926590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014806, -0.732641, -0.680454,
		0.999815, -0.019175, -0.001111,
		-0.012234, -0.680345, 0.732789,
		32.737770, 36.094643, 37.146427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290268, 36.226406, 36.552174>,  <32.746334, 36.570885, 36.633472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290268, 36.226406, 36.552174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064232, 35.986736, 36.779037>,  <32.928612, 35.842934, 36.915154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064232, 35.986736, 36.779037>,  <33.290268, 36.226406, 36.552174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064232, 35.986736, 36.779037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010777, -0.692740, -0.721107,
		0.824960, -0.401377, 0.397916,
		-0.565088, -0.599173, 0.567157,
		32.894707, 35.806984, 36.949184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517822, 35.636223, 36.522606>,  <33.290268, 36.226406, 36.552174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517822, 35.636223, 36.522606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149834, 35.525291, 36.633415>,  <32.929039, 35.458733, 36.699902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149834, 35.525291, 36.633415>,  <33.517822, 35.636223, 36.522606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149834, 35.525291, 36.633415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017934, -0.676203, -0.736497,
		0.391574, -0.682525, 0.617114,
		-0.919972, -0.277326, 0.277024,
		32.873840, 35.442093, 36.716522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127338, 35.777328, 36.070786>,  <33.517822, 35.636223, 36.522606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127338, 35.777328, 36.070786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924179, 35.467621, 36.221813>,  <33.802284, 35.281796, 36.312431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924179, 35.467621, 36.221813>,  <34.127338, 35.777328, 36.070786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924179, 35.467621, 36.221813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636499, -0.632653, -0.441156,
		0.580441, 0.016261, 0.814140,
		-0.507894, -0.774265, 0.377568,
		33.771812, 35.235340, 36.335083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675739, 35.243519, 36.179462>,  <34.127338, 35.777328, 36.070786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675739, 35.243519, 36.179462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331387, 35.049282, 36.240234>,  <34.124775, 34.932739, 36.276699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331387, 35.049282, 36.240234>,  <34.675739, 35.243519, 36.179462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331387, 35.049282, 36.240234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405076, -0.834794, -0.372869,
		0.307896, -0.259451, 0.915361,
		-0.860879, -0.485596, 0.151933,
		34.073124, 34.903603, 36.285812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793041, 34.639389, 36.533188>,  <34.675739, 35.243519, 36.179462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793041, 34.639389, 36.533188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450272, 34.569340, 36.339279>,  <34.244610, 34.527309, 36.222935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450272, 34.569340, 36.339279>,  <34.793041, 34.639389, 36.533188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450272, 34.569340, 36.339279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314100, -0.923128, -0.221757,
		-0.408674, -0.342297, 0.846060,
		-0.856929, -0.175121, -0.484774,
		34.193192, 34.516804, 36.193848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965580, 33.906433, 36.347160>,  <34.793041, 34.639389, 36.533188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965580, 33.906433, 36.347160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065758, 34.179688, 36.621563>,  <35.125866, 34.343639, 36.786205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065758, 34.179688, 36.621563>,  <34.965580, 33.906433, 36.347160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065758, 34.179688, 36.621563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030203, -0.702733, 0.710813,
		0.967660, -0.198738, -0.155362,
		0.250443, 0.683133, 0.686009,
		35.140892, 34.384628, 36.827366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659729, 33.526051, 36.451427>,  <34.965580, 33.906433, 36.347160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659729, 33.526051, 36.451427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015636, 33.675419, 36.346458>,  <36.229179, 33.765041, 36.283478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015636, 33.675419, 36.346458>,  <35.659729, 33.526051, 36.451427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015636, 33.675419, 36.346458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237292, 0.112667, 0.964883,
		0.389874, -0.920795, 0.011638,
		0.889770, 0.373421, -0.262423,
		36.282566, 33.787445, 36.267731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966724, 33.283932, 36.988628>,  <35.659729, 33.526051, 36.451427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966724, 33.283932, 36.988628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189854, 33.574070, 36.827282>,  <36.323730, 33.748154, 36.730476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189854, 33.574070, 36.827282>,  <35.966724, 33.283932, 36.988628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189854, 33.574070, 36.827282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345003, 0.239372, 0.907565,
		0.754856, -0.645421, -0.116722,
		0.557822, 0.725350, -0.403364,
		36.357201, 33.791676, 36.706272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594051, 33.210064, 37.348427>,  <35.966724, 33.283932, 36.988628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594051, 33.210064, 37.348427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569515, 33.586735, 37.216072>,  <36.554794, 33.812737, 37.136658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569515, 33.586735, 37.216072>,  <36.594051, 33.210064, 37.348427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569515, 33.586735, 37.216072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399329, 0.326976, 0.856518,
		0.914753, -0.079591, -0.396095,
		-0.061342, 0.941675, -0.330886,
		36.551113, 33.869236, 37.116806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270241, 33.551407, 37.614651>,  <36.594051, 33.210064, 37.348427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270241, 33.551407, 37.614651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015163, 33.842186, 37.512749>,  <36.862118, 34.016651, 37.451607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015163, 33.842186, 37.512749>,  <37.270241, 33.551407, 37.614651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015163, 33.842186, 37.512749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348068, 0.566969, 0.746588,
		0.687164, 0.387424, -0.614579,
		-0.637694, 0.726944, -0.254750,
		36.823856, 34.060268, 37.436325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702717, 34.235794, 37.705078>,  <37.270241, 33.551407, 37.614651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702717, 34.235794, 37.705078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315403, 34.335701, 37.702431>,  <37.083015, 34.395645, 37.700840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315403, 34.335701, 37.702431>,  <37.702717, 34.235794, 37.705078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315403, 34.335701, 37.702431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193435, 0.766152, 0.612857,
		0.158144, 0.592139, -0.790166,
		-0.968284, 0.249765, -0.006622,
		37.024918, 34.410629, 37.700443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645947, 35.099224, 37.788548>,  <37.702717, 34.235794, 37.705078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645947, 35.099224, 37.788548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306198, 34.930782, 37.915821>,  <37.102348, 34.829720, 37.992184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306198, 34.930782, 37.915821>,  <37.645947, 35.099224, 37.788548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306198, 34.930782, 37.915821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058934, 0.523412, 0.850039,
		-0.524492, 0.740752, -0.419755,
		-0.849373, -0.421101, 0.318181,
		37.051388, 34.804451, 38.011276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251175, 35.696007, 37.856964>,  <37.645947, 35.099224, 37.788548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251175, 35.696007, 37.856964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082039, 35.413544, 38.084137>,  <36.980556, 35.244068, 38.220440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082039, 35.413544, 38.084137>,  <37.251175, 35.696007, 37.856964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082039, 35.413544, 38.084137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288438, 0.699002, 0.654370,
		-0.859074, 0.112881, -0.499250,
		-0.422842, -0.706155, 0.567935,
		36.955185, 35.201698, 38.254517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606701, 35.936867, 38.051975>,  <37.251175, 35.696007, 37.856964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606701, 35.936867, 38.051975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709763, 35.667057, 38.328709>,  <36.771599, 35.505173, 38.494747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709763, 35.667057, 38.328709>,  <36.606701, 35.936867, 38.051975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709763, 35.667057, 38.328709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302922, 0.623518, 0.720739,
		-0.917524, -0.395275, -0.043674,
		0.257658, -0.674525, 0.691830,
		36.787060, 35.464699, 38.536259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065639, 36.076569, 38.580402>,  <36.606701, 35.936867, 38.051975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065639, 36.076569, 38.580402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356918, 35.862400, 38.751545>,  <36.531685, 35.733898, 38.854229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356918, 35.862400, 38.751545>,  <36.065639, 36.076569, 38.580402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356918, 35.862400, 38.751545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153335, 0.481169, 0.863114,
		-0.667997, -0.694120, 0.268286,
		0.728195, -0.535420, 0.427852,
		36.575378, 35.701775, 38.879902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814075, 35.897827, 39.179962>,  <36.065639, 36.076569, 38.580402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814075, 35.897827, 39.179962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205582, 35.861507, 39.253468>,  <36.440487, 35.839714, 39.297569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205582, 35.861507, 39.253468>,  <35.814075, 35.897827, 39.179962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205582, 35.861507, 39.253468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137990, 0.371031, 0.918311,
		-0.151567, -0.924170, 0.350623,
		0.978767, -0.090803, 0.183763,
		36.499210, 35.834267, 39.308598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778416, 35.630100, 39.786316>,  <35.814075, 35.897827, 39.179962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778416, 35.630100, 39.786316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153271, 35.765156, 39.751053>,  <36.378185, 35.846191, 39.729893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153271, 35.765156, 39.751053>,  <35.778416, 35.630100, 39.786316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153271, 35.765156, 39.751053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017261, 0.207476, 0.978088,
		0.348535, -0.918124, 0.188606,
		0.937136, 0.337642, -0.088160,
		36.434410, 35.866447, 39.724606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128704, 35.398552, 40.420181>,  <35.778416, 35.630100, 39.786316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128704, 35.398552, 40.420181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369740, 35.676773, 40.263676>,  <36.514362, 35.843708, 40.169773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369740, 35.676773, 40.263676>,  <36.128704, 35.398552, 40.420181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369740, 35.676773, 40.263676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243495, 0.306655, 0.920148,
		0.759998, -0.649743, 0.015422,
		0.602589, 0.695555, -0.391266,
		36.550518, 35.885441, 40.146297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775299, 35.399643, 40.847130>,  <36.128704, 35.398552, 40.420181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775299, 35.399643, 40.847130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717014, 35.750061, 40.663254>,  <36.682045, 35.960312, 40.552929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717014, 35.750061, 40.663254>,  <36.775299, 35.399643, 40.847130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717014, 35.750061, 40.663254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265038, 0.482229, 0.834991,
		0.953165, -0.000166, -0.302452,
		-0.145712, 0.876045, -0.459688,
		36.673302, 36.012875, 40.525349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360294, 35.764454, 41.058941>,  <36.775299, 35.399643, 40.847130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360294, 35.764454, 41.058941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063770, 36.010910, 40.952488>,  <36.885857, 36.158783, 40.888615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063770, 36.010910, 40.952488>,  <37.360294, 35.764454, 41.058941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063770, 36.010910, 40.952488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145329, 0.534477, 0.832595,
		0.655239, 0.578535, -0.485757,
		-0.741311, 0.616143, -0.266132,
		36.841377, 36.195751, 40.872650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633293, 36.494499, 41.156429>,  <37.360294, 35.764454, 41.058941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633293, 36.494499, 41.156429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236942, 36.543568, 41.134098>,  <36.999130, 36.573009, 41.120697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236942, 36.543568, 41.134098>,  <37.633293, 36.494499, 41.156429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236942, 36.543568, 41.134098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024523, 0.571436, 0.820280,
		0.132526, 0.811427, -0.569231,
		-0.990876, 0.122667, -0.055832,
		36.939678, 36.580368, 41.117348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531788, 37.284256, 41.101299>,  <37.633293, 36.494499, 41.156429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531788, 37.284256, 41.101299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179409, 37.148636, 41.233345>,  <36.967983, 37.067265, 41.312572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179409, 37.148636, 41.233345>,  <37.531788, 37.284256, 41.101299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179409, 37.148636, 41.233345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033026, 0.739959, 0.671840,
		-0.472059, 0.580954, -0.663063,
		-0.880948, -0.339047, 0.330118,
		36.915123, 37.046921, 41.332382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100998, 37.967152, 41.157131>,  <37.531788, 37.284256, 41.101299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100998, 37.967152, 41.157131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915104, 37.688656, 41.375954>,  <36.803566, 37.521557, 41.507248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915104, 37.688656, 41.375954>,  <37.100998, 37.967152, 41.157131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915104, 37.688656, 41.375954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177195, 0.678455, 0.712952,
		-0.867539, 0.234399, -0.438673,
		-0.464735, -0.696244, 0.547052,
		36.775684, 37.479782, 41.540070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583408, 38.359295, 41.554474>,  <37.100998, 37.967152, 41.157131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583408, 38.359295, 41.554474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597771, 38.013020, 41.754189>,  <36.606388, 37.805252, 41.874016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597771, 38.013020, 41.754189>,  <36.583408, 38.359295, 41.554474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597771, 38.013020, 41.754189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069657, 0.496226, 0.865395,
		-0.996925, -0.065856, -0.042482,
		0.035911, -0.865692, 0.499287,
		36.608543, 37.753311, 41.903976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919968, 38.359707, 42.045914>,  <36.583408, 38.359295, 41.554474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919968, 38.359707, 42.045914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203766, 38.122803, 42.198669>,  <36.374046, 37.980659, 42.290321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203766, 38.122803, 42.198669>,  <35.919968, 38.359707, 42.045914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203766, 38.122803, 42.198669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012204, 0.531502, 0.846969,
		-0.704603, -0.605582, 0.369871,
		0.709497, -0.592263, 0.381888,
		36.416615, 37.945126, 42.313236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679752, 38.159286, 42.716702>,  <35.919968, 38.359707, 42.045914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679752, 38.159286, 42.716702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073841, 38.093643, 42.736313>,  <36.310295, 38.054256, 42.748081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073841, 38.093643, 42.736313>,  <35.679752, 38.159286, 42.716702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073841, 38.093643, 42.736313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007911, 0.242358, 0.970155,
		-0.171093, -0.956207, 0.237478,
		0.985223, -0.164108, 0.049031,
		36.369408, 38.044411, 42.751022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817844, 37.858620, 43.417370>,  <35.679752, 38.159286, 42.716702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817844, 37.858620, 43.417370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188324, 37.981266, 43.329601>,  <36.410610, 38.054855, 43.276939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188324, 37.981266, 43.329601>,  <35.817844, 37.858620, 43.417370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188324, 37.981266, 43.329601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186822, 0.132290, 0.973446,
		0.327503, -0.942595, 0.065243,
		0.926197, 0.306617, -0.219422,
		36.466183, 38.073250, 43.263775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154053, 37.589237, 43.939117>,  <35.817844, 37.858620, 43.417370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154053, 37.589237, 43.939117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409348, 37.856667, 43.786457>,  <36.562527, 38.017124, 43.694862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409348, 37.856667, 43.786457>,  <36.154053, 37.589237, 43.939117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409348, 37.856667, 43.786457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315752, 0.224792, 0.921829,
		0.702106, -0.708853, -0.067634,
		0.638238, 0.668577, -0.381649,
		36.600819, 38.057240, 43.671963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783550, 37.389099, 44.194782>,  <36.154053, 37.589237, 43.939117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783550, 37.389099, 44.194782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816067, 37.773647, 44.089584>,  <36.835575, 38.004375, 44.026466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816067, 37.773647, 44.089584>,  <36.783550, 37.389099, 44.194782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816067, 37.773647, 44.089584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179512, 0.245434, 0.952648,
		0.980391, -0.124652, -0.152626,
		0.081290, 0.961366, -0.262998,
		36.840454, 38.062057, 44.010685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317207, 37.544453, 44.570415>,  <36.783550, 37.389099, 44.194782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317207, 37.544453, 44.570415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120564, 37.878460, 44.471565>,  <37.002579, 38.078865, 44.412254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120564, 37.878460, 44.471565>,  <37.317207, 37.544453, 44.570415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120564, 37.878460, 44.471565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266226, 0.414315, 0.870326,
		0.829123, 0.362067, -0.425984,
		-0.491608, 0.835015, -0.247127,
		36.973080, 38.128963, 44.397427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725075, 38.071865, 44.748375>,  <37.317207, 37.544453, 44.570415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725075, 38.071865, 44.748375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382168, 38.275322, 44.716419>,  <37.176426, 38.397396, 44.697247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382168, 38.275322, 44.716419>,  <37.725075, 38.071865, 44.748375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382168, 38.275322, 44.716419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147049, 0.390575, 0.908751,
		0.493430, 0.767292, -0.409621,
		-0.857265, 0.508639, -0.079892,
		37.124989, 38.427914, 44.692451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876301, 38.815777, 44.825558>,  <37.725075, 38.071865, 44.748375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876301, 38.815777, 44.825558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490635, 38.768608, 44.920612>,  <37.259235, 38.740307, 44.977646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490635, 38.768608, 44.920612>,  <37.876301, 38.815777, 44.825558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490635, 38.768608, 44.920612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204873, 0.238108, 0.949385,
		-0.168539, 0.964053, -0.205416,
		-0.964169, -0.117924, 0.237639,
		37.201385, 38.733231, 44.991905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208218, 39.537952, 44.802753>,  <37.876301, 38.815777, 44.825558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208218, 39.537952, 44.802753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597565, 39.448376, 44.822380>,  <38.831173, 39.394630, 44.834156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597565, 39.448376, 44.822380>,  <38.208218, 39.537952, 44.802753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597565, 39.448376, 44.822380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041154, -0.039850, -0.998358,
		0.225533, 0.973787, -0.029572,
		0.973366, -0.223945, 0.049063,
		38.889576, 39.381191, 44.837097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597748, 39.901535, 44.260681>,  <38.208218, 39.537952, 44.802753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597748, 39.901535, 44.260681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847149, 39.604626, 44.358883>,  <38.996788, 39.426479, 44.417805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847149, 39.604626, 44.358883>,  <38.597748, 39.901535, 44.260681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847149, 39.604626, 44.358883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105279, -0.231447, -0.967134,
		0.774702, 0.628855, -0.066161,
		0.623500, -0.742276, 0.245507,
		39.034199, 39.381943, 44.432533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101978, 39.914864, 43.700558>,  <38.597748, 39.901535, 44.260681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101978, 39.914864, 43.700558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144192, 39.544270, 43.845055>,  <39.169518, 39.321915, 43.931751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144192, 39.544270, 43.845055>,  <39.101978, 39.914864, 43.700558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144192, 39.544270, 43.845055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307369, -0.315088, -0.897911,
		0.945721, 0.205790, 0.251520,
		0.105530, -0.926483, 0.361238,
		39.175850, 39.266323, 43.953426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778229, 39.690842, 43.491970>,  <39.101978, 39.914864, 43.700558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778229, 39.690842, 43.491970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601562, 39.341396, 43.573685>,  <39.495564, 39.131729, 43.622715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601562, 39.341396, 43.573685>,  <39.778229, 39.690842, 43.491970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601562, 39.341396, 43.573685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352805, -0.378472, -0.855738,
		0.824902, -0.305873, 0.475372,
		-0.441662, -0.873613, 0.204288,
		39.469063, 39.079311, 43.634972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323860, 39.127216, 43.529148>,  <39.778229, 39.690842, 43.491970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323860, 39.127216, 43.529148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970249, 38.958420, 43.448730>,  <39.758083, 38.857143, 43.400478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970249, 38.958420, 43.448730>,  <40.323860, 39.127216, 43.529148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970249, 38.958420, 43.448730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396388, -0.448823, -0.800897,
		0.247739, -0.787706, 0.564044,
		-0.884026, -0.421993, -0.201046,
		39.705040, 38.831821, 43.388416>
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
