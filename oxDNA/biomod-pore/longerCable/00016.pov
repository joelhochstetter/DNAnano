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
	<24.262226, 35.519615, 35.110283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236427, 35.123360, 35.158401>,  <24.220947, 34.885605, 35.187275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236427, 35.123360, 35.158401>,  <24.262226, 35.519615, 35.110283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236427, 35.123360, 35.158401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497608, -0.136420, -0.856607,
		0.865001, 0.004612, 0.501750,
		-0.064498, -0.990640, 0.120299,
		24.217077, 34.826168, 35.194492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.120224, 35.669601, 34.410240>,  <24.262226, 35.519615, 35.110283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.120224, 35.669601, 34.410240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363695, 35.858780, 34.665058>,  <24.509779, 35.972286, 34.817951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363695, 35.858780, 34.665058>,  <24.120224, 35.669601, 34.410240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363695, 35.858780, 34.665058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130261, -0.732453, 0.668240,
		0.782650, -0.489726, -0.384223,
		0.608680, 0.472948, 0.637047,
		24.546299, 36.000664, 34.856171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.796385, 35.397717, 34.627213>,  <24.120224, 35.669601, 34.410240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.796385, 35.397717, 34.627213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727461, 35.618011, 34.953892>,  <24.686106, 35.750187, 35.149899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727461, 35.618011, 34.953892>,  <24.796385, 35.397717, 34.627213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.727461, 35.618011, 34.953892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207046, -0.790329, 0.576639,
		0.963037, 0.268455, 0.022154,
		-0.172311, 0.550738, 0.816698,
		24.675768, 35.783234, 35.198902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403431, 35.402157, 35.101360>,  <24.796385, 35.397717, 34.627213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403431, 35.402157, 35.101360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048601, 35.453434, 35.278748>,  <24.835703, 35.484200, 35.385181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048601, 35.453434, 35.278748>,  <25.403431, 35.402157, 35.101360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048601, 35.453434, 35.278748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210902, -0.742012, 0.636348,
		0.410635, 0.658016, 0.631184,
		-0.887074, 0.128189, 0.443473,
		24.782478, 35.491890, 35.411789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753330, 35.225037, 34.465660>,  <25.403431, 35.402157, 35.101360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753330, 35.225037, 34.465660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511803, 35.524933, 34.573952>,  <25.366886, 35.704872, 34.638927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511803, 35.524933, 34.573952>,  <25.753330, 35.225037, 34.465660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511803, 35.524933, 34.573952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482079, -0.072988, -0.873082,
		-0.634827, -0.657692, 0.405506,
		-0.603817, 0.749742, 0.270724,
		25.330658, 35.749855, 34.655170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499090, 35.619484, 34.480625>,  <25.753330, 35.225037, 34.465660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499090, 35.619484, 34.480625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751263, 35.383114, 34.279285>,  <26.902567, 35.241291, 34.158482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751263, 35.383114, 34.279285>,  <26.499090, 35.619484, 34.480625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751263, 35.383114, 34.279285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715475, -0.693866, -0.081518,
		-0.301084, 0.411524, -0.860231,
		0.630432, -0.590930, -0.503347,
		26.940392, 35.205833, 34.128281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082869, 35.151093, 34.663486>,  <26.499090, 35.619484, 34.480625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082869, 35.151093, 34.663486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404125, 35.252804, 34.879005>,  <27.596880, 35.313831, 35.008316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404125, 35.252804, 34.879005>,  <27.082869, 35.151093, 34.663486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404125, 35.252804, 34.879005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429131, 0.380439, -0.819215,
		-0.413290, 0.889161, 0.196427,
		0.803143, 0.254280, 0.538799,
		27.645067, 35.329086, 35.040646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199179, 35.921329, 34.722218>,  <27.082869, 35.151093, 34.663486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199179, 35.921329, 34.722218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508497, 35.667797, 34.715672>,  <27.694088, 35.515678, 34.711742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508497, 35.667797, 34.715672>,  <27.199179, 35.921329, 34.722218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508497, 35.667797, 34.715672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293971, 0.381287, -0.876471,
		0.561780, 0.672959, 0.481176,
		0.773295, -0.633835, -0.016369,
		27.740486, 35.477646, 34.710762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811142, 36.291462, 34.573967>,  <27.199179, 35.921329, 34.722218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811142, 36.291462, 34.573967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895096, 35.921406, 34.447441>,  <27.945469, 35.699371, 34.371525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895096, 35.921406, 34.447441>,  <27.811142, 36.291462, 34.573967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895096, 35.921406, 34.447441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278119, 0.366649, -0.887817,
		0.937336, 0.098365, 0.334254,
		0.209884, -0.925145, -0.316316,
		27.958061, 35.643864, 34.352547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510080, 36.337555, 34.259197>,  <27.811142, 36.291462, 34.573967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510080, 36.337555, 34.259197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306852, 36.021030, 34.123142>,  <28.184916, 35.831116, 34.041512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306852, 36.021030, 34.123142>,  <28.510080, 36.337555, 34.259197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306852, 36.021030, 34.123142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394115, 0.137550, -0.908710,
		0.765859, -0.595738, 0.241983,
		-0.508068, -0.791313, -0.340134,
		28.154432, 35.783638, 34.021103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980646, 36.065971, 33.632641>,  <28.510080, 36.337555, 34.259197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980646, 36.065971, 33.632641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618149, 35.900326, 33.598633>,  <28.400650, 35.800938, 33.578228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618149, 35.900326, 33.598633>,  <28.980646, 36.065971, 33.632641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618149, 35.900326, 33.598633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034390, 0.272659, -0.961496,
		0.421355, -0.868425, -0.261337,
		-0.906243, -0.414119, -0.085021,
		28.346275, 35.776089, 33.573128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810879, 35.653996, 32.948254>,  <28.980646, 36.065971, 33.632641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810879, 35.653996, 32.948254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465637, 35.818661, 33.065273>,  <28.258492, 35.917461, 33.135487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465637, 35.818661, 33.065273>,  <28.810879, 35.653996, 32.948254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465637, 35.818661, 33.065273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221997, 0.211047, -0.951933,
		-0.453617, -0.886563, -0.090768,
		-0.863105, 0.411662, 0.292549,
		28.206705, 35.942158, 33.153038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888889, 36.068916, 32.340927>,  <28.810879, 35.653996, 32.948254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888889, 36.068916, 32.340927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590494, 35.883030, 32.150120>,  <28.411457, 35.771500, 32.035637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590494, 35.883030, 32.150120>,  <28.888889, 36.068916, 32.340927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590494, 35.883030, 32.150120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496440, -0.089402, 0.863455,
		-0.443906, 0.880936, -0.164010,
		-0.745986, -0.464714, -0.477018,
		28.366699, 35.743614, 32.007015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363403, 36.508186, 32.652905>,  <28.888889, 36.068916, 32.340927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363403, 36.508186, 32.652905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270033, 36.136765, 32.537464>,  <28.214010, 35.913910, 32.468201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270033, 36.136765, 32.537464>,  <28.363403, 36.508186, 32.652905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270033, 36.136765, 32.537464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481221, -0.147589, 0.864086,
		-0.844949, 0.340582, -0.412390,
		-0.233428, -0.928559, -0.288601,
		28.200005, 35.858196, 32.450886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693302, 36.401028, 32.956177>,  <28.363403, 36.508186, 32.652905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693302, 36.401028, 32.956177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882742, 36.059479, 32.869820>,  <27.996405, 35.854549, 32.818005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882742, 36.059479, 32.869820>,  <27.693302, 36.401028, 32.956177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882742, 36.059479, 32.869820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259759, -0.369643, 0.892127,
		-0.841565, -0.366428, -0.396862,
		0.473597, -0.853871, -0.215896,
		28.024820, 35.803318, 32.805050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154346, 35.860214, 33.048061>,  <27.693302, 36.401028, 32.956177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154346, 35.860214, 33.048061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537626, 35.748219, 33.071587>,  <27.767593, 35.681023, 33.085701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537626, 35.748219, 33.071587>,  <27.154346, 35.860214, 33.048061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537626, 35.748219, 33.071587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153380, -0.329182, 0.931726,
		-0.241514, -0.901801, -0.358367,
		0.958199, -0.279991, 0.058816,
		27.825087, 35.664223, 33.089233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235352, 35.196754, 33.384296>,  <27.154346, 35.860214, 33.048061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235352, 35.196754, 33.384296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596453, 35.363636, 33.426208>,  <27.813114, 35.463764, 33.451355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596453, 35.363636, 33.426208>,  <27.235352, 35.196754, 33.384296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596453, 35.363636, 33.426208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082113, -0.406240, 0.910070,
		0.422247, -0.812966, -0.400992,
		0.902755, 0.417201, 0.104778,
		27.867279, 35.488796, 33.457642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639462, 34.645073, 33.576691>,  <27.235352, 35.196754, 33.384296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639462, 34.645073, 33.576691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816679, 34.982677, 33.697590>,  <27.923010, 35.185242, 33.770130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816679, 34.982677, 33.697590>,  <27.639462, 34.645073, 33.576691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816679, 34.982677, 33.697590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098531, -0.380941, 0.919334,
		0.891069, -0.377524, -0.251935,
		0.443043, 0.844014, 0.302247,
		27.949593, 35.235882, 33.788265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272396, 34.443890, 33.961494>,  <27.639462, 34.645073, 33.576691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272396, 34.443890, 33.961494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163034, 34.807678, 34.086792>,  <28.097418, 35.025951, 34.161968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163034, 34.807678, 34.086792>,  <28.272396, 34.443890, 33.961494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163034, 34.807678, 34.086792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011391, -0.328687, 0.944370,
		0.961832, 0.254625, 0.100224,
		-0.273403, 0.909467, 0.313242,
		28.081013, 35.080517, 34.180763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634596, 34.623550, 34.603268>,  <28.272396, 34.443890, 33.961494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634596, 34.623550, 34.603268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325743, 34.876934, 34.623413>,  <28.140430, 35.028965, 34.635502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325743, 34.876934, 34.623413>,  <28.634596, 34.623550, 34.603268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325743, 34.876934, 34.623413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158981, -0.269302, 0.949843,
		0.615254, 0.725397, 0.308645,
		-0.772132, 0.633463, 0.050365,
		28.094103, 35.066975, 34.638523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634239, 35.106777, 35.248100>,  <28.634596, 34.623550, 34.603268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634239, 35.106777, 35.248100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254450, 35.046795, 35.137817>,  <28.026577, 35.010807, 35.071648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254450, 35.046795, 35.137817>,  <28.634239, 35.106777, 35.248100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254450, 35.046795, 35.137817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231951, -0.256491, 0.938302,
		-0.211418, 0.954843, 0.208750,
		-0.949474, -0.149954, -0.275704,
		27.969608, 35.001808, 35.055107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058252, 35.436325, 35.525654>,  <28.634239, 35.106777, 35.248100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058252, 35.436325, 35.525654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968122, 35.046616, 35.527580>,  <27.914045, 34.812790, 35.528736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968122, 35.046616, 35.527580>,  <28.058252, 35.436325, 35.525654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968122, 35.046616, 35.527580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345890, 0.084616, 0.934452,
		-0.910818, 0.208887, -0.356057,
		-0.225323, -0.974272, 0.004818,
		27.900526, 34.754333, 35.529026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342175, 35.293427, 35.728958>,  <28.058252, 35.436325, 35.525654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342175, 35.293427, 35.728958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564535, 34.973186, 35.818405>,  <27.697952, 34.781040, 35.872074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564535, 34.973186, 35.818405>,  <27.342175, 35.293427, 35.728958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564535, 34.973186, 35.818405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173518, 0.151327, 0.973135,
		-0.812936, -0.579770, -0.054797,
		0.555902, -0.800604, 0.223619,
		27.731306, 34.733006, 35.885490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078451, 34.875984, 36.305832>,  <27.342175, 35.293427, 35.728958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078451, 34.875984, 36.305832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461288, 34.761295, 36.322639>,  <27.690990, 34.692482, 36.332726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461288, 34.761295, 36.322639>,  <27.078451, 34.875984, 36.305832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461288, 34.761295, 36.322639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126183, -0.281807, 0.951138,
		-0.260864, -0.915630, -0.305894,
		0.957093, -0.286716, 0.042024,
		27.748417, 34.675282, 36.335247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231518, 34.176964, 36.559757>,  <27.078451, 34.875984, 36.305832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231518, 34.176964, 36.559757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528353, 34.423664, 36.664772>,  <27.706453, 34.571686, 36.727779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528353, 34.423664, 36.664772>,  <27.231518, 34.176964, 36.559757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528353, 34.423664, 36.664772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131058, -0.250607, 0.959177,
		0.657366, -0.746201, -0.105143,
		0.742088, 0.616750, 0.262536,
		27.750978, 34.608688, 36.743534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479580, 33.829216, 37.093563>,  <27.231518, 34.176964, 36.559757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479580, 33.829216, 37.093563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564718, 34.219746, 37.109032>,  <27.615801, 34.454063, 37.118313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564718, 34.219746, 37.109032>,  <27.479580, 33.829216, 37.093563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564718, 34.219746, 37.109032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098821, -0.017862, 0.994945,
		0.972076, -0.215589, 0.092679,
		0.212844, 0.976321, 0.038667,
		27.628572, 34.512642, 37.120632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372833, 34.323399, 37.639904>,  <27.479580, 33.829216, 37.093563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372833, 34.323399, 37.639904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506899, 34.630283, 37.421162>,  <27.587337, 34.814415, 37.289917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506899, 34.630283, 37.421162>,  <27.372833, 34.323399, 37.639904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506899, 34.630283, 37.421162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866051, -0.022339, 0.499456,
		0.370973, -0.641004, -0.671932,
		0.335163, 0.767212, -0.546855,
		27.607449, 34.860447, 37.257107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624020, 34.640053, 38.277351>,  <27.372833, 34.323399, 37.639904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624020, 34.640053, 38.277351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655130, 34.681854, 38.673943>,  <27.673798, 34.706936, 38.911896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655130, 34.681854, 38.673943>,  <27.624020, 34.640053, 38.277351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655130, 34.681854, 38.673943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959977, -0.260542, 0.102770,
		0.269062, -0.959790, 0.080061,
		0.077778, 0.104509, 0.991478,
		27.678463, 34.713207, 38.971386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410223, 33.997955, 38.595108>,  <27.624020, 34.640053, 38.277351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410223, 33.997955, 38.595108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345617, 34.328358, 38.811119>,  <27.306854, 34.526600, 38.940723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345617, 34.328358, 38.811119>,  <27.410223, 33.997955, 38.595108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345617, 34.328358, 38.811119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951818, -0.274931, 0.135852,
		0.260684, -0.492063, 0.830613,
		-0.161514, 0.826007, 0.540024,
		27.297163, 34.576160, 38.973125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235125, 33.793167, 39.305229>,  <27.410223, 33.997955, 38.595108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235125, 33.793167, 39.305229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098238, 34.161808, 39.231972>,  <27.016106, 34.382992, 39.188019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098238, 34.161808, 39.231972>,  <27.235125, 33.793167, 39.305229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098238, 34.161808, 39.231972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938673, -0.326560, 0.110689,
		0.042205, 0.209787, 0.976836,
		-0.342216, 0.921601, -0.183139,
		26.995573, 34.438290, 39.177029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701756, 33.863148, 39.703026>,  <27.235125, 33.793167, 39.305229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701756, 33.863148, 39.703026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605112, 34.134117, 39.425114>,  <26.547127, 34.296700, 39.258366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605112, 34.134117, 39.425114>,  <26.701756, 33.863148, 39.703026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605112, 34.134117, 39.425114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932245, -0.360775, -0.027578,
		-0.269342, 0.641046, 0.718689,
		-0.241606, 0.677423, -0.694784,
		26.532631, 34.337345, 39.216679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110044, 34.339386, 39.947853>,  <26.701756, 33.863148, 39.703026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110044, 34.339386, 39.947853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138042, 34.281605, 39.553040>,  <26.154842, 34.246937, 39.316151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138042, 34.281605, 39.553040>,  <26.110044, 34.339386, 39.947853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138042, 34.281605, 39.553040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988204, -0.145152, -0.048836,
		-0.136215, 0.978807, -0.152910,
		0.069996, -0.144454, -0.987032,
		26.159040, 34.238270, 39.256931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583420, 34.798161, 39.593868>,  <26.110044, 34.339386, 39.947853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583420, 34.798161, 39.593868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676119, 34.477829, 39.372971>,  <25.731739, 34.285629, 39.240433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676119, 34.477829, 39.372971>,  <25.583420, 34.798161, 39.593868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676119, 34.477829, 39.372971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970152, -0.148607, -0.191626,
		0.071392, 0.580167, -0.811363,
		0.231750, -0.800826, -0.552241,
		25.745644, 34.237579, 39.207298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366873, 34.827919, 38.911324>,  <25.583420, 34.798161, 39.593868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366873, 34.827919, 38.911324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385508, 34.438568, 39.001099>,  <25.396688, 34.204960, 39.054966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385508, 34.438568, 39.001099>,  <25.366873, 34.827919, 38.911324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385508, 34.438568, 39.001099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881090, -0.145901, -0.449882,
		0.470650, -0.176794, -0.864426,
		0.046585, -0.973374, 0.224439,
		25.399483, 34.146557, 39.068432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343676, 34.382942, 38.268776>,  <25.366873, 34.827919, 38.911324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343676, 34.382942, 38.268776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212954, 34.221684, 38.610691>,  <25.134520, 34.124928, 38.815842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212954, 34.221684, 38.610691>,  <25.343676, 34.382942, 38.268776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212954, 34.221684, 38.610691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840294, -0.290007, -0.458041,
		0.432555, -0.867966, -0.243988,
		-0.326806, -0.403150, 0.854791,
		25.114912, 34.100739, 38.867130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025520, 34.472485, 38.031013>,  <25.343676, 34.382942, 38.268776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025520, 34.472485, 38.031013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067930, 34.450901, 38.428173>,  <26.093376, 34.437950, 38.666470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067930, 34.450901, 38.428173>,  <26.025520, 34.472485, 38.031013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067930, 34.450901, 38.428173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779383, 0.624606, -0.049284,
		-0.617511, 0.779074, 0.108277,
		0.106026, -0.053956, 0.992898,
		26.099739, 34.434715, 38.726044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198767, 35.150135, 38.275066>,  <26.025520, 34.472485, 38.031013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198767, 35.150135, 38.275066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314131, 34.903366, 38.567978>,  <26.383348, 34.755306, 38.743725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314131, 34.903366, 38.567978>,  <26.198767, 35.150135, 38.275066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314131, 34.903366, 38.567978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842620, 0.526753, 0.111902,
		-0.454764, 0.584757, 0.671750,
		0.288411, -0.616920, 0.732277,
		26.400654, 34.718288, 38.787663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461901, 35.530254, 38.884014>,  <26.198767, 35.150135, 38.275066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461901, 35.530254, 38.884014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623413, 35.171005, 38.953686>,  <26.720322, 34.955456, 38.995491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623413, 35.171005, 38.953686>,  <26.461901, 35.530254, 38.884014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623413, 35.171005, 38.953686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821793, 0.439738, 0.362334,
		-0.402014, -0.003163, 0.915628,
		0.403783, -0.898120, 0.174181,
		26.744549, 34.901569, 39.005939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606262, 35.556992, 39.472374>,  <26.461901, 35.530254, 38.884014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606262, 35.556992, 39.472374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861303, 35.312134, 39.285294>,  <27.014328, 35.165218, 39.173046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861303, 35.312134, 39.285294>,  <26.606262, 35.556992, 39.472374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861303, 35.312134, 39.285294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769767, 0.482374, 0.418059,
		-0.030306, -0.626576, 0.778771,
		0.637605, -0.612143, -0.467699,
		27.052586, 35.128490, 39.144985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057087, 35.465778, 39.981663>,  <26.606262, 35.556992, 39.472374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057087, 35.465778, 39.981663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257732, 35.315037, 39.670185>,  <27.378119, 35.224590, 39.483299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257732, 35.315037, 39.670185>,  <27.057087, 35.465778, 39.981663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257732, 35.315037, 39.670185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843499, 0.412920, 0.343522,
		0.192080, -0.829143, 0.525002,
		0.501613, -0.376854, -0.778695,
		27.408216, 35.201981, 39.436577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591442, 34.830875, 40.066624>,  <27.057087, 35.465778, 39.981663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591442, 34.830875, 40.066624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679873, 35.120975, 39.805813>,  <27.732931, 35.295036, 39.649326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679873, 35.120975, 39.805813>,  <27.591442, 34.830875, 40.066624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679873, 35.120975, 39.805813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696884, 0.350236, 0.625849,
		0.682260, -0.592747, -0.427987,
		0.221074, 0.725249, -0.652028,
		27.746195, 35.338551, 39.610203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392881, 34.732807, 40.022133>,  <27.591442, 34.830875, 40.066624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392881, 34.732807, 40.022133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274874, 35.098206, 39.910065>,  <28.204069, 35.317444, 39.842823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274874, 35.098206, 39.910065>,  <28.392881, 34.732807, 40.022133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274874, 35.098206, 39.910065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637010, 0.406590, 0.654907,
		0.712167, 0.014738, -0.701856,
		-0.295020, 0.913492, -0.280171,
		28.186367, 35.372253, 39.826012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045572, 35.060024, 39.838310>,  <28.392881, 34.732807, 40.022133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045572, 35.060024, 39.838310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761959, 35.301758, 39.983665>,  <28.591791, 35.446800, 40.070877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761959, 35.301758, 39.983665>,  <29.045572, 35.060024, 39.838310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761959, 35.301758, 39.983665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641559, 0.338931, 0.688133,
		0.292700, 0.721044, -0.628031,
		-0.709033, 0.604336, 0.363387,
		28.549250, 35.483059, 40.092682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042273, 34.348015, 40.265461>,  <29.045572, 35.060024, 39.838310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042273, 34.348015, 40.265461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231363, 33.995621, 40.257534>,  <29.344818, 33.784184, 40.252777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231363, 33.995621, 40.257534>,  <29.042273, 34.348015, 40.265461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231363, 33.995621, 40.257534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211083, 0.135040, -0.968095,
		0.855555, 0.453460, 0.249798,
		0.472725, -0.880987, -0.019817,
		29.373180, 33.731323, 40.251591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833340, 34.403885, 40.213051>,  <29.042273, 34.348015, 40.265461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833340, 34.403885, 40.213051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595104, 34.126568, 40.050758>,  <29.452164, 33.960178, 39.953384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595104, 34.126568, 40.050758>,  <29.833340, 34.403885, 40.213051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595104, 34.126568, 40.050758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211037, 0.352295, -0.911785,
		0.775072, -0.628673, -0.063512,
		-0.595589, -0.693295, -0.405728,
		29.416428, 33.918579, 39.929039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282791, 33.948498, 39.768196>,  <29.833340, 34.403885, 40.213051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282791, 33.948498, 39.768196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893538, 34.011913, 39.701412>,  <29.659985, 34.049965, 39.661343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893538, 34.011913, 39.701412>,  <30.282791, 33.948498, 39.768196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893538, 34.011913, 39.701412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226775, 0.534656, -0.814073,
		-0.039798, -0.830065, -0.556245,
		-0.973134, 0.158541, -0.166960,
		29.601597, 34.059475, 39.651325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190819, 33.712887, 39.091354>,  <30.282791, 33.948498, 39.768196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190819, 33.712887, 39.091354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952946, 34.008606, 39.217709>,  <29.810223, 34.186039, 39.293522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952946, 34.008606, 39.217709>,  <30.190819, 33.712887, 39.091354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952946, 34.008606, 39.217709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317344, 0.576869, -0.752672,
		-0.738679, -0.347354, -0.577666,
		-0.594682, 0.739302, 0.315890,
		29.774542, 34.230396, 39.312477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638767, 33.902481, 38.619839>,  <30.190819, 33.712887, 39.091354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638767, 33.902481, 38.619839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756681, 34.219086, 38.833984>,  <29.827429, 34.409050, 38.962471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756681, 34.219086, 38.833984>,  <29.638767, 33.902481, 38.619839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756681, 34.219086, 38.833984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305947, 0.452586, -0.837593,
		-0.905261, 0.410702, -0.108745,
		0.294785, 0.791511, 0.535362,
		29.845118, 34.456539, 38.994595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531044, 34.629929, 38.198521>,  <29.638767, 33.902481, 38.619839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531044, 34.629929, 38.198521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831179, 34.644466, 38.462543>,  <30.011259, 34.653191, 38.620956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831179, 34.644466, 38.462543>,  <29.531044, 34.629929, 38.198521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831179, 34.644466, 38.462543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544084, 0.533154, -0.647858,
		-0.375457, 0.845237, 0.380270,
		0.750336, 0.036344, 0.660057,
		30.056280, 34.655369, 38.660561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616575, 35.270924, 38.341171>,  <29.531044, 34.629929, 38.198521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616575, 35.270924, 38.341171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978704, 35.115108, 38.408882>,  <30.195982, 35.021622, 38.449509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978704, 35.115108, 38.408882>,  <29.616575, 35.270924, 38.341171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978704, 35.115108, 38.408882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410725, 0.701441, -0.582482,
		0.108158, 0.596861, 0.795022,
		0.905322, -0.389535, 0.169278,
		30.250301, 34.998249, 38.459667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095753, 35.691719, 38.770584>,  <29.616575, 35.270924, 38.341171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095753, 35.691719, 38.770584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261314, 35.465080, 38.485588>,  <30.360651, 35.329098, 38.314590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261314, 35.465080, 38.485588>,  <30.095753, 35.691719, 38.770584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261314, 35.465080, 38.485588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290933, 0.823971, -0.486241,
		0.862577, -0.006029, 0.505890,
		0.413907, -0.566601, -0.712492,
		30.385487, 35.295101, 38.271839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663057, 36.051628, 38.599171>,  <30.095753, 35.691719, 38.770584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663057, 36.051628, 38.599171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590742, 35.802914, 38.294353>,  <30.547354, 35.653687, 38.111465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590742, 35.802914, 38.294353>,  <30.663057, 36.051628, 38.599171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590742, 35.802914, 38.294353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378907, 0.670967, -0.637365,
		0.907604, -0.403969, 0.114296,
		-0.180787, -0.621782, -0.762039,
		30.536507, 35.616379, 38.065742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237167, 35.782944, 38.150509>,  <30.663057, 36.051628, 38.599171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237167, 35.782944, 38.150509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893877, 35.866009, 37.962753>,  <30.687902, 35.915848, 37.850101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893877, 35.866009, 37.962753>,  <31.237167, 35.782944, 38.150509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893877, 35.866009, 37.962753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466471, 0.697080, -0.544504,
		0.214127, -0.686262, -0.695121,
		-0.858228, 0.207661, -0.469385,
		30.636408, 35.928307, 37.821938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406103, 35.921131, 37.390881>,  <31.237167, 35.782944, 38.150509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406103, 35.921131, 37.390881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047920, 36.085541, 37.459244>,  <30.833010, 36.184189, 37.500259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047920, 36.085541, 37.459244>,  <31.406103, 35.921131, 37.390881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047920, 36.085541, 37.459244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323693, 0.864800, -0.383854,
		-0.305574, -0.288404, -0.907440,
		-0.895459, 0.411027, 0.170906,
		30.779282, 36.208851, 37.510517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271618, 35.319443, 37.556538>,  <31.406103, 35.921131, 37.390881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271618, 35.319443, 37.556538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237314, 35.224289, 37.169537>,  <31.216732, 35.167194, 36.937336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237314, 35.224289, 37.169537>,  <31.271618, 35.319443, 37.556538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237314, 35.224289, 37.169537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131105, -0.959938, 0.247651,
		-0.987652, 0.148083, 0.051137,
		-0.085761, -0.237889, -0.967499,
		31.211586, 35.152924, 36.879288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484577, 35.361706, 37.407139>,  <31.271618, 35.319443, 37.556538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484577, 35.361706, 37.407139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284544, 35.699863, 37.482212>,  <30.164524, 35.902760, 37.527256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284544, 35.699863, 37.482212>,  <30.484577, 35.361706, 37.407139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284544, 35.699863, 37.482212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442851, 0.435903, -0.783500,
		-0.744178, -0.308698, -0.592372,
		-0.500082, 0.845396, 0.187682,
		30.134520, 35.953484, 37.538517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318914, 35.679028, 36.722969>,  <30.484577, 35.361706, 37.407139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318914, 35.679028, 36.722969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337183, 35.947605, 37.018829>,  <30.348145, 36.108749, 37.196346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337183, 35.947605, 37.018829>,  <30.318914, 35.679028, 36.722969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337183, 35.947605, 37.018829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648453, 0.543295, -0.533235,
		-0.759884, 0.503980, -0.410586,
		0.045670, 0.671442, 0.739648,
		30.350883, 36.149036, 37.240723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320221, 36.267887, 36.383286>,  <30.318914, 35.679028, 36.722969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320221, 36.267887, 36.383286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510141, 36.322239, 36.731102>,  <30.624094, 36.354851, 36.939793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510141, 36.322239, 36.731102>,  <30.320221, 36.267887, 36.383286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510141, 36.322239, 36.731102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679744, 0.570956, -0.460388,
		-0.559028, 0.809658, 0.178724,
		0.474800, 0.135883, 0.869540,
		30.652582, 36.363003, 36.991962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512342, 36.949261, 36.463253>,  <30.320221, 36.267887, 36.383286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512342, 36.949261, 36.463253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766928, 36.719402, 36.669044>,  <30.919680, 36.581486, 36.792519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766928, 36.719402, 36.669044>,  <30.512342, 36.949261, 36.463253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766928, 36.719402, 36.669044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767871, 0.409201, -0.492878,
		0.072706, 0.708754, 0.701699,
		0.636465, -0.574649, 0.514481,
		30.957867, 36.547009, 36.823387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872385, 37.371025, 37.014378>,  <30.512342, 36.949261, 36.463253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872385, 37.371025, 37.014378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075682, 37.058243, 36.870026>,  <31.197659, 36.870571, 36.783417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075682, 37.058243, 36.870026>,  <30.872385, 37.371025, 37.014378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075682, 37.058243, 36.870026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646036, 0.623263, -0.440660,
		0.569499, -0.009179, 0.821941,
		0.508240, -0.781959, -0.360877,
		31.228153, 36.823654, 36.761761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631405, 37.376171, 37.045082>,  <30.872385, 37.371025, 37.014378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631405, 37.376171, 37.045082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522327, 37.173199, 36.718121>,  <31.456881, 37.051414, 36.521942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522327, 37.173199, 36.718121>,  <31.631405, 37.376171, 37.045082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522327, 37.173199, 36.718121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821870, 0.318821, -0.472105,
		0.500168, -0.800539, 0.330105,
		-0.272694, -0.507435, -0.817403,
		31.440519, 37.020969, 36.472900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082077, 36.751659, 36.846195>,  <31.631405, 37.376171, 37.045082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082077, 36.751659, 36.846195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913061, 36.910702, 36.520405>,  <31.811651, 37.006126, 36.324932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913061, 36.910702, 36.520405>,  <32.082077, 36.751659, 36.846195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913061, 36.910702, 36.520405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898127, 0.062948, -0.435207,
		-0.121770, -0.915396, -0.383696,
		-0.422540, 0.397603, -0.814476,
		31.786299, 37.029984, 36.276062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191814, 36.379654, 36.189541>,  <32.082077, 36.751659, 36.846195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191814, 36.379654, 36.189541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145691, 36.773304, 36.135582>,  <32.118019, 37.009495, 36.103207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145691, 36.773304, 36.135582>,  <32.191814, 36.379654, 36.189541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145691, 36.773304, 36.135582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857195, 0.029963, -0.514120,
		-0.501918, -0.174914, -0.847044,
		-0.115307, 0.984128, -0.134897,
		32.111099, 37.068542, 36.095112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603855, 36.658749, 35.786640>,  <32.191814, 36.379654, 36.189541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603855, 36.658749, 35.786640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231157, 36.750248, 35.899441>,  <31.007538, 36.805149, 35.967121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231157, 36.750248, 35.899441>,  <31.603855, 36.658749, 35.786640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231157, 36.750248, 35.899441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293542, -0.017383, -0.955788,
		-0.213733, -0.973330, 0.083344,
		-0.931746, 0.228749, 0.281998,
		30.951633, 36.818871, 35.984039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059624, 36.064770, 35.695297>,  <31.603855, 36.658749, 35.786640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059624, 36.064770, 35.695297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992123, 36.452374, 35.623131>,  <30.951622, 36.684937, 35.579830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992123, 36.452374, 35.623131>,  <31.059624, 36.064770, 35.695297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992123, 36.452374, 35.623131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175959, -0.209717, -0.961799,
		-0.969825, -0.130563, 0.205896,
		-0.168755, 0.969006, -0.180415,
		30.941496, 36.743076, 35.569008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629591, 35.901733, 35.168472>,  <31.059624, 36.064770, 35.695297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629591, 35.901733, 35.168472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545301, 36.077824, 34.819347>,  <31.494728, 36.183479, 34.609871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545301, 36.077824, 34.819347>,  <31.629591, 35.901733, 35.168472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545301, 36.077824, 34.819347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096789, 0.897868, 0.429494,
		0.972742, 0.006026, -0.231810,
		-0.210723, 0.440224, -0.872811,
		31.482084, 36.209892, 34.557503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156685, 36.366005, 34.689457>,  <31.629591, 35.901733, 35.168472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156685, 36.366005, 34.689457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767462, 36.455887, 34.710079>,  <31.533926, 36.509815, 34.722450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767462, 36.455887, 34.710079>,  <32.156685, 36.366005, 34.689457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767462, 36.455887, 34.710079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223680, 0.866033, 0.447163,
		0.055833, 0.446649, -0.892965,
		-0.973062, 0.224705, 0.051553,
		31.475544, 36.523296, 34.725544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873409, 36.512928, 34.241909>,  <32.156685, 36.366005, 34.689457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873409, 36.512928, 34.241909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797630, 36.830399, 34.010670>,  <32.752163, 37.020882, 33.871925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797630, 36.830399, 34.010670>,  <32.873409, 36.512928, 34.241909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797630, 36.830399, 34.010670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307297, -0.511255, -0.802613,
		-0.932566, -0.329699, -0.147038,
		-0.189447, 0.793673, -0.578094,
		32.740795, 37.068501, 33.837242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587139, 36.304272, 33.627861>,  <32.873409, 36.512928, 34.241909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587139, 36.304272, 33.627861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756237, 36.655342, 33.537563>,  <32.857697, 36.865986, 33.483383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756237, 36.655342, 33.537563>,  <32.587139, 36.304272, 33.627861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756237, 36.655342, 33.537563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334659, -0.382685, -0.861136,
		-0.842192, 0.288495, -0.455503,
		0.422747, 0.877680, -0.225747,
		32.883060, 36.918648, 33.469841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462780, 36.406094, 32.920864>,  <32.587139, 36.304272, 33.627861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462780, 36.406094, 32.920864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762775, 36.659328, 32.997513>,  <32.942772, 36.811272, 33.043503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762775, 36.659328, 32.997513>,  <32.462780, 36.406094, 32.920864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762775, 36.659328, 32.997513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508990, -0.367355, -0.778447,
		-0.422433, 0.681357, -0.597747,
		0.749986, 0.633089, 0.191621,
		32.987770, 36.849255, 33.055000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633381, 36.678547, 32.194035>,  <32.462780, 36.406094, 32.920864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633381, 36.678547, 32.194035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937325, 36.702641, 32.452950>,  <33.119690, 36.717094, 32.608299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937325, 36.702641, 32.452950>,  <32.633381, 36.678547, 32.194035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937325, 36.702641, 32.452950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605149, -0.429291, -0.670450,
		0.237494, 0.901156, -0.362650,
		0.759863, 0.060230, 0.647287,
		33.165283, 36.720711, 32.647137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249569, 36.973118, 31.801493>,  <32.633381, 36.678547, 32.194035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249569, 36.973118, 31.801493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375134, 36.777832, 32.127216>,  <33.450474, 36.660660, 32.322651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375134, 36.777832, 32.127216>,  <33.249569, 36.973118, 31.801493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375134, 36.777832, 32.127216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662378, -0.501857, -0.556233,
		0.680230, 0.713991, 0.165845,
		0.313915, -0.488218, 0.814310,
		33.469307, 36.631367, 32.371510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958706, 36.922623, 31.546396>,  <33.249569, 36.973118, 31.801493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958706, 36.922623, 31.546396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939587, 36.676071, 31.860794>,  <33.928116, 36.528141, 32.049435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939587, 36.676071, 31.860794>,  <33.958706, 36.922623, 31.546396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939587, 36.676071, 31.860794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696307, -0.584741, -0.416215,
		0.716151, 0.527401, 0.457139,
		-0.047796, -0.616382, 0.785995,
		33.925247, 36.491158, 32.096592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640446, 36.757175, 31.569704>,  <33.958706, 36.922623, 31.546396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640446, 36.757175, 31.569704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433037, 36.471874, 31.758341>,  <34.308590, 36.300694, 31.871523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433037, 36.471874, 31.758341>,  <34.640446, 36.757175, 31.569704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433037, 36.471874, 31.758341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664454, -0.683244, -0.302786,
		0.538176, 0.156349, 0.828204,
		-0.518524, -0.713255, 0.471592,
		34.277481, 36.257896, 31.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161037, 36.445427, 31.971994>,  <34.640446, 36.757175, 31.569704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161037, 36.445427, 31.971994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853638, 36.191875, 31.937103>,  <34.669197, 36.039745, 31.916168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853638, 36.191875, 31.937103>,  <35.161037, 36.445427, 31.971994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853638, 36.191875, 31.937103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629578, -0.724753, -0.279936,
		0.114226, -0.270047, 0.956047,
		-0.768495, -0.633882, -0.087230,
		34.623089, 36.001709, 31.910934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368710, 35.795418, 32.353989>,  <35.161037, 36.445427, 31.971994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368710, 35.795418, 32.353989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101753, 35.717304, 32.066532>,  <34.941578, 35.670437, 31.894058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101753, 35.717304, 32.066532>,  <35.368710, 35.795418, 32.353989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101753, 35.717304, 32.066532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547483, -0.782826, -0.295711,
		-0.504823, -0.590801, 0.629371,
		-0.667395, -0.195288, -0.718642,
		34.901535, 35.658718, 31.850939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117702, 35.009190, 32.429024>,  <35.368710, 35.795418, 32.353989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117702, 35.009190, 32.429024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078911, 35.128563, 32.049229>,  <35.055637, 35.200188, 31.821350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078911, 35.128563, 32.049229>,  <35.117702, 35.009190, 32.429024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078911, 35.128563, 32.049229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542965, -0.783662, -0.301766,
		-0.834137, -0.544806, -0.086039,
		-0.096978, 0.298431, -0.949492,
		35.049816, 35.218094, 31.764381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122189, 34.448017, 32.026516>,  <35.117702, 35.009190, 32.429024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122189, 34.448017, 32.026516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095959, 34.669636, 31.694557>,  <35.080219, 34.802605, 31.495380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095959, 34.669636, 31.694557>,  <35.122189, 34.448017, 32.026516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095959, 34.669636, 31.694557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390983, -0.750921, -0.532212,
		-0.918059, -0.359377, -0.167380,
		-0.065576, 0.554044, -0.829900,
		35.076286, 34.835850, 31.445587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789024, 34.189251, 31.501301>,  <35.122189, 34.448017, 32.026516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789024, 34.189251, 31.501301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008846, 34.431686, 31.271296>,  <35.140739, 34.577148, 31.133293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008846, 34.431686, 31.271296>,  <34.789024, 34.189251, 31.501301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008846, 34.431686, 31.271296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201041, -0.763974, -0.613128,
		-0.810908, 0.221347, -0.541695,
		0.549556, 0.606093, -0.575013,
		35.173714, 34.613514, 31.098791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611515, 34.008862, 30.865639>,  <34.789024, 34.189251, 31.501301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611515, 34.008862, 30.865639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959469, 34.195038, 30.800329>,  <35.168243, 34.306744, 30.761145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959469, 34.195038, 30.800329>,  <34.611515, 34.008862, 30.865639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959469, 34.195038, 30.800329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102761, -0.494759, -0.862934,
		-0.482427, 0.733877, -0.478214,
		0.869887, 0.465444, -0.163272,
		35.220436, 34.334671, 30.751348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589111, 34.365070, 30.200754>,  <34.611515, 34.008862, 30.865639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589111, 34.365070, 30.200754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980766, 34.349049, 30.280443>,  <35.215759, 34.339436, 30.328257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980766, 34.349049, 30.280443>,  <34.589111, 34.365070, 30.200754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980766, 34.349049, 30.280443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180337, -0.280593, -0.942733,
		0.093665, 0.958990, -0.267515,
		0.979135, -0.040058, 0.199223,
		35.274506, 34.337032, 30.340210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931690, 34.731827, 29.734840>,  <34.589111, 34.365070, 30.200754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931690, 34.731827, 29.734840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201496, 34.467781, 29.867071>,  <35.363380, 34.309353, 29.946409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201496, 34.467781, 29.867071>,  <34.931690, 34.731827, 29.734840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201496, 34.467781, 29.867071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143652, -0.321862, -0.935825,
		0.724150, 0.678716, -0.122274,
		0.674515, -0.660113, 0.330575,
		35.403851, 34.269749, 29.966244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423977, 34.713249, 29.143034>,  <34.931690, 34.731827, 29.734840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423977, 34.713249, 29.143034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549175, 34.407978, 29.369164>,  <35.624294, 34.224815, 29.504841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549175, 34.407978, 29.369164>,  <35.423977, 34.713249, 29.143034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549175, 34.407978, 29.369164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433465, -0.414836, -0.800012,
		0.845070, 0.495446, 0.200972,
		0.312992, -0.763181, 0.565324,
		35.643074, 34.179024, 29.538761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084023, 34.649227, 29.065247>,  <35.423977, 34.713249, 29.143034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084023, 34.649227, 29.065247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989929, 34.284744, 29.200525>,  <35.933475, 34.066055, 29.281693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989929, 34.284744, 29.200525>,  <36.084023, 34.649227, 29.065247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989929, 34.284744, 29.200525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424307, -0.409324, -0.807724,
		0.874432, -0.046502, 0.482915,
		-0.235229, -0.911203, 0.338195,
		35.919361, 34.011383, 29.301983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693512, 34.229923, 29.017473>,  <36.084023, 34.649227, 29.065247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693512, 34.229923, 29.017473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382584, 33.980679, 29.052118>,  <36.196026, 33.831131, 29.072906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382584, 33.980679, 29.052118>,  <36.693512, 34.229923, 29.017473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382584, 33.980679, 29.052118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287438, -0.474242, -0.832150,
		0.559602, -0.621950, 0.547744,
		-0.777319, -0.623116, 0.086615,
		36.149387, 33.793743, 29.078102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026752, 33.545311, 29.017038>,  <36.693512, 34.229923, 29.017473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026752, 33.545311, 29.017038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644814, 33.534039, 28.898729>,  <36.415649, 33.527275, 28.827744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644814, 33.534039, 28.898729>,  <37.026752, 33.545311, 29.017038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644814, 33.534039, 28.898729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277238, -0.442469, -0.852854,
		-0.106833, -0.896341, 0.430302,
		-0.954844, -0.028183, -0.295770,
		36.358360, 33.525585, 28.809998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978638, 32.960129, 28.680595>,  <37.026752, 33.545311, 29.017038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978638, 32.960129, 28.680595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637718, 33.130592, 28.559282>,  <36.433167, 33.232868, 28.486494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637718, 33.130592, 28.559282>,  <36.978638, 32.960129, 28.680595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637718, 33.130592, 28.559282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167517, -0.326894, -0.930096,
		-0.495509, -0.843523, 0.207222,
		-0.852296, 0.426157, -0.303283,
		36.382030, 33.258438, 28.468298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842308, 32.490685, 28.202143>,  <36.978638, 32.960129, 28.680595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842308, 32.490685, 28.202143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624805, 32.810905, 28.101381>,  <36.494305, 33.003036, 28.040924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624805, 32.810905, 28.101381>,  <36.842308, 32.490685, 28.202143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624805, 32.810905, 28.101381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038952, -0.275760, -0.960437,
		-0.838341, -0.532052, 0.118763,
		-0.543752, 0.800548, -0.251906,
		36.461681, 33.051071, 28.025810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231018, 32.191257, 27.886147>,  <36.842308, 32.490685, 28.202143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231018, 32.191257, 27.886147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291893, 32.564430, 27.755623>,  <36.328419, 32.788334, 27.677309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291893, 32.564430, 27.755623>,  <36.231018, 32.191257, 27.886147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291893, 32.564430, 27.755623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270567, -0.356870, -0.894112,
		-0.950595, 0.047788, -0.306733,
		0.152192, 0.932931, -0.326309,
		36.337551, 32.844311, 27.657730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072723, 32.194740, 27.166452>,  <36.231018, 32.191257, 27.886147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072723, 32.194740, 27.166452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286388, 32.532784, 27.175055>,  <36.414585, 32.735611, 27.180216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286388, 32.532784, 27.175055>,  <36.072723, 32.194740, 27.166452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286388, 32.532784, 27.175055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570791, -0.341774, -0.746584,
		-0.623595, 0.411071, -0.664943,
		0.534160, 0.845110, 0.021507,
		36.446636, 32.786316, 27.181507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036762, 32.519779, 26.527746>,  <36.072723, 32.194740, 27.166452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036762, 32.519779, 26.527746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357178, 32.689953, 26.696194>,  <36.549427, 32.792057, 26.797262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357178, 32.689953, 26.696194>,  <36.036762, 32.519779, 26.527746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357178, 32.689953, 26.696194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525223, -0.161994, -0.835403,
		-0.287193, 0.890371, -0.353213,
		0.801037, 0.425438, 0.421120,
		36.597488, 32.817585, 26.822529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264343, 32.991383, 26.012897>,  <36.036762, 32.519779, 26.527746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264343, 32.991383, 26.012897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583786, 32.971718, 26.252834>,  <36.775452, 32.959919, 26.396797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583786, 32.971718, 26.252834>,  <36.264343, 32.991383, 26.012897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583786, 32.971718, 26.252834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601352, 0.024538, -0.798607,
		0.024538, 0.998490, 0.049158,
		0.798607, -0.049158, 0.599841,
		36.823368, 32.956970, 26.432787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650707, 33.518330, 25.740908>,  <36.264343, 32.991383, 26.012897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650707, 33.518330, 25.740908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904068, 33.269703, 25.925282>,  <37.056084, 33.120529, 26.035906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904068, 33.269703, 25.925282>,  <36.650707, 33.518330, 25.740908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904068, 33.269703, 25.925282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706754, 0.222113, -0.671687,
		0.315116, 0.751216, 0.579979,
		0.633403, -0.621562, 0.460934,
		37.094090, 33.083233, 26.063562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229195, 33.819691, 25.538115>,  <36.650707, 33.518330, 25.740908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229195, 33.819691, 25.538115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353802, 33.458904, 25.657724>,  <37.428566, 33.242432, 25.729490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353802, 33.458904, 25.657724>,  <37.229195, 33.819691, 25.538115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353802, 33.458904, 25.657724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834140, 0.108837, -0.540709,
		0.455155, 0.417870, 0.786269,
		0.311521, -0.901964, 0.299024,
		37.447258, 33.188316, 25.747431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948376, 33.873043, 25.729218>,  <37.229195, 33.819691, 25.538115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948376, 33.873043, 25.729218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870598, 33.490688, 25.641159>,  <37.823929, 33.261276, 25.588324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870598, 33.490688, 25.641159>,  <37.948376, 33.873043, 25.729218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870598, 33.490688, 25.641159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859234, -0.057718, -0.508316,
		0.473188, -0.288000, 0.832556,
		-0.194449, -0.955889, -0.220148,
		37.812263, 33.203922, 25.575115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630966, 33.500847, 25.746553>,  <37.948376, 33.873043, 25.729218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630966, 33.500847, 25.746553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381584, 33.314152, 25.495647>,  <38.231953, 33.202137, 25.345104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381584, 33.314152, 25.495647>,  <38.630966, 33.500847, 25.746553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381584, 33.314152, 25.495647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775633, -0.268195, -0.571371,
		0.098449, -0.842752, 0.529223,
		-0.623459, -0.466734, -0.627263,
		38.194546, 33.174133, 25.307468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923897, 32.860489, 25.560873>,  <38.630966, 33.500847, 25.746553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923897, 32.860489, 25.560873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658627, 32.928871, 25.269402>,  <38.499466, 32.969902, 25.094519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658627, 32.928871, 25.269402>,  <38.923897, 32.860489, 25.560873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658627, 32.928871, 25.269402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618085, -0.423959, -0.661989,
		-0.422055, -0.889412, 0.175544,
		-0.663204, 0.170894, -0.728666,
		38.459675, 32.980160, 25.050798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953625, 32.215664, 25.218916>,  <38.923897, 32.860489, 25.560873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953625, 32.215664, 25.218916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786278, 32.485390, 24.975515>,  <38.685871, 32.647224, 24.829475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786278, 32.485390, 24.975515>,  <38.953625, 32.215664, 25.218916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786278, 32.485390, 24.975515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505050, -0.384117, -0.772903,
		-0.754914, -0.630678, -0.179861,
		-0.418365, 0.674314, -0.608499,
		38.660767, 32.687683, 24.792965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878155, 31.870543, 24.549438>,  <38.953625, 32.215664, 25.218916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878155, 31.870543, 24.549438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903057, 32.265961, 24.494448>,  <38.917999, 32.503212, 24.461454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903057, 32.265961, 24.494448>,  <38.878155, 31.870543, 24.549438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903057, 32.265961, 24.494448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706335, -0.140956, -0.693702,
		-0.705134, -0.053915, -0.707021,
		0.062258, 0.988547, -0.137475,
		38.921734, 32.562523, 24.453205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897259, 31.836737, 23.822292>,  <38.878155, 31.870543, 24.549438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897259, 31.836737, 23.822292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014843, 32.205101, 23.924669>,  <39.085396, 32.426121, 23.986095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014843, 32.205101, 23.924669>,  <38.897259, 31.836737, 23.822292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014843, 32.205101, 23.924669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587814, 0.036970, -0.808151,
		-0.753697, 0.388015, -0.530457,
		0.293964, 0.920911, 0.255945,
		39.103031, 32.481373, 24.001453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761375, 32.281666, 23.294334>,  <38.897259, 31.836737, 23.822292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761375, 32.281666, 23.294334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043121, 32.478168, 23.499287>,  <39.212170, 32.596069, 23.622257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043121, 32.478168, 23.499287>,  <38.761375, 32.281666, 23.294334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043121, 32.478168, 23.499287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554102, 0.070637, -0.829446,
		-0.443665, 0.868145, -0.222453,
		0.704367, 0.491258, 0.512380,
		39.254433, 32.625546, 23.653000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871056, 32.835224, 22.906473>,  <38.761375, 32.281666, 23.294334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871056, 32.835224, 22.906473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206154, 32.811401, 23.123592>,  <39.407215, 32.797108, 23.253864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206154, 32.811401, 23.123592>,  <38.871056, 32.835224, 22.906473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206154, 32.811401, 23.123592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540772, 0.228464, -0.809549,
		-0.075795, 0.971729, 0.223603,
		0.837748, -0.059558, 0.542800,
		39.457478, 32.793533, 23.286432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321159, 33.430466, 22.700949>,  <38.871056, 32.835224, 22.906473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321159, 33.430466, 22.700949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535954, 33.137363, 22.868145>,  <39.664829, 32.961502, 22.968464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535954, 33.137363, 22.868145>,  <39.321159, 33.430466, 22.700949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535954, 33.137363, 22.868145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691193, 0.098100, -0.715982,
		0.483636, 0.673382, 0.559154,
		0.536982, -0.732758, 0.417992,
		39.697048, 32.917538, 22.993542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994644, 33.687881, 22.651890>,  <39.321159, 33.430466, 22.700949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994644, 33.687881, 22.651890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020279, 33.290752, 22.692295>,  <40.035660, 33.052475, 22.716537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020279, 33.290752, 22.692295>,  <39.994644, 33.687881, 22.651890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020279, 33.290752, 22.692295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691127, -0.028864, -0.722157,
		0.719887, 0.116090, 0.684314,
		0.064083, -0.992819, 0.101012,
		40.039505, 32.992908, 22.722599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616936, 33.607273, 22.587965>,  <39.994644, 33.687881, 22.651890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616936, 33.607273, 22.587965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507004, 33.225235, 22.543678>,  <40.441044, 32.996014, 22.517107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507004, 33.225235, 22.543678>,  <40.616936, 33.607273, 22.587965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507004, 33.225235, 22.543678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776853, -0.152727, -0.610880,
		0.566540, -0.253900, 0.783944,
		-0.274832, -0.955097, -0.110717,
		40.424553, 32.938705, 22.510464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202900, 33.273750, 22.634861>,  <40.616936, 33.607273, 22.587965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202900, 33.273750, 22.634861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931774, 33.055412, 22.437836>,  <40.769100, 32.924408, 22.319620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931774, 33.055412, 22.437836>,  <41.202900, 33.273750, 22.634861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931774, 33.055412, 22.437836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678275, -0.205684, -0.705435,
		0.283749, -0.812246, 0.509651,
		-0.677813, -0.545849, -0.492563,
		40.728432, 32.891659, 22.290068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576206, 32.741390, 22.345568>,  <41.202900, 33.273750, 22.634861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576206, 32.741390, 22.345568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253227, 32.739273, 22.109598>,  <41.059441, 32.738003, 21.968018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253227, 32.739273, 22.109598>,  <41.576206, 32.741390, 22.345568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253227, 32.739273, 22.109598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573096, -0.244324, -0.782219,
		-0.139989, -0.969680, 0.200313,
		-0.807443, -0.005296, -0.589922,
		41.010994, 32.737686, 21.932621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739742, 32.204315, 21.873907>,  <41.576206, 32.741390, 22.345568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739742, 32.204315, 21.873907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464542, 32.444679, 21.711147>,  <41.299423, 32.588898, 21.613491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464542, 32.444679, 21.711147>,  <41.739742, 32.204315, 21.873907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464542, 32.444679, 21.711147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459511, -0.073258, -0.885146,
		-0.561698, -0.795956, -0.225721,
		-0.688000, 0.600906, -0.406900,
		41.258141, 32.624950, 21.589077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859394, 32.154430, 21.143805>,  <41.739742, 32.204315, 21.873907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859394, 32.154430, 21.143805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559723, 32.417206, 21.109974>,  <41.379921, 32.574871, 21.089676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559723, 32.417206, 21.109974>,  <41.859394, 32.154430, 21.143805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559723, 32.417206, 21.109974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239940, 0.150150, -0.959106,
		-0.617377, -0.738839, -0.270117,
		-0.749182, 0.656942, -0.084577,
		41.334969, 32.614288, 21.084600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300594, 31.887911, 20.585987>,  <41.859394, 32.154430, 21.143805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300594, 31.887911, 20.585987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332485, 32.283810, 20.633387>,  <41.351620, 32.521351, 20.661825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332485, 32.283810, 20.633387>,  <41.300594, 31.887911, 20.585987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332485, 32.283810, 20.633387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425910, 0.073655, -0.901762,
		-0.901246, 0.122362, -0.415672,
		0.079725, 0.989749, 0.118497,
		41.356403, 32.580734, 20.668936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885601, 32.293304, 20.004347>,  <41.300594, 31.887911, 20.585987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885601, 32.293304, 20.004347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209858, 32.460373, 20.168497>,  <41.404411, 32.560612, 20.266987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209858, 32.460373, 20.168497>,  <40.885601, 32.293304, 20.004347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209858, 32.460373, 20.168497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399452, 0.117968, -0.909132,
		-0.428126, 0.900910, -0.071207,
		0.810646, 0.417667, 0.410375,
		41.453053, 32.585674, 20.291609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082630, 33.020836, 19.689344>,  <40.885601, 32.293304, 20.004347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082630, 33.020836, 19.689344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392681, 32.787308, 19.785948>,  <41.578712, 32.647190, 19.843910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392681, 32.787308, 19.785948>,  <41.082630, 33.020836, 19.689344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392681, 32.787308, 19.785948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157538, -0.191579, -0.968752,
		0.611845, 0.788955, -0.056525,
		0.775131, -0.583821, 0.241507,
		41.625221, 32.612160, 19.858400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147697, 33.647110, 20.025202>,  <41.082630, 33.020836, 19.689344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147697, 33.647110, 20.025202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236282, 33.963936, 19.797663>,  <41.289433, 34.154034, 19.661140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236282, 33.963936, 19.797663>,  <41.147697, 33.647110, 20.025202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236282, 33.963936, 19.797663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234920, -0.522818, -0.819435,
		-0.946450, 0.315105, 0.070289,
		0.221460, 0.792067, -0.568846,
		41.302719, 34.201557, 19.627008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599430, 33.697365, 19.543947>,  <41.147697, 33.647110, 20.025202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599430, 33.697365, 19.543947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896378, 33.891869, 19.359581>,  <41.074547, 34.008572, 19.248960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896378, 33.891869, 19.359581>,  <40.599430, 33.697365, 19.543947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896378, 33.891869, 19.359581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192991, -0.503589, -0.842112,
		-0.641598, 0.714108, -0.280004,
		0.742366, 0.486259, -0.460918,
		41.119087, 34.037746, 19.221306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450653, 33.689613, 18.758696>,  <40.599430, 33.697365, 19.543947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450653, 33.689613, 18.758696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831116, 33.808365, 18.792557>,  <41.059395, 33.879616, 18.812874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831116, 33.808365, 18.792557>,  <40.450653, 33.689613, 18.758696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831116, 33.808365, 18.792557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211292, -0.426130, -0.879641,
		-0.225072, 0.854563, -0.468044,
		0.951156, 0.296876, 0.084652,
		41.116463, 33.897427, 18.817953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639721, 33.833355, 18.146879>,  <40.450653, 33.689613, 18.758696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639721, 33.833355, 18.146879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982044, 33.752903, 18.337515>,  <41.187439, 33.704632, 18.451897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982044, 33.752903, 18.337515>,  <40.639721, 33.833355, 18.146879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982044, 33.752903, 18.337515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396857, -0.335680, -0.854297,
		0.331807, 0.920253, -0.207458,
		0.855809, -0.201131, 0.476590,
		41.238789, 33.692562, 18.480492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371380, 34.190357, 17.908644>,  <40.639721, 33.833355, 18.146879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371380, 34.190357, 17.908644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387287, 33.812092, 18.037731>,  <41.396832, 33.585133, 18.115183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387287, 33.812092, 18.037731>,  <41.371380, 34.190357, 17.908644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387287, 33.812092, 18.037731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263676, -0.301594, -0.916251,
		0.963791, 0.121529, 0.237354,
		0.039766, -0.945659, 0.322718,
		41.399216, 33.528393, 18.134546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097305, 34.203140, 18.440233>,  <41.371380, 34.190357, 17.908644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097305, 34.203140, 18.440233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710278, 34.194958, 18.540945>,  <41.478062, 34.190048, 18.601372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710278, 34.194958, 18.540945>,  <42.097305, 34.203140, 18.440233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710278, 34.194958, 18.540945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185368, 0.619630, 0.762691,
		-0.171610, 0.784627, -0.595743,
		-0.967569, -0.020453, 0.251779,
		41.420006, 34.188820, 18.616478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002773, 34.882027, 18.646523>,  <42.097305, 34.203140, 18.440233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002773, 34.882027, 18.646523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710125, 34.651150, 18.791615>,  <41.534534, 34.512623, 18.878670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710125, 34.651150, 18.791615>,  <42.002773, 34.882027, 18.646523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710125, 34.651150, 18.791615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071989, 0.463700, 0.883063,
		-0.677899, 0.672181, -0.297701,
		-0.731622, -0.577196, 0.362731,
		41.490639, 34.477989, 18.900434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637493, 35.331898, 19.012419>,  <42.002773, 34.882027, 18.646523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637493, 35.331898, 19.012419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527161, 34.976921, 19.160126>,  <41.460960, 34.763935, 19.248751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527161, 34.976921, 19.160126>,  <41.637493, 35.331898, 19.012419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527161, 34.976921, 19.160126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066301, 0.400824, 0.913753,
		-0.958916, 0.227562, -0.169400,
		-0.275835, -0.887443, 0.369269,
		41.444408, 34.710690, 19.270906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072620, 35.566463, 19.381565>,  <41.637493, 35.331898, 19.012419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072620, 35.566463, 19.381565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205791, 35.216209, 19.521521>,  <41.285694, 35.006058, 19.605494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205791, 35.216209, 19.521521>,  <41.072620, 35.566463, 19.381565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205791, 35.216209, 19.521521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119415, 0.328916, 0.936779,
		-0.935361, -0.353659, 0.004940,
		0.332925, -0.875637, 0.349887,
		41.305668, 34.953518, 19.626486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586414, 35.343437, 19.893711>,  <41.072620, 35.566463, 19.381565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586414, 35.343437, 19.893711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936871, 35.166664, 19.970730>,  <41.147144, 35.060600, 20.016941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936871, 35.166664, 19.970730>,  <40.586414, 35.343437, 19.893711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936871, 35.166664, 19.970730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081446, 0.257978, 0.962712,
		-0.475130, -0.859151, 0.190031,
		0.876139, -0.441936, 0.192548,
		41.199711, 35.034084, 20.028494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552212, 34.735741, 20.311619>,  <40.586414, 35.343437, 19.893711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552212, 34.735741, 20.311619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921318, 34.884079, 20.353531>,  <41.142780, 34.973083, 20.378677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921318, 34.884079, 20.353531>,  <40.552212, 34.735741, 20.311619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921318, 34.884079, 20.353531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169816, 0.147237, 0.974415,
		0.345930, -0.916949, 0.198840,
		0.922765, 0.370845, 0.104779,
		41.198147, 34.995331, 20.384964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612720, 34.651402, 20.930000>,  <40.552212, 34.735741, 20.311619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612720, 34.651402, 20.930000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926846, 34.895092, 20.885967>,  <41.115322, 35.041306, 20.859547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926846, 34.895092, 20.885967>,  <40.612720, 34.651402, 20.930000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926846, 34.895092, 20.885967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141851, 0.350152, 0.925890,
		0.602626, -0.711500, 0.361399,
		0.785316, 0.609231, -0.110084,
		41.162441, 35.077862, 20.852942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956165, 34.620739, 21.589043>,  <40.612720, 34.651402, 20.930000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956165, 34.620739, 21.589043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073811, 34.962341, 21.417381>,  <41.144398, 35.167301, 21.314384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073811, 34.962341, 21.417381>,  <40.956165, 34.620739, 21.589043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073811, 34.962341, 21.417381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204146, 0.494784, 0.844697,
		0.933715, -0.160825, 0.319863,
		0.294111, 0.854005, -0.429155,
		41.162045, 35.218544, 21.288635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414879, 34.834000, 22.003670>,  <40.956165, 34.620739, 21.589043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414879, 34.834000, 22.003670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272823, 35.169323, 21.838203>,  <41.187592, 35.370518, 21.738924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272823, 35.169323, 21.838203>,  <41.414879, 34.834000, 22.003670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272823, 35.169323, 21.838203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025246, 0.433748, 0.900681,
		0.934474, 0.330306, -0.132875,
		-0.355134, 0.838309, -0.413665,
		41.166283, 35.420815, 21.714104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527809, 35.259838, 22.601278>,  <41.414879, 34.834000, 22.003670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527809, 35.259838, 22.601278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316673, 35.500118, 22.361095>,  <41.189991, 35.644287, 22.216986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316673, 35.500118, 22.361095>,  <41.527809, 35.259838, 22.601278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316673, 35.500118, 22.361095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237879, 0.574119, 0.783454,
		0.815354, 0.556372, -0.160148,
		-0.527837, 0.600697, -0.600459,
		41.158321, 35.680328, 22.180958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739765, 35.877872, 22.737688>,  <41.527809, 35.259838, 22.601278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739765, 35.877872, 22.737688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385101, 35.948490, 22.566727>,  <41.172302, 35.990860, 22.464149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385101, 35.948490, 22.566727>,  <41.739765, 35.877872, 22.737688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385101, 35.948490, 22.566727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199666, 0.687507, 0.698189,
		0.417102, 0.704392, -0.574333,
		-0.886656, 0.176541, -0.427403,
		41.119106, 36.001453, 22.438505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685074, 36.566063, 22.937534>,  <41.739765, 35.877872, 22.737688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685074, 36.566063, 22.937534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325611, 36.420837, 22.839067>,  <41.109932, 36.333702, 22.779987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325611, 36.420837, 22.839067>,  <41.685074, 36.566063, 22.937534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325611, 36.420837, 22.839067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389357, 0.401740, 0.828859,
		-0.202035, 0.840707, -0.502388,
		-0.898656, -0.363067, -0.246169,
		41.056015, 36.311916, 22.765217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283550, 37.053425, 23.178909>,  <41.685074, 36.566063, 22.937534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283550, 37.053425, 23.178909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051861, 36.727856, 23.160887>,  <40.912849, 36.532513, 23.150074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051861, 36.727856, 23.160887>,  <41.283550, 37.053425, 23.178909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051861, 36.727856, 23.160887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505032, 0.314916, 0.803598,
		-0.639880, 0.488215, -0.593464,
		-0.579220, -0.813925, -0.045056,
		40.878094, 36.483677, 23.147369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601536, 37.316074, 23.073282>,  <41.283550, 37.053425, 23.178909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601536, 37.316074, 23.073282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569962, 36.949451, 23.230097>,  <40.551018, 36.729477, 23.324186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569962, 36.949451, 23.230097>,  <40.601536, 37.316074, 23.073282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569962, 36.949451, 23.230097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542978, 0.369341, 0.754163,
		-0.836029, -0.153338, -0.526824,
		-0.078936, -0.916556, 0.392039,
		40.546280, 36.674484, 23.347708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918156, 37.317142, 23.306618>,  <40.601536, 37.316074, 23.073282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918156, 37.317142, 23.306618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094261, 37.013248, 23.498022>,  <40.199924, 36.830914, 23.612864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094261, 37.013248, 23.498022>,  <39.918156, 37.317142, 23.306618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094261, 37.013248, 23.498022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461186, 0.265913, 0.846521,
		-0.770372, -0.593377, -0.233305,
		0.440267, -0.759733, 0.478509,
		40.226341, 36.785328, 23.641575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479401, 37.157360, 23.740534>,  <39.918156, 37.317142, 23.306618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479401, 37.157360, 23.740534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782150, 36.944260, 23.891968>,  <39.963799, 36.816399, 23.982828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782150, 36.944260, 23.891968>,  <39.479401, 37.157360, 23.740534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782150, 36.944260, 23.891968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420747, 0.046081, 0.906007,
		-0.500118, -0.845019, -0.189274,
		0.756871, -0.532747, 0.378585,
		40.009212, 36.784435, 24.005543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130474, 36.620106, 24.035906>,  <39.479401, 37.157360, 23.740534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130474, 36.620106, 24.035906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486229, 36.633709, 24.218258>,  <39.699684, 36.641872, 24.327669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486229, 36.633709, 24.218258>,  <39.130474, 36.620106, 24.035906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486229, 36.633709, 24.218258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451849, -0.085992, 0.887940,
		0.069401, -0.995715, -0.061112,
		0.889391, 0.034011, 0.455881,
		39.753048, 36.643913, 24.355022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276291, 36.025753, 24.560146>,  <39.130474, 36.620106, 24.035906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276291, 36.025753, 24.560146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485004, 36.346851, 24.675621>,  <39.610233, 36.539509, 24.744905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485004, 36.346851, 24.675621>,  <39.276291, 36.025753, 24.560146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485004, 36.346851, 24.675621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367187, -0.094115, 0.925374,
		0.770009, -0.588848, 0.245649,
		0.521786, 0.802745, 0.288687,
		39.641541, 36.587673, 24.762228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349407, 35.824215, 25.271374>,  <39.276291, 36.025753, 24.560146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349407, 35.824215, 25.271374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433949, 36.213837, 25.239006>,  <39.484673, 36.447609, 25.219585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433949, 36.213837, 25.239006>,  <39.349407, 35.824215, 25.271374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433949, 36.213837, 25.239006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394507, 0.160760, 0.904721,
		0.894256, -0.159294, 0.418248,
		0.211354, 0.974055, -0.080918,
		39.497356, 36.506054, 25.214731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335297, 36.026478, 25.906511>,  <39.349407, 35.824215, 25.271374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335297, 36.026478, 25.906511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333328, 36.381916, 25.723049>,  <39.332150, 36.595181, 25.612972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333328, 36.381916, 25.723049>,  <39.335297, 36.026478, 25.906511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333328, 36.381916, 25.723049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373990, 0.423743, 0.824968,
		0.927420, 0.175590, 0.330244,
		-0.004918, 0.888600, -0.458657,
		39.331852, 36.648495, 25.585451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587967, 36.594181, 26.465338>,  <39.335297, 36.026478, 25.906511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587967, 36.594181, 26.465338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371128, 36.741180, 26.163061>,  <39.241024, 36.829380, 25.981695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371128, 36.741180, 26.163061>,  <39.587967, 36.594181, 26.465338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371128, 36.741180, 26.163061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525929, 0.553006, 0.646207,
		0.655382, 0.747751, -0.106508,
		-0.542101, 0.367496, -0.755694,
		39.208496, 36.851429, 25.936354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539146, 37.325958, 26.573244>,  <39.587967, 36.594181, 26.465338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539146, 37.325958, 26.573244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233097, 37.225906, 26.335918>,  <39.049469, 37.165874, 26.193523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233097, 37.225906, 26.335918>,  <39.539146, 37.325958, 26.573244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233097, 37.225906, 26.335918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634609, 0.448785, 0.629177,
		0.108895, 0.857921, -0.502110,
		-0.765123, -0.250129, -0.593314,
		39.003559, 37.150867, 26.157925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202381, 38.006172, 26.404177>,  <39.539146, 37.325958, 26.573244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202381, 38.006172, 26.404177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939411, 37.712456, 26.336519>,  <38.781631, 37.536224, 26.295925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939411, 37.712456, 26.336519>,  <39.202381, 38.006172, 26.404177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939411, 37.712456, 26.336519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680706, 0.482465, 0.551241,
		-0.323168, 0.477533, -0.817021,
		-0.657420, -0.734295, -0.169143,
		38.742184, 37.492168, 26.285776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564583, 38.334759, 26.210829>,  <39.202381, 38.006172, 26.404177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564583, 38.334759, 26.210829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458500, 37.962948, 26.313314>,  <38.394852, 37.739861, 26.374805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458500, 37.962948, 26.313314>,  <38.564583, 38.334759, 26.210829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458500, 37.962948, 26.313314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713872, 0.367914, 0.595840,
		-0.648114, -0.024885, -0.761136,
		-0.265205, -0.929527, 0.256215,
		38.378937, 37.684090, 26.390179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760883, 38.284321, 26.155031>,  <38.564583, 38.334759, 26.210829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760883, 38.284321, 26.155031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880924, 37.985264, 26.392000>,  <37.952950, 37.805828, 26.534182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880924, 37.985264, 26.392000>,  <37.760883, 38.284321, 26.155031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880924, 37.985264, 26.392000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728933, 0.220857, 0.647980,
		-0.615299, -0.626301, -0.478701,
		0.300106, -0.747643, 0.592425,
		37.970955, 37.760971, 26.569727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185646, 37.968166, 26.348967>,  <37.760883, 38.284321, 26.155031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185646, 37.968166, 26.348967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441975, 37.852119, 26.633272>,  <37.595772, 37.782490, 26.803856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441975, 37.852119, 26.633272>,  <37.185646, 37.968166, 26.348967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441975, 37.852119, 26.633272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688486, 0.192396, 0.699265,
		-0.339616, -0.937452, -0.076450,
		0.640819, -0.290116, 0.710763,
		37.634220, 37.765083, 26.846500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769314, 37.476624, 26.759687>,  <37.185646, 37.968166, 26.348967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769314, 37.476624, 26.759687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075623, 37.594421, 26.988377>,  <37.259407, 37.665100, 27.125589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075623, 37.594421, 26.988377>,  <36.769314, 37.476624, 26.759687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075623, 37.594421, 26.988377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619837, 0.100965, 0.778209,
		0.171460, -0.950303, 0.259859,
		0.765770, 0.294502, 0.571721,
		37.305355, 37.682770, 27.159893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624737, 37.150814, 27.352762>,  <36.769314, 37.476624, 26.759687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624737, 37.150814, 27.352762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899158, 37.420074, 27.463181>,  <37.063812, 37.581631, 27.529432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899158, 37.420074, 27.463181>,  <36.624737, 37.150814, 27.352762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899158, 37.420074, 27.463181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431056, 0.070416, 0.899574,
		0.586110, -0.736145, 0.338475,
		0.686051, 0.673150, 0.276048,
		37.104973, 37.622021, 27.545996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850189, 36.924042, 28.033533>,  <36.624737, 37.150814, 27.352762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850189, 36.924042, 28.033533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963982, 37.305225, 27.991707>,  <37.032257, 37.533936, 27.966610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963982, 37.305225, 27.991707>,  <36.850189, 36.924042, 28.033533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963982, 37.305225, 27.991707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384761, 0.213398, 0.898009,
		0.878083, -0.215232, 0.427370,
		0.284480, 0.952962, -0.104568,
		37.049324, 37.591114, 27.960337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088589, 37.180290, 28.708393>,  <36.850189, 36.924042, 28.033533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088589, 37.180290, 28.708393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029041, 37.528671, 28.521084>,  <36.993313, 37.737701, 28.408697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029041, 37.528671, 28.521084>,  <37.088589, 37.180290, 28.708393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029041, 37.528671, 28.521084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588504, 0.302527, 0.749760,
		0.794671, 0.387195, 0.467523,
		-0.148865, 0.870952, -0.468275,
		36.984383, 37.789955, 28.380602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097206, 37.685131, 29.284369>,  <37.088589, 37.180290, 28.708393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097206, 37.685131, 29.284369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890568, 37.808949, 28.965042>,  <36.766586, 37.883240, 28.773445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890568, 37.808949, 28.965042>,  <37.097206, 37.685131, 29.284369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890568, 37.808949, 28.965042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770544, 0.238477, 0.591093,
		0.373349, 0.920496, 0.115321,
		-0.516597, 0.309544, -0.798317,
		36.735588, 37.901810, 28.725548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854706, 38.344910, 29.488176>,  <37.097206, 37.685131, 29.284369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854706, 38.344910, 29.488176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628998, 38.236904, 29.176102>,  <36.493572, 38.172100, 28.988857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628998, 38.236904, 29.176102>,  <36.854706, 38.344910, 29.488176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628998, 38.236904, 29.176102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813088, 0.345585, 0.468465,
		0.143126, 0.898700, -0.414551,
		-0.564272, -0.270017, -0.780184,
		36.459717, 38.155899, 28.942047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348579, 38.905193, 29.395922>,  <36.854706, 38.344910, 29.488176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348579, 38.905193, 29.395922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194023, 38.585743, 29.211357>,  <36.101288, 38.394073, 29.100618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194023, 38.585743, 29.211357>,  <36.348579, 38.905193, 29.395922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194023, 38.585743, 29.211357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812192, 0.057543, 0.580546,
		-0.437086, 0.599074, -0.670870,
		-0.386394, -0.798623, -0.461412,
		36.078106, 38.346157, 29.072933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839096, 39.112801, 29.083454>,  <36.348579, 38.905193, 29.395922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839096, 39.112801, 29.083454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764492, 38.721119, 29.115389>,  <35.719730, 38.486111, 29.134550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764492, 38.721119, 29.115389>,  <35.839096, 39.112801, 29.083454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764492, 38.721119, 29.115389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695661, 0.189013, 0.693058,
		-0.693735, 0.073726, -0.716447,
		-0.186514, -0.979203, 0.079836,
		35.708538, 38.427357, 29.139339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221848, 39.152283, 29.424135>,  <35.839096, 39.112801, 29.083454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221848, 39.152283, 29.424135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305721, 38.761826, 29.446699>,  <35.356045, 38.527554, 29.460238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305721, 38.761826, 29.446699>,  <35.221848, 39.152283, 29.424135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305721, 38.761826, 29.446699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577477, -0.077082, 0.812760,
		-0.789019, -0.203001, -0.579862,
		0.209688, -0.976140, 0.056409,
		35.368629, 38.468983, 29.463621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532505, 38.775051, 29.490845>,  <35.221848, 39.152283, 29.424135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532505, 38.775051, 29.490845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822380, 38.538441, 29.632225>,  <34.996307, 38.396477, 29.717052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822380, 38.538441, 29.632225>,  <34.532505, 38.775051, 29.490845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822380, 38.538441, 29.632225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510548, -0.116435, 0.851929,
		-0.462780, -0.797838, -0.386380,
		0.724689, -0.591521, 0.353451,
		35.039787, 38.360985, 29.738260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216389, 38.164066, 29.675812>,  <34.532505, 38.775051, 29.490845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216389, 38.164066, 29.675812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543968, 38.213276, 29.900019>,  <34.740517, 38.242802, 30.034544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543968, 38.213276, 29.900019>,  <34.216389, 38.164066, 29.675812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543968, 38.213276, 29.900019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544209, -0.143416, 0.826600,
		0.182083, -0.981986, -0.050497,
		0.818952, 0.123030, 0.560519,
		34.789654, 38.250183, 30.068174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144943, 37.651051, 30.124134>,  <34.216389, 38.164066, 29.675812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144943, 37.651051, 30.124134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403347, 37.902401, 30.297485>,  <34.558388, 38.053211, 30.401495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403347, 37.902401, 30.297485>,  <34.144943, 37.651051, 30.124134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403347, 37.902401, 30.297485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453999, -0.140119, 0.879915,
		0.613643, -0.765185, 0.194765,
		0.646008, 0.628378, 0.433377,
		34.597149, 38.090916, 30.427498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360065, 37.416897, 30.869106>,  <34.144943, 37.651051, 30.124134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360065, 37.416897, 30.869106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453762, 37.805481, 30.854212>,  <34.509979, 38.038631, 30.845276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453762, 37.805481, 30.854212>,  <34.360065, 37.416897, 30.869106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453762, 37.805481, 30.854212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445543, 0.141318, 0.884037,
		0.864072, -0.190491, 0.465933,
		0.234246, 0.971464, -0.037237,
		34.524036, 38.096920, 30.843040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478909, 37.557426, 31.609682>,  <34.360065, 37.416897, 30.869106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478909, 37.557426, 31.609682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410816, 37.916813, 31.447803>,  <34.369961, 38.132446, 31.350676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410816, 37.916813, 31.447803>,  <34.478909, 37.557426, 31.609682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410816, 37.916813, 31.447803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455304, 0.292508, 0.840915,
		0.873911, 0.327409, 0.359281,
		-0.170231, 0.898467, -0.404697,
		34.359749, 38.186352, 31.326395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692120, 38.106407, 32.131737>,  <34.478909, 37.557426, 31.609682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692120, 38.106407, 32.131737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411869, 38.273590, 31.900414>,  <34.243721, 38.373898, 31.761620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411869, 38.273590, 31.900414>,  <34.692120, 38.106407, 32.131737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411869, 38.273590, 31.900414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492811, 0.302681, 0.815795,
		0.516009, 0.856562, -0.006092,
		-0.700622, 0.417955, -0.578310,
		34.201683, 38.398975, 31.726921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965099, 38.175476, 32.731243>,  <34.692120, 38.106407, 32.131737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965099, 38.175476, 32.731243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281631, 38.219891, 32.971733>,  <35.471550, 38.246540, 33.116028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281631, 38.219891, 32.971733>,  <34.965099, 38.175476, 32.731243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281631, 38.219891, 32.971733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602336, 0.027004, -0.797786,
		-0.104816, 0.993450, -0.045510,
		0.791331, 0.111033, 0.601221,
		35.519032, 38.253201, 33.152100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457157, 38.595867, 32.374619>,  <34.965099, 38.175476, 32.731243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457157, 38.595867, 32.374619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703255, 38.499359, 32.674824>,  <35.850914, 38.441452, 32.854946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703255, 38.499359, 32.674824>,  <35.457157, 38.595867, 32.374619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703255, 38.499359, 32.674824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787438, 0.233594, -0.570416,
		-0.037689, 0.941924, 0.333703,
		0.615240, -0.241272, 0.750511,
		35.887825, 38.426979, 32.899979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979553, 39.085518, 32.401100>,  <35.457157, 38.595867, 32.374619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979553, 39.085518, 32.401100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210987, 38.855438, 32.632401>,  <36.349850, 38.717388, 32.771183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210987, 38.855438, 32.632401>,  <35.979553, 39.085518, 32.401100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210987, 38.855438, 32.632401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802078, 0.272610, -0.531370,
		0.148008, 0.771249, 0.619087,
		0.578588, -0.575203, 0.578253,
		36.384563, 38.682877, 32.805878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524277, 39.426529, 32.688576>,  <35.979553, 39.085518, 32.401100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524277, 39.426529, 32.688576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652603, 39.047794, 32.698154>,  <36.729599, 38.820553, 32.703903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652603, 39.047794, 32.698154>,  <36.524277, 39.426529, 32.688576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652603, 39.047794, 32.698154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884922, 0.290631, -0.363931,
		0.337625, 0.137946, 0.931118,
		0.320815, -0.946839, 0.023947,
		36.748848, 38.763744, 32.705338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301514, 39.413116, 32.903332>,  <36.524277, 39.426529, 32.688576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301514, 39.413116, 32.903332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257359, 39.050404, 32.740578>,  <37.230865, 38.832775, 32.642925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257359, 39.050404, 32.740578>,  <37.301514, 39.413116, 32.903332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257359, 39.050404, 32.740578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956391, 0.014478, -0.291730,
		0.270428, -0.421341, 0.865644,
		-0.110385, -0.906787, -0.406883,
		37.224243, 38.778366, 32.618511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942413, 38.951088, 33.076134>,  <37.301514, 39.413116, 32.903332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942413, 38.951088, 33.076134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753845, 38.789486, 32.762566>,  <37.640705, 38.692524, 32.574425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753845, 38.789486, 32.762566>,  <37.942413, 38.951088, 33.076134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753845, 38.789486, 32.762566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844193, 0.050439, -0.533661,
		0.255144, -0.913363, 0.317282,
		-0.471423, -0.404008, -0.783924,
		37.612419, 38.668285, 32.527390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286289, 38.419678, 32.879753>,  <37.942413, 38.951088, 33.076134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286289, 38.419678, 32.879753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074070, 38.510117, 32.552975>,  <37.946739, 38.564381, 32.356907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074070, 38.510117, 32.552975>,  <38.286289, 38.419678, 32.879753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074070, 38.510117, 32.552975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765480, -0.286171, -0.576322,
		-0.364093, -0.931120, -0.021250,
		-0.530544, 0.226102, -0.816947,
		37.914906, 38.577946, 32.307892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544128, 37.906017, 32.477139>,  <38.286289, 38.419678, 32.879753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544128, 37.906017, 32.477139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363182, 38.141338, 32.209026>,  <38.254616, 38.282532, 32.048161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363182, 38.141338, 32.209026>,  <38.544128, 37.906017, 32.477139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363182, 38.141338, 32.209026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473255, -0.478679, -0.739524,
		-0.755909, -0.651745, -0.061880,
		-0.452361, 0.588298, -0.670280,
		38.227474, 38.317829, 32.007942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213867, 37.419273, 31.955841>,  <38.544128, 37.906017, 32.477139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213867, 37.419273, 31.955841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274761, 37.789715, 31.817766>,  <38.311298, 38.011978, 31.734921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274761, 37.789715, 31.817766>,  <38.213867, 37.419273, 31.955841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274761, 37.789715, 31.817766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472399, -0.374964, -0.797647,
		-0.868138, -0.041634, -0.494574,
		0.152238, 0.926104, -0.345188,
		38.320435, 38.067547, 31.714211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116623, 37.365471, 31.204760>,  <38.213867, 37.419273, 31.955841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116623, 37.365471, 31.204760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315918, 37.706890, 31.265711>,  <38.435497, 37.911739, 31.302282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315918, 37.706890, 31.265711>,  <38.116623, 37.365471, 31.204760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315918, 37.706890, 31.265711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560781, -0.183196, -0.807443,
		-0.661272, 0.487753, -0.569927,
		0.498241, 0.853543, 0.152380,
		38.465389, 37.962952, 31.311424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062359, 37.722282, 30.580683>,  <38.116623, 37.365471, 31.204760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062359, 37.722282, 30.580683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398434, 37.864017, 30.744896>,  <38.600079, 37.949059, 30.843424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398434, 37.864017, 30.744896>,  <38.062359, 37.722282, 30.580683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398434, 37.864017, 30.744896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495186, -0.192644, -0.847160,
		-0.221090, 0.915061, -0.337317,
		0.840185, 0.354333, 0.410534,
		38.650490, 37.970318, 30.868055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370827, 38.123081, 30.123903>,  <38.062359, 37.722282, 30.580683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370827, 38.123081, 30.123903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677910, 38.068768, 30.374403>,  <38.862160, 38.036179, 30.524702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677910, 38.068768, 30.374403>,  <38.370827, 38.123081, 30.123903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677910, 38.068768, 30.374403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633473, 0.013431, -0.773648,
		0.096641, 0.990647, 0.096329,
		0.767706, -0.135788, 0.626250,
		38.908222, 38.028030, 30.562279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909187, 38.405815, 29.672827>,  <38.370827, 38.123081, 30.123903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909187, 38.405815, 29.672827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123875, 38.255150, 29.974834>,  <39.252689, 38.164749, 30.156038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123875, 38.255150, 29.974834>,  <38.909187, 38.405815, 29.672827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123875, 38.255150, 29.974834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757800, -0.178308, -0.627651,
		0.371040, 0.909027, 0.189736,
		0.536720, -0.376666, 0.755019,
		39.284889, 38.142151, 30.201340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494488, 38.755714, 29.674578>,  <38.909187, 38.405815, 29.672827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494488, 38.755714, 29.674578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566090, 38.393692, 29.828892>,  <39.609051, 38.176479, 29.921480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566090, 38.393692, 29.828892>,  <39.494488, 38.755714, 29.674578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566090, 38.393692, 29.828892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809373, -0.087462, -0.580745,
		0.559349, 0.416201, 0.716872,
		0.179007, -0.905057, 0.385784,
		39.619793, 38.122173, 29.944628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194809, 38.685867, 29.790730>,  <39.494488, 38.755714, 29.674578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194809, 38.685867, 29.790730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062580, 38.308643, 29.775934>,  <39.983242, 38.082310, 29.767057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062580, 38.308643, 29.775934>,  <40.194809, 38.685867, 29.790730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062580, 38.308643, 29.775934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825822, -0.270062, -0.495060,
		0.456880, -0.194199, 0.868071,
		-0.330573, -0.943055, -0.036988,
		39.963409, 38.025726, 29.764837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805946, 38.402214, 29.781147>,  <40.194809, 38.685867, 29.790730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805946, 38.402214, 29.781147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545540, 38.136078, 29.634998>,  <40.389297, 37.976395, 29.547310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545540, 38.136078, 29.634998>,  <40.805946, 38.402214, 29.781147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545540, 38.136078, 29.634998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732180, -0.423457, -0.533476,
		0.200225, -0.614820, 0.762828,
		-0.651017, -0.665342, -0.365372,
		40.350235, 37.936474, 29.525387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220158, 37.863514, 29.506817>,  <40.805946, 38.402214, 29.781147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220158, 37.863514, 29.506817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877377, 37.745319, 29.337904>,  <40.671707, 37.674404, 29.236555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877377, 37.745319, 29.337904>,  <41.220158, 37.863514, 29.506817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877377, 37.745319, 29.337904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499156, -0.271751, -0.822797,
		0.128370, -0.915882, 0.380371,
		-0.856951, -0.295487, -0.422283,
		40.620293, 37.656673, 29.211220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129784, 37.100296, 29.352295>,  <41.220158, 37.863514, 29.506817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129784, 37.100296, 29.352295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870461, 37.255699, 29.090374>,  <40.714867, 37.348942, 28.933222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870461, 37.255699, 29.090374>,  <41.129784, 37.100296, 29.352295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870461, 37.255699, 29.090374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541283, -0.369647, -0.755231,
		-0.535457, -0.844053, 0.029352,
		-0.648304, 0.388506, -0.654801,
		40.675968, 37.372250, 28.893934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958221, 36.611496, 28.853701>,  <41.129784, 37.100296, 29.352295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958221, 36.611496, 28.853701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862743, 36.953072, 28.668743>,  <40.805458, 37.158016, 28.557768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862743, 36.953072, 28.668743>,  <40.958221, 36.611496, 28.853701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862743, 36.953072, 28.668743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333302, -0.375191, -0.864952,
		-0.912104, -0.360576, -0.195065,
		-0.238694, 0.853942, -0.462394,
		40.791134, 37.209255, 28.530025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642338, 36.372234, 28.256680>,  <40.958221, 36.611496, 28.853701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642338, 36.372234, 28.256680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761166, 36.750488, 28.203714>,  <40.832462, 36.977440, 28.171934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761166, 36.750488, 28.203714>,  <40.642338, 36.372234, 28.256680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761166, 36.750488, 28.203714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305010, -0.225384, -0.925295,
		-0.904832, 0.234486, -0.355380,
		0.297065, 0.945631, -0.132414,
		40.850285, 37.034176, 28.163990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416130, 36.470715, 27.610586>,  <40.642338, 36.372234, 28.256680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416130, 36.470715, 27.610586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681763, 36.764153, 27.668322>,  <40.841141, 36.940216, 27.702963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681763, 36.764153, 27.668322>,  <40.416130, 36.470715, 27.610586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681763, 36.764153, 27.668322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337392, -0.121757, -0.933457,
		-0.667206, 0.668589, -0.328366,
		0.664080, 0.733596, 0.144340,
		40.880985, 36.984230, 27.711624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459663, 36.859520, 26.982899>,  <40.416130, 36.470715, 27.610586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459663, 36.859520, 26.982899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803276, 36.916584, 27.179558>,  <41.009441, 36.950821, 27.297554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803276, 36.916584, 27.179558>,  <40.459663, 36.859520, 26.982899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803276, 36.916584, 27.179558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507511, -0.111462, -0.854406,
		-0.067086, 0.983476, -0.168149,
		0.859030, 0.142656, 0.491647,
		41.060986, 36.959381, 27.327051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810101, 37.260635, 26.573410>,  <40.459663, 36.859520, 26.982899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810101, 37.260635, 26.573410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097881, 37.116264, 26.810768>,  <41.270550, 37.029640, 26.953184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097881, 37.116264, 26.810768>,  <40.810101, 37.260635, 26.573410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097881, 37.116264, 26.810768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465218, -0.383964, -0.797587,
		0.515716, 0.849883, -0.108332,
		0.719451, -0.360929, 0.593397,
		41.313717, 37.007984, 26.988787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500122, 37.418247, 26.246572>,  <40.810101, 37.260635, 26.573410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500122, 37.418247, 26.246572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513760, 37.095486, 26.482452>,  <41.521942, 36.901829, 26.623980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513760, 37.095486, 26.482452>,  <41.500122, 37.418247, 26.246572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513760, 37.095486, 26.482452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485799, -0.502266, -0.715352,
		0.873406, 0.310864, 0.374868,
		0.034094, -0.806903, 0.589699,
		41.523987, 36.853416, 26.659363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229939, 37.261391, 26.310148>,  <41.500122, 37.418247, 26.246572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229939, 37.261391, 26.310148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017857, 36.937542, 26.410858>,  <41.890606, 36.743233, 26.471283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017857, 36.937542, 26.410858>,  <42.229939, 37.261391, 26.310148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017857, 36.937542, 26.410858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631334, -0.575205, -0.520150,
		0.565946, -0.116836, 0.816121,
		-0.530209, -0.809622, 0.251773,
		41.858795, 36.694656, 26.486389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665314, 36.731873, 26.517309>,  <42.229939, 37.261391, 26.310148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665314, 36.731873, 26.517309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322651, 36.538086, 26.446388>,  <42.117054, 36.421814, 26.403835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322651, 36.538086, 26.446388>,  <42.665314, 36.731873, 26.517309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322651, 36.538086, 26.446388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505433, -0.719324, -0.476561,
		0.103337, -0.497864, 0.861077,
		-0.856656, -0.484463, -0.177304,
		42.065655, 36.392746, 26.393196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910419, 36.034176, 26.422646>,  <42.665314, 36.731873, 26.517309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910419, 36.034176, 26.422646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549801, 36.077236, 26.255018>,  <42.333427, 36.103073, 26.154442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549801, 36.077236, 26.255018>,  <42.910419, 36.034176, 26.422646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549801, 36.077236, 26.255018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280348, -0.592407, -0.755287,
		-0.329564, -0.798415, 0.503906,
		-0.901550, 0.107646, -0.419070,
		42.279335, 36.109531, 26.129297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707439, 35.389618, 26.244614>,  <42.910419, 36.034176, 26.422646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707439, 35.389618, 26.244614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474888, 35.612156, 26.007133>,  <42.335358, 35.745678, 25.864645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474888, 35.612156, 26.007133>,  <42.707439, 35.389618, 26.244614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474888, 35.612156, 26.007133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220533, -0.594624, -0.773167,
		-0.783177, -0.580431, 0.223008,
		-0.581376, 0.556347, -0.593700,
		42.300476, 35.779060, 25.829023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171928, 34.989323, 25.875128>,  <42.707439, 35.389618, 26.244614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171928, 34.989323, 25.875128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216206, 35.313789, 25.645433>,  <42.242771, 35.508469, 25.507616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216206, 35.313789, 25.645433>,  <42.171928, 34.989323, 25.875128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216206, 35.313789, 25.645433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193628, -0.584318, -0.788087,
		-0.974810, -0.023951, -0.221746,
		0.110694, 0.811171, -0.574237,
		42.249413, 35.557140, 25.473162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693691, 34.965340, 25.251707>,  <42.171928, 34.989323, 25.875128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693691, 34.965340, 25.251707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990097, 35.195198, 25.112757>,  <42.167942, 35.333115, 25.029387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990097, 35.195198, 25.112757>,  <41.693691, 34.965340, 25.251707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990097, 35.195198, 25.112757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112229, -0.616041, -0.779678,
		-0.662040, 0.538769, -0.520990,
		0.741018, 0.574649, -0.347378,
		42.212402, 35.367592, 25.008543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558723, 34.914700, 24.496857>,  <41.693691, 34.965340, 25.251707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558723, 34.914700, 24.496857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920364, 35.081074, 24.536037>,  <42.137348, 35.180897, 24.559546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920364, 35.081074, 24.536037>,  <41.558723, 34.914700, 24.496857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920364, 35.081074, 24.536037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294664, -0.440829, -0.847846,
		-0.309470, 0.795403, -0.521116,
		0.904103, 0.415937, 0.097953,
		42.191597, 35.205856, 24.565424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752365, 35.162243, 23.889830>,  <41.558723, 34.914700, 24.496857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752365, 35.162243, 23.889830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115967, 35.130863, 24.053562>,  <42.334129, 35.112034, 24.151802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115967, 35.130863, 24.053562>,  <41.752365, 35.162243, 23.889830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115967, 35.130863, 24.053562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333123, -0.453462, -0.826681,
		0.250468, 0.887816, -0.386067,
		0.909008, -0.078449, 0.409330,
		42.388668, 35.107330, 24.176361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130531, 35.331364, 23.417206>,  <41.752365, 35.162243, 23.889830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130531, 35.331364, 23.417206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410530, 35.169277, 23.652426>,  <42.578529, 35.072025, 23.793558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410530, 35.169277, 23.652426>,  <42.130531, 35.331364, 23.417206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410530, 35.169277, 23.652426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429142, -0.419503, -0.799909,
		0.570822, 0.812293, -0.119759,
		0.700000, -0.405212, 0.588051,
		42.620529, 35.047714, 23.828840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818344, 35.305878, 23.006786>,  <42.130531, 35.331364, 23.417206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818344, 35.305878, 23.006786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864971, 35.047009, 23.308140>,  <42.892948, 34.891689, 23.488951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864971, 35.047009, 23.308140>,  <42.818344, 35.305878, 23.006786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864971, 35.047009, 23.308140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592361, -0.563564, -0.575763,
		0.797195, 0.513388, 0.317666,
		0.116565, -0.647169, 0.753382,
		42.899940, 34.852859, 23.534155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498981, 35.156315, 23.131292>,  <42.818344, 35.305878, 23.006786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498981, 35.156315, 23.131292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367004, 34.820293, 23.303547>,  <43.287819, 34.618679, 23.406898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367004, 34.820293, 23.303547>,  <43.498981, 35.156315, 23.131292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367004, 34.820293, 23.303547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552042, -0.541750, -0.633843,
		0.765758, 0.028596, 0.642493,
		-0.329945, -0.840053, 0.430635,
		43.268021, 34.568279, 23.432737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096836, 34.757523, 23.343027>,  <43.498981, 35.156315, 23.131292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096836, 34.757523, 23.343027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793240, 34.502136, 23.291962>,  <43.611084, 34.348904, 23.261322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793240, 34.502136, 23.291962>,  <44.096836, 34.757523, 23.343027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793240, 34.502136, 23.291962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513726, -0.466758, -0.719877,
		0.400027, -0.611964, 0.682260,
		-0.758989, -0.638465, -0.127666,
		43.565544, 34.310596, 23.253662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349342, 34.130150, 23.233345>,  <44.096836, 34.757523, 23.343027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349342, 34.130150, 23.233345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983444, 34.075699, 23.081182>,  <43.763905, 34.043026, 22.989885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983444, 34.075699, 23.081182>,  <44.349342, 34.130150, 23.233345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983444, 34.075699, 23.081182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390104, -0.542644, -0.743879,
		-0.105159, -0.828858, 0.549487,
		-0.914746, -0.136131, -0.380405,
		43.709019, 34.034859, 22.967060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414616, 33.569317, 22.987823>,  <44.349342, 34.130150, 23.233345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414616, 33.569317, 22.987823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065041, 33.636086, 22.805231>,  <43.855297, 33.676147, 22.695675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065041, 33.636086, 22.805231>,  <44.414616, 33.569317, 22.987823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065041, 33.636086, 22.805231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252822, -0.646006, -0.720248,
		-0.415112, -0.744858, 0.522368,
		-0.873935, 0.166917, -0.456481,
		43.802860, 33.686161, 22.668287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135033, 33.006916, 22.888700>,  <44.414616, 33.569317, 22.987823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135033, 33.006916, 22.888700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999966, 33.233829, 22.588255>,  <43.918926, 33.369976, 22.407988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999966, 33.233829, 22.588255>,  <44.135033, 33.006916, 22.888700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999966, 33.233829, 22.588255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107740, -0.769443, -0.629563,
		-0.935078, -0.293510, 0.198699,
		-0.337670, 0.567283, -0.751112,
		43.898666, 33.404015, 22.362921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769222, 32.338451, 23.088097>,  <44.135033, 33.006916, 22.888700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769222, 32.338451, 23.088097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124332, 32.207188, 23.217190>,  <44.337399, 32.128429, 23.294645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124332, 32.207188, 23.217190>,  <43.769222, 32.338451, 23.088097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124332, 32.207188, 23.217190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268485, 0.200307, 0.942228,
		-0.373849, -0.923140, 0.089722,
		0.887780, -0.328162, 0.322733,
		44.390667, 32.108738, 23.314011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721210, 31.746323, 23.586626>,  <43.769222, 32.338451, 23.088097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721210, 31.746323, 23.586626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068874, 31.934942, 23.646236>,  <44.277473, 32.048115, 23.682003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068874, 31.934942, 23.646236>,  <43.721210, 31.746323, 23.586626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068874, 31.934942, 23.646236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295450, 0.253467, 0.921121,
		0.396581, -0.844628, 0.359622,
		0.869156, 0.471549, 0.149026,
		44.329620, 32.076408, 23.690945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989822, 31.381800, 24.212049>,  <43.721210, 31.746323, 23.586626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989822, 31.381800, 24.212049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174366, 31.734589, 24.173527>,  <44.285091, 31.946262, 24.150414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174366, 31.734589, 24.173527>,  <43.989822, 31.381800, 24.212049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174366, 31.734589, 24.173527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056286, 0.137428, 0.988911,
		0.885426, -0.450822, 0.113046,
		0.461358, 0.881971, -0.096307,
		44.312775, 31.999180, 24.144634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434807, 31.387152, 24.745861>,  <43.989822, 31.381800, 24.212049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434807, 31.387152, 24.745861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422440, 31.776503, 24.655016>,  <44.415020, 32.010113, 24.600508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422440, 31.776503, 24.655016>,  <44.434807, 31.387152, 24.745861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422440, 31.776503, 24.655016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124088, 0.221727, 0.967181,
		0.991789, 0.058082, 0.113930,
		-0.030914, 0.973377, -0.227114,
		44.413166, 32.068516, 24.586882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727886, 31.730606, 25.363441>,  <44.434807, 31.387152, 24.745861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727886, 31.730606, 25.363441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564003, 32.025799, 25.148956>,  <44.465675, 32.202915, 25.020266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564003, 32.025799, 25.148956>,  <44.727886, 31.730606, 25.363441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564003, 32.025799, 25.148956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080192, 0.556399, 0.827036,
		0.908687, 0.381840, -0.168779,
		-0.409704, 0.737982, -0.536213,
		44.441093, 32.247192, 24.988092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976051, 32.322239, 25.690571>,  <44.727886, 31.730606, 25.363441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976051, 32.322239, 25.690571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643803, 32.460842, 25.516214>,  <44.444454, 32.544003, 25.411600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643803, 32.460842, 25.516214>,  <44.976051, 32.322239, 25.690571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643803, 32.460842, 25.516214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256956, 0.455955, 0.852103,
		0.494003, 0.819781, -0.289690,
		-0.830623, 0.346504, -0.435891,
		44.394615, 32.564793, 25.385447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895912, 33.027016, 25.769657>,  <44.976051, 32.322239, 25.690571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895912, 33.027016, 25.769657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517063, 32.910881, 25.715019>,  <44.289753, 32.841198, 25.682238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517063, 32.910881, 25.715019>,  <44.895912, 33.027016, 25.769657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517063, 32.910881, 25.715019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255528, 0.425030, 0.868363,
		-0.194065, 0.857351, -0.476747,
		-0.947124, -0.290341, -0.136594,
		44.232925, 32.823780, 25.674042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602486, 33.595379, 26.048115>,  <44.895912, 33.027016, 25.769657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602486, 33.595379, 26.048115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329090, 33.304279, 26.025398>,  <44.165054, 33.129620, 26.011768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329090, 33.304279, 26.025398>,  <44.602486, 33.595379, 26.048115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329090, 33.304279, 26.025398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405526, 0.313871, 0.858507,
		-0.606953, 0.609809, -0.509648,
		-0.683489, -0.727749, -0.056789,
		44.124043, 33.085957, 26.008362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966984, 33.952366, 26.202185>,  <44.602486, 33.595379, 26.048115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966984, 33.952366, 26.202185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871624, 33.564381, 26.221531>,  <43.814407, 33.331589, 26.233139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871624, 33.564381, 26.221531>,  <43.966984, 33.952366, 26.202185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871624, 33.564381, 26.221531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530516, 0.171783, 0.830087,
		-0.813461, 0.172232, -0.555533,
		-0.238398, -0.969962, 0.048367,
		43.800106, 33.273392, 26.236040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285191, 33.868862, 26.268198>,  <43.966984, 33.952366, 26.202185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285191, 33.868862, 26.268198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414310, 33.536697, 26.449841>,  <43.491783, 33.337399, 26.558826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414310, 33.536697, 26.449841>,  <43.285191, 33.868862, 26.268198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414310, 33.536697, 26.449841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582292, 0.203999, 0.786969,
		-0.746148, -0.518456, -0.417692,
		0.322800, -0.830414, 0.454106,
		43.511150, 33.287575, 26.586073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782383, 33.626411, 26.570181>,  <43.285191, 33.868862, 26.268198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782383, 33.626411, 26.570181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065559, 33.460278, 26.798677>,  <43.235466, 33.360596, 26.935776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065559, 33.460278, 26.798677>,  <42.782383, 33.626411, 26.570181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065559, 33.460278, 26.798677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463007, 0.337840, 0.819444,
		-0.533331, -0.844607, 0.046868,
		0.707942, -0.415335, 0.571239,
		43.277943, 33.335678, 26.970049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441025, 33.271664, 27.078009>,  <42.782383, 33.626411, 26.570181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441025, 33.271664, 27.078009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806995, 33.292412, 27.238121>,  <43.026577, 33.304859, 27.334188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806995, 33.292412, 27.238121>,  <42.441025, 33.271664, 27.078009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806995, 33.292412, 27.238121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402745, 0.182807, 0.896871,
		-0.026654, -0.981780, 0.188144,
		0.914924, 0.051869, 0.400280,
		43.081474, 33.307972, 27.358206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393921, 33.064438, 27.843830>,  <42.441025, 33.271664, 27.078009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393921, 33.064438, 27.843830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728371, 33.282024, 27.815565>,  <42.929043, 33.412575, 27.798605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728371, 33.282024, 27.815565>,  <42.393921, 33.064438, 27.843830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728371, 33.282024, 27.815565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208353, 0.434112, 0.876434,
		0.507428, -0.718085, 0.476309,
		0.836126, 0.543967, -0.070665,
		42.979210, 33.445213, 27.794365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383114, 33.338413, 28.456285>,  <42.393921, 33.064438, 27.843830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383114, 33.338413, 28.456285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667957, 33.564316, 28.289455>,  <42.838863, 33.699860, 28.189358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667957, 33.564316, 28.289455>,  <42.383114, 33.338413, 28.456285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667957, 33.564316, 28.289455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237288, 0.752711, 0.614101,
		0.660758, -0.338337, 0.670020,
		0.712105, 0.564760, -0.417076,
		42.881588, 33.733746, 28.164333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863304, 33.615166, 28.958694>,  <42.383114, 33.338413, 28.456285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863304, 33.615166, 28.958694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897926, 33.858158, 28.642853>,  <42.918697, 34.003952, 28.453348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897926, 33.858158, 28.642853>,  <42.863304, 33.615166, 28.958694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897926, 33.858158, 28.642853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246027, 0.781063, 0.573943,
		0.965391, 0.144587, 0.217061,
		0.086553, 0.607482, -0.789604,
		42.923893, 34.040401, 28.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248749, 34.179062, 29.218853>,  <42.863304, 33.615166, 28.958694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248749, 34.179062, 29.218853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049614, 34.316685, 28.900410>,  <42.930134, 34.399258, 28.709343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049614, 34.316685, 28.900410>,  <43.248749, 34.179062, 29.218853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049614, 34.316685, 28.900410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400214, 0.723228, 0.562824,
		0.769408, 0.598807, -0.222354,
		-0.497835, 0.344053, -0.796108,
		42.900265, 34.419899, 28.661577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391201, 34.853546, 29.259312>,  <43.248749, 34.179062, 29.218853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391201, 34.853546, 29.259312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053902, 34.814472, 29.047884>,  <42.851521, 34.791027, 28.921028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053902, 34.814472, 29.047884>,  <43.391201, 34.853546, 29.259312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053902, 34.814472, 29.047884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408406, 0.755766, 0.511881,
		0.349474, 0.647515, -0.677194,
		-0.843251, -0.097681, -0.528570,
		42.800926, 34.785168, 28.889313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168861, 35.562214, 29.177237>,  <43.391201, 34.853546, 29.259312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168861, 35.562214, 29.177237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849579, 35.331623, 29.107328>,  <42.658009, 35.193268, 29.065384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849579, 35.331623, 29.107328>,  <43.168861, 35.562214, 29.177237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849579, 35.331623, 29.107328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570231, 0.629573, 0.527707,
		-0.194178, 0.520880, -0.831252,
		-0.798205, -0.576474, -0.174773,
		42.610119, 35.158680, 29.054897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718300, 35.968845, 29.010180>,  <43.168861, 35.562214, 29.177237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718300, 35.968845, 29.010180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511284, 35.648014, 29.129393>,  <42.387074, 35.455517, 29.200920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511284, 35.648014, 29.129393>,  <42.718300, 35.968845, 29.010180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511284, 35.648014, 29.129393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560204, 0.580898, 0.590533,
		-0.646781, 0.138664, -0.749965,
		-0.517538, -0.802079, 0.298033,
		42.356022, 35.407391, 29.218803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002911, 36.199337, 28.985983>,  <42.718300, 35.968845, 29.010180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002911, 36.199337, 28.985983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041130, 35.883175, 29.228018>,  <42.064064, 35.693478, 29.373240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041130, 35.883175, 29.228018>,  <42.002911, 36.199337, 28.985983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041130, 35.883175, 29.228018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412169, 0.521895, 0.746822,
		-0.906083, -0.320758, -0.275912,
		0.095552, -0.790405, 0.605087,
		42.069794, 35.646053, 29.409544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372746, 36.206059, 29.275974>,  <42.002911, 36.199337, 28.985983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372746, 36.206059, 29.275974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599056, 35.974022, 29.510370>,  <41.734844, 35.834801, 29.651009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599056, 35.974022, 29.510370>,  <41.372746, 36.206059, 29.275974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599056, 35.974022, 29.510370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438496, 0.390176, 0.809619,
		-0.698295, -0.715021, -0.033616,
		0.565778, -0.580093, 0.585992,
		41.768791, 35.799995, 29.686169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882545, 35.878819, 29.774471>,  <41.372746, 36.206059, 29.275974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882545, 35.878819, 29.774471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232250, 35.825340, 29.961147>,  <41.442074, 35.793255, 30.073153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232250, 35.825340, 29.961147>,  <40.882545, 35.878819, 29.774471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232250, 35.825340, 29.961147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354255, 0.481609, 0.801596,
		-0.331928, -0.866129, 0.373689,
		0.874258, -0.133691, 0.466690,
		41.494526, 35.785233, 30.101154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736847, 35.637035, 30.465290>,  <40.882545, 35.878819, 29.774471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736847, 35.637035, 30.465290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103420, 35.796898, 30.457140>,  <41.323364, 35.892815, 30.452250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103420, 35.796898, 30.457140>,  <40.736847, 35.637035, 30.465290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103420, 35.796898, 30.457140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188937, 0.476998, 0.858356,
		0.352769, -0.782780, 0.512650,
		0.916437, 0.399660, -0.020374,
		41.378353, 35.916798, 30.451027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934765, 35.447056, 31.128963>,  <40.736847, 35.637035, 30.465290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934765, 35.447056, 31.128963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169331, 35.728172, 30.967867>,  <41.310070, 35.896843, 30.871208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169331, 35.728172, 30.967867>,  <40.934765, 35.447056, 31.128963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169331, 35.728172, 30.967867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028858, 0.515016, 0.856695,
		0.809499, -0.490753, 0.322293,
		0.586412, 0.702794, -0.402743,
		41.345253, 35.939011, 30.847044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425446, 35.551723, 31.588646>,  <40.934765, 35.447056, 31.128963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425446, 35.551723, 31.588646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388111, 35.892658, 31.382811>,  <41.365711, 36.097221, 31.259310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388111, 35.892658, 31.382811>,  <41.425446, 35.551723, 31.588646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388111, 35.892658, 31.382811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110627, 0.504768, 0.856138,
		0.989470, 0.136834, 0.047180,
		-0.093334, 0.852342, -0.514590,
		41.360111, 36.148361, 31.228434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763195, 36.145081, 32.070885>,  <41.425446, 35.551723, 31.588646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763195, 36.145081, 32.070885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550686, 36.334572, 31.789932>,  <41.423180, 36.448265, 31.621361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550686, 36.334572, 31.789932>,  <41.763195, 36.145081, 32.070885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550686, 36.334572, 31.789932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347326, 0.634394, 0.690586,
		0.772734, 0.610841, -0.172496,
		-0.531269, 0.473727, -0.702379,
		41.391304, 36.476688, 31.579218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957214, 36.871269, 32.093376>,  <41.763195, 36.145081, 32.070885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957214, 36.871269, 32.093376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585831, 36.843853, 31.947357>,  <41.362999, 36.827404, 31.859745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585831, 36.843853, 31.947357>,  <41.957214, 36.871269, 32.093376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585831, 36.843853, 31.947357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319300, 0.649385, 0.690179,
		0.189754, 0.757365, -0.624813,
		-0.928461, -0.068538, -0.365050,
		41.307293, 36.823292, 31.837843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675331, 37.411697, 32.352066>,  <41.957214, 36.871269, 32.093376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675331, 37.411697, 32.352066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329388, 37.275959, 32.204082>,  <41.121822, 37.194515, 32.115292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329388, 37.275959, 32.204082>,  <41.675331, 37.411697, 32.352066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329388, 37.275959, 32.204082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501712, 0.558537, 0.660546,
		-0.017519, 0.756890, -0.653308,
		-0.864857, -0.339345, -0.369956,
		41.069931, 37.174156, 32.093098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199505, 37.991539, 32.162971>,  <41.675331, 37.411697, 32.352066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199505, 37.991539, 32.162971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000317, 37.661789, 32.270626>,  <40.880806, 37.463940, 32.335220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000317, 37.661789, 32.270626>,  <41.199505, 37.991539, 32.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000317, 37.661789, 32.270626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503946, 0.527663, 0.683820,
		-0.705738, 0.204888, -0.678199,
		-0.497967, -0.824374, 0.269139,
		40.850925, 37.414478, 32.351368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498215, 38.277710, 32.356628>,  <41.199505, 37.991539, 32.162971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498215, 38.277710, 32.356628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547215, 37.910553, 32.507603>,  <40.576614, 37.690258, 32.598186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547215, 37.910553, 32.507603>,  <40.498215, 38.277710, 32.356628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547215, 37.910553, 32.507603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561428, 0.249517, 0.789012,
		-0.818409, -0.308555, -0.484769,
		0.122496, -0.917897, 0.377438,
		40.583961, 37.635185, 32.620834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763729, 38.028137, 32.450985>,  <40.498215, 38.277710, 32.356628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763729, 38.028137, 32.450985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029392, 37.822315, 32.667919>,  <40.188789, 37.698822, 32.798080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029392, 37.822315, 32.667919>,  <39.763729, 38.028137, 32.450985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029392, 37.822315, 32.667919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547253, 0.159604, 0.821609,
		-0.509324, -0.842471, -0.175591,
		0.664156, -0.514558, 0.542334,
		40.228638, 37.667950, 32.830620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316303, 37.873215, 32.975517>,  <39.763729, 38.028137, 32.450985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316303, 37.873215, 32.975517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667141, 37.784313, 33.145840>,  <39.877644, 37.730972, 33.248032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667141, 37.784313, 33.145840>,  <39.316303, 37.873215, 32.975517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667141, 37.784313, 33.145840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410742, 0.112501, 0.904784,
		-0.248998, -0.968476, 0.007383,
		0.877092, -0.222257, 0.425806,
		39.930267, 37.717636, 33.273582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193790, 37.382477, 33.501610>,  <39.316303, 37.873215, 32.975517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193790, 37.382477, 33.501610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544472, 37.554821, 33.587166>,  <39.754879, 37.658230, 33.638500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544472, 37.554821, 33.587166>,  <39.193790, 37.382477, 33.501610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544472, 37.554821, 33.587166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244872, 0.017020, 0.969406,
		0.414043, -0.902256, 0.120428,
		0.876702, 0.430865, 0.213890,
		39.807484, 37.684082, 33.651333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254070, 37.056805, 34.010319>,  <39.193790, 37.382477, 33.501610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254070, 37.056805, 34.010319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515644, 37.358261, 34.036812>,  <39.672588, 37.539135, 34.052708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515644, 37.358261, 34.036812>,  <39.254070, 37.056805, 34.010319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515644, 37.358261, 34.036812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288231, 0.167231, 0.942845,
		0.699495, -0.635650, 0.326582,
		0.653935, 0.753646, 0.066237,
		39.711826, 37.584354, 34.056683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509613, 37.080383, 34.689598>,  <39.254070, 37.056805, 34.010319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509613, 37.080383, 34.689598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616226, 37.443169, 34.559139>,  <39.680195, 37.660839, 34.480862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616226, 37.443169, 34.559139>,  <39.509613, 37.080383, 34.689598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616226, 37.443169, 34.559139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079608, 0.357951, 0.930340,
		0.960534, -0.221998, 0.167606,
		0.266529, 0.906966, -0.326152,
		39.696186, 37.715260, 34.461292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080276, 37.278881, 35.228897>,  <39.509613, 37.080383, 34.689598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080276, 37.278881, 35.228897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928726, 37.607006, 35.057533>,  <39.837795, 37.803883, 34.954716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928726, 37.607006, 35.057533>,  <40.080276, 37.278881, 35.228897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928726, 37.607006, 35.057533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005504, 0.464915, 0.885338,
		0.925430, 0.333078, -0.180662,
		-0.378879, 0.820312, -0.428413,
		39.815063, 37.853100, 34.929008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511642, 37.795570, 35.471054>,  <40.080276, 37.278881, 35.228897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511642, 37.795570, 35.471054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152054, 37.936592, 35.367096>,  <39.936298, 38.021206, 35.304722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152054, 37.936592, 35.367096>,  <40.511642, 37.795570, 35.471054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152054, 37.936592, 35.367096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089495, 0.433006, 0.896937,
		0.428761, 0.829584, -0.357709,
		-0.898974, 0.352558, -0.259899,
		39.882362, 38.042358, 35.289127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451374, 38.332088, 35.916340>,  <40.511642, 37.795570, 35.471054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451374, 38.332088, 35.916340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082222, 38.329483, 35.762325>,  <39.860733, 38.327919, 35.669914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082222, 38.329483, 35.762325>,  <40.451374, 38.332088, 35.916340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082222, 38.329483, 35.762325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322325, 0.560187, 0.763084,
		0.210726, 0.828341, -0.519082,
		-0.922876, -0.006511, -0.385041,
		39.805359, 38.327530, 35.646812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146084, 39.053303, 35.878719>,  <40.451374, 38.332088, 35.916340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146084, 39.053303, 35.878719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848778, 38.786022, 35.891743>,  <39.670395, 38.625652, 35.899559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848778, 38.786022, 35.891743>,  <40.146084, 39.053303, 35.878719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848778, 38.786022, 35.891743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397488, 0.480240, 0.781903,
		-0.538110, 0.568217, -0.622549,
		-0.743263, -0.668206, 0.032562,
		39.625797, 38.585560, 35.901512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461449, 39.409050, 35.959499>,  <40.146084, 39.053303, 35.878719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461449, 39.409050, 35.959499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409023, 39.041248, 36.107731>,  <39.377567, 38.820568, 36.196671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409023, 39.041248, 36.107731>,  <39.461449, 39.409050, 35.959499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409023, 39.041248, 36.107731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436796, 0.389129, 0.811041,
		-0.889961, -0.055570, -0.452638,
		-0.131065, -0.919506, 0.370582,
		39.369705, 38.765396, 36.218906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705715, 39.174698, 36.188751>,  <39.461449, 39.409050, 35.959499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705715, 39.174698, 36.188751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990276, 39.032192, 36.431068>,  <39.161015, 38.946690, 36.576458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990276, 39.032192, 36.431068>,  <38.705715, 39.174698, 36.188751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990276, 39.032192, 36.431068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363312, 0.551441, 0.750944,
		-0.601592, -0.754315, 0.262862,
		0.711401, -0.356261, 0.605794,
		39.203697, 38.925312, 36.612808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386272, 38.718456, 36.678696>,  <38.705715, 39.174698, 36.188751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386272, 38.718456, 36.678696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725704, 38.799641, 36.874130>,  <38.929363, 38.848351, 36.991390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725704, 38.799641, 36.874130>,  <38.386272, 38.718456, 36.678696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725704, 38.799641, 36.874130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527668, 0.257653, 0.809433,
		0.038398, -0.944681, 0.325736,
		0.848582, 0.202961, 0.488584,
		38.980278, 38.860531, 37.020706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296391, 38.545288, 37.415134>,  <38.386272, 38.718456, 36.678696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296391, 38.545288, 37.415134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597343, 38.806324, 37.451027>,  <38.777916, 38.962944, 37.472565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597343, 38.806324, 37.451027>,  <38.296391, 38.545288, 37.415134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597343, 38.806324, 37.451027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413359, 0.361660, 0.835665,
		0.512894, -0.665829, 0.541860,
		0.752379, 0.652590, 0.089732,
		38.823059, 39.002102, 37.477947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664501, 38.484264, 38.061527>,  <38.296391, 38.545288, 37.415134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664501, 38.484264, 38.061527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737839, 38.863266, 37.956749>,  <38.781841, 39.090668, 37.893883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737839, 38.863266, 37.956749>,  <38.664501, 38.484264, 38.061527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737839, 38.863266, 37.956749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263000, 0.304027, 0.915641,
		0.947215, -0.098984, 0.304935,
		0.183342, 0.947507, -0.261947,
		38.792843, 39.147518, 37.878166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118061, 38.859974, 38.631851>,  <38.664501, 38.484264, 38.061527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118061, 38.859974, 38.631851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957851, 39.154778, 38.414082>,  <38.861725, 39.331661, 38.283421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957851, 39.154778, 38.414082>,  <39.118061, 38.859974, 38.631851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957851, 39.154778, 38.414082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200447, 0.509294, 0.836923,
		0.894092, 0.444337, -0.056253,
		-0.400525, 0.737011, -0.544422,
		38.837692, 39.375881, 38.250755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316319, 39.498245, 38.869778>,  <39.118061, 38.859974, 38.631851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316319, 39.498245, 38.869778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975563, 39.599262, 38.686253>,  <38.771111, 39.659870, 38.576138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975563, 39.599262, 38.686253>,  <39.316319, 39.498245, 38.869778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975563, 39.599262, 38.686253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210059, 0.637753, 0.741044,
		0.479754, 0.727664, -0.490246,
		-0.851887, 0.252538, -0.458817,
		38.719997, 39.675022, 38.548607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160130, 40.052345, 39.183849>,  <39.316319, 39.498245, 38.869778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160130, 40.052345, 39.183849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812271, 39.947922, 39.016251>,  <38.603554, 39.885269, 38.915691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812271, 39.947922, 39.016251>,  <39.160130, 40.052345, 39.183849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812271, 39.947922, 39.016251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491769, 0.532534, 0.688891,
		0.043293, 0.805145, -0.591496,
		-0.869649, -0.261056, -0.419000,
		38.551376, 39.869606, 38.890553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725502, 40.592377, 39.338383>,  <39.160130, 40.052345, 39.183849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725502, 40.592377, 39.338383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459927, 40.306602, 39.250050>,  <38.300583, 40.135139, 39.197048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459927, 40.306602, 39.250050>,  <38.725502, 40.592377, 39.338383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459927, 40.306602, 39.250050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573143, 0.296499, 0.763934,
		-0.480306, 0.633773, -0.606332,
		-0.663937, -0.714437, -0.220833,
		38.260746, 40.092270, 39.183800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055023, 40.893780, 39.330509>,  <38.725502, 40.592377, 39.338383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055023, 40.893780, 39.330509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065651, 40.506676, 39.430691>,  <38.072029, 40.274414, 39.490799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065651, 40.506676, 39.430691>,  <38.055023, 40.893780, 39.330509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065651, 40.506676, 39.430691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364099, 0.223961, 0.904032,
		-0.930981, -0.115208, -0.346411,
		0.026569, -0.967765, 0.250451,
		38.073624, 40.216347, 39.505825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398144, 40.770176, 39.510761>,  <38.055023, 40.893780, 39.330509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398144, 40.770176, 39.510761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615429, 40.478794, 39.677746>,  <37.745800, 40.303967, 39.777935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615429, 40.478794, 39.677746>,  <37.398144, 40.770176, 39.510761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615429, 40.478794, 39.677746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543439, 0.073955, 0.836185,
		-0.639996, -0.681091, -0.355697,
		0.543212, -0.728455, 0.417462,
		37.778393, 40.260258, 39.802986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882267, 40.396843, 39.836212>,  <37.398144, 40.770176, 39.510761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882267, 40.396843, 39.836212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222404, 40.312840, 40.029217>,  <37.426487, 40.262436, 40.145020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222404, 40.312840, 40.029217>,  <36.882267, 40.396843, 39.836212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222404, 40.312840, 40.029217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439477, 0.220928, 0.870661,
		-0.289446, -0.952411, 0.095570,
		0.850341, -0.210008, 0.482510,
		37.477509, 40.249836, 40.173969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661549, 39.837883, 40.402237>,  <36.882267, 40.396843, 39.836212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661549, 39.837883, 40.402237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010155, 40.005386, 40.504303>,  <37.219318, 40.105888, 40.565544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010155, 40.005386, 40.504303>,  <36.661549, 39.837883, 40.402237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010155, 40.005386, 40.504303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386024, 0.264959, 0.883619,
		0.302418, -0.868582, 0.392567,
		0.871509, 0.418762, 0.255165,
		37.271606, 40.131012, 40.580853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881729, 39.610733, 41.092999>,  <36.661549, 39.837883, 40.402237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881729, 39.610733, 41.092999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059898, 39.955288, 40.995346>,  <37.166801, 40.162022, 40.936756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059898, 39.955288, 40.995346>,  <36.881729, 39.610733, 41.092999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059898, 39.955288, 40.995346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306678, 0.402972, 0.862301,
		0.841156, -0.309223, 0.443664,
		0.445427, 0.861391, -0.244130,
		37.193527, 40.213707, 40.922108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111027, 39.808315, 41.760525>,  <36.881729, 39.610733, 41.092999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111027, 39.808315, 41.760525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144562, 40.135059, 41.532242>,  <37.164680, 40.331108, 41.395271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144562, 40.135059, 41.532242>,  <37.111027, 39.808315, 41.760525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144562, 40.135059, 41.532242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201624, 0.574782, 0.793078,
		0.975869, 0.048580, 0.212886,
		0.083836, 0.816863, -0.570707,
		37.169712, 40.380119, 41.361031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602741, 40.180473, 42.099865>,  <37.111027, 39.808315, 41.760525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602741, 40.180473, 42.099865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362015, 40.407772, 41.875401>,  <37.217579, 40.544151, 41.740723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362015, 40.407772, 41.875401>,  <37.602741, 40.180473, 42.099865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362015, 40.407772, 41.875401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252164, 0.531505, 0.808650,
		0.757777, 0.628168, -0.176578,
		-0.601820, 0.568250, -0.561164,
		37.181469, 40.578247, 41.707050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677090, 40.839565, 42.399803>,  <37.602741, 40.180473, 42.099865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677090, 40.839565, 42.399803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340847, 40.851109, 42.183456>,  <37.139099, 40.858036, 42.053646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340847, 40.851109, 42.183456>,  <37.677090, 40.839565, 42.399803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340847, 40.851109, 42.183456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473254, 0.446569, 0.759346,
		0.263449, 0.894284, -0.361734,
		-0.840610, 0.028857, -0.540871,
		37.088665, 40.859764, 42.021194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406174, 41.527435, 42.647747>,  <37.677090, 40.839565, 42.399803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406174, 41.527435, 42.647747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116879, 41.322445, 42.462578>,  <36.943302, 41.199451, 42.351475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116879, 41.322445, 42.462578>,  <37.406174, 41.527435, 42.647747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116879, 41.322445, 42.462578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655823, 0.299623, 0.692908,
		-0.216395, 0.804733, -0.552791,
		-0.723235, -0.512475, -0.462926,
		36.899906, 41.168701, 42.323700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795540, 41.929100, 42.745632>,  <37.406174, 41.527435, 42.647747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795540, 41.929100, 42.745632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673515, 41.560444, 42.649696>,  <36.600300, 41.339252, 42.592136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673515, 41.560444, 42.649696>,  <36.795540, 41.929100, 42.745632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673515, 41.560444, 42.649696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865883, 0.163585, 0.472743,
		-0.396464, 0.351888, -0.847934,
		-0.305062, -0.921637, -0.239838,
		36.581997, 41.283955, 42.577744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182083, 41.928307, 42.462875>,  <36.795540, 41.929100, 42.745632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182083, 41.928307, 42.462875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246143, 41.596779, 42.677319>,  <36.284580, 41.397861, 42.805984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246143, 41.596779, 42.677319>,  <36.182083, 41.928307, 42.462875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246143, 41.596779, 42.677319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842817, 0.167901, 0.511340,
		-0.513821, -0.533730, -0.671655,
		0.160146, -0.828820, 0.536108,
		36.294186, 41.348133, 42.838150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522518, 41.469685, 42.518372>,  <36.182083, 41.928307, 42.462875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522518, 41.469685, 42.518372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788937, 41.480530, 42.816540>,  <35.948788, 41.487038, 42.995441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788937, 41.480530, 42.816540>,  <35.522518, 41.469685, 42.518372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788937, 41.480530, 42.816540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626431, 0.562836, 0.539259,
		-0.404929, -0.826124, 0.391856,
		0.666046, 0.027109, 0.745418,
		35.988750, 41.488663, 43.040165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341824, 41.322643, 43.126266>,  <35.522518, 41.469685, 42.518372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341824, 41.322643, 43.126266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644909, 41.569286, 43.211750>,  <35.826759, 41.717270, 43.263042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644909, 41.569286, 43.211750>,  <35.341824, 41.322643, 43.126266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644909, 41.569286, 43.211750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615239, 0.565754, 0.549001,
		0.217607, -0.547469, 0.808037,
		0.757712, 0.616603, 0.213712,
		35.872223, 41.754269, 43.275864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354645, 41.651405, 43.815201>,  <35.341824, 41.322643, 43.126266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354645, 41.651405, 43.815201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563984, 41.901218, 43.583317>,  <35.689587, 42.051105, 43.444187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563984, 41.901218, 43.583317>,  <35.354645, 41.651405, 43.815201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563984, 41.901218, 43.583317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491767, 0.776954, 0.393075,
		0.695896, 0.079367, 0.713743,
		0.523349, 0.624535, -0.579709,
		35.720989, 42.088577, 43.409405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788937, 41.753201, 44.387875>,  <35.354645, 41.651405, 43.815201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788937, 41.753201, 44.387875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073360, 41.943027, 44.180344>,  <36.244015, 42.056923, 44.055824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073360, 41.943027, 44.180344>,  <35.788937, 41.753201, 44.387875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073360, 41.943027, 44.180344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589674, -0.000575, 0.807641,
		0.382980, -0.880220, -0.280248,
		0.711063, 0.474565, -0.518823,
		36.286678, 42.085396, 44.024696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404766, 41.511581, 44.623177>,  <35.788937, 41.753201, 44.387875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404766, 41.511581, 44.623177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524738, 41.853951, 44.454678>,  <36.596722, 42.059372, 44.353580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524738, 41.853951, 44.454678>,  <36.404766, 41.511581, 44.623177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524738, 41.853951, 44.454678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810145, 0.004622, 0.586212,
		0.503697, -0.517090, -0.692032,
		0.299926, 0.855919, -0.421246,
		36.614716, 42.110725, 44.328304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615063, 41.209244, 44.003948>,  <36.404766, 41.511581, 44.623177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615063, 41.209244, 44.003948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248230, 41.156281, 43.853519>,  <36.028130, 41.124504, 43.763264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248230, 41.156281, 43.853519>,  <36.615063, 41.209244, 44.003948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248230, 41.156281, 43.853519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382506, -0.558299, -0.736201,
		-0.112481, -0.819006, 0.562653,
		-0.917081, -0.132410, -0.376072,
		35.973106, 41.116558, 43.740696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831364, 40.519337, 43.694542>,  <36.615063, 41.209244, 44.003948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831364, 40.519337, 43.694542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530499, 40.725372, 43.530136>,  <36.349979, 40.848995, 43.431492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530499, 40.725372, 43.530136>,  <36.831364, 40.519337, 43.694542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530499, 40.725372, 43.530136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294586, -0.295106, -0.908918,
		-0.589468, -0.804733, 0.070229,
		-0.752161, 0.515090, -0.411018,
		36.304852, 40.879898, 43.406830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372601, 40.077869, 43.203857>,  <36.831364, 40.519337, 43.694542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372601, 40.077869, 43.203857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336117, 40.466183, 43.115074>,  <36.314228, 40.699169, 43.061806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336117, 40.466183, 43.115074>,  <36.372601, 40.077869, 43.203857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336117, 40.466183, 43.115074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383030, -0.171540, -0.907668,
		-0.919222, -0.167805, -0.356192,
		-0.091210, 0.970781, -0.221958,
		36.308754, 40.757416, 43.048489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149818, 40.096149, 42.491734>,  <36.372601, 40.077869, 43.203857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149818, 40.096149, 42.491734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272072, 40.476368, 42.513817>,  <36.345425, 40.704498, 42.527065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272072, 40.476368, 42.513817>,  <36.149818, 40.096149, 42.491734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272072, 40.476368, 42.513817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460807, -0.096928, -0.882192,
		-0.833215, 0.295065, -0.467643,
		0.305632, 0.950548, 0.055206,
		36.363762, 40.761532, 42.530380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970760, 40.338326, 41.862328>,  <36.149818, 40.096149, 42.491734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970760, 40.338326, 41.862328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262188, 40.572826, 42.004032>,  <36.437046, 40.713528, 42.089054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262188, 40.572826, 42.004032>,  <35.970760, 40.338326, 41.862328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262188, 40.572826, 42.004032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416500, 0.031439, -0.908592,
		-0.543798, 0.809521, -0.221267,
		0.728568, 0.586248, 0.354262,
		36.480759, 40.748699, 42.110310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964813, 40.884365, 41.383026>,  <35.970760, 40.338326, 41.862328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964813, 40.884365, 41.383026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310970, 40.886238, 41.583458>,  <36.518665, 40.887363, 41.703716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310970, 40.886238, 41.583458>,  <35.964813, 40.884365, 41.383026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310970, 40.886238, 41.583458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500835, 0.024466, -0.865197,
		-0.016313, 0.999690, 0.018826,
		0.865389, 0.004685, 0.501079,
		36.570587, 40.887642, 41.733780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377048, 41.137432, 40.877930>,  <35.964813, 40.884365, 41.383026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377048, 41.137432, 40.877930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631344, 40.987179, 41.147667>,  <36.783920, 40.897026, 41.309509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631344, 40.987179, 41.147667>,  <36.377048, 41.137432, 40.877930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631344, 40.987179, 41.147667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673449, -0.157026, -0.722363,
		0.377230, 0.913370, 0.153140,
		0.635738, -0.375629, 0.674344,
		36.822063, 40.874489, 41.349972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030270, 41.461823, 40.741207>,  <36.377048, 41.137432, 40.877930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030270, 41.461823, 40.741207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061356, 41.109280, 40.927608>,  <37.080006, 40.897755, 41.039452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061356, 41.109280, 40.927608>,  <37.030270, 41.461823, 40.741207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061356, 41.109280, 40.927608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529662, -0.359501, -0.768256,
		0.844641, 0.306532, 0.438885,
		0.077715, -0.881361, 0.466008,
		37.084671, 40.844872, 41.067410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731197, 41.343182, 40.778702>,  <37.030270, 41.461823, 40.741207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731197, 41.343182, 40.778702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574329, 40.978706, 40.829216>,  <37.480209, 40.760021, 40.859524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574329, 40.978706, 40.829216>,  <37.731197, 41.343182, 40.778702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574329, 40.978706, 40.829216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654666, -0.372896, -0.657541,
		0.646234, -0.175188, 0.742759,
		-0.392166, -0.911185, 0.126288,
		37.456680, 40.705353, 40.867104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270775, 40.782387, 40.776184>,  <37.731197, 41.343182, 40.778702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270775, 40.782387, 40.776184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987129, 40.513180, 40.692089>,  <37.816940, 40.351654, 40.641632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987129, 40.513180, 40.692089>,  <38.270775, 40.782387, 40.776184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987129, 40.513180, 40.692089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627457, -0.466311, -0.623580,
		0.321646, -0.574105, 0.752959,
		-0.709113, -0.673021, -0.210240,
		37.774395, 40.311272, 40.629017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554455, 40.145653, 40.743763>,  <38.270775, 40.782387, 40.776184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554455, 40.145653, 40.743763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203941, 40.100941, 40.556305>,  <37.993633, 40.074116, 40.443832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203941, 40.100941, 40.556305>,  <38.554455, 40.145653, 40.743763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203941, 40.100941, 40.556305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469037, -0.420233, -0.776793,
		-0.110112, -0.900505, 0.420673,
		-0.876288, -0.111776, -0.468643,
		37.941055, 40.067410, 40.415710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509846, 39.451225, 40.453300>,  <38.554455, 40.145653, 40.743763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509846, 39.451225, 40.453300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252308, 39.676216, 40.245808>,  <38.097786, 39.811211, 40.121311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252308, 39.676216, 40.245808>,  <38.509846, 39.451225, 40.453300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252308, 39.676216, 40.245808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420008, -0.306870, -0.854063,
		-0.639571, -0.767759, -0.038666,
		-0.643849, 0.562474, -0.518730,
		38.059155, 39.844959, 40.090187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189667, 39.043087, 39.883816>,  <38.509846, 39.451225, 40.453300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189667, 39.043087, 39.883816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183773, 39.428120, 39.775574>,  <38.180237, 39.659138, 39.710629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183773, 39.428120, 39.775574>,  <38.189667, 39.043087, 39.883816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183773, 39.428120, 39.775574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408202, -0.241263, -0.880433,
		-0.912773, -0.123431, -0.389373,
		-0.014731, 0.962578, -0.270603,
		38.179352, 39.716892, 39.694393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559193, 39.129227, 39.569538>,  <38.189667, 39.043087, 39.883816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559193, 39.129227, 39.569538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640671, 39.505772, 39.461952>,  <37.689556, 39.731697, 39.397400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640671, 39.505772, 39.461952>,  <37.559193, 39.129227, 39.569538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640671, 39.505772, 39.461952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374335, -0.328738, -0.867067,
		-0.904644, 0.075935, -0.419348,
		0.203697, 0.941364, -0.268966,
		37.701778, 39.788181, 39.381264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386471, 39.195038, 38.839745>,  <37.559193, 39.129227, 39.569538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386471, 39.195038, 38.839745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641941, 39.487659, 38.935181>,  <37.795223, 39.663231, 38.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641941, 39.487659, 38.935181>,  <37.386471, 39.195038, 38.839745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641941, 39.487659, 38.935181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388364, -0.038783, -0.920690,
		-0.664277, 0.680685, -0.308877,
		0.638679, 0.731549, 0.238590,
		37.833546, 39.707123, 39.006756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396587, 39.698238, 38.286358>,  <37.386471, 39.195038, 38.839745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396587, 39.698238, 38.286358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747295, 39.772602, 38.463768>,  <37.957718, 39.817219, 38.570213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747295, 39.772602, 38.463768>,  <37.396587, 39.698238, 38.286358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747295, 39.772602, 38.463768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454413, -0.018337, -0.890603,
		-0.157437, 0.982396, -0.100556,
		0.876768, 0.185907, 0.443526,
		38.010326, 39.828373, 38.596825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839977, 40.030598, 37.702728>,  <37.396587, 39.698238, 38.286358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839977, 40.030598, 37.702728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110233, 39.947468, 37.985664>,  <38.272385, 39.897591, 38.155426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110233, 39.947468, 37.985664>,  <37.839977, 40.030598, 37.702728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110233, 39.947468, 37.985664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648429, -0.289009, -0.704282,
		0.350792, 0.934497, -0.060509,
		0.675637, -0.207821, 0.707336,
		38.312923, 39.885120, 38.197865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468922, 40.282761, 37.368404>,  <37.839977, 40.030598, 37.702728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468922, 40.282761, 37.368404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595600, 40.044216, 37.663445>,  <38.671608, 39.901089, 37.840469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595600, 40.044216, 37.663445>,  <38.468922, 40.282761, 37.368404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595600, 40.044216, 37.663445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652107, -0.427812, -0.625886,
		0.688810, 0.679209, 0.253408,
		0.316697, -0.596366, 0.737598,
		38.690609, 39.865307, 37.884724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183472, 40.277058, 37.472103>,  <38.468922, 40.282761, 37.368404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183472, 40.277058, 37.472103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053158, 39.912209, 37.571613>,  <38.974968, 39.693298, 37.631321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053158, 39.912209, 37.571613>,  <39.183472, 40.277058, 37.472103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053158, 39.912209, 37.571613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571217, -0.399577, -0.716972,
		0.753374, -0.091475, 0.651199,
		-0.325789, -0.912124, 0.248779,
		38.955421, 39.638573, 37.646248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752533, 39.919006, 37.370483>,  <39.183472, 40.277058, 37.472103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752533, 39.919006, 37.370483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470913, 39.638020, 37.412151>,  <39.301941, 39.469425, 37.437153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470913, 39.638020, 37.412151>,  <39.752533, 39.919006, 37.370483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470913, 39.638020, 37.412151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565552, -0.643341, -0.516008,
		0.429498, -0.304380, 0.850226,
		-0.704048, -0.702471, 0.104171,
		39.259697, 39.427277, 37.443401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071728, 39.319725, 37.443863>,  <39.752533, 39.919006, 37.370483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071728, 39.319725, 37.443863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715931, 39.185394, 37.319916>,  <39.502453, 39.104797, 37.245548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715931, 39.185394, 37.319916>,  <40.071728, 39.319725, 37.443863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715931, 39.185394, 37.319916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456939, -0.650943, -0.606201,
		0.001870, -0.680805, 0.732463,
		-0.889496, -0.335824, -0.309868,
		39.449081, 39.084648, 37.226955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127792, 38.596329, 37.503090>,  <40.071728, 39.319725, 37.443863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127792, 38.596329, 37.503090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854641, 38.686718, 37.225208>,  <39.690750, 38.740952, 37.058479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854641, 38.686718, 37.225208>,  <40.127792, 38.596329, 37.503090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854641, 38.686718, 37.225208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479508, -0.578783, -0.659608,
		-0.551137, -0.783547, 0.286882,
		-0.682877, 0.225972, -0.694706,
		39.649780, 38.754509, 37.016796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857327, 37.895546, 37.234524>,  <40.127792, 38.596329, 37.503090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857327, 37.895546, 37.234524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821571, 38.186958, 36.962860>,  <39.800117, 38.361805, 36.799862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821571, 38.186958, 36.962860>,  <39.857327, 37.895546, 37.234524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821571, 38.186958, 36.962860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594025, -0.508338, -0.623480,
		-0.799465, -0.459167, -0.387326,
		-0.089389, 0.728532, -0.679155,
		39.794754, 38.405518, 36.759113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499947, 37.710770, 37.632195>,  <39.857327, 37.895546, 37.234524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499947, 37.710770, 37.632195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492775, 37.938202, 37.961166>,  <40.488472, 38.074661, 38.158550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492775, 37.938202, 37.961166>,  <40.499947, 37.710770, 37.632195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492775, 37.938202, 37.961166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775995, -0.510785, 0.370041,
		0.630484, 0.644835, -0.432062,
		-0.017925, 0.568583, 0.822431,
		40.487396, 38.108776, 38.207897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256542, 38.027092, 37.898224>,  <40.499947, 37.710770, 37.632195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256542, 38.027092, 37.898224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004459, 37.993713, 38.206997>,  <40.853210, 37.973686, 38.392262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004459, 37.993713, 38.206997>,  <41.256542, 38.027092, 37.898224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004459, 37.993713, 38.206997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698321, -0.495503, 0.516551,
		0.339391, 0.864589, 0.370540,
		-0.630208, -0.083443, 0.771930,
		40.815395, 37.968681, 38.438576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680599, 37.667450, 38.402889>,  <41.256542, 38.027092, 37.898224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680599, 37.667450, 38.402889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017532, 37.575962, 38.598095>,  <42.219692, 37.521069, 38.715218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017532, 37.575962, 38.598095>,  <41.680599, 37.667450, 38.402889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017532, 37.575962, 38.598095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389513, -0.367457, -0.844544,
		0.372489, 0.901478, -0.220432,
		0.842337, -0.228722, 0.488011,
		42.270233, 37.507347, 38.744499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349255, 38.035526, 38.109276>,  <41.680599, 37.667450, 38.402889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349255, 38.035526, 38.109276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421970, 37.681419, 38.280510>,  <42.465599, 37.468956, 38.383251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421970, 37.681419, 38.280510>,  <42.349255, 38.035526, 38.109276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421970, 37.681419, 38.280510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473147, -0.302887, -0.827280,
		0.862024, 0.352939, 0.363799,
		0.181789, -0.885265, 0.428088,
		42.476505, 37.415840, 38.408936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041416, 37.886791, 38.247406>,  <42.349255, 38.035526, 38.109276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041416, 37.886791, 38.247406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888123, 37.517830, 38.228168>,  <42.796146, 37.296455, 38.216625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888123, 37.517830, 38.228168>,  <43.041416, 37.886791, 38.247406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888123, 37.517830, 38.228168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625987, -0.221083, -0.747838,
		0.679172, -0.316702, 0.662136,
		-0.383229, -0.922400, -0.048098,
		42.773155, 37.241112, 38.213737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533596, 37.430527, 38.442169>,  <43.041416, 37.886791, 38.247406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533596, 37.430527, 38.442169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257545, 37.296413, 38.185635>,  <43.091915, 37.215946, 38.031715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257545, 37.296413, 38.185635>,  <43.533596, 37.430527, 38.442169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257545, 37.296413, 38.185635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710973, -0.148736, -0.687310,
		0.135051, -0.930304, 0.341021,
		-0.690130, -0.335279, -0.641334,
		43.050507, 37.195831, 37.993233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505627, 36.734634, 38.182011>,  <43.533596, 37.430527, 38.442169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505627, 36.734634, 38.182011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365894, 36.987228, 37.905113>,  <43.282055, 37.138783, 37.738976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365894, 36.987228, 37.905113>,  <43.505627, 36.734634, 38.182011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365894, 36.987228, 37.905113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931111, 0.151244, -0.331899,
		-0.104891, -0.760497, -0.640814,
		-0.349328, 0.631482, -0.692243,
		43.261097, 37.176674, 37.697441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761997, 36.601398, 37.412449>,  <43.505627, 36.734634, 38.182011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761997, 36.601398, 37.412449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674557, 36.977859, 37.515553>,  <43.622093, 37.203735, 37.577415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674557, 36.977859, 37.515553>,  <43.761997, 36.601398, 37.412449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674557, 36.977859, 37.515553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916350, 0.288792, -0.277312,
		-0.335433, 0.175577, -0.925558,
		-0.218604, 0.941155, 0.257760,
		43.608974, 37.260204, 37.592880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890614, 37.069077, 36.856548>,  <43.761997, 36.601398, 37.412449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890614, 37.069077, 36.856548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916386, 37.281441, 37.194538>,  <43.931850, 37.408859, 37.397331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916386, 37.281441, 37.194538>,  <43.890614, 37.069077, 36.856548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916386, 37.281441, 37.194538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907485, 0.321053, -0.270918,
		-0.415114, 0.784259, -0.461105,
		0.064431, 0.530908, 0.844977,
		43.935715, 37.440712, 37.448032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591919, 36.572063, 36.323158>,  <43.890614, 37.069077, 36.856548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591919, 36.572063, 36.323158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508301, 36.958992, 36.265762>,  <43.458130, 37.191151, 36.231323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508301, 36.958992, 36.265762>,  <43.591919, 36.572063, 36.323158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508301, 36.958992, 36.265762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177566, 0.106744, 0.978303,
		0.961650, 0.229988, 0.149449,
		-0.209045, 0.967322, -0.143489,
		43.445587, 37.249187, 36.222717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984257, 37.020359, 35.845627>,  <43.591919, 36.572063, 36.323158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984257, 37.020359, 35.845627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205235, 37.291000, 36.040363>,  <44.337822, 37.453384, 36.157204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205235, 37.291000, 36.040363>,  <43.984257, 37.020359, 35.845627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205235, 37.291000, 36.040363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702519, -0.692288, 0.164940,
		0.448632, 0.250894, -0.857777,
		0.552446, 0.676602, 0.486840,
		44.370968, 37.493980, 36.186417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780579, 37.001389, 35.538811>,  <43.984257, 37.020359, 35.845627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780579, 37.001389, 35.538811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782166, 37.168938, 35.902023>,  <44.783119, 37.269466, 36.119953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782166, 37.168938, 35.902023>,  <44.780579, 37.001389, 35.538811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782166, 37.168938, 35.902023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698836, -0.650663, 0.297096,
		0.715271, 0.633389, -0.295305,
		0.003967, 0.418874, 0.908036,
		44.783356, 37.294601, 36.174435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513138, 37.288246, 35.721806>,  <44.780579, 37.001389, 35.538811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513138, 37.288246, 35.721806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273708, 37.144882, 36.008369>,  <45.130051, 37.058865, 36.180309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273708, 37.144882, 36.008369>,  <45.513138, 37.288246, 35.721806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273708, 37.144882, 36.008369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724103, -0.624577, 0.292540,
		0.342607, 0.693865, 0.633381,
		-0.598578, -0.358407, 0.716414,
		45.094135, 37.037361, 36.223293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714893, 36.589825, 35.738068>,  <45.513138, 37.288246, 35.721806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714893, 36.589825, 35.738068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004436, 36.859924, 35.681404>,  <46.178162, 37.021984, 35.647404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004436, 36.859924, 35.681404>,  <45.714893, 36.589825, 35.738068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004436, 36.859924, 35.681404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685690, -0.726843, 0.039089,
		-0.076571, -0.125431, -0.989143,
		0.723855, 0.675253, -0.141662,
		46.221592, 37.062500, 35.638905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.119759, 36.481094, 35.034130>,  <45.714893, 36.589825, 35.738068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.119759, 36.481094, 35.034130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332371, 36.633461, 35.336754>,  <46.459938, 36.724880, 35.518330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332371, 36.633461, 35.336754>,  <46.119759, 36.481094, 35.034130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332371, 36.633461, 35.336754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596311, -0.802616, -0.014842,
		0.601576, 0.459035, -0.653754,
		0.531526, 0.380912, 0.756562,
		46.491829, 36.747734, 35.563721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565941, 35.953194, 35.085297>,  <46.119759, 36.481094, 35.034130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565941, 35.953194, 35.085297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694775, 36.170910, 35.395138>,  <46.772076, 36.301540, 35.581043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694775, 36.170910, 35.395138>,  <46.565941, 35.953194, 35.085297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.694775, 36.170910, 35.395138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675658, -0.705277, 0.214641,
		0.663136, 0.454234, -0.594913,
		0.322081, 0.544294, 0.774602,
		46.791397, 36.334198, 35.627518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.378067, 36.126602, 35.164257>,  <46.565941, 35.953194, 35.085297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.378067, 36.126602, 35.164257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159657, 36.034290, 35.486401>,  <47.028610, 35.978905, 35.679688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159657, 36.034290, 35.486401>,  <47.378067, 36.126602, 35.164257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.159657, 36.034290, 35.486401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405840, -0.913848, 0.013286,
		0.732908, 0.334100, 0.592641,
		-0.546022, -0.230780, 0.805357,
		46.995850, 35.965057, 35.728008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219662, 35.837444, 34.565071>,  <47.378067, 36.126602, 35.164257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219662, 35.837444, 34.565071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428734, 36.037838, 34.289154>,  <47.554176, 36.158073, 34.123604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428734, 36.037838, 34.289154>,  <47.219662, 35.837444, 34.565071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.428734, 36.037838, 34.289154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851685, -0.270869, 0.448622,
		0.037908, -0.821976, -0.568259,
		0.522680, 0.500985, -0.689796,
		47.585537, 36.188133, 34.082214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.795773, 35.569492, 34.099396>,  <47.219662, 35.837444, 34.565071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.795773, 35.569492, 34.099396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.946072, 35.934837, 34.162121>,  <48.036251, 36.154045, 34.199757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.946072, 35.934837, 34.162121>,  <47.795773, 35.569492, 34.099396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.946072, 35.934837, 34.162121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891927, -0.402353, 0.206342,
		0.251558, 0.062332, -0.965833,
		0.375744, 0.913360, 0.156811,
		48.058796, 36.208847, 34.209164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.796085, 35.384590, 34.911186>,  <47.795773, 35.569492, 34.099396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.796085, 35.384590, 34.911186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670898, 35.166191, 35.222042>,  <47.595787, 35.035152, 35.408554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670898, 35.166191, 35.222042>,  <47.796085, 35.384590, 34.911186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.670898, 35.166191, 35.222042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413748, -0.658143, -0.629015,
		0.854906, -0.518399, -0.019927,
		-0.312967, -0.545994, 0.777137,
		47.577007, 35.002392, 35.455185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.348530, 31.235209, 28.998703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082256, 31.447134, 28.788496>,  <38.922493, 31.574289, 28.662373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082256, 31.447134, 28.788496>,  <39.348530, 31.235209, 28.998703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082256, 31.447134, 28.788496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562750, 0.106079, 0.819793,
		0.490084, 0.841454, 0.227538,
		-0.665680, 0.529814, -0.525516,
		38.882553, 31.606079, 28.630842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201931, 31.875772, 29.394094>,  <39.348530, 31.235209, 28.998703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201931, 31.875772, 29.394094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889381, 31.829531, 29.148790>,  <38.701851, 31.801786, 29.001608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889381, 31.829531, 29.148790>,  <39.201931, 31.875772, 29.394094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889381, 31.829531, 29.148790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623888, 0.167829, 0.763280,
		0.014686, 0.979015, -0.203260,
		-0.781375, -0.115602, -0.613261,
		38.654968, 31.794849, 28.964811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878330, 32.453472, 29.551828>,  <39.201931, 31.875772, 29.394094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878330, 32.453472, 29.551828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602161, 32.222752, 29.377188>,  <38.436462, 32.084320, 29.272404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602161, 32.222752, 29.377188>,  <38.878330, 32.453472, 29.551828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602161, 32.222752, 29.377188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682670, 0.319815, 0.657024,
		-0.239343, 0.751675, -0.614573,
		-0.690418, -0.576805, -0.436600,
		38.395035, 32.049709, 29.246208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312466, 32.923832, 29.449926>,  <38.878330, 32.453472, 29.551828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312466, 32.923832, 29.449926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153328, 32.556999, 29.439449>,  <38.057846, 32.336899, 29.433163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153328, 32.556999, 29.439449>,  <38.312466, 32.923832, 29.449926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153328, 32.556999, 29.439449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600396, 0.238659, 0.763261,
		-0.693720, 0.319384, -0.645559,
		-0.397841, -0.917081, -0.026194,
		38.033974, 32.281876, 29.431591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693344, 33.005470, 29.747746>,  <38.312466, 32.923832, 29.449926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693344, 33.005470, 29.747746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632072, 32.611107, 29.720831>,  <37.595310, 32.374489, 29.704681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632072, 32.611107, 29.720831>,  <37.693344, 33.005470, 29.747746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632072, 32.611107, 29.720831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639574, 0.047001, 0.767291,
		-0.753314, 0.160564, -0.637759,
		-0.153175, -0.985906, -0.067286,
		37.586121, 32.315334, 29.700645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926865, 32.733757, 29.638956>,  <37.693344, 33.005470, 29.747746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926865, 32.733757, 29.638956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.157825, 32.492321, 29.858877>,  <37.296402, 32.347458, 29.990829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.157825, 32.492321, 29.858877>,  <36.926865, 32.733757, 29.638956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157825, 32.492321, 29.858877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675895, 0.024389, 0.736594,
		-0.458012, -0.796919, -0.393883,
		0.577400, -0.603593, 0.549804,
		37.331047, 32.311245, 30.023819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405815, 32.411983, 30.114723>,  <36.926865, 32.733757, 29.638956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405815, 32.411983, 30.114723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754169, 32.307175, 30.281050>,  <36.963181, 32.244289, 30.380846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754169, 32.307175, 30.281050>,  <36.405815, 32.411983, 30.114723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754169, 32.307175, 30.281050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409954, 0.079410, 0.908643,
		-0.271105, -0.961789, -0.038260,
		0.870884, -0.262023, 0.415817,
		37.015434, 32.228569, 30.405794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202702, 31.979658, 30.652983>,  <36.405815, 32.411983, 30.114723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202702, 31.979658, 30.652983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572025, 32.113018, 30.729239>,  <36.793621, 32.193035, 30.774992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572025, 32.113018, 30.729239>,  <36.202702, 31.979658, 30.652983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572025, 32.113018, 30.729239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298130, 0.309280, 0.903031,
		0.242108, -0.890613, 0.384958,
		0.923310, 0.333398, 0.190639,
		36.849018, 32.213039, 30.786430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296009, 31.737247, 31.243752>,  <36.202702, 31.979658, 30.652983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296009, 31.737247, 31.243752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554974, 32.040249, 31.210176>,  <36.710354, 32.222050, 31.190031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554974, 32.040249, 31.210176>,  <36.296009, 31.737247, 31.243752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554974, 32.040249, 31.210176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349024, 0.392591, 0.850914,
		0.677523, -0.521596, 0.518555,
		0.647414, 0.757502, -0.083940,
		36.749199, 32.267498, 31.184994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653946, 31.875109, 31.938656>,  <36.296009, 31.737247, 31.243752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653946, 31.875109, 31.938656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.693867, 32.222221, 31.743927>,  <36.717819, 32.430489, 31.627089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.693867, 32.222221, 31.743927>,  <36.653946, 31.875109, 31.938656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693867, 32.222221, 31.743927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104418, 0.495700, 0.862194,
		0.989513, -0.035217, 0.140085,
		0.099804, 0.867780, -0.486824,
		36.723808, 32.482555, 31.597879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206852, 32.305336, 32.223923>,  <36.653946, 31.875109, 31.938656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206852, 32.305336, 32.223923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941456, 32.554527, 32.058189>,  <36.782219, 32.704044, 31.958748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941456, 32.554527, 32.058189>,  <37.206852, 32.305336, 32.223923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941456, 32.554527, 32.058189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046461, 0.587028, 0.808232,
		0.746742, 0.517002, -0.418431,
		-0.663489, 0.622982, -0.414338,
		36.742409, 32.741421, 31.933887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394760, 32.893402, 32.504478>,  <37.206852, 32.305336, 32.223923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394760, 32.893402, 32.504478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059677, 33.034550, 32.337757>,  <36.858627, 33.119240, 32.237724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059677, 33.034550, 32.337757>,  <37.394760, 32.893402, 32.504478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059677, 33.034550, 32.337757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011050, 0.752107, 0.658949,
		0.546001, 0.556615, -0.626149,
		-0.837712, 0.352868, -0.416801,
		36.808365, 33.140411, 32.212715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394627, 33.617943, 32.108574>,  <37.394760, 32.893402, 32.504478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394627, 33.617943, 32.108574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017353, 33.557793, 32.227089>,  <36.790989, 33.521702, 32.298199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017353, 33.557793, 32.227089>,  <37.394627, 33.617943, 32.108574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017353, 33.557793, 32.227089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030136, 0.926766, 0.374429,
		-0.330897, 0.344227, -0.878644,
		-0.943185, -0.150376, 0.296291,
		36.734398, 33.512680, 32.315975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957047, 34.164543, 31.879337>,  <37.394627, 33.617943, 32.108574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957047, 34.164543, 31.879337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754059, 34.020584, 32.192501>,  <36.632267, 33.934208, 32.380402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754059, 34.020584, 32.192501>,  <36.957047, 34.164543, 31.879337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754059, 34.020584, 32.192501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161446, 0.852794, 0.496667,
		-0.846411, 0.378440, -0.374661,
		-0.507467, -0.359897, 0.782912,
		36.601818, 33.912617, 32.427376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629066, 34.715034, 32.239555>,  <36.957047, 34.164543, 31.879337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629066, 34.715034, 32.239555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582775, 34.444759, 32.530773>,  <36.555000, 34.282593, 32.705505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582775, 34.444759, 32.530773>,  <36.629066, 34.715034, 32.239555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582775, 34.444759, 32.530773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113116, 0.719237, 0.685494,
		-0.986819, 0.161687, -0.006807,
		-0.115731, -0.675689, 0.728046,
		36.548058, 34.242054, 32.749187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288803, 35.061901, 32.698597>,  <36.629066, 34.715034, 32.239555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288803, 35.061901, 32.698597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441319, 34.751217, 32.899132>,  <36.532825, 34.564808, 33.019451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441319, 34.751217, 32.899132>,  <36.288803, 35.061901, 32.698597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441319, 34.751217, 32.899132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081153, 0.568334, 0.818786,
		-0.920888, -0.271507, 0.279731,
		0.381286, -0.776711, 0.501338,
		36.555706, 34.518204, 33.049534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887421, 34.992615, 33.298519>,  <36.288803, 35.061901, 32.698597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887421, 34.992615, 33.298519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228390, 34.811825, 33.403664>,  <36.432972, 34.703350, 33.466751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228390, 34.811825, 33.403664>,  <35.887421, 34.992615, 33.298519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228390, 34.811825, 33.403664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040533, 0.558361, 0.828607,
		-0.521280, -0.695669, 0.494279,
		0.852422, -0.451971, 0.262865,
		36.484116, 34.676235, 33.482525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875381, 34.976231, 34.032024>,  <35.887421, 34.992615, 33.298519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875381, 34.976231, 34.032024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254848, 34.900604, 33.930603>,  <36.482529, 34.855228, 33.869751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254848, 34.900604, 33.930603>,  <35.875381, 34.976231, 34.032024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254848, 34.900604, 33.930603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316091, 0.538370, 0.781181,
		-0.011190, -0.821225, 0.570495,
		0.948663, -0.189070, -0.253557,
		36.539448, 34.843884, 33.854534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161716, 34.862087, 34.719898>,  <35.875381, 34.976231, 34.032024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161716, 34.862087, 34.719898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448696, 34.950203, 34.455555>,  <36.620884, 35.003071, 34.296947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448696, 34.950203, 34.455555>,  <36.161716, 34.862087, 34.719898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448696, 34.950203, 34.455555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370844, 0.682300, 0.630033,
		0.589691, -0.697095, 0.407827,
		0.717453, 0.220285, -0.660860,
		36.663933, 35.016289, 34.257298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755329, 34.784573, 35.076042>,  <36.161716, 34.862087, 34.719898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755329, 34.784573, 35.076042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851418, 35.017769, 34.765579>,  <36.909069, 35.157688, 34.579304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851418, 35.017769, 34.765579>,  <36.755329, 34.784573, 35.076042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851418, 35.017769, 34.765579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343561, 0.696752, 0.629684,
		0.907888, -0.417917, -0.032922,
		0.240217, 0.582994, -0.776153,
		36.923481, 35.192665, 34.532734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326828, 35.088696, 35.250595>,  <36.755329, 34.784573, 35.076042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326828, 35.088696, 35.250595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220974, 35.325123, 34.945805>,  <37.157463, 35.466980, 34.762932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220974, 35.325123, 34.945805>,  <37.326828, 35.088696, 35.250595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220974, 35.325123, 34.945805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366787, 0.792451, 0.487327,
		0.891873, -0.150520, -0.426506,
		-0.264633, 0.591071, -0.761974,
		37.141582, 35.502445, 34.717213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851753, 35.650295, 35.236088>,  <37.326828, 35.088696, 35.250595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851753, 35.650295, 35.236088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545952, 35.794415, 35.022278>,  <37.362469, 35.880886, 34.893993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545952, 35.794415, 35.022278>,  <37.851753, 35.650295, 35.236088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545952, 35.794415, 35.022278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139379, 0.901990, 0.408641,
		0.629366, 0.237908, -0.739796,
		-0.764507, 0.360297, -0.534523,
		37.316601, 35.902504, 34.861919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779961, 35.914047, 35.982071>,  <37.851753, 35.650295, 35.236088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779961, 35.914047, 35.982071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100208, 36.017166, 36.198421>,  <38.292358, 36.079037, 36.328232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100208, 36.017166, 36.198421>,  <37.779961, 35.914047, 35.982071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100208, 36.017166, 36.198421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598020, -0.287799, -0.748027,
		-0.037175, 0.922340, -0.384586,
		0.800619, 0.257798, 0.540879,
		38.340393, 36.094505, 36.360683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232815, 36.259487, 35.537575>,  <37.779961, 35.914047, 35.982071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232815, 36.259487, 35.537575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460125, 36.110439, 35.831028>,  <38.596512, 36.021011, 36.007099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460125, 36.110439, 35.831028>,  <38.232815, 36.259487, 35.537575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460125, 36.110439, 35.831028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620744, -0.391122, -0.679486,
		0.540131, 0.841532, 0.009038,
		0.568274, -0.372621, 0.733633,
		38.630608, 35.998653, 36.051117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933094, 36.598129, 35.378487>,  <38.232815, 36.259487, 35.537575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933094, 36.598129, 35.378487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996750, 36.293118, 35.629318>,  <39.034943, 36.110111, 35.779816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996750, 36.293118, 35.629318>,  <38.933094, 36.598129, 35.378487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996750, 36.293118, 35.629318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688272, -0.369678, -0.624196,
		0.707784, 0.530933, 0.465997,
		0.159138, -0.762528, 0.627078,
		39.044491, 36.064358, 35.817440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633247, 36.618946, 35.526997>,  <38.933094, 36.598129, 35.378487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633247, 36.618946, 35.526997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522614, 36.238304, 35.580593>,  <39.456234, 36.009918, 35.612751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522614, 36.238304, 35.580593>,  <39.633247, 36.618946, 35.526997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522614, 36.238304, 35.580593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586459, -0.277599, -0.760924,
		0.761292, -0.131882, 0.634856,
		-0.276588, -0.951602, 0.133991,
		39.439636, 35.952824, 35.620789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170109, 36.153011, 35.525436>,  <39.633247, 36.618946, 35.526997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170109, 36.153011, 35.525436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.876965, 35.888142, 35.462906>,  <39.701077, 35.729221, 35.425388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.876965, 35.888142, 35.462906>,  <40.170109, 36.153011, 35.525436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876965, 35.888142, 35.462906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520853, -0.398189, -0.755088,
		0.437750, -0.634800, 0.636713,
		-0.732862, -0.662174, -0.156330,
		39.657104, 35.689491, 35.416008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483818, 35.600594, 35.305553>,  <40.170109, 36.153011, 35.525436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483818, 35.600594, 35.305553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115990, 35.536480, 35.162060>,  <39.895290, 35.498013, 35.075962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115990, 35.536480, 35.162060>,  <40.483818, 35.600594, 35.305553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115990, 35.536480, 35.162060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392655, -0.341630, -0.853880,
		0.014307, -0.926066, 0.377091,
		-0.919574, -0.160283, -0.358737,
		39.840118, 35.488396, 35.054440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501549, 34.900723, 35.028038>,  <40.483818, 35.600594, 35.305553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501549, 34.900723, 35.028038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.191643, 35.103062, 34.876324>,  <40.005699, 35.224464, 34.785297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.191643, 35.103062, 34.876324>,  <40.501549, 34.900723, 35.028038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191643, 35.103062, 34.876324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230534, -0.332571, -0.914468,
		-0.588722, -0.795934, 0.141048,
		-0.774765, 0.505851, -0.379282,
		39.959213, 35.254818, 34.762539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207611, 34.366158, 34.622574>,  <40.501549, 34.900723, 35.028038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207611, 34.366158, 34.622574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.073498, 34.724724, 34.506622>,  <39.993031, 34.939861, 34.437054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.073498, 34.724724, 34.506622>,  <40.207611, 34.366158, 34.622574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073498, 34.724724, 34.506622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130314, -0.348853, -0.928073,
		-0.933062, -0.273392, 0.233780,
		-0.335283, 0.896414, -0.289875,
		39.972912, 34.993649, 34.419659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670879, 34.262413, 34.178242>,  <40.207611, 34.366158, 34.622574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670879, 34.262413, 34.178242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.748356, 34.645939, 34.095142>,  <39.794842, 34.876053, 34.045284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.748356, 34.645939, 34.095142>,  <39.670879, 34.262413, 34.178242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748356, 34.645939, 34.095142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203236, -0.167948, -0.964619,
		-0.959781, 0.229056, 0.162337,
		0.193688, 0.958815, -0.207746,
		39.806461, 34.933582, 34.032818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104412, 34.525757, 33.698978>,  <39.670879, 34.262413, 34.178242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104412, 34.525757, 33.698978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419720, 34.760258, 33.624199>,  <39.608902, 34.900959, 33.579330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419720, 34.760258, 33.624199>,  <39.104412, 34.525757, 33.698978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419720, 34.760258, 33.624199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149335, -0.112474, -0.982369,
		-0.596940, 0.802285, -0.001112,
		0.788265, 0.586249, -0.186949,
		39.656200, 34.936134, 33.568115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944611, 34.940266, 32.984325>,  <39.104412, 34.525757, 33.698978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944611, 34.940266, 32.984325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340763, 34.930252, 33.038750>,  <39.578457, 34.924244, 33.071404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340763, 34.930252, 33.038750>,  <38.944611, 34.940266, 32.984325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340763, 34.930252, 33.038750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130685, -0.153374, -0.979488,
		0.045391, 0.987851, -0.148628,
		0.990384, -0.025036, 0.136060,
		39.637878, 34.922741, 33.079567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212555, 35.358932, 32.422855>,  <38.944611, 34.940266, 32.984325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212555, 35.358932, 32.422855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496143, 35.103844, 32.543304>,  <39.666298, 34.950790, 32.615574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496143, 35.103844, 32.543304>,  <39.212555, 35.358932, 32.422855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496143, 35.103844, 32.543304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179370, -0.249877, -0.951519,
		0.682047, 0.728610, -0.062767,
		0.708970, -0.637722, 0.301118,
		39.708836, 34.912529, 32.633640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488384, 35.264442, 31.811666>,  <39.212555, 35.358932, 32.422855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488384, 35.264442, 31.811666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664761, 34.978493, 32.028748>,  <39.770588, 34.806923, 32.158997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664761, 34.978493, 32.028748>,  <39.488384, 35.264442, 31.811666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664761, 34.978493, 32.028748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244597, -0.486060, -0.838998,
		0.863565, 0.502690, -0.039466,
		0.440939, -0.714876, 0.542701,
		39.797043, 34.764030, 32.191559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170689, 35.160721, 31.589418>,  <39.488384, 35.264442, 31.811666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170689, 35.160721, 31.589418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.099159, 34.808273, 31.764530>,  <40.056244, 34.596806, 31.869596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.099159, 34.808273, 31.764530>,  <40.170689, 35.160721, 31.589418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099159, 34.808273, 31.764530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411953, -0.471121, -0.779961,
		0.893487, 0.040871, 0.447226,
		-0.178819, -0.881121, 0.437777,
		40.045513, 34.543938, 31.895863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781311, 34.724537, 31.437902>,  <40.170689, 35.160721, 31.589418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781311, 34.724537, 31.437902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.519962, 34.446999, 31.559025>,  <40.363152, 34.280476, 31.631699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.519962, 34.446999, 31.559025>,  <40.781311, 34.724537, 31.437902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519962, 34.446999, 31.559025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443024, -0.674780, -0.590255,
		0.613870, -0.251507, 0.748270,
		-0.653371, -0.693842, 0.302804,
		40.323952, 34.238846, 31.649866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131813, 34.157986, 31.543089>,  <40.781311, 34.724537, 31.437902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131813, 34.157986, 31.543089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.761189, 34.012424, 31.505024>,  <40.538815, 33.925087, 31.482185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.761189, 34.012424, 31.505024>,  <41.131813, 34.157986, 31.543089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761189, 34.012424, 31.505024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334920, -0.683023, -0.649083,
		0.171207, -0.633287, 0.754743,
		-0.926562, -0.363905, -0.095162,
		40.483219, 33.903252, 31.476475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192905, 33.417107, 31.507240>,  <41.131813, 34.157986, 31.543089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192905, 33.417107, 31.507240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.832420, 33.476067, 31.344219>,  <40.616131, 33.511444, 31.246407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.832420, 33.476067, 31.344219>,  <41.192905, 33.417107, 31.507240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832420, 33.476067, 31.344219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249321, -0.592860, -0.765738,
		-0.354489, -0.791701, 0.497541,
		-0.901208, 0.147399, -0.407551,
		40.562057, 33.520287, 31.221954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980598, 32.827820, 31.412849>,  <41.192905, 33.417107, 31.507240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980598, 32.827820, 31.412849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783031, 33.053707, 31.148384>,  <40.664494, 33.189240, 30.989704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783031, 33.053707, 31.148384>,  <40.980598, 32.827820, 31.412849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783031, 33.053707, 31.148384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323345, -0.586565, -0.742556,
		-0.807153, -0.580543, 0.107113,
		-0.493914, 0.564722, -0.661164,
		40.634857, 33.223125, 30.950035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.664928, 32.380989, 30.943933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.683842, 32.729568, 30.748655>,  <40.695190, 32.938717, 30.631489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.683842, 32.729568, 30.748655>,  <40.664928, 32.380989, 30.943933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683842, 32.729568, 30.748655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345856, -0.472795, -0.810462,
		-0.937095, -0.130521, -0.323754,
		0.047287, 0.871452, -0.488196,
		40.698029, 32.991005, 30.602196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264633, 32.288319, 30.360083>,  <40.664928, 32.380989, 30.943933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264633, 32.288319, 30.360083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.477383, 32.608582, 30.249767>,  <40.605034, 32.800739, 30.183578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.477383, 32.608582, 30.249767>,  <40.264633, 32.288319, 30.360083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477383, 32.608582, 30.249767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141638, -0.405194, -0.903193,
		-0.834894, 0.441323, -0.328915,
		0.531874, 0.800657, -0.275786,
		40.636944, 32.848778, 30.167032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051228, 32.496540, 29.654013>,  <40.264633, 32.288319, 30.360083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051228, 32.496540, 29.654013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.418846, 32.652313, 29.678318>,  <40.639416, 32.745777, 29.692902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.418846, 32.652313, 29.678318>,  <40.051228, 32.496540, 29.654013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418846, 32.652313, 29.678318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227161, -0.397363, -0.889101,
		-0.322104, 0.830928, -0.453660,
		0.919047, 0.389437, 0.060762,
		40.694561, 32.769146, 29.696547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191925, 32.527096, 28.915615>,  <40.051228, 32.496540, 29.654013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191925, 32.527096, 28.915615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.538216, 32.543079, 29.115181>,  <40.745991, 32.552670, 29.234921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.538216, 32.543079, 29.115181>,  <40.191925, 32.527096, 28.915615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538216, 32.543079, 29.115181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460023, -0.456267, -0.761708,
		0.197202, 0.888945, -0.413385,
		0.865731, 0.039957, 0.498912,
		40.797935, 32.555065, 29.264854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714401, 32.794861, 28.474392>,  <40.191925, 32.527096, 28.915615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714401, 32.794861, 28.474392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.909668, 32.584435, 28.752945>,  <41.026829, 32.458179, 28.920076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.909668, 32.584435, 28.752945>,  <40.714401, 32.794861, 28.474392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909668, 32.584435, 28.752945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588319, -0.391025, -0.707800,
		0.644650, 0.755221, 0.118607,
		0.488167, -0.526062, 0.696385,
		41.056118, 32.426617, 28.961861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490967, 32.898560, 28.353615>,  <40.714401, 32.794861, 28.474392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490967, 32.898560, 28.353615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.434998, 32.570934, 28.576166>,  <41.401417, 32.374359, 28.709698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.434998, 32.570934, 28.576166>,  <41.490967, 32.898560, 28.353615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434998, 32.570934, 28.576166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648508, -0.500425, -0.573596,
		0.748237, 0.280557, 0.601190,
		-0.139924, -0.819062, 0.556380,
		41.393021, 32.325214, 28.743080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129494, 32.532055, 28.333742>,  <41.490967, 32.898560, 28.353615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129494, 32.532055, 28.333742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.884960, 32.243214, 28.463251>,  <41.738239, 32.069908, 28.540956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.884960, 32.243214, 28.463251>,  <42.129494, 32.532055, 28.333742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884960, 32.243214, 28.463251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552287, -0.682324, -0.478971,
		0.566786, -0.113997, 0.815940,
		-0.611337, -0.722107, 0.323772,
		41.701561, 32.026581, 28.560383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526600, 31.989788, 28.542137>,  <42.129494, 32.532055, 28.333742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526600, 31.989788, 28.542137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.173927, 31.832388, 28.437983>,  <41.962326, 31.737947, 28.375490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.173927, 31.832388, 28.437983>,  <42.526600, 31.989788, 28.542137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173927, 31.832388, 28.437983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470605, -0.773398, -0.424719,
		-0.034254, -0.497004, 0.867072,
		-0.881679, -0.393500, -0.260385,
		41.909424, 31.714338, 28.359867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813671, 31.347116, 28.438171>,  <42.526600, 31.989788, 28.542137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813671, 31.347116, 28.438171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.441212, 31.339436, 28.292517>,  <42.217735, 31.334827, 28.205124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.441212, 31.339436, 28.292517>,  <42.813671, 31.347116, 28.438171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441212, 31.339436, 28.292517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227854, -0.810283, -0.539930,
		-0.284684, -0.585724, 0.758869,
		-0.931148, -0.019202, -0.364135,
		42.161869, 31.333675, 28.183277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519501, 30.698788, 28.518030>,  <42.813671, 31.347116, 28.438171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519501, 30.698788, 28.518030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.362293, 30.886747, 28.201870>,  <42.267967, 30.999523, 28.012175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.362293, 30.886747, 28.201870>,  <42.519501, 30.698788, 28.518030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362293, 30.886747, 28.201870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555313, -0.563833, -0.611327,
		-0.732916, -0.679181, -0.039344,
		-0.393018, 0.469899, -0.790400,
		42.244389, 31.027718, 27.964750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106316, 30.206137, 28.093096>,  <42.519501, 30.698788, 28.518030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106316, 30.206137, 28.093096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.219940, 30.515923, 27.866993>,  <42.288116, 30.701794, 27.731331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.219940, 30.515923, 27.866993>,  <42.106316, 30.206137, 28.093096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219940, 30.515923, 27.866993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474384, -0.625850, -0.619089,
		-0.833228, -0.092289, -0.545174,
		0.284063, 0.774464, -0.565256,
		42.305161, 30.748262, 27.697416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945469, 29.997480, 27.360798>,  <42.106316, 30.206137, 28.093096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945469, 29.997480, 27.360798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.193501, 30.310139, 27.333872>,  <42.342319, 30.497734, 27.317717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.193501, 30.310139, 27.333872>,  <41.945469, 29.997480, 27.360798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193501, 30.310139, 27.333872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500948, -0.460507, -0.732792,
		-0.603784, 0.420666, -0.677115,
		0.620077, 0.781647, -0.067315,
		42.379524, 30.544634, 27.313677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926548, 30.176271, 26.657261>,  <41.945469, 29.997480, 27.360798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926548, 30.176271, 26.657261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.269386, 30.320835, 26.804104>,  <42.475090, 30.407574, 26.892210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.269386, 30.320835, 26.804104>,  <41.926548, 30.176271, 26.657261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269386, 30.320835, 26.804104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473155, -0.270447, -0.838441,
		-0.203735, 0.892325, -0.402801,
		0.857098, 0.361407, 0.367108,
		42.526516, 30.429256, 26.914236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244347, 30.456015, 26.061735>,  <41.926548, 30.176271, 26.657261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244347, 30.456015, 26.061735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.537273, 30.424805, 26.332327>,  <42.713028, 30.406078, 26.494682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.537273, 30.424805, 26.332327>,  <42.244347, 30.456015, 26.061735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537273, 30.424805, 26.332327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639442, -0.262789, -0.722534,
		0.234147, 0.961693, -0.142553,
		0.732318, -0.078025, 0.676478,
		42.756969, 30.401398, 26.535271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688011, 30.815001, 25.737173>,  <42.244347, 30.456015, 26.061735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688011, 30.815001, 25.737173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.918163, 30.600836, 25.984486>,  <43.056255, 30.472338, 26.132874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.918163, 30.600836, 25.984486>,  <42.688011, 30.815001, 25.737173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918163, 30.600836, 25.984486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668683, -0.127341, -0.732563,
		0.470954, 0.834937, 0.284750,
		0.575383, -0.535411, 0.618279,
		43.090778, 30.440212, 26.169970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344719, 31.168760, 25.671598>,  <42.688011, 30.815001, 25.737173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344719, 31.168760, 25.671598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.391869, 30.799582, 25.818172>,  <43.420158, 30.578074, 25.906116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.391869, 30.799582, 25.818172>,  <43.344719, 31.168760, 25.671598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391869, 30.799582, 25.818172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704582, -0.182300, -0.685807,
		0.699764, 0.339024, 0.628803,
		0.117874, -0.922946, 0.366437,
		43.427231, 30.522697, 25.928104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955582, 31.155359, 25.711943>,  <43.344719, 31.168760, 25.671598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955582, 31.155359, 25.711943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.841038, 30.772667, 25.691298>,  <43.772312, 30.543051, 25.678911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.841038, 30.772667, 25.691298>,  <43.955582, 31.155359, 25.711943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841038, 30.772667, 25.691298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641933, -0.151589, -0.751627,
		0.711281, -0.248367, 0.657566,
		-0.286359, -0.956731, -0.051613,
		43.755131, 30.485647, 25.675814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514843, 30.788168, 25.528406>,  <43.955582, 31.155359, 25.711943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514843, 30.788168, 25.528406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.258865, 30.510513, 25.396557>,  <44.105278, 30.343920, 25.317448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.258865, 30.510513, 25.396557>,  <44.514843, 30.788168, 25.528406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258865, 30.510513, 25.396557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579334, -0.154014, -0.800407,
		0.504826, -0.703174, 0.500697,
		-0.639940, -0.694137, -0.329623,
		44.066883, 30.302273, 25.297670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899254, 30.419733, 25.277445>,  <44.514843, 30.788168, 25.528406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899254, 30.419733, 25.277445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.558765, 30.290188, 25.112259>,  <44.354473, 30.212461, 25.013147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.558765, 30.290188, 25.112259>,  <44.899254, 30.419733, 25.277445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558765, 30.290188, 25.112259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470428, -0.122033, -0.873960,
		0.232647, -0.938201, 0.256230,
		-0.851219, -0.323862, -0.412965,
		44.303398, 30.193029, 24.988369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060810, 29.810410, 24.894606>,  <44.899254, 30.419733, 25.277445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060810, 29.810410, 24.894606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701584, 29.911032, 24.750273>,  <44.486050, 29.971405, 24.663673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701584, 29.911032, 24.750273>,  <45.060810, 29.810410, 24.894606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701584, 29.911032, 24.750273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313420, -0.209605, -0.926193,
		-0.308624, -0.944872, 0.109395,
		-0.898064, 0.251559, -0.360831,
		44.432163, 29.986500, 24.642023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956211, 29.341749, 24.401892>,  <45.060810, 29.810410, 24.894606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956211, 29.341749, 24.401892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.687256, 29.614801, 24.287413>,  <44.525883, 29.778633, 24.218725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.687256, 29.614801, 24.287413>,  <44.956211, 29.341749, 24.401892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687256, 29.614801, 24.287413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338401, -0.060386, -0.939062,
		-0.658316, -0.728263, -0.190400,
		-0.672387, 0.682632, -0.286199,
		44.485538, 29.819592, 24.201553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475231, 29.104998, 23.820833>,  <44.956211, 29.341749, 24.401892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475231, 29.104998, 23.820833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.497547, 29.503557, 23.795305>,  <44.510937, 29.742693, 23.779989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.497547, 29.503557, 23.795305>,  <44.475231, 29.104998, 23.820833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497547, 29.503557, 23.795305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233924, -0.075185, -0.969343,
		-0.970653, 0.039155, -0.237277,
		0.055794, 0.996401, -0.063819,
		44.514286, 29.802477, 23.776159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904133, 29.372503, 23.402012>,  <44.475231, 29.104998, 23.820833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904133, 29.372503, 23.402012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.210701, 29.628210, 23.376926>,  <44.394642, 29.781635, 23.361876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.210701, 29.628210, 23.376926>,  <43.904133, 29.372503, 23.402012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210701, 29.628210, 23.376926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026386, -0.066218, -0.997456,
		-0.641795, 0.766127, -0.033883,
		0.766422, 0.639269, -0.062713,
		44.440628, 29.819990, 23.358112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883698, 29.700237, 22.681864>,  <43.904133, 29.372503, 23.402012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883698, 29.700237, 22.681864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.756462, 30.009089, 22.461813>,  <43.680122, 30.194399, 22.329782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.756462, 30.009089, 22.461813>,  <43.883698, 29.700237, 22.681864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756462, 30.009089, 22.461813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670382, 0.227129, 0.706400,
		0.670381, 0.593491, 0.445374,
		-0.318084, 0.772128, -0.550129,
		43.661037, 30.240726, 22.296774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806736, 30.380333, 23.080729>,  <43.883698, 29.700237, 22.681864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806736, 30.380333, 23.080729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.578205, 30.433811, 22.756824>,  <43.441086, 30.465899, 22.562481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.578205, 30.433811, 22.756824>,  <43.806736, 30.380333, 23.080729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578205, 30.433811, 22.756824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723744, 0.383186, 0.573902,
		0.387016, 0.913945, -0.122165,
		-0.571326, 0.133693, -0.809761,
		43.406807, 30.473919, 22.513897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617832, 31.052502, 23.078590>,  <43.806736, 30.380333, 23.080729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617832, 31.052502, 23.078590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.352165, 30.854389, 22.854597>,  <43.192764, 30.735521, 22.720201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.352165, 30.854389, 22.854597>,  <43.617832, 31.052502, 23.078590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352165, 30.854389, 22.854597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746973, 0.409270, 0.523955,
		-0.030320, 0.766285, -0.641784,
		-0.664163, -0.495282, -0.559985,
		43.152916, 30.705805, 22.686602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070610, 31.553158, 22.895508>,  <43.617832, 31.052502, 23.078590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070610, 31.553158, 22.895508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.917068, 31.189026, 22.833601>,  <42.824944, 30.970547, 22.796457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.917068, 31.189026, 22.833601>,  <43.070610, 31.553158, 22.895508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917068, 31.189026, 22.833601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874494, 0.304569, 0.377488,
		-0.296502, 0.280243, -0.912990,
		-0.383857, -0.910330, -0.154765,
		42.801910, 30.915926, 22.787172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432022, 31.563444, 22.528297>,  <43.070610, 31.553158, 22.895508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432022, 31.563444, 22.528297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422146, 31.219711, 22.732626>,  <42.416218, 31.013472, 22.855223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422146, 31.219711, 22.732626>,  <42.432022, 31.563444, 22.528297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422146, 31.219711, 22.732626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811021, 0.315977, 0.492344,
		-0.584495, -0.402130, -0.704739,
		-0.024695, -0.859331, 0.510822,
		42.414738, 30.961912, 22.885872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716877, 31.494520, 22.651226>,  <42.432022, 31.563444, 22.528297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716877, 31.494520, 22.651226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.851620, 31.211220, 22.899391>,  <41.932465, 31.041239, 23.048290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.851620, 31.211220, 22.899391>,  <41.716877, 31.494520, 22.651226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851620, 31.211220, 22.899391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773161, 0.167985, 0.611557,
		-0.537356, -0.685684, -0.491006,
		0.336853, -0.708251, 0.620412,
		41.952675, 30.998745, 23.085514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081387, 31.196545, 22.762022>,  <41.716877, 31.494520, 22.651226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081387, 31.196545, 22.762022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.355679, 31.090063, 23.032991>,  <41.520256, 31.026175, 23.195574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.355679, 31.090063, 23.032991>,  <41.081387, 31.196545, 22.762022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355679, 31.090063, 23.032991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673455, 0.120991, 0.729259,
		-0.276096, -0.956293, -0.096310,
		0.685733, -0.266206, 0.677425,
		41.561398, 31.010202, 23.236219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764469, 30.693565, 23.124697>,  <41.081387, 31.196545, 22.762022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764469, 30.693565, 23.124697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.049507, 30.854223, 23.354788>,  <41.220531, 30.950617, 23.492844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.049507, 30.854223, 23.354788>,  <40.764469, 30.693565, 23.124697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049507, 30.854223, 23.354788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675876, 0.173131, 0.716392,
		0.188148, -0.899280, 0.394836,
		0.712595, 0.401648, 0.575228,
		41.263287, 30.974716, 23.527357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586948, 30.415691, 23.778234>,  <40.764469, 30.693565, 23.124697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586948, 30.415691, 23.778234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.855633, 30.697849, 23.868771>,  <41.016842, 30.867144, 23.923092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.855633, 30.697849, 23.868771>,  <40.586948, 30.415691, 23.778234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855633, 30.697849, 23.868771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465590, 0.164323, 0.869611,
		0.576226, -0.689505, 0.438802,
		0.671706, 0.705394, 0.226339,
		41.057144, 30.909468, 23.936672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782864, 30.144970, 24.402222>,  <40.586948, 30.415691, 23.778234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782864, 30.144970, 24.402222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.854301, 30.537758, 24.377434>,  <40.897163, 30.773430, 24.362560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.854301, 30.537758, 24.377434>,  <40.782864, 30.144970, 24.402222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854301, 30.537758, 24.377434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460493, 0.139078, 0.876700,
		0.869511, -0.128038, 0.477029,
		0.178595, 0.981969, -0.061970,
		40.907879, 30.832348, 24.358843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222286, 30.323656, 24.892372>,  <40.782864, 30.144970, 24.402222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222286, 30.323656, 24.892372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008858, 30.644381, 24.784740>,  <40.880802, 30.836815, 24.720161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008858, 30.644381, 24.784740>,  <41.222286, 30.323656, 24.892372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008858, 30.644381, 24.784740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347162, 0.082479, 0.934171,
		0.771220, 0.591861, 0.234349,
		-0.533571, 0.801809, -0.269081,
		40.848785, 30.884924, 24.704016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200306, 30.780060, 25.456787>,  <41.222286, 30.323656, 24.892372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200306, 30.780060, 25.456787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.892609, 30.912617, 25.238266>,  <40.707989, 30.992151, 25.107153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.892609, 30.912617, 25.238266>,  <41.200306, 30.780060, 25.456787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892609, 30.912617, 25.238266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524338, 0.161218, 0.836109,
		0.365153, 0.929618, 0.049745,
		-0.769242, 0.331391, -0.546303,
		40.661835, 31.012033, 25.074375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213051, 31.446579, 25.730347>,  <41.200306, 30.780060, 25.456787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213051, 31.446579, 25.730347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.867641, 31.375254, 25.541655>,  <40.660397, 31.332458, 25.428440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.867641, 31.375254, 25.541655>,  <41.213051, 31.446579, 25.730347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867641, 31.375254, 25.541655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501759, 0.209924, 0.839148,
		-0.050604, 0.961320, -0.270745,
		-0.863526, -0.178312, -0.471728,
		40.608585, 31.321760, 25.400137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832417, 32.084995, 25.804506>,  <41.213051, 31.446579, 25.730347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832417, 32.084995, 25.804506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570488, 31.795879, 25.716162>,  <40.413330, 31.622410, 25.663155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570488, 31.795879, 25.716162>,  <40.832417, 32.084995, 25.804506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570488, 31.795879, 25.716162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485600, 0.178440, 0.855775,
		-0.579135, 0.667633, -0.467834,
		-0.654824, -0.722790, -0.220861,
		40.374043, 31.579042, 25.649904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195290, 32.366398, 25.972773>,  <40.832417, 32.084995, 25.804506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195290, 32.366398, 25.972773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123627, 31.972872, 25.974092>,  <40.080627, 31.736755, 25.974884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123627, 31.972872, 25.974092>,  <40.195290, 32.366398, 25.972773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123627, 31.972872, 25.974092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490011, 0.092141, 0.866833,
		-0.853107, 0.153682, -0.498588,
		-0.179157, -0.983815, 0.003300,
		40.069881, 31.677727, 25.975082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537067, 32.398556, 26.166136>,  <40.195290, 32.366398, 25.972773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537067, 32.398556, 26.166136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655102, 32.031883, 26.273924>,  <39.725922, 31.811878, 26.338596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655102, 32.031883, 26.273924>,  <39.537067, 32.398556, 26.166136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655102, 32.031883, 26.273924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518731, 0.083147, 0.850885,
		-0.802399, -0.390865, -0.450978,
		0.295083, -0.916685, 0.269470,
		39.743626, 31.756878, 26.354765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939648, 32.086567, 26.397038>,  <39.537067, 32.398556, 26.166136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939648, 32.086567, 26.397038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.249760, 31.883749, 26.547689>,  <39.435825, 31.762058, 26.638081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.249760, 31.883749, 26.547689>,  <38.939648, 32.086567, 26.397038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249760, 31.883749, 26.547689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474691, -0.074370, 0.877005,
		-0.416673, -0.858704, -0.298348,
		0.775275, -0.507048, 0.376631,
		39.482342, 31.731634, 26.660679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620338, 31.591404, 26.648365>,  <38.939648, 32.086567, 26.397038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620338, 31.591404, 26.648365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.973049, 31.619768, 26.834890>,  <39.184673, 31.636787, 26.946806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.973049, 31.619768, 26.834890>,  <38.620338, 31.591404, 26.648365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973049, 31.619768, 26.834890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447866, -0.184254, 0.874909,
		0.147963, -0.980317, -0.130711,
		0.881773, 0.070913, 0.466313,
		39.237579, 31.641043, 26.974785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557087, 31.135080, 27.209030>,  <38.620338, 31.591404, 26.648365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557087, 31.135080, 27.209030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870174, 31.359640, 27.316492>,  <39.058029, 31.494375, 27.380970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870174, 31.359640, 27.316492>,  <38.557087, 31.135080, 27.209030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870174, 31.359640, 27.316492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268352, -0.085046, 0.959559,
		0.561545, -0.823163, 0.084085,
		0.782723, 0.561400, 0.268654,
		39.104992, 31.528061, 27.397089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962856, 30.765141, 27.767639>,  <38.557087, 31.135080, 27.209030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962856, 30.765141, 27.767639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037106, 31.157011, 27.798050>,  <39.081654, 31.392134, 27.816296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037106, 31.157011, 27.798050>,  <38.962856, 30.765141, 27.767639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037106, 31.157011, 27.798050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416926, 0.008462, 0.908901,
		0.889785, -0.200405, 0.410023,
		0.185618, 0.979676, 0.076025,
		39.092793, 31.450914, 27.820858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208305, 30.816277, 28.407545>,  <38.962856, 30.765141, 27.767639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208305, 30.816277, 28.407545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096409, 31.187761, 28.310192>,  <39.029270, 31.410652, 28.251780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096409, 31.187761, 28.310192>,  <39.208305, 30.816277, 28.407545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096409, 31.187761, 28.310192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438753, 0.101818, 0.892821,
		0.853955, 0.356548, 0.378992,
		-0.279746, 0.928713, -0.243384,
		39.012486, 31.466375, 28.237177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.676018, 34.257965, 33.127926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.374641, 34.466232, 32.967312>,  <40.193813, 34.591194, 32.870945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.374641, 34.466232, 32.967312>,  <40.676018, 34.257965, 33.127926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374641, 34.466232, 32.967312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082863, 0.530624, 0.843547,
		0.652271, 0.668837, -0.356651,
		-0.753443, 0.520668, -0.401532,
		40.148609, 34.622433, 32.846851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918106, 34.869904, 33.321686>,  <40.676018, 34.257965, 33.127926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918106, 34.869904, 33.321686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.527191, 34.893559, 33.240288>,  <40.292641, 34.907749, 33.191448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.527191, 34.893559, 33.240288>,  <40.918106, 34.869904, 33.321686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527191, 34.893559, 33.240288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146092, 0.507593, 0.849121,
		0.153505, 0.859565, -0.487426,
		-0.977289, 0.059135, -0.203494,
		40.234005, 34.911301, 33.179241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745487, 35.550919, 33.437428>,  <40.918106, 34.869904, 33.321686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745487, 35.550919, 33.437428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396870, 35.357834, 33.471821>,  <40.187698, 35.241982, 33.492455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396870, 35.357834, 33.471821>,  <40.745487, 35.550919, 33.437428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396870, 35.357834, 33.471821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086344, 0.323716, 0.942206,
		-0.482650, 0.813753, -0.323813,
		-0.871547, -0.482716, 0.085979,
		40.135406, 35.213020, 33.497616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308201, 36.038212, 33.679600>,  <40.745487, 35.550919, 33.437428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308201, 36.038212, 33.679600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.127426, 35.696632, 33.782764>,  <40.018959, 35.491684, 33.844662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.127426, 35.696632, 33.782764>,  <40.308201, 36.038212, 33.679600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127426, 35.696632, 33.782764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177849, 0.369575, 0.912022,
		-0.874139, 0.366310, -0.318900,
		-0.451940, -0.853950, 0.257912,
		39.991844, 35.440449, 33.860138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546886, 36.133274, 33.978611>,  <40.308201, 36.038212, 33.679600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546886, 36.133274, 33.978611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677044, 35.779892, 34.113445>,  <39.755138, 35.567863, 34.194347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677044, 35.779892, 34.113445>,  <39.546886, 36.133274, 33.978611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677044, 35.779892, 34.113445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254593, 0.261467, 0.931030,
		-0.910661, -0.388769, -0.139843,
		0.325391, -0.883456, 0.337085,
		39.774662, 35.514854, 34.214569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918934, 35.837612, 34.297699>,  <39.546886, 36.133274, 33.978611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918934, 35.837612, 34.297699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251831, 35.648563, 34.413631>,  <39.451569, 35.535133, 34.483189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251831, 35.648563, 34.413631>,  <38.918934, 35.837612, 34.297699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251831, 35.648563, 34.413631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286990, 0.080018, 0.954585,
		-0.474352, -0.877624, -0.069044,
		0.832242, -0.472624, 0.289826,
		39.501503, 35.506775, 34.500580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665928, 35.233131, 34.579464>,  <38.918934, 35.837612, 34.297699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665928, 35.233131, 34.579464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.027866, 35.315090, 34.728745>,  <39.245029, 35.364265, 34.818314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.027866, 35.315090, 34.728745>,  <38.665928, 35.233131, 34.579464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027866, 35.315090, 34.728745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404881, 0.143066, 0.903108,
		0.131669, -0.968268, 0.212418,
		0.904840, 0.204915, 0.373196,
		39.299320, 35.376556, 34.840706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620811, 34.910172, 35.247066>,  <38.665928, 35.233131, 34.579464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620811, 34.910172, 35.247066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938972, 35.142715, 35.315590>,  <39.129871, 35.282242, 35.356705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938972, 35.142715, 35.315590>,  <38.620811, 34.910172, 35.247066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938972, 35.142715, 35.315590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352295, 0.213498, 0.911212,
		0.493173, -0.785133, 0.374629,
		0.795405, 0.581365, 0.171307,
		39.177593, 35.317123, 35.366982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727066, 34.757938, 35.862038>,  <38.620811, 34.910172, 35.247066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727066, 34.757938, 35.862038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932663, 35.097492, 35.812710>,  <39.056023, 35.301224, 35.783112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932663, 35.097492, 35.812710>,  <38.727066, 34.757938, 35.862038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932663, 35.097492, 35.812710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417062, 0.372936, 0.828841,
		0.749579, -0.374588, 0.545724,
		0.513994, 0.848883, -0.123318,
		39.086861, 35.352158, 35.775715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119698, 34.898441, 36.452610>,  <38.727066, 34.757938, 35.862038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119698, 34.898441, 36.452610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102108, 35.256649, 36.275471>,  <39.091553, 35.471573, 36.169186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102108, 35.256649, 36.275471>,  <39.119698, 34.898441, 36.452610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102108, 35.256649, 36.275471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369447, 0.397280, 0.840046,
		0.928211, 0.200550, 0.313377,
		-0.043973, 0.895516, -0.442852,
		39.088917, 35.525303, 36.142616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206512, 35.438267, 37.039398>,  <39.119698, 34.898441, 36.452610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206512, 35.438267, 37.039398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058071, 35.628872, 36.720596>,  <38.969006, 35.743233, 36.529316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058071, 35.628872, 36.720596>,  <39.206512, 35.438267, 37.039398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058071, 35.628872, 36.720596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487045, 0.630880, 0.603968,
		0.790612, 0.612314, -0.002041,
		-0.371106, 0.476511, -0.797006,
		38.946739, 35.771824, 36.481495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485786, 36.130230, 36.996227>,  <39.206512, 35.438267, 37.039398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485786, 36.130230, 36.996227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122036, 36.097683, 36.833050>,  <38.903786, 36.078156, 36.735142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122036, 36.097683, 36.833050>,  <39.485786, 36.130230, 36.996227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122036, 36.097683, 36.833050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372024, 0.597855, 0.710048,
		0.186119, 0.797464, -0.573943,
		-0.909372, -0.081367, -0.407948,
		38.849224, 36.073273, 36.710667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196293, 36.786415, 36.710999>,  <39.485786, 36.130230, 36.996227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196293, 36.786415, 36.710999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927395, 36.528355, 36.856251>,  <38.766056, 36.373520, 36.943401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927395, 36.528355, 36.856251>,  <39.196293, 36.786415, 36.710999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927395, 36.528355, 36.856251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241188, 0.654600, 0.716469,
		-0.699936, 0.394061, -0.595656,
		-0.672248, -0.645148, 0.363135,
		38.725719, 36.334812, 36.965191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549706, 37.225605, 36.817699>,  <39.196293, 36.786415, 36.710999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549706, 37.225605, 36.817699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.537380, 36.890640, 37.035984>,  <38.529984, 36.689663, 37.166954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.537380, 36.890640, 37.035984>,  <38.549706, 37.225605, 36.817699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537380, 36.890640, 37.035984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368046, 0.517114, 0.772745,
		-0.929297, -0.177032, -0.324141,
		-0.030817, -0.837409, 0.545708,
		38.528133, 36.639420, 37.199696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140606, 37.498627, 36.494942>,  <38.549706, 37.225605, 36.817699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140606, 37.498627, 36.494942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165688, 37.887283, 36.403748>,  <39.180737, 38.120480, 36.349033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165688, 37.887283, 36.403748>,  <39.140606, 37.498627, 36.494942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165688, 37.887283, 36.403748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300661, -0.236210, -0.924017,
		-0.951667, -0.010606, -0.306947,
		0.062704, 0.971644, -0.227983,
		39.184498, 38.178776, 36.335354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689240, 37.703262, 36.011398>,  <39.140606, 37.498627, 36.494942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689240, 37.703262, 36.011398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980160, 37.976505, 35.984848>,  <39.154713, 38.140450, 35.968918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980160, 37.976505, 35.984848>,  <38.689240, 37.703262, 36.011398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980160, 37.976505, 35.984848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053723, -0.153073, -0.986753,
		-0.684217, 0.714097, -0.148029,
		0.727297, 0.683106, -0.066372,
		39.198349, 38.181438, 35.964935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517956, 38.142662, 35.477764>,  <38.689240, 37.703262, 36.011398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517956, 38.142662, 35.477764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.910275, 38.202915, 35.527309>,  <39.145668, 38.239067, 35.557037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.910275, 38.202915, 35.527309>,  <38.517956, 38.142662, 35.477764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910275, 38.202915, 35.527309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144048, -0.131457, -0.980800,
		-0.131457, 0.979811, -0.150631,
		0.980800, 0.150631, 0.123859,
		39.204514, 38.248104, 35.564468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722958, 38.560818, 34.917015>,  <38.517956, 38.142662, 35.477764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722958, 38.560818, 34.917015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056660, 38.377628, 35.039833>,  <39.256882, 38.267715, 35.113522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056660, 38.377628, 35.039833>,  <38.722958, 38.560818, 34.917015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056660, 38.377628, 35.039833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301152, -0.087999, -0.949507,
		0.461872, 0.884598, 0.064507,
		0.834256, -0.457977, 0.307042,
		39.306938, 38.240234, 35.131947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186317, 38.834801, 34.419441>,  <38.722958, 38.560818, 34.917015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186317, 38.834801, 34.419441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389641, 38.526455, 34.573013>,  <39.511635, 38.341450, 34.665157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389641, 38.526455, 34.573013>,  <39.186317, 38.834801, 34.419441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389641, 38.526455, 34.573013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374175, -0.203844, -0.904677,
		0.775640, 0.603509, 0.184821,
		0.508306, -0.770860, 0.383927,
		39.542133, 38.295197, 34.688190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929871, 38.943806, 34.159519>,  <39.186317, 38.834801, 34.419441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929871, 38.943806, 34.159519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881752, 38.557941, 34.253284>,  <39.852882, 38.326424, 34.309544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881752, 38.557941, 34.253284>,  <39.929871, 38.943806, 34.159519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881752, 38.557941, 34.253284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392851, -0.263112, -0.881158,
		0.911700, -0.013911, 0.410622,
		-0.120298, -0.964665, 0.234414,
		39.845661, 38.268543, 34.323608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562717, 38.660789, 34.075371>,  <39.929871, 38.943806, 34.159519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562717, 38.660789, 34.075371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316341, 38.345737, 34.081829>,  <40.168514, 38.156708, 34.085705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316341, 38.345737, 34.081829>,  <40.562717, 38.660789, 34.075371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316341, 38.345737, 34.081829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428436, -0.352104, -0.832145,
		0.661103, -0.505637, 0.554322,
		-0.615942, -0.787626, 0.016144,
		40.131557, 38.109451, 34.086674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038307, 38.167351, 33.883934>,  <40.562717, 38.660789, 34.075371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038307, 38.167351, 33.883934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.667538, 38.028755, 33.826302>,  <40.445076, 37.945599, 33.791721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.667538, 38.028755, 33.826302>,  <41.038307, 38.167351, 33.883934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667538, 38.028755, 33.826302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333447, -0.584409, -0.739783,
		0.172121, -0.733766, 0.657237,
		-0.926924, -0.346486, -0.144083,
		40.389462, 37.924809, 33.783077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052177, 37.469196, 33.810268>,  <41.038307, 38.167351, 33.883934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052177, 37.469196, 33.810268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717186, 37.568230, 33.615398>,  <40.516193, 37.627651, 33.498478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717186, 37.568230, 33.615398>,  <41.052177, 37.469196, 33.810268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717186, 37.568230, 33.615398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308054, -0.522452, -0.795077,
		-0.451373, -0.815933, 0.361271,
		-0.837476, 0.247585, -0.487172,
		40.465942, 37.642506, 33.469246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879539, 36.865536, 33.543324>,  <41.052177, 37.469196, 33.810268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879539, 36.865536, 33.543324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.664581, 37.127605, 33.330925>,  <40.535606, 37.284847, 33.203484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.664581, 37.127605, 33.330925>,  <40.879539, 36.865536, 33.543324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664581, 37.127605, 33.330925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322008, -0.422527, -0.847220,
		-0.779435, -0.626276, 0.016093,
		-0.537394, 0.655171, -0.530999,
		40.503365, 37.324158, 33.171627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729836, 36.417473, 33.072426>,  <40.879539, 36.865536, 33.543324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729836, 36.417473, 33.072426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666828, 36.787113, 32.933159>,  <40.629025, 37.008900, 32.849598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666828, 36.787113, 32.933159>,  <40.729836, 36.417473, 33.072426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666828, 36.787113, 32.933159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194927, -0.316539, -0.928335,
		-0.968087, -0.214095, -0.130273,
		-0.157515, 0.924103, -0.348170,
		40.619572, 37.064342, 32.828709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285004, 36.289742, 32.558517>,  <40.729836, 36.417473, 33.072426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285004, 36.289742, 32.558517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.465736, 36.640987, 32.495575>,  <40.574177, 36.851734, 32.457809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.465736, 36.640987, 32.495575>,  <40.285004, 36.289742, 32.558517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465736, 36.640987, 32.495575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159392, -0.253017, -0.954241,
		-0.877746, 0.406079, -0.254286,
		0.451836, 0.878113, -0.157359,
		40.601288, 36.904423, 32.448368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965775, 36.582573, 31.942490>,  <40.285004, 36.289742, 32.558517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965775, 36.582573, 31.942490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.329895, 36.736855, 32.002605>,  <40.548367, 36.829426, 32.038677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.329895, 36.736855, 32.002605>,  <39.965775, 36.582573, 31.942490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329895, 36.736855, 32.002605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248779, -0.219560, -0.943346,
		-0.330858, 0.896115, -0.295822,
		0.910298, 0.385708, 0.150292,
		40.602985, 36.852566, 32.047691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091507, 36.724480, 31.327391>,  <39.965775, 36.582573, 31.942490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091507, 36.724480, 31.327391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458042, 36.757633, 31.484083>,  <40.677963, 36.777527, 31.578098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458042, 36.757633, 31.484083>,  <40.091507, 36.724480, 31.327391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458042, 36.757633, 31.484083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398402, -0.286409, -0.871347,
		0.039974, 0.954516, -0.295469,
		0.916339, 0.082884, 0.391730,
		40.732944, 36.782497, 31.601603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985836, 37.406128, 31.028000>,  <40.091507, 36.724480, 31.327391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985836, 37.406128, 31.028000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.776581, 37.654301, 30.794285>,  <39.651028, 37.803204, 30.654057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.776581, 37.654301, 30.794285>,  <39.985836, 37.406128, 31.028000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776581, 37.654301, 30.794285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548963, 0.279095, 0.787874,
		0.651891, 0.732922, 0.194586,
		-0.523142, 0.620428, -0.584287,
		39.619637, 37.840427, 30.618999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985092, 38.053104, 31.341669>,  <39.985836, 37.406128, 31.028000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985092, 38.053104, 31.341669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658646, 38.025349, 31.112186>,  <39.462776, 38.008698, 30.974497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658646, 38.025349, 31.112186>,  <39.985092, 38.053104, 31.341669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658646, 38.025349, 31.112186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565045, 0.303950, 0.767032,
		0.121156, 0.950158, -0.287265,
		-0.816116, -0.069387, -0.573707,
		39.413811, 38.004532, 30.940075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598961, 38.561199, 31.610518>,  <39.985092, 38.053104, 31.341669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598961, 38.561199, 31.610518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.323277, 38.387798, 31.378286>,  <39.157867, 38.283760, 31.238947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.323277, 38.387798, 31.378286>,  <39.598961, 38.561199, 31.610518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323277, 38.387798, 31.378286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723117, 0.360910, 0.588936,
		-0.045767, 0.825726, -0.562212,
		-0.689208, -0.433499, -0.580578,
		39.116512, 38.257748, 31.204113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123146, 39.072372, 31.482527>,  <39.598961, 38.561199, 31.610518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123146, 39.072372, 31.482527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917313, 38.738712, 31.403126>,  <38.793812, 38.538517, 31.355486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917313, 38.738712, 31.403126>,  <39.123146, 39.072372, 31.482527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917313, 38.738712, 31.403126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802063, 0.386418, 0.455386,
		-0.303156, 0.393542, -0.867883,
		-0.514579, -0.834150, -0.198500,
		38.762939, 38.488468, 31.343576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463211, 39.301350, 31.185396>,  <39.123146, 39.072372, 31.482527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463211, 39.301350, 31.185396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407520, 38.929089, 31.320749>,  <38.374107, 38.705730, 31.401962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.407520, 38.929089, 31.320749>,  <38.463211, 39.301350, 31.185396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407520, 38.929089, 31.320749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817261, 0.300947, 0.491441,
		-0.559197, -0.208128, -0.802485,
		-0.139223, -0.930652, 0.338384,
		38.365753, 38.649895, 31.422264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818729, 39.153385, 31.107168>,  <38.463211, 39.301350, 31.185396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818729, 39.153385, 31.107168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929096, 38.870388, 31.367424>,  <37.995316, 38.700592, 31.523577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929096, 38.870388, 31.367424>,  <37.818729, 39.153385, 31.107168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929096, 38.870388, 31.367424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855360, 0.128043, 0.501961,
		-0.438441, -0.695029, -0.569828,
		0.275915, -0.707488, 0.650639,
		38.011871, 38.658142, 31.562616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203659, 38.724411, 31.296934>,  <37.818729, 39.153385, 31.107168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203659, 38.724411, 31.296934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.456886, 38.665668, 31.600950>,  <37.608822, 38.630424, 31.783360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.456886, 38.665668, 31.600950>,  <37.203659, 38.724411, 31.296934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456886, 38.665668, 31.600950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773493, -0.081184, 0.628584,
		-0.030603, -0.985822, -0.164980,
		0.633065, -0.146847, 0.760042,
		37.646805, 38.621613, 31.828962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009148, 38.075401, 31.542799>,  <37.203659, 38.724411, 31.296934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009148, 38.075401, 31.542799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200710, 38.272209, 31.833609>,  <37.315647, 38.390293, 32.008095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200710, 38.272209, 31.833609>,  <37.009148, 38.075401, 31.542799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200710, 38.272209, 31.833609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741322, -0.216918, 0.635129,
		0.470201, -0.843127, 0.260862,
		0.478909, 0.492020, 0.727023,
		37.344383, 38.419815, 32.051716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080143, 37.555031, 32.072868>,  <37.009148, 38.075401, 31.542799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080143, 37.555031, 32.072868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.116329, 37.917686, 32.237709>,  <37.138042, 38.135281, 32.336613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.116329, 37.917686, 32.237709>,  <37.080143, 37.555031, 32.072868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116329, 37.917686, 32.237709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818832, -0.167816, 0.548955,
		0.566860, -0.387102, 0.727201,
		0.090465, 0.906637, 0.412100,
		37.143471, 38.189678, 32.361340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097694, 37.494556, 32.794617>,  <37.080143, 37.555031, 32.072868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097694, 37.494556, 32.794617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.976162, 37.873814, 32.757290>,  <36.903244, 38.101368, 32.734894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.976162, 37.873814, 32.757290>,  <37.097694, 37.494556, 32.794617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976162, 37.873814, 32.757290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692049, -0.152317, 0.705597,
		0.654794, 0.278963, 0.702441,
		-0.303830, 0.948145, -0.093320,
		36.885014, 38.158257, 32.729294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921482, 37.688736, 33.489975>,  <37.097694, 37.494556, 32.794617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921482, 37.688736, 33.489975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.766460, 37.982826, 33.267536>,  <36.673447, 38.159279, 33.134071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.766460, 37.982826, 33.267536>,  <36.921482, 37.688736, 33.489975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766460, 37.982826, 33.267536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843206, -0.038926, 0.536180,
		0.372567, 0.676703, 0.635033,
		-0.387554, 0.735226, -0.556097,
		36.650196, 38.203396, 33.100708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779739, 38.315784, 33.835339>,  <36.921482, 37.688736, 33.489975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779739, 38.315784, 33.835339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.494862, 38.313503, 33.554554>,  <36.323936, 38.312134, 33.386086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.494862, 38.313503, 33.554554>,  <36.779739, 38.315784, 33.835339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494862, 38.313503, 33.554554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696539, 0.130028, 0.705639,
		0.087247, 0.991494, -0.096580,
		-0.712195, -0.005707, -0.701959,
		36.281204, 38.311790, 33.343967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.095764, 37.276310, 27.976488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781887, 37.196262, 27.741808>,  <41.593563, 37.148235, 27.601000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781887, 37.196262, 27.741808>,  <42.095764, 37.276310, 27.976488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781887, 37.196262, 27.741808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581974, 0.563754, 0.586078,
		0.213468, 0.801332, -0.558836,
		-0.784689, -0.200119, -0.586698,
		41.546482, 37.136227, 27.565798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794182, 37.872578, 27.864414>,  <42.095764, 37.276310, 27.976488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794182, 37.872578, 27.864414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506737, 37.601303, 27.802874>,  <41.334270, 37.438538, 27.765949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506737, 37.601303, 27.802874>,  <41.794182, 37.872578, 27.864414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506737, 37.601303, 27.802874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586640, 0.472380, 0.657808,
		-0.373438, 0.562961, -0.737305,
		-0.718609, -0.678183, -0.153851,
		41.291153, 37.397850, 27.756718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213959, 38.211433, 27.857405>,  <41.794182, 37.872578, 27.864414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213959, 38.211433, 27.857405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122139, 37.843952, 27.985958>,  <41.067047, 37.623463, 28.063091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122139, 37.843952, 27.985958>,  <41.213959, 38.211433, 27.857405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122139, 37.843952, 27.985958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609690, 0.393117, 0.688286,
		-0.758674, -0.037949, -0.650365,
		-0.229550, -0.918705, 0.321384,
		41.053272, 37.568340, 28.082373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563038, 38.371017, 27.971674>,  <41.213959, 38.211433, 27.857405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563038, 38.371017, 27.971674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625168, 38.011002, 28.134550>,  <40.662445, 37.794991, 28.232275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625168, 38.011002, 28.134550>,  <40.563038, 38.371017, 27.971674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625168, 38.011002, 28.134550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621621, 0.231303, 0.748389,
		-0.767764, -0.369362, -0.523556,
		0.155326, -0.900039, 0.407189,
		40.671764, 37.740990, 28.256706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872810, 38.033417, 28.136766>,  <40.563038, 38.371017, 27.971674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872810, 38.033417, 28.136766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121735, 37.817215, 28.363245>,  <40.271091, 37.687492, 28.499132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121735, 37.817215, 28.363245>,  <39.872810, 38.033417, 28.136766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121735, 37.817215, 28.363245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605164, 0.126574, 0.785974,
		-0.496489, -0.831766, -0.248325,
		0.622314, -0.540504, 0.566198,
		40.308430, 37.655064, 28.533104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525078, 37.580437, 28.524626>,  <39.872810, 38.033417, 28.136766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525078, 37.580437, 28.524626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866570, 37.593487, 28.732506>,  <40.071465, 37.601318, 28.857233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866570, 37.593487, 28.732506>,  <39.525078, 37.580437, 28.524626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866570, 37.593487, 28.732506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518704, -0.034511, 0.854257,
		0.045805, -0.998872, -0.012540,
		0.853726, 0.032624, 0.519699,
		40.122688, 37.603275, 28.888416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475346, 37.048630, 29.041866>,  <39.525078, 37.580437, 28.524626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475346, 37.048630, 29.041866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743176, 37.311211, 29.180851>,  <39.903873, 37.468761, 29.264242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743176, 37.311211, 29.180851>,  <39.475346, 37.048630, 29.041866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743176, 37.311211, 29.180851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441172, -0.024835, 0.897079,
		0.597521, -0.753957, 0.272980,
		0.669579, 0.656455, 0.347464,
		39.944050, 37.508148, 29.285089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597969, 36.818699, 29.754398>,  <39.475346, 37.048630, 29.041866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597969, 36.818699, 29.754398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717316, 37.200321, 29.743357>,  <39.788921, 37.429295, 29.736732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717316, 37.200321, 29.743357>,  <39.597969, 36.818699, 29.754398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717316, 37.200321, 29.743357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277320, 0.114328, 0.953951,
		0.913276, -0.276968, 0.298689,
		0.298363, 0.954053, -0.027604,
		39.806824, 37.486538, 29.735075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838139, 36.921913, 30.365105>,  <39.597969, 36.818699, 29.754398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838139, 36.921913, 30.365105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754227, 37.293312, 30.242546>,  <39.703880, 37.516151, 30.169012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754227, 37.293312, 30.242546>,  <39.838139, 36.921913, 30.365105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754227, 37.293312, 30.242546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532295, 0.154406, 0.832358,
		0.820155, 0.337705, 0.461845,
		-0.209780, 0.928501, -0.306395,
		39.691292, 37.571861, 30.150627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595310, 37.037270, 30.689362>,  <39.838139, 36.921913, 30.365105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595310, 37.037270, 30.689362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800728, 36.838543, 30.969202>,  <40.923977, 36.719307, 31.137106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800728, 36.838543, 30.969202>,  <40.595310, 37.037270, 30.689362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800728, 36.838543, 30.969202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431258, -0.555426, -0.710998,
		0.741815, 0.666838, -0.070979,
		0.513544, -0.496819, 0.699602,
		40.954792, 36.689499, 31.179083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310875, 37.217747, 30.509171>,  <40.595310, 37.037270, 30.689362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310875, 37.217747, 30.509171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348297, 36.881405, 30.722416>,  <41.370750, 36.679600, 30.850363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348297, 36.881405, 30.722416>,  <41.310875, 37.217747, 30.509171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348297, 36.881405, 30.722416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468193, -0.435404, -0.768907,
		0.878659, 0.321537, 0.352947,
		0.093558, -0.840855, 0.533113,
		41.376366, 36.629147, 30.882349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020046, 36.974281, 30.467796>,  <41.310875, 37.217747, 30.509171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020046, 36.974281, 30.467796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796181, 36.658325, 30.568073>,  <41.661861, 36.468750, 30.628239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796181, 36.658325, 30.568073>,  <42.020046, 36.974281, 30.467796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796181, 36.658325, 30.568073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581136, -0.589734, -0.560798,
		0.590811, -0.168172, 0.789088,
		-0.559663, -0.789893, 0.250690,
		41.628281, 36.421356, 30.643280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491646, 36.455517, 30.741379>,  <42.020046, 36.974281, 30.467796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491646, 36.455517, 30.741379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158012, 36.275036, 30.614428>,  <41.957832, 36.166748, 30.538256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158012, 36.275036, 30.614428>,  <42.491646, 36.455517, 30.741379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158012, 36.275036, 30.614428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550289, -0.640238, -0.535982,
		0.038636, -0.621702, 0.782300,
		-0.834080, -0.451200, -0.317380,
		41.907787, 36.139675, 30.519213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690670, 35.724693, 30.587555>,  <42.491646, 36.455517, 30.741379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690670, 35.724693, 30.587555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315994, 35.733101, 30.447739>,  <42.091190, 35.738148, 30.363850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315994, 35.733101, 30.447739>,  <42.690670, 35.724693, 30.587555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315994, 35.733101, 30.447739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268510, -0.597609, -0.755490,
		-0.224770, -0.801512, 0.554128,
		-0.936686, 0.021022, -0.349539,
		42.034988, 35.739407, 30.342876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504322, 35.012897, 30.425184>,  <42.690670, 35.724693, 30.587555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504322, 35.012897, 30.425184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272388, 35.251629, 30.203344>,  <42.133228, 35.394867, 30.070240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272388, 35.251629, 30.203344>,  <42.504322, 35.012897, 30.425184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272388, 35.251629, 30.203344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248599, -0.518647, -0.818049,
		-0.775881, -0.612206, 0.152357,
		-0.579834, 0.596833, -0.554602,
		42.098438, 35.430679, 30.036964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006641, 34.553596, 30.119301>,  <42.504322, 35.012897, 30.425184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006641, 34.553596, 30.119301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046917, 34.885151, 29.899185>,  <42.071083, 35.084084, 29.767117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046917, 34.885151, 29.899185>,  <42.006641, 34.553596, 30.119301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046917, 34.885151, 29.899185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152619, -0.559421, -0.814712,
		-0.983142, -0.001950, -0.182832,
		0.100691, 0.828882, -0.550288,
		42.077126, 35.133816, 29.734098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662540, 34.399181, 29.469328>,  <42.006641, 34.553596, 30.119301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662540, 34.399181, 29.469328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888058, 34.719765, 29.389519>,  <42.023369, 34.912113, 29.341633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888058, 34.719765, 29.389519>,  <41.662540, 34.399181, 29.469328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888058, 34.719765, 29.389519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379050, -0.465718, -0.799642,
		-0.733798, 0.375201, -0.566360,
		0.563791, 0.801455, -0.199523,
		42.057194, 34.960201, 29.329662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517323, 34.527271, 28.690517>,  <41.662540, 34.399181, 29.469328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517323, 34.527271, 28.690517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847389, 34.717262, 28.812822>,  <42.045429, 34.831257, 28.886206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847389, 34.717262, 28.812822>,  <41.517323, 34.527271, 28.690517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847389, 34.717262, 28.812822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514200, -0.407487, -0.754687,
		-0.233864, 0.779969, -0.580479,
		0.825170, 0.474976, 0.305764,
		42.094940, 34.859756, 28.904551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790569, 34.892548, 28.087255>,  <41.517323, 34.527271, 28.690517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790569, 34.892548, 28.087255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097729, 34.841427, 28.338331>,  <42.282024, 34.810757, 28.488977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097729, 34.841427, 28.338331>,  <41.790569, 34.892548, 28.087255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097729, 34.841427, 28.338331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545806, -0.382379, -0.745575,
		0.335298, 0.915125, -0.223876,
		0.767900, -0.127797, 0.627692,
		42.328098, 34.803089, 28.526638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433765, 34.931068, 27.554306>,  <41.790569, 34.892548, 28.087255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433765, 34.931068, 27.554306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547272, 34.780502, 27.907076>,  <42.615376, 34.690163, 28.118738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547272, 34.780502, 27.907076>,  <42.433765, 34.931068, 27.554306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547272, 34.780502, 27.907076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683225, -0.565967, -0.461396,
		0.672816, 0.733479, 0.096576,
		0.283765, -0.376418, 0.881922,
		42.632401, 34.667576, 28.171652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117931, 34.907681, 27.407341>,  <42.433765, 34.931068, 27.554306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117931, 34.907681, 27.407341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068390, 34.656757, 27.714884>,  <43.038666, 34.506203, 27.899410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068390, 34.656757, 27.714884>,  <43.117931, 34.907681, 27.407341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068390, 34.656757, 27.714884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650645, -0.636352, -0.414387,
		0.749214, 0.448928, 0.486973,
		-0.123856, -0.627311, 0.768857,
		43.031235, 34.468563, 27.945541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680912, 34.568760, 27.579790>,  <43.117931, 34.907681, 27.407341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680912, 34.568760, 27.579790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428246, 34.310146, 27.750900>,  <43.276646, 34.154980, 27.853567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428246, 34.310146, 27.750900>,  <43.680912, 34.568760, 27.579790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428246, 34.310146, 27.750900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496401, -0.761162, -0.417395,
		0.595466, -0.051307, 0.801740,
		-0.631670, -0.646529, 0.427777,
		43.238743, 34.116188, 27.879234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059834, 34.147438, 28.002485>,  <43.680912, 34.568760, 27.579790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059834, 34.147438, 28.002485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725525, 33.952614, 27.901081>,  <43.524940, 33.835720, 27.840239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725525, 33.952614, 27.901081>,  <44.059834, 34.147438, 28.002485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725525, 33.952614, 27.901081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544276, -0.673905, -0.499616,
		0.072500, -0.555542, 0.828322,
		-0.835768, -0.487057, -0.253510,
		43.474796, 33.806496, 27.825027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.700752, 31.922400, 25.421730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738319, 32.314465, 25.491535>,  <37.760860, 32.549706, 25.533419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738319, 32.314465, 25.491535>,  <37.700752, 31.922400, 25.421730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738319, 32.314465, 25.491535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381654, -0.126451, 0.915615,
		0.919521, -0.152601, 0.362207,
		0.093922, 0.980165, 0.174515,
		37.766495, 32.608513, 25.543890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905411, 31.994040, 26.148483>,  <37.700752, 31.922400, 25.421730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905411, 31.994040, 26.148483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.771294, 32.354588, 26.038858>,  <37.690823, 32.570915, 25.973083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.771294, 32.354588, 26.038858>,  <37.905411, 31.994040, 26.148483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771294, 32.354588, 26.038858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389345, 0.132324, 0.911537,
		0.857899, 0.412333, 0.306578,
		-0.335289, 0.901372, -0.274061,
		37.670708, 32.625000, 25.956640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982185, 32.320091, 26.767008>,  <37.905411, 31.994040, 26.148483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982185, 32.320091, 26.767008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709198, 32.523769, 26.557261>,  <37.545406, 32.645977, 26.431412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709198, 32.523769, 26.557261>,  <37.982185, 32.320091, 26.767008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709198, 32.523769, 26.557261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598567, 0.022366, 0.800760,
		0.419469, 0.860362, 0.289522,
		-0.682468, 0.509193, -0.524366,
		37.504459, 32.676529, 26.399950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902870, 32.883728, 27.151228>,  <37.982185, 32.320091, 26.767008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902870, 32.883728, 27.151228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574825, 32.917007, 26.924780>,  <37.377998, 32.936977, 26.788912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574825, 32.917007, 26.924780>,  <37.902870, 32.883728, 27.151228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574825, 32.917007, 26.924780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569578, -0.024085, 0.821584,
		0.054722, 0.996241, 0.067142,
		-0.820114, 0.083202, -0.566119,
		37.328793, 32.941967, 26.754944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628197, 33.478596, 27.401588>,  <37.902870, 32.883728, 27.151228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628197, 33.478596, 27.401588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326633, 33.301163, 27.207739>,  <37.145695, 33.194702, 27.091429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326633, 33.301163, 27.207739>,  <37.628197, 33.478596, 27.401588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326633, 33.301163, 27.207739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597400, 0.155901, 0.786644,
		-0.273391, 0.882568, -0.382532,
		-0.753904, -0.443586, -0.484624,
		37.100464, 33.168087, 27.062351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176628, 33.909569, 27.318970>,  <37.628197, 33.478596, 27.401588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176628, 33.909569, 27.318970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941734, 33.587074, 27.290302>,  <36.800797, 33.393578, 27.273102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941734, 33.587074, 27.290302>,  <37.176628, 33.909569, 27.318970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941734, 33.587074, 27.290302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536354, 0.321284, 0.780449,
		-0.606201, 0.496747, -0.621098,
		-0.587235, -0.806237, -0.071670,
		36.765564, 33.345203, 27.268801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413513, 34.051056, 27.196877>,  <37.176628, 33.909569, 27.318970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413513, 34.051056, 27.196877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413937, 33.683342, 27.354313>,  <36.414188, 33.462715, 27.448774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413937, 33.683342, 27.354313>,  <36.413513, 34.051056, 27.196877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413937, 33.683342, 27.354313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526920, 0.334006, 0.781534,
		-0.849914, -0.208215, -0.484037,
		0.001056, -0.919286, 0.393589,
		36.414253, 33.407555, 27.472389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963135, 34.153568, 27.674803>,  <36.413513, 34.051056, 27.196877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963135, 34.153568, 27.674803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101246, 33.792099, 27.776114>,  <36.184113, 33.575218, 27.836901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101246, 33.792099, 27.776114>,  <35.963135, 34.153568, 27.674803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101246, 33.792099, 27.776114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445926, 0.079492, 0.891533,
		-0.825790, -0.420773, -0.375526,
		0.345282, -0.903676, 0.253278,
		36.204830, 33.520996, 27.852097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295948, 33.750889, 27.938299>,  <35.963135, 34.153568, 27.674803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295948, 33.750889, 27.938299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616196, 33.575504, 28.101641>,  <35.808346, 33.470272, 28.199646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616196, 33.575504, 28.101641>,  <35.295948, 33.750889, 27.938299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616196, 33.575504, 28.101641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383784, 0.148100, 0.911469,
		-0.460124, -0.886462, -0.049703,
		0.800622, -0.438464, 0.408354,
		35.856384, 33.443966, 28.224148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041145, 33.225243, 28.478987>,  <35.295948, 33.750889, 27.938299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041145, 33.225243, 28.478987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.419571, 33.323868, 28.563044>,  <35.646626, 33.383045, 28.613478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.419571, 33.323868, 28.563044>,  <35.041145, 33.225243, 28.478987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419571, 33.323868, 28.563044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258711, 0.184582, 0.948155,
		0.194996, -0.951385, 0.238417,
		0.946069, 0.246567, 0.210141,
		35.703392, 33.397839, 28.626085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152573, 32.943352, 29.106068>,  <35.041145, 33.225243, 28.478987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152573, 32.943352, 29.106068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448154, 33.212711, 29.097292>,  <35.625504, 33.374329, 29.092028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448154, 33.212711, 29.097292>,  <35.152573, 32.943352, 29.106068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448154, 33.212711, 29.097292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228193, 0.280778, 0.932251,
		0.633936, -0.683885, 0.361147,
		0.738954, 0.673398, -0.021938,
		35.669842, 33.414730, 29.090712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510235, 32.889397, 29.808645>,  <35.152573, 32.943352, 29.106068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510235, 32.889397, 29.808645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.638741, 33.235153, 29.653925>,  <35.715843, 33.442608, 29.561092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.638741, 33.235153, 29.653925>,  <35.510235, 32.889397, 29.808645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638741, 33.235153, 29.653925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012566, 0.412306, 0.910959,
		0.946908, -0.287794, 0.143319,
		0.321259, 0.864395, -0.386799,
		35.735119, 33.494473, 29.537886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939854, 33.109901, 30.257553>,  <35.510235, 32.889397, 29.808645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939854, 33.109901, 30.257553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870987, 33.444580, 30.049593>,  <35.829666, 33.645386, 29.924816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870987, 33.444580, 30.049593>,  <35.939854, 33.109901, 30.257553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870987, 33.444580, 30.049593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144503, 0.500622, 0.853520,
		0.974411, 0.222079, 0.034712,
		-0.172171, 0.836695, -0.519903,
		35.819336, 33.695587, 29.893621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403690, 33.622330, 30.466490>,  <35.939854, 33.109901, 30.257553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403690, 33.622330, 30.466490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059555, 33.784134, 30.342432>,  <35.853073, 33.881218, 30.267998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059555, 33.784134, 30.342432>,  <36.403690, 33.622330, 30.466490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059555, 33.784134, 30.342432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062842, 0.519639, 0.852072,
		0.505840, 0.752557, -0.421644,
		-0.860335, 0.404515, -0.310146,
		35.801453, 33.905487, 30.249388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939777, 33.553360, 30.897247>,  <36.403690, 33.622330, 30.466490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939777, 33.553360, 30.897247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850086, 33.225872, 31.108688>,  <36.796272, 33.029381, 31.235554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850086, 33.225872, 31.108688>,  <36.939777, 33.553360, 30.897247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850086, 33.225872, 31.108688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381832, -0.572856, -0.725287,
		0.896619, 0.039207, 0.441064,
		-0.224229, -0.818718, 0.528604,
		36.782818, 32.980255, 31.267269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540680, 33.260605, 31.047834>,  <36.939777, 33.553360, 30.897247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540680, 33.260605, 31.047834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293896, 32.950249, 31.100538>,  <37.145824, 32.764034, 31.132160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293896, 32.950249, 31.100538>,  <37.540680, 33.260605, 31.047834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293896, 32.950249, 31.100538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544424, -0.541668, -0.640468,
		0.568302, -0.323407, 0.756598,
		-0.616956, -0.775889, 0.131761,
		37.108810, 32.717484, 31.140066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994602, 32.683918, 31.149628>,  <37.540680, 33.260605, 31.047834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994602, 32.683918, 31.149628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.642986, 32.539864, 31.024673>,  <37.432014, 32.453430, 30.949701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.642986, 32.539864, 31.024673>,  <37.994602, 32.683918, 31.149628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642986, 32.539864, 31.024673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452852, -0.425942, -0.783262,
		0.149019, -0.829987, 0.537509,
		-0.879044, -0.360133, -0.312388,
		37.379272, 32.431824, 30.930958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201736, 32.057606, 30.939400>,  <37.994602, 32.683918, 31.149628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201736, 32.057606, 30.939400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845394, 32.105442, 30.764097>,  <37.631588, 32.134144, 30.658915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845394, 32.105442, 30.764097>,  <38.201736, 32.057606, 30.939400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845394, 32.105442, 30.764097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347582, -0.441736, -0.827077,
		-0.292502, -0.889139, 0.351958,
		-0.890859, 0.119587, -0.438257,
		37.578136, 32.141319, 30.632620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025013, 31.415501, 30.679386>,  <38.201736, 32.057606, 30.939400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025013, 31.415501, 30.679386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.806477, 31.684072, 30.479111>,  <37.675354, 31.845215, 30.358946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.806477, 31.684072, 30.479111>,  <38.025013, 31.415501, 30.679386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806477, 31.684072, 30.479111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244077, -0.444216, -0.862032,
		-0.801208, -0.593173, 0.078815,
		-0.546345, 0.671430, -0.500689,
		37.642574, 31.885502, 30.328903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775394, 30.992485, 30.077440>,  <38.025013, 31.415501, 30.679386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775394, 30.992485, 30.077440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748821, 31.383030, 29.995167>,  <37.732876, 31.617357, 29.945803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748821, 31.383030, 29.995167>,  <37.775394, 30.992485, 30.077440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748821, 31.383030, 29.995167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194965, -0.189461, -0.962337,
		-0.978557, -0.104036, -0.177769,
		-0.066437, 0.976361, -0.205682,
		37.728889, 31.675938, 29.933462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452095, 31.087379, 29.403345>,  <37.775394, 30.992485, 30.077440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452095, 31.087379, 29.403345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641819, 31.439342, 29.414600>,  <37.755653, 31.650520, 29.421352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641819, 31.439342, 29.414600>,  <37.452095, 31.087379, 29.403345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641819, 31.439342, 29.414600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375329, -0.173202, -0.910565,
		-0.796340, 0.442451, -0.412407,
		0.474310, 0.879908, 0.028137,
		37.784111, 31.703316, 29.423042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414169, 31.383635, 28.728901>,  <37.452095, 31.087379, 29.403345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414169, 31.383635, 28.728901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720184, 31.594343, 28.877079>,  <37.903793, 31.720768, 28.965986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720184, 31.594343, 28.877079>,  <37.414169, 31.383635, 28.728901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720184, 31.594343, 28.877079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524869, -0.176733, -0.832633,
		-0.373137, 0.831431, -0.411693,
		0.765037, 0.526771, 0.370447,
		37.949696, 31.752375, 28.988213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556759, 31.922018, 28.236666>,  <37.414169, 31.383635, 28.728901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556759, 31.922018, 28.236666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.898823, 31.875330, 28.438688>,  <38.104061, 31.847317, 28.559902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.898823, 31.875330, 28.438688>,  <37.556759, 31.922018, 28.236666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898823, 31.875330, 28.438688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512299, 0.041671, -0.857796,
		0.079075, 0.992290, 0.095430,
		0.855159, -0.116719, 0.505054,
		38.155369, 31.840315, 28.590204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049786, 32.210823, 27.828972>,  <37.556759, 31.922018, 28.236666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049786, 32.210823, 27.828972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306862, 32.028992, 28.075649>,  <38.461109, 31.919893, 28.223656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306862, 32.028992, 28.075649>,  <38.049786, 32.210823, 27.828972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306862, 32.028992, 28.075649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718323, 0.077657, -0.691362,
		0.266388, 0.887315, 0.376443,
		0.642689, -0.454578, 0.616692,
		38.499668, 31.892618, 28.260656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583305, 32.636559, 27.892099>,  <38.049786, 32.210823, 27.828972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583305, 32.636559, 27.892099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734436, 32.281681, 27.998030>,  <38.825115, 32.068756, 28.061588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734436, 32.281681, 27.998030>,  <38.583305, 32.636559, 27.892099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734436, 32.281681, 27.998030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568393, -0.003528, -0.822749,
		0.730873, 0.461382, 0.502943,
		0.377827, -0.887195, 0.264825,
		38.847786, 32.015522, 28.077477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269592, 32.749157, 27.801020>,  <38.583305, 32.636559, 27.892099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269592, 32.749157, 27.801020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.218224, 32.354015, 27.835993>,  <39.187401, 32.116928, 27.856977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.218224, 32.354015, 27.835993>,  <39.269592, 32.749157, 27.801020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218224, 32.354015, 27.835993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621340, -0.148860, -0.769271,
		0.772945, -0.044466, 0.632912,
		-0.128422, -0.987858, 0.087432,
		39.179695, 32.057659, 27.862223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984440, 32.377926, 27.807293>,  <39.269592, 32.749157, 27.801020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984440, 32.377926, 27.807293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723862, 32.107483, 27.669598>,  <39.567516, 31.945217, 27.586981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723862, 32.107483, 27.669598>,  <39.984440, 32.377926, 27.807293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723862, 32.107483, 27.669598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577393, -0.147465, -0.803039,
		0.492179, -0.721893, 0.486446,
		-0.651442, -0.676109, -0.344237,
		39.528427, 31.904650, 27.566326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341011, 31.653622, 27.735147>,  <39.984440, 32.377926, 27.807293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341011, 31.653622, 27.735147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.021938, 31.680147, 27.495378>,  <39.830494, 31.696062, 27.351517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.021938, 31.680147, 27.495378>,  <40.341011, 31.653622, 27.735147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021938, 31.680147, 27.495378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571332, -0.235148, -0.786312,
		-0.193093, -0.969695, 0.149688,
		-0.797681, 0.066310, -0.599423,
		39.782635, 31.700041, 27.315552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762741, 31.287325, 28.159212>,  <40.341011, 31.653622, 27.735147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762741, 31.287325, 28.159212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145325, 31.364521, 28.246799>,  <41.374874, 31.410839, 28.299351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145325, 31.364521, 28.246799>,  <40.762741, 31.287325, 28.159212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145325, 31.364521, 28.246799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291027, 0.573434, 0.765818,
		0.022231, -0.796197, 0.604629,
		0.956456, 0.192988, 0.218966,
		41.432262, 31.422417, 28.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029728, 31.052475, 28.903513>,  <40.762741, 31.287325, 28.159212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029728, 31.052475, 28.903513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256184, 31.364607, 28.797249>,  <41.392056, 31.551886, 28.733490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256184, 31.364607, 28.797249>,  <41.029728, 31.052475, 28.903513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256184, 31.364607, 28.797249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371656, 0.529298, 0.762703,
		0.735772, -0.333061, 0.589669,
		0.566138, 0.780329, -0.265659,
		41.426025, 31.598705, 28.717550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246605, 31.289232, 29.574312>,  <41.029728, 31.052475, 28.903513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246605, 31.289232, 29.574312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.285305, 31.590496, 29.314039>,  <41.308525, 31.771255, 29.157875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.285305, 31.590496, 29.314039>,  <41.246605, 31.289232, 29.574312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285305, 31.590496, 29.314039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309609, 0.644090, 0.699493,
		0.945929, 0.133781, 0.295502,
		0.096751, 0.753161, -0.650683,
		41.314331, 31.816444, 29.118834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689804, 31.790623, 29.872211>,  <41.246605, 31.289232, 29.574312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689804, 31.790623, 29.872211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.500225, 32.006874, 29.594193>,  <41.386478, 32.136627, 29.427382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.500225, 32.006874, 29.594193>,  <41.689804, 31.790623, 29.872211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500225, 32.006874, 29.594193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167730, 0.719451, 0.673986,
		0.864430, 0.436015, -0.250302,
		-0.473948, 0.540630, -0.695048,
		41.358040, 32.169064, 29.385677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909027, 32.495796, 29.969259>,  <41.689804, 31.790623, 29.872211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909027, 32.495796, 29.969259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.580734, 32.538044, 29.744673>,  <41.383759, 32.563393, 29.609921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.580734, 32.538044, 29.744673>,  <41.909027, 32.495796, 29.969259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580734, 32.538044, 29.744673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251002, 0.816171, 0.520444,
		0.513225, 0.568074, -0.643345,
		-0.820730, 0.105624, -0.561467,
		41.334515, 32.569733, 29.576233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825806, 33.254261, 29.717381>,  <41.909027, 32.495796, 29.969259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825806, 33.254261, 29.717381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.468353, 33.078465, 29.753748>,  <41.253880, 32.972988, 29.775568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.468353, 33.078465, 29.753748>,  <41.825806, 33.254261, 29.717381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468353, 33.078465, 29.753748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301410, 0.737820, 0.603965,
		-0.332517, 0.512320, -0.791808,
		-0.893636, -0.439487, 0.090919,
		41.200264, 32.946617, 29.781023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326637, 33.859074, 29.795376>,  <41.825806, 33.254261, 29.717381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326637, 33.859074, 29.795376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.111446, 33.543163, 29.913242>,  <40.982330, 33.353615, 29.983963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.111446, 33.543163, 29.913242>,  <41.326637, 33.859074, 29.795376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111446, 33.543163, 29.913242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477595, 0.573618, 0.665482,
		-0.694610, 0.217282, -0.685788,
		-0.537978, -0.789779, 0.294668,
		40.950054, 33.306229, 30.001642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672985, 34.137318, 29.983366>,  <41.326637, 33.859074, 29.795376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672985, 34.137318, 29.983366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662525, 33.772381, 30.146803>,  <40.656250, 33.553417, 30.244865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662525, 33.772381, 30.146803>,  <40.672985, 34.137318, 29.983366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662525, 33.772381, 30.146803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574051, 0.348324, 0.741037,
		-0.818402, -0.215175, -0.532840,
		-0.026149, -0.912343, 0.408590,
		40.654682, 33.498676, 30.269381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938614, 33.937023, 30.086935>,  <40.672985, 34.137318, 29.983366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938614, 33.937023, 30.086935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.155243, 33.753098, 30.368437>,  <40.285221, 33.642742, 30.537338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.155243, 33.753098, 30.368437>,  <39.938614, 33.937023, 30.086935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155243, 33.753098, 30.368437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547822, 0.441949, 0.710332,
		-0.637646, -0.770227, -0.012551,
		0.541570, -0.459816, 0.703754,
		40.317715, 33.615154, 30.579563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462337, 33.837666, 30.624954>,  <39.938614, 33.937023, 30.086935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462337, 33.837666, 30.624954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.803719, 33.736000, 30.806950>,  <40.008549, 33.674999, 30.916147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.803719, 33.736000, 30.806950>,  <39.462337, 33.837666, 30.624954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803719, 33.736000, 30.806950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369111, 0.321547, 0.871989,
		-0.367930, -0.912144, 0.180610,
		0.853454, -0.254166, 0.454989,
		40.059753, 33.659752, 30.943447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274506, 33.441380, 31.240086>,  <39.462337, 33.837666, 30.624954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274506, 33.441380, 31.240086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633297, 33.601070, 31.316023>,  <39.848572, 33.696884, 31.361586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633297, 33.601070, 31.316023>,  <39.274506, 33.441380, 31.240086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633297, 33.601070, 31.316023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365697, 0.428832, 0.826056,
		0.248375, -0.810382, 0.530651,
		0.896981, 0.399230, 0.189843,
		39.902390, 33.720840, 31.372976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295700, 33.513306, 31.900700>,  <39.274506, 33.441380, 31.240086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295700, 33.513306, 31.900700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632854, 33.712006, 31.817965>,  <39.835148, 33.831226, 31.768324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632854, 33.712006, 31.817965>,  <39.295700, 33.513306, 31.900700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632854, 33.712006, 31.817965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038139, 0.438575, 0.897885,
		0.536738, -0.748927, 0.388615,
		0.842887, 0.496750, -0.206837,
		39.885719, 33.861031, 31.755913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757061, 33.448399, 32.434692>,  <39.295700, 33.513306, 31.900700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757061, 33.448399, 32.434692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850231, 33.793888, 32.255932>,  <39.906132, 34.001183, 32.148674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850231, 33.793888, 32.255932>,  <39.757061, 33.448399, 32.434692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850231, 33.793888, 32.255932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164573, 0.487926, 0.857230,
		0.958468, -0.126122, 0.255796,
		0.232925, 0.863725, -0.446905,
		39.920109, 34.053005, 32.121861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242237, 33.716095, 32.802101>,  <39.757061, 33.448399, 32.434692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242237, 33.716095, 32.802101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142139, 34.054947, 32.614594>,  <40.082081, 34.258259, 32.502087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.142139, 34.054947, 32.614594>,  <40.242237, 33.716095, 32.802101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142139, 34.054947, 32.614594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061824, 0.497170, 0.865448,
		0.966207, 0.187591, -0.176786,
		-0.250243, 0.847131, -0.468772,
		40.067066, 34.309086, 32.473961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.306782, 33.335865, 27.864016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936737, 33.340370, 27.712204>,  <43.714710, 33.343071, 27.621117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936737, 33.340370, 27.712204>,  <44.306782, 33.335865, 27.864016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936737, 33.340370, 27.712204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303621, -0.578278, -0.757238,
		-0.227999, -0.815762, 0.531553,
		-0.925111, 0.011259, -0.379529,
		43.659203, 33.343746, 27.598345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206425, 32.700695, 27.546272>,  <44.306782, 33.335865, 27.864016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206425, 32.700695, 27.546272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.911419, 32.917145, 27.384651>,  <43.734417, 33.047016, 27.287680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.911419, 32.917145, 27.384651>,  <44.206425, 32.700695, 27.546272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911419, 32.917145, 27.384651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269609, -0.312630, -0.910809,
		-0.619184, -0.780667, 0.084675,
		-0.737511, 0.541129, -0.404051,
		43.690166, 33.079483, 27.263435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773579, 32.140392, 27.168118>,  <44.206425, 32.700695, 27.546272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773579, 32.140392, 27.168118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.711800, 32.495193, 26.994047>,  <43.674732, 32.708073, 26.889605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.711800, 32.495193, 26.994047>,  <43.773579, 32.140392, 27.168118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711800, 32.495193, 26.994047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144636, -0.415415, -0.898060,
		-0.977356, -0.201649, -0.064131,
		-0.154452, 0.887000, -0.435174,
		43.665462, 32.761295, 26.863495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534996, 31.951984, 26.540701>,  <43.773579, 32.140392, 27.168118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534996, 31.951984, 26.540701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.603703, 32.332462, 26.438150>,  <43.644924, 32.560749, 26.376621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.603703, 32.332462, 26.438150>,  <43.534996, 31.951984, 26.540701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603703, 32.332462, 26.438150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225407, -0.291285, -0.929701,
		-0.959004, 0.101901, -0.264438,
		0.171765, 0.951194, -0.256374,
		43.655231, 32.617821, 26.361238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241940, 32.024353, 25.899239>,  <43.534996, 31.951984, 26.540701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241940, 32.024353, 25.899239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.481678, 32.343513, 25.924982>,  <43.625519, 32.535011, 25.940428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.481678, 32.343513, 25.924982>,  <43.241940, 32.024353, 25.899239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481678, 32.343513, 25.924982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318701, -0.164092, -0.933544,
		-0.734314, 0.580025, -0.352639,
		0.599344, 0.797900, 0.064359,
		43.661480, 32.582882, 25.944290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014294, 32.490482, 25.368164>,  <43.241940, 32.024353, 25.899239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014294, 32.490482, 25.368164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.393326, 32.585953, 25.453136>,  <43.620747, 32.643234, 25.504120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.393326, 32.585953, 25.453136>,  <43.014294, 32.490482, 25.368164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393326, 32.585953, 25.453136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239115, -0.088711, -0.966930,
		-0.211938, 0.967039, -0.141131,
		0.947579, 0.238676, 0.212432,
		43.677601, 32.657555, 25.516867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263195, 33.013546, 24.875628>,  <43.014294, 32.490482, 25.368164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263195, 33.013546, 24.875628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.586555, 32.823101, 25.014082>,  <43.780571, 32.708836, 25.097155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.586555, 32.823101, 25.014082>,  <43.263195, 33.013546, 24.875628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586555, 32.823101, 25.014082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319376, -0.139181, -0.937351,
		0.494456, 0.868302, 0.039543,
		0.808401, -0.476108, 0.346134,
		43.829075, 32.680267, 25.117922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681656, 33.084358, 24.330408>,  <43.263195, 33.013546, 24.875628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681656, 33.084358, 24.330408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.906017, 32.820259, 24.530191>,  <44.040634, 32.661800, 24.650063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.906017, 32.820259, 24.530191>,  <43.681656, 33.084358, 24.330408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906017, 32.820259, 24.530191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596417, -0.096156, -0.796895,
		0.574176, 0.744865, 0.339850,
		0.560901, -0.660250, 0.499460,
		44.074287, 32.622185, 24.680029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383808, 33.306942, 24.160406>,  <43.681656, 33.084358, 24.330408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383808, 33.306942, 24.160406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.375717, 32.923103, 24.272671>,  <44.370861, 32.692802, 24.340029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.375717, 32.923103, 24.272671>,  <44.383808, 33.306942, 24.160406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375717, 32.923103, 24.272671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618092, -0.232649, -0.750891,
		0.785846, 0.158287, 0.597823,
		-0.020226, -0.959593, 0.280662,
		44.369648, 32.635223, 24.356869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065807, 33.038548, 24.092556>,  <44.383808, 33.306942, 24.160406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065807, 33.038548, 24.092556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.824081, 32.719913, 24.086210>,  <44.679047, 32.528732, 24.082403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.824081, 32.719913, 24.086210>,  <45.065807, 33.038548, 24.092556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824081, 32.719913, 24.086210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447243, -0.322675, -0.834179,
		0.659378, -0.511201, 0.551266,
		-0.604313, -0.796589, -0.015867,
		44.642788, 32.480938, 24.081450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558365, 32.475662, 23.919510>,  <45.065807, 33.038548, 24.092556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558365, 32.475662, 23.919510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.175129, 32.379135, 23.857761>,  <44.945187, 32.321220, 23.820713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.175129, 32.379135, 23.857761>,  <45.558365, 32.475662, 23.919510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175129, 32.379135, 23.857761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262221, -0.521801, -0.811766,
		0.115344, -0.818223, 0.563210,
		-0.958090, -0.241318, -0.154369,
		44.887703, 32.306740, 23.811451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558506, 31.764261, 23.854830>,  <45.558365, 32.475662, 23.919510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558506, 31.764261, 23.854830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.227909, 31.903019, 23.677483>,  <45.029552, 31.986275, 23.571074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.227909, 31.903019, 23.677483>,  <45.558506, 31.764261, 23.854830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227909, 31.903019, 23.677483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342683, -0.314828, -0.885128,
		-0.446634, -0.883485, 0.141326,
		-0.826490, 0.346898, -0.443368,
		44.979961, 32.007088, 23.544472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322762, 31.255342, 23.384153>,  <45.558506, 31.764261, 23.854830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322762, 31.255342, 23.384153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.154743, 31.601746, 23.275642>,  <45.053932, 31.809587, 23.210535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.154743, 31.601746, 23.275642>,  <45.322762, 31.255342, 23.384153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154743, 31.601746, 23.275642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236586, -0.184093, -0.954011,
		-0.876122, -0.464908, -0.127558,
		-0.420044, 0.866008, -0.271279,
		45.028728, 31.861547, 23.194260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973862, 30.580837, 23.519941>,  <45.322762, 31.255342, 23.384153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973862, 30.580837, 23.519941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.790745, 30.408209, 23.209028>,  <44.680874, 30.304632, 23.022480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.790745, 30.408209, 23.209028>,  <44.973862, 30.580837, 23.519941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790745, 30.408209, 23.209028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671386, 0.740935, -0.015966,
		0.582807, 0.514548, -0.628948,
		-0.457795, -0.431573, -0.777283,
		44.653408, 30.278736, 22.975843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303368, 30.837498, 23.571165>,  <44.973862, 30.580837, 23.519941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303368, 30.837498, 23.571165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.267952, 30.443186, 23.628302>,  <44.246704, 30.206598, 23.662584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.267952, 30.443186, 23.628302>,  <44.303368, 30.837498, 23.571165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.267952, 30.443186, 23.628302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274327, 0.161990, 0.947895,
		-0.957552, 0.044737, -0.284767,
		-0.088535, -0.985778, 0.142841,
		44.241390, 30.147453, 23.671154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730091, 30.743774, 23.756268>,  <44.303368, 30.837498, 23.571165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730091, 30.743774, 23.756268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936428, 30.433857, 23.902473>,  <44.060230, 30.247906, 23.990198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936428, 30.433857, 23.902473>,  <43.730091, 30.743774, 23.756268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936428, 30.433857, 23.902473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493856, 0.079691, 0.865884,
		-0.700012, -0.627169, -0.341530,
		0.515839, -0.774796, 0.365516,
		44.091179, 30.201418, 24.012129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267056, 30.336821, 24.069273>,  <43.730091, 30.743774, 23.756268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267056, 30.336821, 24.069273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.604786, 30.232134, 24.256300>,  <43.807423, 30.169323, 24.368515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.604786, 30.232134, 24.256300>,  <43.267056, 30.336821, 24.069273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604786, 30.232134, 24.256300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483637, 0.003420, 0.875262,
		-0.230670, -0.965139, -0.123688,
		0.844326, -0.261716, 0.467565,
		43.858086, 30.153620, 24.396570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142189, 29.791147, 24.511684>,  <43.267056, 30.336821, 24.069273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142189, 29.791147, 24.511684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.500526, 29.898792, 24.653130>,  <43.715530, 29.963379, 24.737997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.500526, 29.898792, 24.653130>,  <43.142189, 29.791147, 24.511684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500526, 29.898792, 24.653130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354161, -0.048232, 0.933940,
		0.268393, -0.961899, 0.052102,
		0.895843, 0.269116, 0.353612,
		43.769279, 29.979527, 24.759212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229828, 29.375696, 25.018358>,  <43.142189, 29.791147, 24.511684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229828, 29.375696, 25.018358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.474846, 29.683821, 25.089243>,  <43.621857, 29.868696, 25.131773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.474846, 29.683821, 25.089243>,  <43.229828, 29.375696, 25.018358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474846, 29.683821, 25.089243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303092, 0.021845, 0.952711,
		0.730015, -0.637291, 0.246857,
		0.612547, 0.770313, 0.177211,
		43.658611, 29.914915, 25.142406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547260, 29.151453, 25.611439>,  <43.229828, 29.375696, 25.018358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547260, 29.151453, 25.611439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571457, 29.550392, 25.595236>,  <43.585976, 29.789755, 25.585514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571457, 29.550392, 25.595236>,  <43.547260, 29.151453, 25.611439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571457, 29.550392, 25.595236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437446, 0.062964, 0.897038,
		0.897208, -0.036542, 0.440094,
		0.060490, 0.997346, -0.040506,
		43.589603, 29.849596, 25.583084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556934, 29.269466, 26.223265>,  <43.547260, 29.151453, 25.611439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556934, 29.269466, 26.223265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.505249, 29.654530, 26.128107>,  <43.474236, 29.885567, 26.071012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.505249, 29.654530, 26.128107>,  <43.556934, 29.269466, 26.223265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505249, 29.654530, 26.128107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497674, 0.144546, 0.855235,
		0.857685, 0.228906, 0.460411,
		-0.129218, 0.962657, -0.237895,
		43.466484, 29.943327, 26.056738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652046, 29.582436, 26.952387>,  <43.556934, 29.269466, 26.223265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652046, 29.582436, 26.952387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.502529, 29.884949, 26.737606>,  <43.412819, 30.066456, 26.608738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.502529, 29.884949, 26.737606>,  <43.652046, 29.582436, 26.952387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502529, 29.884949, 26.737606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509325, 0.316453, 0.800279,
		0.775156, 0.572621, 0.266905,
		-0.373793, 0.756282, -0.536951,
		43.390392, 30.111834, 26.576521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870861, 30.273161, 27.206154>,  <43.652046, 29.582436, 26.952387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870861, 30.273161, 27.206154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.515472, 30.299011, 27.024406>,  <43.302238, 30.314522, 26.915358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.515472, 30.299011, 27.024406>,  <43.870861, 30.273161, 27.206154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515472, 30.299011, 27.024406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369682, 0.485896, 0.791985,
		0.271958, 0.871624, -0.407811,
		-0.888467, 0.064627, -0.454367,
		43.248932, 30.318399, 26.888096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649429, 31.006567, 27.196459>,  <43.870861, 30.273161, 27.206154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649429, 31.006567, 27.196459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.300510, 30.836582, 27.099710>,  <43.091160, 30.734592, 27.041660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.300510, 30.836582, 27.099710>,  <43.649429, 31.006567, 27.196459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300510, 30.836582, 27.099710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484302, 0.682656, 0.547204,
		-0.067424, 0.594465, -0.801290,
		-0.872299, -0.424961, -0.241873,
		43.038822, 30.709093, 27.027149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146954, 31.579235, 27.141462>,  <43.649429, 31.006567, 27.196459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146954, 31.579235, 27.141462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.928612, 31.246845, 27.184401>,  <42.797607, 31.047411, 27.210163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.928612, 31.246845, 27.184401>,  <43.146954, 31.579235, 27.141462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928612, 31.246845, 27.184401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724565, 0.532485, 0.437568,
		-0.420767, 0.161070, -0.892755,
		-0.545858, -0.830972, 0.107346,
		42.764854, 30.997553, 27.216604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470783, 31.742846, 26.874353>,  <43.146954, 31.579235, 27.141462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470783, 31.742846, 26.874353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.431881, 31.432426, 27.123606>,  <42.408539, 31.246174, 27.273157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.431881, 31.432426, 27.123606>,  <42.470783, 31.742846, 26.874353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431881, 31.432426, 27.123606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770743, 0.454844, 0.446175,
		-0.629680, -0.436882, -0.642368,
		-0.097251, -0.776048, 0.623130,
		42.402706, 31.199612, 27.310545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736286, 31.722641, 26.975336>,  <42.470783, 31.742846, 26.874353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736286, 31.722641, 26.975336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.886864, 31.512201, 27.280363>,  <41.977211, 31.385937, 27.463379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.886864, 31.512201, 27.280363>,  <41.736286, 31.722641, 26.975336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886864, 31.512201, 27.280363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661757, 0.423350, 0.618750,
		-0.648358, -0.737559, -0.188784,
		0.376443, -0.526101, 0.762567,
		41.999798, 31.354372, 27.509132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195297, 31.302660, 27.307552>,  <41.736286, 31.722641, 26.975336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195297, 31.302660, 27.307552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465797, 31.324469, 27.601412>,  <41.628098, 31.337553, 27.777727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465797, 31.324469, 27.601412>,  <41.195297, 31.302660, 27.307552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465797, 31.324469, 27.601412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715170, 0.287756, 0.636968,
		-0.176672, -0.956151, 0.233587,
		0.676254, 0.054520, 0.734649,
		41.668674, 31.340824, 27.821806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435020, 31.086344, 27.277031>,  <41.195297, 31.302660, 27.307552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435020, 31.086344, 27.277031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139950, 31.283003, 27.091940>,  <39.962910, 31.400999, 26.980885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139950, 31.283003, 27.091940>,  <40.435020, 31.086344, 27.277031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139950, 31.283003, 27.091940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284685, -0.394955, -0.873479,
		-0.612202, -0.776075, 0.151383,
		-0.737674, 0.491649, -0.462729,
		39.918648, 31.430498, 26.953121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259632, 30.611502, 26.662397>,  <40.435020, 31.086344, 27.277031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259632, 30.611502, 26.662397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.092304, 30.961634, 26.565401>,  <39.991905, 31.171713, 26.507204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.092304, 30.961634, 26.565401>,  <40.259632, 30.611502, 26.662397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092304, 30.961634, 26.565401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233042, -0.154601, -0.960099,
		-0.877894, -0.458142, -0.139315,
		-0.418323, 0.875331, -0.242490,
		39.966808, 31.224234, 26.492655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968399, 30.391602, 26.113052>,  <40.259632, 30.611502, 26.662397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968399, 30.391602, 26.113052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.980312, 30.788338, 26.063471>,  <39.987461, 31.026379, 26.033722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.980312, 30.788338, 26.063471>,  <39.968399, 30.391602, 26.113052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980312, 30.788338, 26.063471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307976, -0.127081, -0.942868,
		-0.950928, -0.010094, -0.309248,
		0.029782, 0.991841, -0.123953,
		39.989246, 31.085890, 26.026285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724617, 30.501764, 25.409571>,  <39.968399, 30.391602, 26.113052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724617, 30.501764, 25.409571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.887844, 30.856466, 25.496426>,  <39.985779, 31.069286, 25.548538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.887844, 30.856466, 25.496426>,  <39.724617, 30.501764, 25.409571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887844, 30.856466, 25.496426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360428, 0.062042, -0.930722,
		-0.838792, 0.458060, -0.294293,
		0.408068, 0.886753, 0.217138,
		40.010265, 31.122492, 25.561567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458187, 31.034233, 24.942814>,  <39.724617, 30.501764, 25.409571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458187, 31.034233, 24.942814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.823235, 31.127146, 25.077375>,  <40.042263, 31.182894, 25.158112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.823235, 31.127146, 25.077375>,  <39.458187, 31.034233, 24.942814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823235, 31.127146, 25.077375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312416, 0.134447, -0.940383,
		-0.263664, 0.963311, 0.050130,
		0.912621, 0.232284, 0.336402,
		40.097019, 31.196831, 25.178297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722496, 31.573833, 24.420269>,  <39.458187, 31.034233, 24.942814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722496, 31.573833, 24.420269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.022110, 31.409388, 24.628086>,  <40.201878, 31.310720, 24.752777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.022110, 31.409388, 24.628086>,  <39.722496, 31.573833, 24.420269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022110, 31.409388, 24.628086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621366, 0.163831, -0.766201,
		0.229879, 0.896741, 0.378168,
		0.749040, -0.411114, 0.519543,
		40.246822, 31.286053, 24.783949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265331, 31.967930, 24.260021>,  <39.722496, 31.573833, 24.420269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265331, 31.967930, 24.260021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.424358, 31.625467, 24.392044>,  <40.519775, 31.419991, 24.471258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.424358, 31.625467, 24.392044>,  <40.265331, 31.967930, 24.260021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424358, 31.625467, 24.392044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683258, 0.036136, -0.729282,
		0.612452, 0.515453, 0.599342,
		0.397568, -0.856156, 0.330056,
		40.543629, 31.368620, 24.491060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521332, 32.712486, 23.986721>,  <40.265331, 31.967930, 24.260021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521332, 32.712486, 23.986721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183506, 32.783695, 23.784723>,  <39.980812, 32.826420, 23.663525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183506, 32.783695, 23.784723>,  <40.521332, 32.712486, 23.986721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183506, 32.783695, 23.784723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490811, 0.119617, 0.863016,
		0.214044, 0.976728, -0.013647,
		-0.844565, 0.178025, -0.504993,
		39.930138, 32.837101, 23.633224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145977, 33.346783, 24.283676>,  <40.521332, 32.712486, 23.986721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145977, 33.346783, 24.283676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871868, 33.129215, 24.089949>,  <39.707405, 32.998676, 23.973713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871868, 33.129215, 24.089949>,  <40.145977, 33.346783, 24.283676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871868, 33.129215, 24.089949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607506, 0.060137, 0.792035,
		-0.401674, 0.836983, -0.371641,
		-0.685269, -0.543914, -0.484317,
		39.666286, 32.966042, 23.944653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614399, 33.729046, 24.340538>,  <40.145977, 33.346783, 24.283676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614399, 33.729046, 24.340538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486034, 33.359268, 24.258160>,  <39.409016, 33.137402, 24.208733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486034, 33.359268, 24.258160>,  <39.614399, 33.729046, 24.340538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486034, 33.359268, 24.258160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731012, 0.103504, 0.674468,
		-0.602194, 0.366994, -0.708998,
		-0.320910, -0.924447, -0.205947,
		39.389763, 33.081936, 24.196375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910805, 33.866341, 24.249191>,  <39.614399, 33.729046, 24.340538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910805, 33.866341, 24.249191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.935257, 33.470570, 24.301804>,  <38.949928, 33.233109, 24.333370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.935257, 33.470570, 24.301804>,  <38.910805, 33.866341, 24.249191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935257, 33.470570, 24.301804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746667, 0.042120, 0.663863,
		-0.662383, -0.138791, -0.736197,
		0.061130, -0.989426, 0.131530,
		38.953594, 33.173740, 24.341263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255177, 33.676670, 24.097160>,  <38.910805, 33.866341, 24.249191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255177, 33.676670, 24.097160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368114, 33.345783, 24.291475>,  <38.435879, 33.147251, 24.408064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368114, 33.345783, 24.291475>,  <38.255177, 33.676670, 24.097160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368114, 33.345783, 24.291475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817205, 0.057824, 0.573439,
		-0.502450, -0.558894, -0.659682,
		0.282347, -0.827220, 0.485785,
		38.452820, 33.097618, 24.437210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698902, 33.239841, 24.053949>,  <38.255177, 33.676670, 24.097160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698902, 33.239841, 24.053949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921261, 33.148727, 24.373722>,  <38.054676, 33.094059, 24.565586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921261, 33.148727, 24.373722>,  <37.698902, 33.239841, 24.053949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921261, 33.148727, 24.373722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825752, -0.040899, 0.562548,
		-0.095451, -0.972849, -0.210840,
		0.555898, -0.227798, 0.799429,
		38.088032, 33.080391, 24.613552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399918, 32.637924, 24.444962>,  <37.698902, 33.239841, 24.053949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399918, 32.637924, 24.444962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645477, 32.813736, 24.707243>,  <37.792812, 32.919224, 24.864613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645477, 32.813736, 24.707243>,  <37.399918, 32.637924, 24.444962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645477, 32.813736, 24.707243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748274, 0.059439, 0.660721,
		0.251431, -0.896260, 0.365376,
		0.613896, 0.439528, 0.655704,
		37.829647, 32.945595, 24.903954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.483669, 34.320431, 21.646215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.460892, 33.982571, 21.859127>,  <43.447224, 33.779854, 21.986874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.460892, 33.982571, 21.859127>,  <43.483669, 34.320431, 21.646215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460892, 33.982571, 21.859127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425900, 0.502750, 0.752231,
		-0.902977, -0.183862, -0.388366,
		-0.056944, -0.844652, 0.532278,
		43.443810, 33.729176, 22.018810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839458, 34.211311, 22.032970>,  <43.483669, 34.320431, 21.646215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839458, 34.211311, 22.032970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.119778, 33.999897, 22.224611>,  <43.287968, 33.873051, 22.339596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.119778, 33.999897, 22.224611>,  <42.839458, 34.211311, 22.032970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119778, 33.999897, 22.224611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307337, 0.382391, 0.871391,
		-0.643764, -0.757911, 0.105539,
		0.700794, -0.528534, 0.479103,
		43.330017, 33.841335, 22.368341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509495, 33.710155, 22.551682>,  <42.839458, 34.211311, 22.032970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509495, 33.710155, 22.551682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.878281, 33.806065, 22.673334>,  <43.099552, 33.863609, 22.746326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.878281, 33.806065, 22.673334>,  <42.509495, 33.710155, 22.551682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878281, 33.806065, 22.673334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369497, 0.309336, 0.876232,
		0.116021, -0.920228, 0.373792,
		0.921961, 0.239776, 0.304132,
		43.154869, 33.877998, 22.764574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503971, 33.539101, 23.267681>,  <42.509495, 33.710155, 22.551682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503971, 33.539101, 23.267681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.824867, 33.775230, 23.232082>,  <43.017406, 33.916908, 23.210724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.824867, 33.775230, 23.232082>,  <42.503971, 33.539101, 23.267681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824867, 33.775230, 23.232082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248596, 0.465866, 0.849217,
		0.542774, -0.659155, 0.520491,
		0.802245, 0.590325, -0.088997,
		43.065540, 33.952328, 23.205383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831455, 33.430016, 23.945959>,  <42.503971, 33.539101, 23.267681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831455, 33.430016, 23.945959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.945221, 33.777073, 23.782837>,  <43.013481, 33.985306, 23.684963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.945221, 33.777073, 23.782837>,  <42.831455, 33.430016, 23.945959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945221, 33.777073, 23.782837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256896, 0.478787, 0.839504,
		0.923642, -0.134002, 0.359067,
		0.284411, 0.867644, -0.407803,
		43.030544, 34.037365, 23.660496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826271, 33.900105, 24.481922>,  <42.831455, 33.430016, 23.945959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826271, 33.900105, 24.481922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.895508, 34.194946, 24.220629>,  <42.937050, 34.371853, 24.063852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.895508, 34.194946, 24.220629>,  <42.826271, 33.900105, 24.481922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895508, 34.194946, 24.220629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320093, 0.669340, 0.670467,
		0.931440, 0.093045, 0.351798,
		0.173088, 0.737107, -0.653233,
		42.947433, 34.416077, 24.024658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317226, 34.430286, 24.775473>,  <42.826271, 33.900105, 24.481922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317226, 34.430286, 24.775473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.130669, 34.613159, 24.472563>,  <43.018734, 34.722881, 24.290817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.130669, 34.613159, 24.472563>,  <43.317226, 34.430286, 24.775473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130669, 34.613159, 24.472563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325123, 0.707566, 0.627411,
		0.822662, 0.538827, -0.181364,
		-0.466393, 0.457182, -0.757273,
		42.990749, 34.750313, 24.245380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483597, 35.080505, 24.879604>,  <43.317226, 34.430286, 24.775473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483597, 35.080505, 24.879604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.173729, 35.103977, 24.627750>,  <42.987808, 35.118061, 24.476639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.173729, 35.103977, 24.627750>,  <43.483597, 35.080505, 24.879604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173729, 35.103977, 24.627750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384442, 0.746850, 0.542604,
		0.502083, 0.662398, -0.556005,
		-0.774673, 0.058681, -0.629634,
		42.941326, 35.121582, 24.438860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356575, 35.784286, 24.670748>,  <43.483597, 35.080505, 24.879604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356575, 35.784286, 24.670748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.999737, 35.605801, 24.642298>,  <42.785633, 35.498711, 24.625229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.999737, 35.605801, 24.642298>,  <43.356575, 35.784286, 24.670748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999737, 35.605801, 24.642298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369669, 0.630242, 0.682744,
		-0.259823, 0.635366, -0.727187,
		-0.892097, -0.446211, -0.071124,
		42.732109, 35.471939, 24.620960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885429, 36.314873, 24.532015>,  <43.356575, 35.784286, 24.670748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885429, 36.314873, 24.532015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.708477, 35.996765, 24.697828>,  <42.602306, 35.805901, 24.797318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.708477, 35.996765, 24.697828>,  <42.885429, 36.314873, 24.532015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708477, 35.996765, 24.697828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331324, 0.574452, 0.748485,
		-0.833380, 0.193771, -0.517620,
		-0.442383, -0.795272, 0.414536,
		42.575764, 35.758183, 24.822189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418087, 36.642956, 24.874424>,  <42.885429, 36.314873, 24.532015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418087, 36.642956, 24.874424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.346344, 36.285522, 25.039024>,  <42.303299, 36.071060, 25.137785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.346344, 36.285522, 25.039024>,  <42.418087, 36.642956, 24.874424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346344, 36.285522, 25.039024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315179, 0.448429, 0.836406,
		-0.931931, 0.020315, -0.362067,
		-0.179353, -0.893588, 0.411501,
		42.292538, 36.017445, 25.162476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595226, 36.601475, 25.034021>,  <42.418087, 36.642956, 24.874424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595226, 36.601475, 25.034021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.812153, 36.371811, 25.279373>,  <41.942310, 36.234013, 25.426584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.812153, 36.371811, 25.279373>,  <41.595226, 36.601475, 25.034021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812153, 36.371811, 25.279373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502727, 0.363185, 0.784450,
		-0.673171, -0.733781, -0.091686,
		0.542316, -0.574162, 0.613378,
		41.974846, 36.199562, 25.463387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033295, 36.267735, 24.624538>,  <41.595226, 36.601475, 25.034021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033295, 36.267735, 24.624538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.715458, 36.422142, 24.437084>,  <40.524757, 36.514786, 24.324612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.715458, 36.422142, 24.437084>,  <41.033295, 36.267735, 24.624538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715458, 36.422142, 24.437084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302026, -0.418279, -0.856635,
		-0.526698, -0.822212, 0.215771,
		-0.794588, 0.386019, -0.468636,
		40.477081, 36.537949, 24.296494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809746, 35.787693, 24.209774>,  <41.033295, 36.267735, 24.624538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809746, 35.787693, 24.209774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.646248, 36.122013, 24.063150>,  <40.548149, 36.322605, 23.975176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.646248, 36.122013, 24.063150>,  <40.809746, 35.787693, 24.209774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646248, 36.122013, 24.063150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273906, -0.270784, -0.922850,
		-0.870577, -0.477612, -0.118249,
		-0.408744, 0.835801, -0.366559,
		40.523624, 36.372753, 23.953182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528187, 35.480156, 23.737045>,  <40.809746, 35.787693, 24.209774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528187, 35.480156, 23.737045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532444, 35.864586, 23.626608>,  <40.534996, 36.095242, 23.560347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532444, 35.864586, 23.626608>,  <40.528187, 35.480156, 23.737045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532444, 35.864586, 23.626608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152272, -0.274444, -0.949470,
		-0.988281, -0.031939, -0.149265,
		0.010640, 0.961073, -0.276091,
		40.535637, 36.152908, 23.543781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104198, 35.480244, 23.248262>,  <40.528187, 35.480156, 23.737045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104198, 35.480244, 23.248262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.337921, 35.799259, 23.188253>,  <40.478157, 35.990669, 23.152248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.337921, 35.799259, 23.188253>,  <40.104198, 35.480244, 23.248262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337921, 35.799259, 23.188253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078860, -0.239789, -0.967617,
		-0.807689, 0.553559, -0.203005,
		0.584311, 0.797542, -0.150021,
		40.513214, 36.038521, 23.143248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875156, 35.753162, 22.639305>,  <40.104198, 35.480244, 23.248262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875156, 35.753162, 22.639305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.238987, 35.918545, 22.655907>,  <40.457287, 36.017773, 22.665867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.238987, 35.918545, 22.655907>,  <39.875156, 35.753162, 22.639305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238987, 35.918545, 22.655907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159942, -0.256166, -0.953309,
		-0.383520, 0.873746, -0.299132,
		0.909577, 0.413457, 0.041504,
		40.511860, 36.042583, 22.668358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972416, 36.247242, 21.953470>,  <39.875156, 35.753162, 22.639305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972416, 36.247242, 21.953470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.334335, 36.151943, 22.094652>,  <40.551487, 36.094765, 22.179361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.334335, 36.151943, 22.094652>,  <39.972416, 36.247242, 21.953470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334335, 36.151943, 22.094652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271636, -0.315419, -0.909244,
		0.327954, 0.918558, -0.220674,
		0.904798, -0.238247, 0.352957,
		40.605774, 36.080467, 22.200539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316505, 36.284836, 21.355862>,  <39.972416, 36.247242, 21.953470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316505, 36.284836, 21.355862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.593773, 36.140663, 21.605536>,  <40.760132, 36.054161, 21.755341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.593773, 36.140663, 21.605536>,  <40.316505, 36.284836, 21.355862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593773, 36.140663, 21.605536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460009, -0.445473, -0.768080,
		0.554895, 0.819540, -0.142989,
		0.693169, -0.360427, 0.624186,
		40.801723, 36.032536, 21.792791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945438, 36.537788, 21.039202>,  <40.316505, 36.284836, 21.355862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945438, 36.537788, 21.039202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988930, 36.199135, 21.247580>,  <41.015026, 35.995941, 21.372606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988930, 36.199135, 21.247580>,  <40.945438, 36.537788, 21.039202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988930, 36.199135, 21.247580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500237, -0.406262, -0.764666,
		0.859035, 0.343738, 0.379346,
		0.108730, -0.846638, 0.520944,
		41.021549, 35.945145, 21.403862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644684, 36.279690, 20.832253>,  <40.945438, 36.537788, 21.039202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644684, 36.279690, 20.832253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.497288, 35.944633, 20.993534>,  <41.408852, 35.743599, 21.090303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.497288, 35.944633, 20.993534>,  <41.644684, 36.279690, 20.832253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497288, 35.944633, 20.993534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468705, -0.541964, -0.697560,
		0.802827, -0.068060, 0.592315,
		-0.368490, -0.837641, 0.403203,
		41.386742, 35.693340, 21.114494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230515, 35.792046, 20.741211>,  <41.644684, 36.279690, 20.832253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230515, 35.792046, 20.741211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905262, 35.566189, 20.797779>,  <41.710110, 35.430676, 20.831720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905262, 35.566189, 20.797779>,  <42.230515, 35.792046, 20.741211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905262, 35.566189, 20.797779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275031, -0.586814, -0.761582,
		0.513006, -0.580372, 0.632450,
		-0.813131, -0.564640, 0.141419,
		41.661324, 35.396797, 20.840204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421051, 35.169025, 20.455664>,  <42.230515, 35.792046, 20.741211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421051, 35.169025, 20.455664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.027412, 35.098988, 20.467678>,  <41.791229, 35.056965, 20.474888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.027412, 35.098988, 20.467678>,  <42.421051, 35.169025, 20.455664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027412, 35.098988, 20.467678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048430, -0.427083, -0.902914,
		0.170927, -0.887097, 0.428770,
		-0.984093, -0.175097, 0.030038,
		41.732185, 35.046459, 20.476690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318863, 34.471031, 20.406315>,  <42.421051, 35.169025, 20.455664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318863, 34.471031, 20.406315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.981201, 34.647892, 20.285053>,  <41.778603, 34.754009, 20.212296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.981201, 34.647892, 20.285053>,  <42.318863, 34.471031, 20.406315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981201, 34.647892, 20.285053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096654, -0.430691, -0.897309,
		-0.527318, -0.786767, 0.320833,
		-0.844153, 0.442157, -0.303156,
		41.727955, 34.780537, 20.194107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892395, 33.926411, 20.137560>,  <42.318863, 34.471031, 20.406315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892395, 33.926411, 20.137560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.685696, 34.230965, 19.980967>,  <41.561676, 34.413696, 19.887011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.685696, 34.230965, 19.980967>,  <41.892395, 33.926411, 20.137560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685696, 34.230965, 19.980967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180360, -0.543819, -0.819592,
		-0.836926, -0.352912, 0.418341,
		-0.516745, 0.761389, -0.391484,
		41.530670, 34.459381, 19.863522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468868, 33.855030, 20.707758>,  <41.892395, 33.926411, 20.137560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468868, 33.855030, 20.707758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397701, 33.461918, 20.687832>,  <41.355000, 33.226051, 20.675877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.397701, 33.461918, 20.687832>,  <41.468868, 33.855030, 20.707758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397701, 33.461918, 20.687832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411639, 0.028350, 0.910906,
		-0.893811, 0.182575, -0.409596,
		-0.177920, -0.982783, -0.049815,
		41.344326, 33.167084, 20.672888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749283, 33.745613, 20.919821>,  <41.468868, 33.855030, 20.707758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749283, 33.745613, 20.919821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.933548, 33.397205, 20.988079>,  <41.044109, 33.188160, 21.029034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.933548, 33.397205, 20.988079>,  <40.749283, 33.745613, 20.919821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933548, 33.397205, 20.988079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486445, -0.086951, 0.869374,
		-0.742400, -0.483500, -0.463756,
		0.460667, -0.871015, 0.170643,
		41.071747, 33.135902, 21.039272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245155, 33.188171, 21.005085>,  <40.749283, 33.745613, 20.919821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245155, 33.188171, 21.005085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564014, 33.037479, 21.193821>,  <40.755329, 32.947063, 21.307062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.564014, 33.037479, 21.193821>,  <40.245155, 33.188171, 21.005085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564014, 33.037479, 21.193821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579271, -0.256748, 0.773644,
		-0.170311, -0.890031, -0.422894,
		0.797145, -0.376730, 0.471842,
		40.803158, 32.924461, 21.335373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899960, 32.665230, 21.305048>,  <40.245155, 33.188171, 21.005085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899960, 32.665230, 21.305048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.252277, 32.688667, 21.492989>,  <40.463669, 32.702732, 21.605753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.252277, 32.688667, 21.492989>,  <39.899960, 32.665230, 21.305048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252277, 32.688667, 21.492989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429240, -0.320055, 0.844581,
		0.199869, -0.945585, -0.256751,
		0.880798, 0.058598, 0.469852,
		40.516518, 32.706245, 21.633944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976162, 32.056217, 21.662111>,  <39.899960, 32.665230, 21.305048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976162, 32.056217, 21.662111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.185219, 32.340347, 21.850700>,  <40.310654, 32.510826, 21.963854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.185219, 32.340347, 21.850700>,  <39.976162, 32.056217, 21.662111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185219, 32.340347, 21.850700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566161, -0.124292, 0.814870,
		0.637420, -0.692817, 0.337196,
		0.522645, 0.710321, 0.471472,
		40.342014, 32.553444, 21.992142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089809, 31.727728, 22.297123>,  <39.976162, 32.056217, 21.662111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089809, 31.727728, 22.297123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.172756, 32.111561, 22.373226>,  <40.222523, 32.341862, 22.418888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.172756, 32.111561, 22.373226>,  <40.089809, 31.727728, 22.297123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172756, 32.111561, 22.373226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523456, -0.055462, 0.850245,
		0.826434, -0.275904, 0.490799,
		0.207365, 0.959584, 0.190260,
		40.234966, 32.399437, 22.430304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327927, 31.736103, 22.954401>,  <40.089809, 31.727728, 22.297123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327927, 31.736103, 22.954401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.226475, 32.115864, 22.880310>,  <40.165604, 32.343719, 22.835855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.226475, 32.115864, 22.880310>,  <40.327927, 31.736103, 22.954401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226475, 32.115864, 22.880310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473475, 0.045131, 0.879650,
		0.843502, 0.310802, 0.438072,
		-0.253627, 0.949403, -0.185226,
		40.150387, 32.400684, 22.824743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518627, 32.041962, 23.541485>,  <40.327927, 31.736103, 22.954401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518627, 32.041962, 23.541485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.267849, 32.310341, 23.383112>,  <40.117382, 32.471371, 23.288088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.267849, 32.310341, 23.383112>,  <40.518627, 32.041962, 23.541485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267849, 32.310341, 23.383112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473454, 0.075460, 0.877580,
		0.618690, 0.737653, 0.270354,
		-0.626949, 0.670950, -0.395931,
		40.079765, 32.511627, 23.264332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057537, 32.100819, 24.220894>,  <40.518627, 32.041962, 23.541485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057537, 32.100819, 24.220894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.043278, 31.708742, 24.298819>,  <41.034721, 31.473495, 24.345573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.043278, 31.708742, 24.298819>,  <41.057537, 32.100819, 24.220894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043278, 31.708742, 24.298819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794418, -0.146062, -0.589547,
		0.606325, 0.133745, 0.783889,
		-0.035648, -0.980193, 0.194811,
		41.032585, 31.414684, 24.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795956, 31.868023, 24.314333>,  <41.057537, 32.100819, 24.220894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795956, 31.868023, 24.314333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.587967, 31.540073, 24.218470>,  <41.463173, 31.343304, 24.160952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.587967, 31.540073, 24.218470>,  <41.795956, 31.868023, 24.314333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587967, 31.540073, 24.218470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719295, -0.268953, -0.640530,
		0.460697, -0.505442, 0.729579,
		-0.519973, -0.819874, -0.239656,
		41.431976, 31.294111, 24.146572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193054, 31.299839, 24.478191>,  <41.795956, 31.868023, 24.314333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193054, 31.299839, 24.478191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921368, 31.196081, 24.203562>,  <41.758358, 31.133827, 24.038784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921368, 31.196081, 24.203562>,  <42.193054, 31.299839, 24.478191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921368, 31.196081, 24.203562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731904, -0.309019, -0.607309,
		-0.054632, -0.914999, 0.399741,
		-0.679214, -0.259394, -0.686573,
		41.717602, 31.118263, 23.997589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443310, 30.682486, 24.189072>,  <42.193054, 31.299839, 24.478191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443310, 30.682486, 24.189072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194794, 30.776432, 23.890051>,  <42.045685, 30.832800, 23.710638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194794, 30.776432, 23.890051>,  <42.443310, 30.682486, 24.189072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194794, 30.776432, 23.890051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650412, -0.377472, -0.659150,
		-0.436993, -0.895741, 0.081759,
		-0.621289, 0.234867, -0.747554,
		42.008408, 30.846891, 23.665785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423569, 30.081671, 23.865700>,  <42.443310, 30.682486, 24.189072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423569, 30.081671, 23.865700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.278328, 30.353260, 23.610466>,  <42.191185, 30.516214, 23.457325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.278328, 30.353260, 23.610466>,  <42.423569, 30.081671, 23.865700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278328, 30.353260, 23.610466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484890, -0.447086, -0.751662,
		-0.795637, -0.582331, -0.166889,
		-0.363103, 0.678972, -0.638085,
		42.169395, 30.556952, 23.419041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305122, 29.738325, 23.300129>,  <42.423569, 30.081671, 23.865700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305122, 29.738325, 23.300129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.329155, 30.120226, 23.183622>,  <42.343575, 30.349367, 23.113718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.329155, 30.120226, 23.183622>,  <42.305122, 29.738325, 23.300129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329155, 30.120226, 23.183622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634600, -0.261767, -0.727160,
		-0.770502, -0.141148, -0.621614,
		0.060081, 0.954754, -0.291264,
		42.347179, 30.406652, 23.096243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271053, 29.682533, 22.537106>,  <42.305122, 29.738325, 23.300129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271053, 29.682533, 22.537106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.406906, 30.050707, 22.614517>,  <42.488419, 30.271610, 22.660963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.406906, 30.050707, 22.614517>,  <42.271053, 29.682533, 22.537106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406906, 30.050707, 22.614517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560390, -0.032777, -0.827580,
		-0.755388, 0.389525, -0.526934,
		0.339634, 0.920432, 0.193527,
		42.508797, 30.326838, 22.672575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466057, 29.840412, 21.873758>,  <42.271053, 29.682533, 22.537106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466057, 29.840412, 21.873758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648624, 30.076445, 22.140139>,  <42.758163, 30.218063, 22.299967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648624, 30.076445, 22.140139>,  <42.466057, 29.840412, 21.873758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648624, 30.076445, 22.140139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825894, -0.002498, -0.563820,
		-0.331035, 0.807341, -0.488483,
		0.456415, 0.590080, 0.665951,
		42.785549, 30.253468, 22.339924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652119, 30.470068, 21.534233>,  <42.466057, 29.840412, 21.873758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652119, 30.470068, 21.534233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.896671, 30.431562, 21.848415>,  <43.043404, 30.408459, 22.036924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.896671, 30.431562, 21.848415>,  <42.652119, 30.470068, 21.534233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896671, 30.431562, 21.848415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789939, 0.015344, -0.612993,
		0.046957, 0.995238, 0.085423,
		0.611384, -0.096263, 0.785457,
		43.080086, 30.402683, 22.084053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.175835, 36.268803, 34.293781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536419, 36.183422, 34.444416>,  <36.752769, 36.132195, 34.534798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536419, 36.183422, 34.444416>,  <36.175835, 36.268803, 34.293781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536419, 36.183422, 34.444416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069885, -0.786787, -0.613255,
		0.427192, 0.579140, -0.694337,
		0.901456, -0.213453, 0.376582,
		36.806854, 36.119385, 34.557392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629150, 36.139946, 33.698902>,  <36.175835, 36.268803, 34.293781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629150, 36.139946, 33.698902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790825, 35.959541, 34.017204>,  <36.887829, 35.851299, 34.208183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790825, 35.959541, 34.017204>,  <36.629150, 36.139946, 33.698902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790825, 35.959541, 34.017204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238399, -0.787968, -0.567691,
		0.883061, 0.419162, -0.210968,
		0.404190, -0.451011, 0.795751,
		36.912083, 35.824238, 34.255928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293240, 35.902935, 33.493244>,  <36.629150, 36.139946, 33.698902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293240, 35.902935, 33.493244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164898, 35.681786, 33.800850>,  <37.087891, 35.549095, 33.985413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164898, 35.681786, 33.800850>,  <37.293240, 35.902935, 33.493244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164898, 35.681786, 33.800850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215629, -0.833260, -0.509098,
		0.922255, 0.002474, 0.386574,
		-0.320857, -0.552875, 0.769012,
		37.068642, 35.515923, 34.031555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705418, 35.369118, 33.616226>,  <37.293240, 35.902935, 33.493244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705418, 35.369118, 33.616226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358173, 35.255074, 33.778751>,  <37.149826, 35.186646, 33.876266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358173, 35.255074, 33.778751>,  <37.705418, 35.369118, 33.616226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358173, 35.255074, 33.778751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042850, -0.858567, -0.510908,
		0.494514, -0.426115, 0.757550,
		-0.868113, -0.285112, 0.406314,
		37.097740, 35.169540, 33.900646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787842, 34.644917, 33.640682>,  <37.705418, 35.369118, 33.616226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787842, 34.644917, 33.640682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396667, 34.693829, 33.708431>,  <37.161961, 34.723175, 33.749081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396667, 34.693829, 33.708431>,  <37.787842, 34.644917, 33.640682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396667, 34.693829, 33.708431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194359, -0.829778, -0.523156,
		0.076568, -0.544532, 0.835238,
		-0.977938, 0.122279, 0.169369,
		37.103287, 34.730511, 33.759243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484184, 33.991119, 33.818291>,  <37.787842, 34.644917, 33.640682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484184, 33.991119, 33.818291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180656, 34.217735, 33.689777>,  <36.998539, 34.353706, 33.612671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180656, 34.217735, 33.689777>,  <37.484184, 33.991119, 33.818291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180656, 34.217735, 33.689777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322307, -0.755306, -0.570641,
		-0.565955, -0.329465, 0.755743,
		-0.758824, 0.566538, -0.321280,
		36.953011, 34.387695, 33.593395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045689, 33.485477, 33.725803>,  <37.484184, 33.991119, 33.818291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045689, 33.485477, 33.725803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910030, 33.798233, 33.516567>,  <36.828636, 33.985886, 33.391026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910030, 33.798233, 33.516567>,  <37.045689, 33.485477, 33.725803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910030, 33.798233, 33.516567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346845, -0.620801, -0.703068,
		-0.874458, -0.057014, 0.481739,
		-0.339149, 0.781892, -0.523089,
		36.808285, 34.032803, 33.359642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387981, 33.219639, 33.513119>,  <37.045689, 33.485477, 33.725803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387981, 33.219639, 33.513119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434990, 33.540379, 33.278778>,  <36.463196, 33.732822, 33.138176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434990, 33.540379, 33.278778>,  <36.387981, 33.219639, 33.513119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434990, 33.540379, 33.278778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431152, -0.490238, -0.757479,
		-0.894593, 0.341612, 0.288106,
		0.117523, 0.801853, -0.585850,
		36.470245, 33.780933, 33.103024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790413, 33.343166, 33.232941>,  <36.387981, 33.219639, 33.513119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790413, 33.343166, 33.232941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.045620, 33.525562, 32.984745>,  <36.198746, 33.634998, 32.835827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.045620, 33.525562, 32.984745>,  <35.790413, 33.343166, 33.232941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045620, 33.525562, 32.984745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211564, -0.670987, -0.710645,
		-0.740385, 0.584679, -0.331633,
		0.638021, 0.455990, -0.620486,
		36.237026, 33.662361, 32.798599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540092, 33.444836, 32.601620>,  <35.790413, 33.343166, 33.232941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540092, 33.444836, 32.601620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931408, 33.410431, 32.526203>,  <36.166199, 33.389786, 32.480953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931408, 33.410431, 32.526203>,  <35.540092, 33.444836, 32.601620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931408, 33.410431, 32.526203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205502, -0.520056, -0.829042,
		-0.026740, 0.849790, -0.526443,
		0.978291, -0.086016, -0.188540,
		36.224895, 33.384624, 32.469643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664978, 33.680790, 31.832067>,  <35.540092, 33.444836, 32.601620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664978, 33.680790, 31.832067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994640, 33.482590, 31.941799>,  <36.192436, 33.363670, 32.007637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994640, 33.482590, 31.941799>,  <35.664978, 33.680790, 31.832067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994640, 33.482590, 31.941799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151690, -0.273561, -0.949818,
		0.545678, 0.824407, -0.150294,
		0.824151, -0.495497, 0.274331,
		36.241886, 33.333942, 32.024097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149860, 33.637703, 31.217796>,  <35.664978, 33.680790, 31.832067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149860, 33.637703, 31.217796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310093, 33.351768, 31.447069>,  <36.406235, 33.180206, 31.584633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310093, 33.351768, 31.447069>,  <36.149860, 33.637703, 31.217796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310093, 33.351768, 31.447069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317742, -0.478368, -0.818660,
		0.859402, 0.510066, 0.035508,
		0.400584, -0.714841, 0.573180,
		36.430267, 33.137318, 31.619022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480457, 34.234142, 30.894335>,  <36.149860, 33.637703, 31.217796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480457, 34.234142, 30.894335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.131508, 34.247421, 30.699247>,  <35.922138, 34.255386, 30.582195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.131508, 34.247421, 30.699247>,  <36.480457, 34.234142, 30.894335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131508, 34.247421, 30.699247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337007, 0.681878, 0.649206,
		0.354112, 0.730713, -0.583664,
		-0.872371, 0.033193, -0.487716,
		35.869797, 34.257378, 30.552933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355038, 35.011135, 30.779602>,  <36.480457, 34.234142, 30.894335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355038, 35.011135, 30.779602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005383, 34.825787, 30.721403>,  <35.795589, 34.714577, 30.686483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005383, 34.825787, 30.721403>,  <36.355038, 35.011135, 30.779602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005383, 34.825787, 30.721403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484692, 0.813181, 0.322197,
		-0.030984, 0.352164, -0.935425,
		-0.874136, -0.463376, -0.145496,
		35.743141, 34.686775, 30.677755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887337, 35.494919, 30.527821>,  <36.355038, 35.011135, 30.779602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887337, 35.494919, 30.527821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647316, 35.205929, 30.665203>,  <35.503304, 35.032536, 30.747633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647316, 35.205929, 30.665203>,  <35.887337, 35.494919, 30.527821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647316, 35.205929, 30.665203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534749, 0.681582, 0.499490,
		-0.594963, 0.116058, -0.795330,
		-0.600052, -0.722480, 0.343454,
		35.467300, 34.989185, 30.768240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185085, 35.479221, 30.333378>,  <35.887337, 35.494919, 30.527821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185085, 35.479221, 30.333378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157768, 35.271214, 30.673944>,  <35.141376, 35.146408, 30.878284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157768, 35.271214, 30.673944>,  <35.185085, 35.479221, 30.333378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157768, 35.271214, 30.673944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644305, 0.674564, 0.360326,
		-0.761714, -0.523965, -0.381121,
		-0.068293, -0.520024, 0.851417,
		35.137280, 35.115208, 30.929369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553711, 35.667171, 30.680904>,  <35.185085, 35.479221, 30.333378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553711, 35.667171, 30.680904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716122, 35.496567, 31.004194>,  <34.813568, 35.394203, 31.198168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716122, 35.496567, 31.004194>,  <34.553711, 35.667171, 30.680904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716122, 35.496567, 31.004194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636159, 0.503022, 0.585039,
		-0.656080, -0.751704, -0.067085,
		0.406031, -0.426509, 0.808226,
		34.837933, 35.368614, 31.246662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880684, 35.355438, 31.064268>,  <34.553711, 35.667171, 30.680904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880684, 35.355438, 31.064268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187801, 35.417316, 31.312963>,  <34.372070, 35.454445, 31.462181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187801, 35.417316, 31.312963>,  <33.880684, 35.355438, 31.064268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187801, 35.417316, 31.312963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532027, 0.694640, 0.484173,
		-0.356986, -0.702527, 0.615643,
		0.767795, 0.154695, 0.621740,
		34.418140, 35.463726, 31.499485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619736, 35.195148, 31.742426>,  <33.880684, 35.355438, 31.064268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619736, 35.195148, 31.742426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931576, 35.432034, 31.823931>,  <34.118679, 35.574165, 31.872833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931576, 35.432034, 31.823931>,  <33.619736, 35.195148, 31.742426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931576, 35.432034, 31.823931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593379, 0.594377, 0.542786,
		0.200330, -0.544063, 0.814778,
		0.779596, 0.592208, 0.203763,
		34.165455, 35.609695, 31.885059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620834, 35.274117, 32.451401>,  <33.619736, 35.195148, 31.742426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620834, 35.274117, 32.451401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818668, 35.590462, 32.307224>,  <33.937370, 35.780270, 32.220718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818668, 35.590462, 32.307224>,  <33.620834, 35.274117, 32.451401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818668, 35.590462, 32.307224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473294, 0.592912, 0.651497,
		0.728956, -0.151626, 0.667558,
		0.494587, 0.790863, -0.360443,
		33.967045, 35.827721, 32.199093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763573, 35.573685, 32.994209>,  <33.620834, 35.274117, 32.451401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763573, 35.573685, 32.994209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827465, 35.862015, 32.724426>,  <33.865799, 36.035015, 32.562557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827465, 35.862015, 32.724426>,  <33.763573, 35.573685, 32.994209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827465, 35.862015, 32.724426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403365, 0.671248, 0.621870,
		0.900990, 0.172722, 0.397976,
		0.159730, 0.720828, -0.674457,
		33.875385, 36.078262, 32.522091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020443, 36.125431, 33.371521>,  <33.763573, 35.573685, 32.994209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020443, 36.125431, 33.371521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846066, 36.276234, 33.044640>,  <33.741440, 36.366714, 32.848511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846066, 36.276234, 33.044640>,  <34.020443, 36.125431, 33.371521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846066, 36.276234, 33.044640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448835, 0.695967, 0.560515,
		0.780063, 0.611142, -0.134189,
		-0.435945, 0.377009, -0.817200,
		33.715282, 36.389336, 32.799480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098289, 36.834862, 33.556812>,  <34.020443, 36.125431, 33.371521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098289, 36.834862, 33.556812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827686, 36.780994, 33.267204>,  <33.665325, 36.748672, 33.093441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827686, 36.780994, 33.267204>,  <34.098289, 36.834862, 33.556812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827686, 36.780994, 33.267204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592078, 0.684098, 0.425974,
		0.437935, 0.716849, -0.542531,
		-0.676504, -0.134672, -0.724021,
		33.624737, 36.740593, 33.049999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019913, 37.559864, 33.223232>,  <34.098289, 36.834862, 33.556812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019913, 37.559864, 33.223232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701214, 37.323364, 33.173241>,  <33.509995, 37.181465, 33.143246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701214, 37.323364, 33.173241>,  <34.019913, 37.559864, 33.223232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701214, 37.323364, 33.173241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575564, 0.679415, 0.455105,
		-0.184171, 0.434535, -0.881624,
		-0.796748, -0.591248, -0.124974,
		33.462189, 37.145988, 33.135750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454891, 38.024635, 33.190948>,  <34.019913, 37.559864, 33.223232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454891, 38.024635, 33.190948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266483, 37.678776, 33.260822>,  <33.153439, 37.471260, 33.302746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266483, 37.678776, 33.260822>,  <33.454891, 38.024635, 33.190948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266483, 37.678776, 33.260822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696422, 0.486047, 0.527973,
		-0.541418, 0.127032, -0.831101,
		-0.471023, -0.864651, 0.174687,
		33.125175, 37.419380, 33.313229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768227, 38.239861, 33.097000>,  <33.454891, 38.024635, 33.190948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768227, 38.239861, 33.097000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767204, 37.911037, 33.324757>,  <32.766590, 37.713741, 33.461411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767204, 37.911037, 33.324757>,  <32.768227, 38.239861, 33.097000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767204, 37.911037, 33.324757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795910, 0.346391, 0.496528,
		-0.605410, -0.451919, -0.655171,
		-0.002555, -0.822060, 0.569395,
		32.766438, 37.664421, 33.495575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556458, 38.114521, 32.398647>,  <32.768227, 38.239861, 33.097000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556458, 38.114521, 32.398647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632866, 37.852016, 32.690628>,  <32.678711, 37.694511, 32.865814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632866, 37.852016, 32.690628>,  <32.556458, 38.114521, 32.398647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632866, 37.852016, 32.690628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795960, -0.538738, -0.276059,
		0.574419, -0.528277, -0.625273,
		0.191023, -0.656266, 0.729949,
		32.690174, 37.655136, 32.909615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929787, 38.231903, 31.709251>,  <32.556458, 38.114521, 32.398647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929787, 38.231903, 31.709251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.082073, 38.601715, 31.716251>,  <33.173447, 38.823601, 31.720451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.082073, 38.601715, 31.716251>,  <32.929787, 38.231903, 31.709251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082073, 38.601715, 31.716251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878830, -0.355884, -0.317813,
		-0.287599, 0.136375, -0.947992,
		0.380717, 0.924526, 0.017499,
		33.196289, 38.879074, 31.721500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053413, 38.489616, 31.051188>,  <32.929787, 38.231903, 31.709251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053413, 38.489616, 31.051188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305618, 38.672512, 31.302071>,  <33.456940, 38.782249, 31.452600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305618, 38.672512, 31.302071>,  <33.053413, 38.489616, 31.051188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305618, 38.672512, 31.302071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775408, -0.335000, -0.535273,
		-0.034633, 0.823838, -0.565767,
		0.630510, 0.457238, 0.627208,
		33.494770, 38.809685, 31.490232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421375, 39.020481, 30.863598>,  <33.053413, 38.489616, 31.051188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421375, 39.020481, 30.863598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654644, 38.821671, 31.120617>,  <33.794605, 38.702385, 31.274828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654644, 38.821671, 31.120617>,  <33.421375, 39.020481, 30.863598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654644, 38.821671, 31.120617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699772, -0.094368, -0.708106,
		0.412587, 0.862586, 0.292775,
		0.583174, -0.497031, 0.642548,
		33.829597, 38.672562, 31.313381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143044, 39.309219, 30.719725>,  <33.421375, 39.020481, 30.863598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143044, 39.309219, 30.719725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202190, 38.965694, 30.915920>,  <34.237679, 38.759579, 31.033638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202190, 38.965694, 30.915920>,  <34.143044, 39.309219, 30.719725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202190, 38.965694, 30.915920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717211, -0.248367, -0.651093,
		0.680987, 0.448058, 0.579224,
		0.147868, -0.858812, 0.490487,
		34.246552, 38.708050, 31.063066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825150, 39.362335, 30.801535>,  <34.143044, 39.309219, 30.719725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825150, 39.362335, 30.801535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739632, 38.971951, 30.818499>,  <34.688320, 38.737720, 30.828676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739632, 38.971951, 30.818499>,  <34.825150, 39.362335, 30.801535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739632, 38.971951, 30.818499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656553, -0.175700, -0.733531,
		0.723346, -0.128983, 0.678331,
		-0.213796, -0.975957, 0.042408,
		34.675491, 38.679165, 30.831221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491329, 38.960205, 30.858906>,  <34.825150, 39.362335, 30.801535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491329, 38.960205, 30.858906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215530, 38.701061, 30.729370>,  <35.050049, 38.545574, 30.651649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215530, 38.701061, 30.729370>,  <35.491329, 38.960205, 30.858906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215530, 38.701061, 30.729370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637165, -0.329956, -0.696527,
		0.344396, -0.686595, 0.640296,
		-0.689501, -0.647855, -0.323838,
		35.008678, 38.506706, 30.632219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866344, 38.364998, 30.788769>,  <35.491329, 38.960205, 30.858906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866344, 38.364998, 30.788769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542866, 38.325115, 30.556883>,  <35.348778, 38.301186, 30.417751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542866, 38.325115, 30.556883>,  <35.866344, 38.364998, 30.788769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542866, 38.325115, 30.556883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587998, -0.164392, -0.791981,
		-0.016339, -0.981343, 0.191567,
		-0.808697, -0.099701, -0.579714,
		35.300255, 38.295204, 30.382969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033840, 37.782772, 30.372721>,  <35.866344, 38.364998, 30.788769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033840, 37.782772, 30.372721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723106, 37.944199, 30.179365>,  <35.536667, 38.041054, 30.063353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723106, 37.944199, 30.179365>,  <36.033840, 37.782772, 30.372721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723106, 37.944199, 30.179365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462112, -0.156111, -0.872973,
		-0.427768, -0.901532, -0.065223,
		-0.776831, 0.403571, -0.483388,
		35.490059, 38.065269, 30.034349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876205, 37.273880, 29.802284>,  <36.033840, 37.782772, 30.372721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876205, 37.273880, 29.802284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722191, 37.626366, 29.692593>,  <35.629780, 37.837856, 29.626778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722191, 37.626366, 29.692593>,  <35.876205, 37.273880, 29.802284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722191, 37.626366, 29.692593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310323, -0.156215, -0.937708,
		-0.869163, -0.446153, -0.213313,
		-0.385038, 0.881218, -0.274228,
		35.606678, 37.890732, 29.610325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489605, 37.179764, 29.196245>,  <35.876205, 37.273880, 29.802284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489605, 37.179764, 29.196245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590336, 37.566868, 29.197758>,  <35.650776, 37.799129, 29.198666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590336, 37.566868, 29.197758>,  <35.489605, 37.179764, 29.196245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590336, 37.566868, 29.197758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425346, -0.107171, -0.898663,
		-0.869289, 0.227918, -0.438623,
		0.251829, 0.967764, 0.003781,
		35.665886, 37.857197, 29.198893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528873, 37.425144, 28.404783>,  <35.489605, 37.179764, 29.196245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528873, 37.425144, 28.404783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714069, 37.699696, 28.629112>,  <35.825188, 37.864426, 28.763710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714069, 37.699696, 28.629112>,  <35.528873, 37.425144, 28.404783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714069, 37.699696, 28.629112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683865, 0.125908, -0.718663,
		-0.563890, 0.716258, -0.411099,
		0.462988, 0.686382, 0.560822,
		35.852966, 37.905609, 28.797359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733337, 37.788639, 27.904634>,  <35.528873, 37.425144, 28.404783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733337, 37.788639, 27.904634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944473, 37.934425, 28.211500>,  <36.071156, 38.021896, 28.395620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944473, 37.934425, 28.211500>,  <35.733337, 37.788639, 27.904634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944473, 37.934425, 28.211500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822057, 0.007872, -0.569351,
		-0.213551, 0.931182, -0.295460,
		0.527843, 0.364470, 0.767166,
		36.102825, 38.043766, 28.441650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064411, 38.369152, 27.734974>,  <35.733337, 37.788639, 27.904634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064411, 38.369152, 27.734974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286591, 38.235592, 28.039602>,  <36.419899, 38.155457, 28.222380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286591, 38.235592, 28.039602>,  <36.064411, 38.369152, 27.734974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286591, 38.235592, 28.039602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786736, -0.085590, -0.611328,
		0.269303, 0.938716, 0.215147,
		0.555449, -0.333896, 0.761571,
		36.453224, 38.135422, 28.268074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680229, 38.778782, 27.612103>,  <36.064411, 38.369152, 27.734974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680229, 38.778782, 27.612103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.780449, 38.480049, 27.858507>,  <36.840580, 38.300812, 28.006350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.780449, 38.480049, 27.858507>,  <36.680229, 38.778782, 27.612103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780449, 38.480049, 27.858507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840185, -0.148370, -0.521608,
		0.480950, 0.648252, 0.590301,
		0.250551, -0.746830, 0.616011,
		36.855614, 38.256001, 28.043310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363495, 38.859634, 27.886175>,  <36.680229, 38.778782, 27.612103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363495, 38.859634, 27.886175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253101, 38.475193, 27.881979>,  <37.186863, 38.244530, 27.879461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253101, 38.475193, 27.881979>,  <37.363495, 38.859634, 27.886175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253101, 38.475193, 27.881979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752629, -0.209310, -0.624291,
		0.597813, -0.180190, 0.781122,
		-0.275987, -0.961104, -0.010488,
		37.170303, 38.186863, 27.878832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996162, 38.510860, 27.788340>,  <37.363495, 38.859634, 27.886175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996162, 38.510860, 27.788340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710499, 38.238152, 27.724886>,  <37.539101, 38.074524, 27.686813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710499, 38.238152, 27.724886>,  <37.996162, 38.510860, 27.788340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710499, 38.238152, 27.724886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594254, -0.470746, -0.652120,
		0.369924, -0.559983, 0.741333,
		-0.714156, -0.681775, -0.158632,
		37.496250, 38.033619, 27.677296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340179, 37.965416, 27.903900>,  <37.996162, 38.510860, 27.788340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340179, 37.965416, 27.903900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021484, 37.883198, 27.676580>,  <37.830269, 37.833866, 27.540188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021484, 37.883198, 27.676580>,  <38.340179, 37.965416, 27.903900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021484, 37.883198, 27.676580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582341, -0.512476, -0.631068,
		-0.161529, -0.833739, 0.528003,
		-0.796735, -0.205542, -0.568300,
		37.782463, 37.821537, 27.506090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421410, 37.247181, 27.701567>,  <38.340179, 37.965416, 27.903900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421410, 37.247181, 27.701567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170017, 37.411835, 27.437578>,  <38.019180, 37.510628, 27.279184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170017, 37.411835, 27.437578>,  <38.421410, 37.247181, 27.701567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170017, 37.411835, 27.437578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493341, -0.445028, -0.747372,
		-0.601351, -0.795303, 0.076617,
		-0.628484, 0.411635, -0.659974,
		37.981472, 37.535324, 27.239586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375126, 36.690109, 27.235857>,  <38.421410, 37.247181, 27.701567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375126, 36.690109, 27.235857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240543, 37.015186, 27.045563>,  <38.159794, 37.210232, 26.931387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240543, 37.015186, 27.045563>,  <38.375126, 36.690109, 27.235857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240543, 37.015186, 27.045563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424868, -0.319846, -0.846868,
		-0.840409, -0.487055, -0.237676,
		-0.336452, 0.812697, -0.475735,
		38.139606, 37.258995, 26.902842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980869, 36.472942, 26.698511>,  <38.375126, 36.690109, 27.235857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980869, 36.472942, 26.698511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108208, 36.841732, 26.610319>,  <38.184612, 37.063007, 26.557404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108208, 36.841732, 26.610319>,  <37.980869, 36.472942, 26.698511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108208, 36.841732, 26.610319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443402, -0.350390, -0.824998,
		-0.837885, 0.164873, -0.520352,
		0.318346, 0.921978, -0.220482,
		38.203712, 37.118324, 26.544174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882637, 36.596443, 26.042522>,  <37.980869, 36.472942, 26.698511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882637, 36.596443, 26.042522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162800, 36.868046, 26.130507>,  <38.330898, 37.031006, 26.183296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162800, 36.868046, 26.130507>,  <37.882637, 36.596443, 26.042522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162800, 36.868046, 26.130507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562005, -0.334689, -0.756395,
		-0.439979, 0.653402, -0.616023,
		0.700406, 0.679006, 0.219959,
		38.372921, 37.071747, 26.196495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049301, 36.940731, 25.328814>,  <37.882637, 36.596443, 26.042522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049301, 36.940731, 25.328814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347710, 37.017784, 25.583794>,  <38.526756, 37.064018, 25.736782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347710, 37.017784, 25.583794>,  <38.049301, 36.940731, 25.328814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347710, 37.017784, 25.583794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665641, -0.187808, -0.722254,
		-0.019414, 0.963130, -0.268335,
		0.746020, 0.192637, 0.637452,
		38.571514, 37.075577, 25.775030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456768, 37.454796, 25.026207>,  <38.049301, 36.940731, 25.328814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456768, 37.454796, 25.026207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687557, 37.262066, 25.290009>,  <38.826031, 37.146427, 25.448290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.687557, 37.262066, 25.290009>,  <38.456768, 37.454796, 25.026207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687557, 37.262066, 25.290009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654074, -0.211024, -0.726399,
		0.489169, 0.850477, 0.193395,
		0.576975, -0.481827, 0.659502,
		38.860649, 37.117519, 25.487860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121845, 37.737316, 24.935192>,  <38.456768, 37.454796, 25.026207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121845, 37.737316, 24.935192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.199001, 37.403713, 25.141968>,  <39.245296, 37.203552, 25.266033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.199001, 37.403713, 25.141968>,  <39.121845, 37.737316, 24.935192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199001, 37.403713, 25.141968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597027, -0.318329, -0.736360,
		0.778685, 0.450665, 0.436521,
		0.192895, -0.834007, 0.516937,
		39.256870, 37.153511, 25.297049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839409, 37.739075, 25.105536>,  <39.121845, 37.737316, 24.935192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839409, 37.739075, 25.105536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.740021, 37.352932, 25.137409>,  <39.680386, 37.121246, 25.156534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.740021, 37.352932, 25.137409>,  <39.839409, 37.739075, 25.105536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740021, 37.352932, 25.137409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750554, -0.243881, -0.614159,
		0.612316, -0.092795, 0.785149,
		-0.248474, -0.965356, 0.079685,
		39.665478, 37.063324, 25.161314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481083, 37.377094, 25.295904>,  <39.839409, 37.739075, 25.105536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481083, 37.377094, 25.295904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.221931, 37.129200, 25.118736>,  <40.066441, 36.980465, 25.012436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.221931, 37.129200, 25.118736>,  <40.481083, 37.377094, 25.295904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221931, 37.129200, 25.118736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680152, -0.208826, -0.702699,
		0.342995, -0.756517, 0.556809,
		-0.647879, -0.619737, -0.442920,
		40.027569, 36.943279, 24.985861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758305, 36.660038, 25.169912>,  <40.481083, 37.377094, 25.295904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758305, 36.660038, 25.169912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.467545, 36.689697, 24.896820>,  <40.293087, 36.707493, 24.732965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.467545, 36.689697, 24.896820>,  <40.758305, 36.660038, 25.169912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467545, 36.689697, 24.896820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610949, -0.384188, -0.692200,
		-0.313624, -0.920272, 0.233963,
		-0.726899, 0.074151, -0.682730,
		40.249474, 36.711941, 24.692001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074440, 36.104923, 25.637302>,  <40.758305, 36.660038, 25.169912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074440, 36.104923, 25.637302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.448997, 36.111568, 25.777529>,  <41.673733, 36.115555, 25.861666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.448997, 36.111568, 25.777529>,  <41.074440, 36.104923, 25.637302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448997, 36.111568, 25.777529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345919, 0.212417, 0.913903,
		-0.059281, -0.977038, 0.204653,
		0.936390, 0.016616, 0.350568,
		41.729916, 36.116554, 25.882700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043236, 35.636509, 26.153605>,  <41.074440, 36.104923, 25.637302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043236, 35.636509, 26.153605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.355953, 35.876442, 26.221727>,  <41.543583, 36.020401, 26.262602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.355953, 35.876442, 26.221727>,  <41.043236, 35.636509, 26.153605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355953, 35.876442, 26.221727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319542, 0.150869, 0.935484,
		0.535437, -0.785775, 0.309619,
		0.781793, 0.599830, 0.170307,
		41.590492, 36.056393, 26.272820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403206, 35.500740, 26.814373>,  <41.043236, 35.636509, 26.153605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403206, 35.500740, 26.814373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.524525, 35.871475, 26.725838>,  <41.597317, 36.093914, 26.672716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.524525, 35.871475, 26.725838>,  <41.403206, 35.500740, 26.814373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524525, 35.871475, 26.725838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293179, 0.311774, 0.903794,
		0.906675, -0.209223, 0.366288,
		0.303294, 0.926835, -0.221338,
		41.615513, 36.149525, 26.659437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434475, 35.805340, 27.423840>,  <41.403206, 35.500740, 26.814373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434475, 35.805340, 27.423840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.503147, 36.125950, 27.194727>,  <41.544350, 36.318317, 27.057261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.503147, 36.125950, 27.194727>,  <41.434475, 35.805340, 27.423840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503147, 36.125950, 27.194727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332267, 0.594456, 0.732270,
		0.927429, 0.064599, 0.368379,
		0.171681, 0.801529, -0.572780,
		41.554653, 36.366409, 27.022892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997070, 36.201420, 27.659525>,  <41.434475, 35.805340, 27.423840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997070, 36.201420, 27.659525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.755356, 36.439995, 27.448202>,  <41.610329, 36.583138, 27.321409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.755356, 36.439995, 27.448202>,  <41.997070, 36.201420, 27.659525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755356, 36.439995, 27.448202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183100, 0.541364, 0.820610,
		0.775446, 0.592613, -0.217930,
		-0.604283, 0.596436, -0.528306,
		41.574070, 36.618927, 27.289711>
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
